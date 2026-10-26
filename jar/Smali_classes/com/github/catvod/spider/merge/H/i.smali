.class final Lcom/github/catvod/spider/merge/H/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/H/j;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([CI)I
    .registers 4

    aget-char v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-char p1, p1, p2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
