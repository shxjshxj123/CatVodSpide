.class public Lcom/github/catvod/spider/XPath;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/github/catvod/spider/merge/i/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/XPath;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/i/a;->i()Ljava/lang/String;

    move-result-object p3

    const-string p4, "{cateId}"

    invoke-virtual {p3, p4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "{catePg}"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->u0()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final c()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->a:Ljava/lang/String;

    if-eqz v0, :cond_2b

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/i/a;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/i/a;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    goto :goto_28

    :cond_1e
    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/i/a;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->a:Ljava/lang/String;

    :goto_28
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/XPath;->d(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/XPath;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/github/catvod/spider/XPath;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XPath;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge/c0/a;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/a;

    move-result-object p2

    iget-object p3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/i/a;->r()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/github/catvod/spider/merge/c0/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    :goto_1f
    move-object p4, p2

    check-cast p4, Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p3, v1, :cond_c3

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/i/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/i/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/i/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v3, v2}, Lcom/github/catvod/spider/merge/i/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/i/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge/i/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/github/catvod/spider/merge/n/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b7

    :try_start_94
    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object p4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p4, v4}, Lcom/github/catvod/spider/merge/i/a;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception p4

    invoke-static {p4}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_b7
    new-instance p4, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {p4, v2, v1, v3, v4}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1f

    :cond_c3
    invoke-static {v0}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/XPath;->c()V

    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/i/a;->M()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "{vid}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/XPath;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/c0/a;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/a;

    move-result-object v2

    iget-object v3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/i/a;->L()Ljava/lang/String;

    move-result-object v3

    .line 1
    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/c0/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_37

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/c0/b;

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 2
    :goto_38
    iget-object v4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/i/a;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/i/a;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge/i/a;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/github/catvod/spider/merge/n/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, ""

    if-nez v5, :cond_9b

    :try_start_7a
    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8c} :catch_95

    :try_start_8c
    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge/i/a;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_92} :catch_93

    goto :goto_9c

    :catch_93
    move-exception v7

    goto :goto_97

    :catch_95
    move-exception v7

    move-object v5, v6

    :goto_97
    invoke-static {v7}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_9c

    :cond_9b
    move-object v5, v6

    :goto_9c
    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/i/a;->T()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c9

    :try_start_a8
    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/i/a;->T()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ba} :catch_c3

    :try_start_ba
    iget-object v8, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v8, v7}, Lcom/github/catvod/spider/merge/i/a;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c0} :catch_c1

    goto :goto_ca

    :catch_c1
    move-exception v8

    goto :goto_c5

    :catch_c3
    move-exception v8

    move-object v7, v6

    :goto_c5
    invoke-static {v8}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_ca

    :cond_c9
    move-object v7, v6

    :goto_ca
    iget-object v8, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/i/a;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f7

    :try_start_d6
    iget-object v8, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/i/a;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e8} :catch_f1

    :try_start_e8
    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9, v8}, Lcom/github/catvod/spider/merge/i/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ee} :catch_ef

    goto :goto_f8

    :catch_ef
    move-exception v9

    goto :goto_f3

    :catch_f1
    move-exception v9

    move-object v8, v6

    :goto_f3
    invoke-static {v9}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_f8

    :cond_f7
    move-object v8, v6

    :goto_f8
    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/i/a;->H()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_125

    :try_start_104
    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/i/a;->H()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_116} :catch_11f

    :try_start_116
    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10, v9}, Lcom/github/catvod/spider/merge/i/a;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11c} :catch_11d

    goto :goto_126

    :catch_11d
    move-exception v10

    goto :goto_121

    :catch_11f
    move-exception v10

    move-object v9, v6

    :goto_121
    invoke-static {v10}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_126

    :cond_125
    move-object v9, v6

    :goto_126
    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/i/a;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_153

    :try_start_132
    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/i/a;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_144} :catch_14d

    :try_start_144
    iget-object v11, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v11, v10}, Lcom/github/catvod/spider/merge/i/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14a} :catch_14b

    goto :goto_154

    :catch_14b
    move-exception v11

    goto :goto_14f

    :catch_14d
    move-exception v11

    move-object v10, v6

    :goto_14f
    invoke-static {v11}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_154

    :cond_153
    move-object v10, v6

    :goto_154
    iget-object v11, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v11}, Lcom/github/catvod/spider/merge/i/a;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_181

    :try_start_160
    iget-object v11, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v11}, Lcom/github/catvod/spider/merge/i/a;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_172} :catch_17b

    :try_start_172
    iget-object v12, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v12, v11}, Lcom/github/catvod/spider/merge/i/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_178} :catch_179

    goto :goto_182

    :catch_179
    move-exception v12

    goto :goto_17d

    :catch_17b
    move-exception v12

    move-object v11, v6

    :goto_17d
    invoke-static {v12}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_182

    :cond_181
    move-object v11, v6

    :goto_182
    iget-object v12, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/i/a;->y()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1af

    :try_start_18e
    iget-object v12, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/i/a;->y()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1a0} :catch_1a9

    :try_start_1a0
    iget-object v12, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v12, v3}, Lcom/github/catvod/spider/merge/i/a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a6} :catch_1a7

    goto :goto_1b0

    :catch_1a7
    move-exception v12

    goto :goto_1ab

    :catch_1a9
    move-exception v12

    move-object v3, v6

    :goto_1ab
    invoke-static {v12}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_1b0

    :cond_1af
    move-object v3, v6

    :goto_1b0
    new-instance v12, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v12}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v12, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Lcom/github/catvod/spider/merge/c/i;->o(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Lcom/github/catvod/spider/merge/c/i;->e(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/c/i;->d(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Lcom/github/catvod/spider/merge/c/i;->g(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/i/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/c0/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1e9
    move-object v4, v0

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v3, v5, :cond_216

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/i/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e9

    :cond_216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/i/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/c0/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_226
    move-object v4, v2

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2c0

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->S()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/c0/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_245
    move-object v8, v4

    check-cast v8, Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2a4

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/i/a;->P()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10, v9}, Lcom/github/catvod/spider/merge/i/a;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/i/a;->N()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10, v8}, Lcom/github/catvod/spider/merge/i/a;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "$"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_245

    :cond_2a4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2b3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2b3

    invoke-virtual {p1, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2b3
    const-string v4, "#"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_226

    :cond_2c0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2c6
    if-ltz v1, :cond_2da

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2d7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c6

    :cond_2da
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2e0
    if-ltz v1, :cond_2f4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2f1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e0

    :cond_2f4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2fa
    if-ltz v1, :cond_308

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_305

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_305
    add-int/lit8 v1, v1, -0x1

    goto :goto_2fa

    :cond_308
    const-string v1, "$$$"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, p1}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 12

    invoke-virtual {p0}, Lcom/github/catvod/spider/XPath;->c()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->e()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_49

    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->e()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/github/catvod/spider/merge/c/a;

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->e()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1
    invoke-direct {v4, v5, v3, v2}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_49
    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/XPath;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/c0/a;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/a;

    move-result-object v3

    iget-object v4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/i/a;->e()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractMap;->size()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_bf

    iget-object v4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/i/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/c0/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    :goto_6f
    move-object v7, v4

    check-cast v7, Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v6, v8, :cond_bf

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/i/a;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9, v8}, Lcom/github/catvod/spider/merge/i/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/i/a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9, v7}, Lcom/github/catvod/spider/merge/i/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/github/catvod/spider/merge/c/a;

    .line 3
    invoke-direct {v9, v7, v8, v2}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    :cond_bf
    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/i/a;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_179

    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/i/a;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/github/catvod/spider/merge/c0/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_d5
    move-object v3, v2

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v5, v4, :cond_179

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v6, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/i/a;->d0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v6, v4}, Lcom/github/catvod/spider/merge/i/a;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/i/a;->X()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/i/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v8, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/i/a;->Z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v8, v7}, Lcom/github/catvod/spider/merge/i/a;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/github/catvod/spider/merge/n/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/i/a;->b0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16d

    :try_start_14a
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/i/a;->b0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v3, v8}, Lcom/github/catvod/spider/merge/i/a;->c0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_168} :catch_169

    goto :goto_16d

    :catch_169
    move-exception v3

    invoke-static {v3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_16d
    :goto_16d
    new-instance v3, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v3, v6, v4, v7, v8}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d5

    :cond_179
    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->V()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/github/catvod/spider/merge/c/f;->o(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/github/catvod/spider/XPath;->a:Ljava/lang/String;

    return-void
.end method

.method public isVideoFormat(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    const-string v0, "url=http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ".css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ".html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2e

    :cond_23
    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public manualVideoCheck()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/XPath;->c()V

    iget-object p1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/i/a;->j0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_1c

    :cond_10
    iget-object p1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/i/a;->j0()Ljava/lang/String;

    move-result-object p1

    const-string p3, "{playUrl}"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :goto_1c
    invoke-static {p2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/i/a;->i0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_3b

    iget-object p3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/i/a;->i0()Ljava/lang/String;

    move-result-object p3

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iget-object p3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/i/a;->h0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_52

    iget-object p3, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/i/a;->h0()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Referer"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :cond_52
    new-instance p3, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p3}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/c/f;->h()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p3, p2}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p3, p1}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    invoke-virtual {p0}, Lcom/github/catvod/spider/XPath;->c()V

    iget-object p2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/i/a;->k0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_12

    return-object v0

    :cond_12
    iget-object p2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/i/a;->k0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{wd}"

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XPath;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/i/a;->t0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "json:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d3

    iget-object v0, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/i/a;->t0()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_51
    array-length v4, v0

    if-ge p2, v4, :cond_188

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_c9

    aget-object v4, v0, p2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_60
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_cf

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/i/a;->r0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v8, v7}, Lcom/github/catvod/spider/merge/i/a;->s0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/i/a;->l0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9, v8}, Lcom/github/catvod/spider/merge/i/a;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/i/a;->n0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10, v9}, Lcom/github/catvod/spider/merge/i/a;->o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/github/catvod/spider/merge/n/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/i/a;->p0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v10, v6}, Lcom/github/catvod/spider/merge/i/a;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v10, v8, v7, v9, v6}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_c9
    aget-object v4, v0, p2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_cf
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_51

    :cond_d3
    invoke-static {p2}, Lcom/github/catvod/spider/merge/c0/a;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/a;

    move-result-object p2

    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/i/a;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/c0/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :goto_e1
    move-object v2, p2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_188

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/i/a;->r0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/i/a;->s0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v6, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/i/a;->l0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge/i/a;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/i/a;->n0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/i/a;->o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/github/catvod/spider/merge/n/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/i/a;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17b

    :try_start_154
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/c0/b;

    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/i/a;->p0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/c0/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/c0/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_16c} :catch_175

    :try_start_16c
    iget-object v7, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v7, v2}, Lcom/github/catvod/spider/merge/i/a;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_172} :catch_173

    goto :goto_17c

    :catch_173
    move-exception v7

    goto :goto_177

    :catch_175
    move-exception v7

    move-object v2, v0

    :goto_177
    invoke-static {v7}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_17c

    :cond_17b
    move-object v2, v0

    :goto_17c
    new-instance v7, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v7, v5, v4, v6, v2}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e1

    :cond_188
    invoke-static {v1}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
