.class public final Lcom/github/catvod/spider/merge/b0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b0/k;->a:[I

    return-void
.end method

.method public static a(IIIIIIII)I
    .registers 8

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x4

    or-int/2addr p1, p2

    shl-int/lit8 p2, p5, 0x4

    or-int/2addr p2, p4

    shl-int/lit8 p3, p7, 0x4

    or-int/2addr p3, p6

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final b(I)I
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b0/k;->a:[I

    shr-int/lit8 v1, p1, 0x3

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    shr-int p1, v0, p1

    and-int/lit8 p1, p1, 0xf

    return p1
.end method
