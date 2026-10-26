.class public abstract Lcom/github/catvod/spider/merge/a0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[S

.field protected b:[B

.field protected c:F

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>([S[BFLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/a0/l;->a:[S

    iput-object p2, p0, Lcom/github/catvod/spider/merge/a0/l;->b:[B

    iput p3, p0, Lcom/github/catvod/spider/merge/a0/l;->c:F

    iput-object p4, p0, Lcom/github/catvod/spider/merge/a0/l;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/a0/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(B)S
    .registers 3

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/github/catvod/spider/merge/a0/l;->a:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public final c(I)B
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/a0/l;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final d()F
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/a0/l;->c:F

    return v0
.end method
