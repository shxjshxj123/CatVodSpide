.class public final Lcom/github/catvod/spider/merge/V/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/github/catvod/spider/merge/V/N;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    new-instance v1, Lcom/github/catvod/spider/merge/V/a;

    invoke-direct {v1, p1, v0, p0}, Lcom/github/catvod/spider/merge/V/a;-><init>(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/V/g;Lcom/github/catvod/spider/merge/V/N;)V

    invoke-static {v1, p1}, Lcom/github/catvod/spider/merge/V/O;->a(Lcom/github/catvod/spider/merge/V/P;Lcom/github/catvod/spider/merge/T/s;)V

    return-object v0
.end method

.method public static b(Lcom/github/catvod/spider/merge/V/N;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/T/m;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/V/b;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/V/b;-><init>(Lcom/github/catvod/spider/merge/V/N;)V

    invoke-virtual {v0, p1, p1}, Lcom/github/catvod/spider/merge/V/b;->a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p0

    return-object p0
.end method
