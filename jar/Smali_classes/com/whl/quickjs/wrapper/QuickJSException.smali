.class public Lcom/whl/quickjs/wrapper/QuickJSException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final jsError:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/whl/quickjs/wrapper/QuickJSException;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/whl/quickjs/wrapper/QuickJSException;->jsError:Z

    return-void
.end method


# virtual methods
.method public isJSError()Z
    .registers 2

    iget-boolean v0, p0, Lcom/whl/quickjs/wrapper/QuickJSException;->jsError:Z

    return v0
.end method
