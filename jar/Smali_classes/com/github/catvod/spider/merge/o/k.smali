.class public final Lcom/github/catvod/spider/merge/o/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/github/catvod/spider/merge/o/j;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/o/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/o/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
