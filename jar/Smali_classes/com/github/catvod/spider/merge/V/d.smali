.class public final Lcom/github/catvod/spider/merge/V/d;
.super Lcom/github/catvod/spider/merge/V/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/catvod/spider/merge/V/N;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/f;-><init>()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/V/f;->b()V

    return-void
.end method

.method varargs constructor <init>([Lcom/github/catvod/spider/merge/V/N;)V
    .registers 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/V/d;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge/V/f;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_19

    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/V/N;

    invoke-virtual {v2, p1, p2}, Lcom/github/catvod/spider/merge/V/N;->a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_19
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->f(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
