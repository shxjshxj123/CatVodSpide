.class public final Lcom/github/catvod/spider/merge/c0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge/V/g;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/V/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c0/a;->a:Lcom/github/catvod/spider/merge/V/g;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c0/a;
    .registers 2

    invoke-static {p0}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->V()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p0

    new-instance v0, Lcom/github/catvod/spider/merge/c0/a;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/c0/a;-><init>(Lcom/github/catvod/spider/merge/V/g;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c0/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :try_start_5
    invoke-static {p1}, Lcom/github/catvod/spider/merge/G/e;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/G/k;

    move-result-object p1

    new-instance v1, Lcom/github/catvod/spider/merge/d0/a;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/d0/a;-><init>(Lcom/github/catvod/spider/merge/G/d;)V

    new-instance p1, Lcom/github/catvod/spider/merge/G/n;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/G/n;-><init>(Lcom/github/catvod/spider/merge/G/G;)V

    new-instance v1, Lcom/github/catvod/spider/merge/d0/D;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/d0/D;-><init>(Lcom/github/catvod/spider/merge/G/H;)V

    new-instance p1, Lcom/github/catvod/spider/merge/i0/a;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/i0/a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/G/x;->t(Lcom/github/catvod/spider/merge/G/p;)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d0/D;->F()Lcom/github/catvod/spider/merge/d0/n;

    move-result-object p1

    new-instance v1, Lcom/github/catvod/spider/merge/e0/g;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/c0/a;->a:Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/e0/g;-><init>(Lcom/github/catvod/spider/merge/V/g;)V

    .line 1
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/d0/n;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    if-nez p1, :cond_3e

    const-string p1, ""

    .line 3
    new-instance v1, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    .line 5
    new-instance v2, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_61
    return-object v0

    :cond_62
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->p()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    new-instance v2, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_85
    return-object v0

    :cond_86
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->r()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_99
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->q()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->s()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_be

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_be

    :cond_b4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    goto :goto_c7

    .line 12
    :cond_be
    :goto_be
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->f()Ljava/lang/Long;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 14
    :goto_c7
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_cb
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->l()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object p1

    .line 15
    new-instance v1, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_de
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->m()Z

    move-result v1

    if-eqz v1, :cond_f1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->b()Ljava/util/Date;

    move-result-object p1

    .line 17
    new-instance v1, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_f1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v1, Lcom/github/catvod/spider/merge/c0/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/c0/b;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_fd} :catch_fe

    return-object v0

    :catch_fe
    move-exception p1

    new-instance v0, Lcom/github/catvod/spider/merge/i0/d;

    const-string v1, "Please check the syntax of your xpath expr or commit a "

    .line 21
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    invoke-static {p1}, Lcom/github/catvod/spider/merge/N/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/github/catvod/spider/merge/i0/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_117

    :goto_116
    throw v0

    :goto_117
    goto :goto_116
.end method
