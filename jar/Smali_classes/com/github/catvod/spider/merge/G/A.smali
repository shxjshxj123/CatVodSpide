.class public Lcom/github/catvod/spider/merge/G/A;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/G/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;"
        }
    .end annotation
.end field

.field private final b:Lcom/github/catvod/spider/merge/G/y;

.field private final c:Lcom/github/catvod/spider/merge/G/s;

.field private d:Lcom/github/catvod/spider/merge/G/E;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/s;Lcom/github/catvod/spider/merge/G/y;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Lcom/github/catvod/spider/merge/G/s;",
            "Lcom/github/catvod/spider/merge/G/y;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/G/A;->e:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/A;->a:Lcom/github/catvod/spider/merge/G/C;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/G/A;->c:Lcom/github/catvod/spider/merge/G/s;

    iput-object p3, p0, Lcom/github/catvod/spider/merge/G/A;->b:Lcom/github/catvod/spider/merge/G/y;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/C;->g()I

    move-result p1

    iput p1, p0, Lcom/github/catvod/spider/merge/G/A;->e:I

    :cond_14
    return-void
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/J/k;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/A;->a:Lcom/github/catvod/spider/merge/G/C;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/C;->d()Lcom/github/catvod/spider/merge/H/a;

    move-result-object v0

    iget v1, p0, Lcom/github/catvod/spider/merge/G/A;->e:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/A;->b:Lcom/github/catvod/spider/merge/G/y;

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge/H/a;->c(ILcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/J/k;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lcom/github/catvod/spider/merge/G/s;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/A;->c:Lcom/github/catvod/spider/merge/G/s;

    return-object v0
.end method

.method public final c()Lcom/github/catvod/spider/merge/G/E;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/A;->d:Lcom/github/catvod/spider/merge/G/E;

    return-object v0
.end method

.method protected final d(I)V
    .registers 2

    iput p1, p0, Lcom/github/catvod/spider/merge/G/A;->e:I

    return-void
.end method

.method protected final e(Lcom/github/catvod/spider/merge/G/E;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/A;->d:Lcom/github/catvod/spider/merge/G/E;

    return-void
.end method
