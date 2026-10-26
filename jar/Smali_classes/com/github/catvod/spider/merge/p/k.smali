.class final Lcom/github/catvod/spider/merge/p/k;
.super Lcom/github/catvod/spider/merge/p/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/p/g<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/Object;

.field static final i:Lcom/github/catvod/spider/merge/p/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/p/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient c:[Ljava/lang/Object;

.field private final transient d:I

.field final transient e:[Ljava/lang/Object;

.field private final transient f:I

.field private final transient g:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Lcom/github/catvod/spider/merge/p/k;->h:[Ljava/lang/Object;

    new-instance v0, Lcom/github/catvod/spider/merge/p/k;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/github/catvod/spider/merge/p/k;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/github/catvod/spider/merge/p/k;->i:Lcom/github/catvod/spider/merge/p/k;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/p/g;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/p/k;->c:[Ljava/lang/Object;

    iput p2, p0, Lcom/github/catvod/spider/merge/p/k;->d:I

    iput-object p3, p0, Lcom/github/catvod/spider/merge/p/k;->e:[Ljava/lang/Object;

    iput p4, p0, Lcom/github/catvod/spider/merge/p/k;->f:I

    iput p5, p0, Lcom/github/catvod/spider/merge/p/k;->g:I

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/k;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/catvod/spider/merge/p/k;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/github/catvod/spider/merge/p/k;->g:I

    add-int/2addr p1, v2

    return p1
.end method

.method final b()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/k;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method final c()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/k;->g:I

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/k;->e:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    array-length v2, v0

    if-nez v2, :cond_9

    goto :goto_24

    .line 1
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/p/b;->a(I)I

    move-result v2

    .line 2
    :goto_11
    iget v3, p0, Lcom/github/catvod/spider/merge/p/k;->f:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_19

    return v1

    :cond_19
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    :goto_24
    return v1
.end method

.method final d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/github/catvod/spider/merge/p/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/p/m<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/g;->f()Lcom/github/catvod/spider/merge/p/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/p/f;->g(I)Lcom/github/catvod/spider/merge/p/n;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/k;->d:I

    return v0
.end method

.method final i()Lcom/github/catvod/spider/merge/p/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/p/f<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/k;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/catvod/spider/merge/p/k;->g:I

    sget v2, Lcom/github/catvod/spider/merge/p/f;->c:I

    if-nez v1, :cond_b

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge/p/j;->f:Lcom/github/catvod/spider/merge/p/f;

    goto :goto_11

    .line 2
    :cond_b
    new-instance v2, Lcom/github/catvod/spider/merge/p/j;

    invoke-direct {v2, v0, v1}, Lcom/github/catvod/spider/merge/p/j;-><init>([Ljava/lang/Object;I)V

    move-object v0, v2

    :goto_11
    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/k;->e()Lcom/github/catvod/spider/merge/p/m;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/k;->g:I

    return v0
.end method
