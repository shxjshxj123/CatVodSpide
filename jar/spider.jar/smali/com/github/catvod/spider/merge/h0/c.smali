.class public final Lcom/github/catvod/spider/merge/h0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/e0/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/f;
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->V()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/L/h;->d(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lcom/github/catvod/spider/merge/T/m;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/T/m;->Q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_38
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "node"

    return-object v0
.end method
