.class final Lcom/github/catvod/spider/merge/p/j;
.super Lcom/github/catvod/spider/merge/p/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/p/f<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final f:Lcom/github/catvod/spider/merge/p/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/p/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient d:[Ljava/lang/Object;

.field private final transient e:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/p/j;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/github/catvod/spider/merge/p/j;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/github/catvod/spider/merge/p/j;->f:Lcom/github/catvod/spider/merge/p/f;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/p/f;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/p/j;->d:[Ljava/lang/Object;

    iput p2, p0, Lcom/github/catvod/spider/merge/p/j;->e:I

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/j;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/catvod/spider/merge/p/j;->e:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/github/catvod/spider/merge/p/j;->e:I

    add-int/2addr p1, v2

    return p1
.end method

.method final b()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/j;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method final c()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/j;->e:I

    return v0
.end method

.method final d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/github/catvod/spider/merge/p/j;->e:I

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/o/m;->e(II)I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/j;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/j;->e:I

    return v0
.end method
