.class public final Lcom/github/catvod/spider/merge/Z/c;
.super Lcom/github/catvod/spider/merge/Z/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/Z/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b([BI)I
    .registers 5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_14

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5e

    add-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    :cond_14
    const/4 p1, -0x1

    return p1
.end method
