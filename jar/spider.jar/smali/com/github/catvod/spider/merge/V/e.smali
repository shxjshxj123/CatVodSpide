.class public final Lcom/github/catvod/spider/merge/V/e;
.super Lcom/github/catvod/spider/merge/V/f;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/f;-><init>()V

    return-void
.end method

.method varargs constructor <init>([Lcom/github/catvod/spider/merge/V/N;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/f;-><init>()V

    iget v0, p0, Lcom/github/catvod/spider/merge/V/f;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/d;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/V/d;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1c
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/V/f;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/github/catvod/spider/merge/V/f;->b:I

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/V/N;

    invoke-virtual {v2, p1, p2}, Lcom/github/catvod/spider/merge/V/N;->a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    const-string v1, ", "

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->f(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
