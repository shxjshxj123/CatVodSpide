.class public final Lcom/github/catvod/spider/merge/H/P;
.super Lcom/github/catvod/spider/merge/H/m0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/J/k;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/H/m0;-><init>(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/J/k;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final d(II)Z
    .registers 3

    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge/H/m0;->d(II)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/github/catvod/spider/merge/H/m0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
