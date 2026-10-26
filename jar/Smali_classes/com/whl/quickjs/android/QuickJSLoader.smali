.class public final Lcom/whl/quickjs/android/QuickJSLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/whl/quickjs/android/QuickJSLoader$Console;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/whl/quickjs/android/QuickJSLoader;->lambda$initConsoleLog$0(Lcom/whl/quickjs/android/QuickJSLoader$Console;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static init()V
    .registers 1

    const-string v0, "quickjs-android-wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static initConsoleLog(Lcom/whl/quickjs/wrapper/QuickJSContext;)V
    .registers 3

    new-instance v0, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;

    const-string v1, "quickjs"

    invoke-direct {v0, v1}, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/whl/quickjs/android/QuickJSLoader;->initConsoleLog(Lcom/whl/quickjs/wrapper/QuickJSContext;Lcom/whl/quickjs/android/QuickJSLoader$Console;)V

    return-void
.end method

.method public static initConsoleLog(Lcom/whl/quickjs/wrapper/QuickJSContext;Lcom/whl/quickjs/android/QuickJSLoader$Console;)V
    .registers 4

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->getGlobalObject()Lcom/whl/quickjs/wrapper/JSObject;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge/v/a;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/v/a;-><init>(Lcom/whl/quickjs/android/QuickJSLoader$Console;)V

    const-string p1, "nativeLog"

    invoke-virtual {v0, p1, v1}, Lcom/whl/quickjs/wrapper/JSObject;->setProperty(Ljava/lang/String;Lcom/whl/quickjs/wrapper/JSCallFunction;)V

    const-string p1, "const console = {\n    log: (...args) => printLog(\"log\", ...args),\n    debug: (...args) => printLog(\"debug\", ...args),\n    info: (...args) => printLog(\"info\", ...args),\n    warn: (...args) => printLog(\"warn\", ...args),\n    error: (...args) => printLog(\"error\", ...args)\n};\n\nconst printLog = (level, ...args) => {\n    let arg = \'\';\n    if (args.length == 1) {\n        let m = args[0];\n        arg = __format_string(m);\n    } else if (args.length > 1) {\n        for (let i = 0; i < args.length; i++) {\n            if (i > 0) {\n                arg = arg.concat(\', \');\n            }\n            let m = args[i];\n            arg = arg.concat(__format_string(m));\n        }\n    }\n\n    nativeLog(level, arg);\n};"

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static initConsoleLog(Lcom/whl/quickjs/wrapper/QuickJSContext;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;

    invoke-direct {v0, p1}, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/whl/quickjs/android/QuickJSLoader;->initConsoleLog(Lcom/whl/quickjs/wrapper/QuickJSContext;Lcom/whl/quickjs/android/QuickJSLoader$Console;)V

    return-void
.end method

.method private static synthetic lambda$initConsoleLog$0(Lcom/whl/quickjs/android/QuickJSLoader$Console;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5e

    const/4 v0, 0x0

    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_60

    goto :goto_48

    :sswitch_17
    const-string v0, "error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x2

    goto :goto_49

    :sswitch_21
    const-string v0, "debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x4

    goto :goto_49

    :sswitch_2b
    const-string v0, "warn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :sswitch_35
    const-string v5, "info"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_49

    :sswitch_3e
    const-string v0, "log"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x3

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v0, -0x1

    :goto_49
    if-eqz v0, :cond_5b

    if-eq v0, v3, :cond_57

    if-eq v0, v1, :cond_53

    invoke-interface {p0, p1}, Lcom/whl/quickjs/android/QuickJSLoader$Console;->log(Ljava/lang/String;)V

    goto :goto_5e

    :cond_53
    invoke-interface {p0, p1}, Lcom/whl/quickjs/android/QuickJSLoader$Console;->error(Ljava/lang/String;)V

    goto :goto_5e

    :cond_57
    invoke-interface {p0, p1}, Lcom/whl/quickjs/android/QuickJSLoader$Console;->warn(Ljava/lang/String;)V

    goto :goto_5e

    :cond_5b
    invoke-interface {p0, p1}, Lcom/whl/quickjs/android/QuickJSLoader$Console;->info(Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_60
    .sparse-switch
        0x1a344 -> :sswitch_3e
        0x3164ae -> :sswitch_35
        0x379286 -> :sswitch_2b
        0x5b09653 -> :sswitch_21
        0x5c4d208 -> :sswitch_17
    .end sparse-switch
.end method

.method public static native startRedirectingStdoutStderr(Ljava/lang/String;)V
.end method
