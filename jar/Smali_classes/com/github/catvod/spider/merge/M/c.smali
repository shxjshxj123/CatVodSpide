.class final Lcom/github/catvod/spider/merge/M/c;
.super Lcom/github/catvod/spider/merge/M/i;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/M/i;-><init>()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->H()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->J()V

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/M/i;->y(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/M/i;->x(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->w()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->v()V

    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/M/i;->A(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->z()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->C()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->G()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->F()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->E()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->D()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method protected final c(Ljava/lang/StringBuffer;C)V
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lcom/github/catvod/spider/merge/L/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final e(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    if-nez p3, :cond_6

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/M/i;->l(Ljava/lang/StringBuffer;)V

    return-void

    :cond_6
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_5b

    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_f

    goto :goto_5b

    :cond_f
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_57

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    goto :goto_57

    :cond_18
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-nez v1, :cond_53

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    if-eqz v2, :cond_4f

    goto :goto_53

    .line 3
    :cond_4f
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge/M/c;->e(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_53
    :goto_53
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void

    :cond_57
    :goto_57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void

    :cond_5b
    :goto_5b
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x22

    .line 4
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lcom/github/catvod/spider/merge/L/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final f(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    if-eqz p3, :cond_2d

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/github/catvod/spider/merge/M/i;->d(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    move v0, v2

    goto :goto_14

    :cond_25
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_2d
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final g(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-eqz p2, :cond_53

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_31
    if-eqz v4, :cond_19

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    goto :goto_3a

    :cond_37
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/M/i;->i(Ljava/lang/StringBuffer;)V

    :goto_3a
    invoke-virtual {p0, p1, v4}, Lcom/github/catvod/spider/merge/M/c;->j(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_47

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/M/i;->l(Ljava/lang/StringBuffer;)V

    goto :goto_19

    :cond_47
    invoke-virtual {p0, p1, v4, v2, v0}, Lcom/github/catvod/spider/merge/M/i;->k(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_19

    :cond_4b
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/M/i;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final j(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5

    const-string v0, "\""

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-static {p2}, Lcom/github/catvod/spider/merge/L/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->j(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method
