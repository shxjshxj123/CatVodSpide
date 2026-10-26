.class public final Lcom/github/catvod/spider/merge/y/a;
.super Ljava/lang/Error;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/github/catvod/spider/merge/y/a;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/github/catvod/spider/merge/y/a;->a:Ljava/lang/Exception;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/github/catvod/spider/merge/y/a;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method
