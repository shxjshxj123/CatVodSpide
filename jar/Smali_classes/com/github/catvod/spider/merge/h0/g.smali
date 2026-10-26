.class public final Lcom/github/catvod/spider/merge/h0/g;
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
    .registers 8

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-lez v3, :cond_c4

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->f()Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    new-instance v3, Lcom/github/catvod/spider/merge/h0/f;

    invoke-direct {v3, v2, v1}, Lcom/github/catvod/spider/merge/h0/f;-><init>(Ljava/util/Map;Lcom/github/catvod/spider/merge/V/g;)V

    invoke-static {v3, v0}, Lcom/github/catvod/spider/merge/V/O;->a(Lcom/github/catvod/spider/merge/V/P;Lcom/github/catvod/spider/merge/T/s;)V

    goto :goto_20

    :cond_35
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    const-string v3, "EL_DEPTH"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/L/h;->d(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_5a

    goto :goto_39

    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge/n/a;->j(Lcom/github/catvod/spider/merge/T/m;I)V

    goto :goto_39

    :cond_62
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_66
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "script"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "JX_TEXT"

    if-eqz v2, :cond_97

    new-instance v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {v2, v3}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/T/m;->v0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/n/a;->i(Lcom/github/catvod/spider/merge/T/m;I)V

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/n/a;->j(Lcom/github/catvod/spider/merge/T/m;I)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_97
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->x0()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_9c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_66

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/v;

    new-instance v5, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {v5, v3}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/v;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/T/m;->v0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v5, v2}, Lcom/github/catvod/spider/merge/n/a;->i(Lcom/github/catvod/spider/merge/T/m;I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v5, v4}, Lcom/github/catvod/spider/merge/n/a;->j(Lcom/github/catvod/spider/merge/T/m;I)V

    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_c4
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "text"

    return-object v0
.end method
