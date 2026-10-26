.class public abstract Lcom/github/catvod/spider/merge/H/c;
.super Lcom/github/catvod/spider/merge/J/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/J/c<",
        "Lcom/github/catvod/spider/merge/H/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/J/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/J/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/github/catvod/spider/merge/J/c;-><init>(Lcom/github/catvod/spider/merge/J/a;I)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Lcom/github/catvod/spider/merge/H/b;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    check-cast p1, Lcom/github/catvod/spider/merge/H/b;

    :goto_8
    return-object p1
.end method

.method protected final c(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/github/catvod/spider/merge/H/b;

    return-object p1
.end method

.method protected final d(I)[[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [[Lcom/github/catvod/spider/merge/H/b;

    return-object p1
.end method
