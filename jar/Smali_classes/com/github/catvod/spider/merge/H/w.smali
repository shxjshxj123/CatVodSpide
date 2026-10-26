.class public final Lcom/github/catvod/spider/merge/H/w;
.super Lcom/github/catvod/spider/merge/H/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/github/catvod/spider/merge/H/n0;-><init>(Lcom/github/catvod/spider/merge/H/X;I)V

    return-void
.end method


# virtual methods
.method public final c(I)Lcom/github/catvod/spider/merge/H/X;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(I)I
    .registers 2

    iget p1, p0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "$"

    return-object v0
.end method
