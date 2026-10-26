.class public final Lcom/github/catvod/spider/merge/H/u0;
.super Lcom/github/catvod/spider/merge/H/t0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/m;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/t0;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public final d(II)Z
    .registers 3

    if-ltz p1, :cond_6

    if-gt p1, p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "."

    return-object v0
.end method
