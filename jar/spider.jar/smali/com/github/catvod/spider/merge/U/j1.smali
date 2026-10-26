.class abstract Lcom/github/catvod/spider/merge/U/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/github/catvod/spider/merge/U/F;

.field b:Lcom/github/catvod/spider/merge/U/a;

.field c:Lcom/github/catvod/spider/merge/U/S;

.field protected d:Lcom/github/catvod/spider/merge/T/h;

.field protected e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge/T/m;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field protected g:Lcom/github/catvod/spider/merge/U/P;

.field protected h:Lcom/github/catvod/spider/merge/U/E;

.field protected i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/U/G;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/github/catvod/spider/merge/U/N;

.field private k:Lcom/github/catvod/spider/merge/U/M;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/U/N;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/N;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->j:Lcom/github/catvod/spider/merge/U/N;

    new-instance v0, Lcom/github/catvod/spider/merge/U/M;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/M;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->k:Lcom/github/catvod/spider/merge/U/M;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/github/catvod/spider/merge/T/m;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    goto :goto_15

    :cond_13
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->d:Lcom/github/catvod/spider/merge/T/h;

    :goto_15
    return-object v0
.end method

.method protected final b(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/j1;->a()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method protected c(Ljava/io/Reader;Lcom/github/catvod/spider/merge/U/F;)V
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge/T/h;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/T/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->d:Lcom/github/catvod/spider/merge/T/h;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge/T/h;->C0(Lcom/github/catvod/spider/merge/U/F;)Lcom/github/catvod/spider/merge/T/h;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/U/j1;->a:Lcom/github/catvod/spider/merge/U/F;

    sget-object v0, Lcom/github/catvod/spider/merge/U/E;->c:Lcom/github/catvod/spider/merge/U/E;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->h:Lcom/github/catvod/spider/merge/U/E;

    new-instance v0, Lcom/github/catvod/spider/merge/U/a;

    const v2, 0x8000

    .line 1
    invoke-direct {v0, p1, v2}, Lcom/github/catvod/spider/merge/U/a;-><init>(Ljava/io/Reader;I)V

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->b:Lcom/github/catvod/spider/merge/U/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/F;->c()Z

    move-result p1

    if-nez p1, :cond_24

    const/4 p1, 0x0

    goto :goto_25

    :cond_24
    const/4 p1, 0x1

    :goto_25
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/U/a;->O(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/j1;->g:Lcom/github/catvod/spider/merge/U/P;

    new-instance p1, Lcom/github/catvod/spider/merge/U/S;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->b:Lcom/github/catvod/spider/merge/U/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/F;->a()Lcom/github/catvod/spider/merge/U/D;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/github/catvod/spider/merge/U/S;-><init>(Lcom/github/catvod/spider/merge/U/a;Lcom/github/catvod/spider/merge/U/D;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/j1;->c:Lcom/github/catvod/spider/merge/U/S;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/j1;->i:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/github/catvod/spider/merge/U/j1;->f:Ljava/lang/String;

    return-void
.end method

.method protected abstract d(Ljava/lang/String;)Z
.end method

.method protected abstract e(Lcom/github/catvod/spider/merge/U/P;)Z
.end method

.method protected final f(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->g:Lcom/github/catvod/spider/merge/U/P;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/j1;->k:Lcom/github/catvod/spider/merge/U/M;

    if-ne v0, v1, :cond_13

    new-instance v0, Lcom/github/catvod/spider/merge/U/M;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/M;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/U/O;->v(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/U/j1;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_13
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/O;->y()Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/U/O;->v(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/U/j1;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/github/catvod/spider/merge/T/c;)Z
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->j:Lcom/github/catvod/spider/merge/U/N;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/j1;->g:Lcom/github/catvod/spider/merge/U/P;

    const-string v2, "input"

    if-ne v1, v0, :cond_1c

    new-instance v0, Lcom/github/catvod/spider/merge/U/N;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/N;-><init>()V

    .line 1
    iput-object v2, v0, Lcom/github/catvod/spider/merge/U/O;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    .line 2
    :goto_11
    invoke-static {v2}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/U/j1;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_1c
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/N;->y()Lcom/github/catvod/spider/merge/U/O;

    .line 5
    iput-object v2, v0, Lcom/github/catvod/spider/merge/U/O;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    goto :goto_11
.end method

.method protected final h(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->j:Lcom/github/catvod/spider/merge/U/N;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/j1;->g:Lcom/github/catvod/spider/merge/U/P;

    if-ne v1, v0, :cond_c

    new-instance v0, Lcom/github/catvod/spider/merge/U/N;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/N;-><init>()V

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/N;->y()Lcom/github/catvod/spider/merge/U/O;

    :goto_f
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/U/O;->v(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/U/j1;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1
.end method

.method protected final i(Ljava/lang/String;Lcom/github/catvod/spider/merge/U/E;)Lcom/github/catvod/spider/merge/U/G;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/j1;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/U/G;

    if-nez v0, :cond_13

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/U/G;->m(Ljava/lang/String;Lcom/github/catvod/spider/merge/U/E;)Lcom/github/catvod/spider/merge/U/G;

    move-result-object v0

    iget-object p2, p0, Lcom/github/catvod/spider/merge/U/j1;->i:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method
