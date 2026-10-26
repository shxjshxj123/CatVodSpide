.class final Lcom/github/catvod/spider/merge/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/a/b;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dalvik.system.DexPathList$Element"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :try_start_9
    new-instance v1, Lcom/github/catvod/spider/merge/a/c;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/a/c;-><init>(Ljava/lang/Class;)V
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    :try_start_f
    new-instance v1, Lcom/github/catvod/spider/merge/a/d;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/a/d;-><init>(Ljava/lang/Class;)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    new-instance v1, Lcom/github/catvod/spider/merge/a/e;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/a/e;-><init>(Ljava/lang/Class;)V

    :goto_1a
    iput-object v1, p0, Lcom/github/catvod/spider/merge/a/f;->a:Lcom/github/catvod/spider/merge/a/b;

    return-void
.end method

.method static a(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pathList"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/a/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/github/catvod/spider/merge/a/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/a/f;-><init>()V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v1, :cond_5e

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    iget-object v6, v0, Lcom/github/catvod/spider/merge/a/f;->a:Lcom/github/catvod/spider/merge/a/b;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v9, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".dex"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-static {v7, v8, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/github/catvod/spider/merge/a/b;->a(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_5e
    :try_start_5e
    const-string p1, "dexElements"

    .line 4
    invoke-static {p0, p1, v2}, Lcom/github/catvod/spider/merge/a/g;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_71

    :catch_64
    move-exception p1

    const-string v0, "MultiDex"

    const-string v1, "Failed find field \'dexElements\' attempting \'pathElements\'"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "pathElements"

    invoke-static {p0, p1, v2}, Lcom/github/catvod/spider/merge/a/g;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_71
    return-void
.end method
