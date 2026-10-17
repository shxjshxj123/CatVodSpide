---
name: github-upload
description: 将本地代码变更提交并推送到 GitHub。覆盖推送前检查（状态/diff/远程/凭据）、选择性暂存、commit message 规范、push 与常见失败处理（认证失败、分支无上游、子模块、大文件）。
arguments:
  - name: message
    description: 本次提交的说明文字（可选，缺省时根据 diff 自动生成）
    required: false
  - name: branch
    description: 要推送的目标分支（缺省推送当前分支）
    required: false
---

# 上传代码到 GitHub

执行顺序：推送前检查 → 暂存 → 提交 → 推送。四个步骤都要实际执行并核对输出，跳过检查直接 commit 是禁止行为。

## 一、推送前检查

依次执行并阅读输出：

```bash
git status              # 工作区状态：改了什么、有没有未跟踪文件
git diff                # 已跟踪文件的具体改动
git diff --stat         # 改动概览
git log --oneline -5    # 最近提交，模仿仓库既有 message 风格
git remote -v           # 确认远程仓库地址存在且正确
```

检查要点：

1. **远程存在**：`git remote -v` 为空时需要先添加远程或让用户提供仓库地址。
2. **敏感信息**：diff 里出现 API key、密码、token、私钥、`local.properties`、真实凭据时，将其从暂存区排除并提醒用户，禁止提交。
3. **不该入库的文件**：构建产物（`build/`、`app/build/`）、本地配置（`local.properties`）、临时文件、日志——确认 `.gitignore` 已覆盖；未覆盖时只暂存业务文件，顺手补充 `.gitignore`。
4. **当前分支**：确认在预期分支上。项目主分支为 `main` 时直接提交到当前分支。

## 二、暂存

按改动内容选择性暂存，逐个列出文件；全量 `git add .` 仅在确认目录内无敏感/无关文件时使用：

```bash
git add path/to/file1 path/to/file2
```

二进制文件（jar、apk、图片）与普通文件同等对待，直接 `git add`。

子模块仓库：`git status` 显示 submodule 有改动时，先进入各子模块目录分别提交推送（见"子模块"一节），再回到主仓库暂存 submodule 引用变化。

## 三、提交

commit message 规则：

1. **跟随仓库既有风格**：先用 `git log --oneline -10` 看历史。有 `feat:`/`fix:`/`chore:` 约定就沿用；全是 `Update xxx` 短句风格就用短句。
2. **首行 50 字以内**概括，正文（可选）空一行后说明动机与要点。
3. 多个不相关改动拆成多个 commit，每个 commit 只做一件事。

```bash
git commit -m "feat: add Spermik spider source and rebuild custom_spider.jar"
```

## 四、推送

```bash
git push
```

### 分支无上游

```bash
git push -u origin <branch>
```

### 常见失败处理

| 现象 | 处理 |
|------|------|
| `Authentication failed`（HTTPS） | 检查凭据助手 `git config --get credential.helper`；有 helper 仍失败时提示用户配置 Personal Access Token（GitHub 已不支持密码推送） |
| `Authentication failed`（SSH） | `ssh -T git@github.com` 验证密钥；密钥内容只验证可用性，禁止在回复中展示 |
| `non-fast-forward` / 被拒绝 | 先 `git pull --rebase` 解决分歧再推；`--force` 仅在用户明确要求时使用，且只允许推自己的特性分支 |
| 网络超时 | 重试 1-2 次；仍失败则报告并保留本地 commit，等用户网络恢复后再推 |
| push 触发保护规则（分支保护/required checks） | 报告错误原文，建议走 PR 流程，禁止尝试绕过 |

### 子模块

主仓库包含子模块且子模块内有改动时：

```bash
git submodule foreach 'git status --porcelain'   # 找出有改动的子模块
# 对每个有改动的子模块：
cd <submodule-path>
git checkout -b <YYMMDD-feat-描述>               # 或直接在其当前分支提交
git add . && git commit -m "..."
git push -u origin HEAD
cd -
# 回到主仓库更新引用
git add <submodule-path>
git commit -m "chore: update submodule <name> reference"
git push
```

### 推送后确认

```bash
git status --short --branch   # 应显示 ## main...origin/main 且无领先/落后标记
git log --oneline -1 origin/<branch>
```

工作区干净、`origin/<branch>` 指向刚推的 commit 即完成。

## 红线

- 用户没有明确要求时，只准备不执行 commit/push，完成后告知即可。
- 禁止提交任何密钥、token、真实凭据；已暂存的敏感文件必须先 `git restore --staged` 移出。
- 禁止修改 `git config`、跳过 hooks（`--no-verify`）、创建空 commit，除非用户明确要求。
- 禁止 force push 共享分支（main/master/他人维护的分支）。
