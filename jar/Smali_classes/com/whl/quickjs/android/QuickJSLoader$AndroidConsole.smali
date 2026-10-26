.class final Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/whl/quickjs/android/QuickJSLoader$Console;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/whl/quickjs/android/QuickJSLoader$AndroidConsole;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
