.class public final Lcom/github/catvod/spider/merge/Y/a;
.super Lcom/github/catvod/spider/merge/Y/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/Y/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b([BI)I
    .registers 5

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_18

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0xa1

    if-lt p1, p2, :cond_18

    const/16 v0, 0xf3

    if-gt p1, v0, :cond_18

    sub-int/2addr p1, p2

    return p1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method
