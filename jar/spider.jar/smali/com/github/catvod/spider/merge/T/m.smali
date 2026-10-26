.class public Lcom/github/catvod/spider/merge/T/m;
.super Lcom/github/catvod/spider/merge/T/s;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/String;


# instance fields
.field private d:Lcom/github/catvod/spider/merge/U/G;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/m;",
            ">;>;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/s;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/github/catvod/spider/merge/T/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/T/m;->h:Ljava/util/List;

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "baseUri"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/T/c;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/T/m;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/U/G;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/T/s;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/github/catvod/spider/merge/T/s;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    if-eqz p2, :cond_13

    .line 1
    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge/T/m;->l(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge/U/E;->d:Lcom/github/catvod/spider/merge/U/E;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/U/G;->m(Ljava/lang/String;Lcom/github/catvod/spider/merge/U/E;)Lcom/github/catvod/spider/merge/U/G;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge/T/m;-><init>(Lcom/github/catvod/spider/merge/U/G;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    return-void
.end method

.method public static synthetic I(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge/T/s;)V
    .registers 2

    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge/T/m;->R(Lcom/github/catvod/spider/merge/T/s;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic J(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge/T/v;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/T/m;->P(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge/T/v;)V

    return-void
.end method

.method static synthetic K(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/U/G;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    return-object p0
.end method

.method private static L(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/V/g;)V
    .registers 4

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    check-cast p0, Lcom/github/catvod/spider/merge/T/m;

    if-eqz p0, :cond_18

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/T/m;->L(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/V/g;)V

    :cond_18
    return-void
.end method

.method private static P(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge/T/v;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    invoke-static {v1}, Lcom/github/catvod/spider/merge/T/m;->n0(Lcom/github/catvod/spider/merge/T/s;)Z

    move-result v1

    if-nez v1, :cond_19

    instance-of p1, p1, Lcom/github/catvod/spider/merge/T/d;

    if-eqz p1, :cond_11

    goto :goto_19

    :cond_11
    invoke-static {p0}, Lcom/github/catvod/spider/merge/T/v;->N(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/github/catvod/spider/merge/S/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1c

    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    return-void
.end method

.method private static R(Lcom/github/catvod/spider/merge/T/s;Ljava/lang/StringBuilder;)V
    .registers 3

    instance-of v0, p0, Lcom/github/catvod/spider/merge/T/v;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/github/catvod/spider/merge/T/v;

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_e
    instance-of v0, p0, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v0, :cond_27

    check-cast p0, Lcom/github/catvod/spider/merge/T/m;

    .line 3
    iget-object p0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/G;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    :goto_27
    return-void
.end method

.method private static f0(Lcom/github/catvod/spider/merge/T/m;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/github/catvod/spider/merge/T/m;",
            ">(",
            "Lcom/github/catvod/spider/merge/T/m;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_12

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_f

    return v2

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return v1
.end method

.method static n0(Lcom/github/catvod/spider/merge/T/s;)Z
    .registers 5

    instance-of v0, p0, Lcom/github/catvod/spider/merge/T/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p0, Lcom/github/catvod/spider/merge/T/m;

    const/4 v0, 0x0

    :cond_8
    iget-object v2, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/U/G;->k()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    :cond_12
    iget-object p0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    check-cast p0, Lcom/github/catvod/spider/merge/T/m;

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1c

    if-nez p0, :cond_8

    :cond_1c
    return v1
.end method


# virtual methods
.method public final F()Lcom/github/catvod/spider/merge/T/s;
    .registers 3

    move-object v0, p0

    .line 1
    :goto_1
    iget-object v1, v0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 2
    :cond_7
    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    return-object v0
.end method

.method public final M(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/s;->D(Lcom/github/catvod/spider/merge/T/s;)V

    :cond_7
    iput-object p0, p1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->n()Ljava/util/List;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p1, Lcom/github/catvod/spider/merge/T/s;->b:I

    return-object p0
.end method

.method public final N(Ljava/util/Collection;)Lcom/github/catvod/spider/merge/T/m;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/github/catvod/spider/merge/T/s;",
            ">;)",
            "Lcom/github/catvod/spider/merge/T/m;"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->h()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_11

    if-gt v1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v3, "Insert position out of bounds."

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge/R/c;->f(ZLjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array p1, v2, [Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {p0, v1, p1}, Lcom/github/catvod/spider/merge/T/s;->b(I[Lcom/github/catvod/spider/merge/T/s;)V

    return-object p0

    .line 2
    :cond_28
    new-instance p1, Lcom/github/catvod/spider/merge/R/d;

    const-string v0, "Children collection to be inserted must not be null."

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final O(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;
    .registers 5

    new-instance v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-static {p0}, Lcom/github/catvod/spider/merge/T/t;->a(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/U/F;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/github/catvod/spider/merge/U/E;->c:Lcom/github/catvod/spider/merge/U/E;

    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge/U/G;->m(Ljava/lang/String;Lcom/github/catvod/spider/merge/U/E;)Lcom/github/catvod/spider/merge/U/G;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, p1, v1, v2}, Lcom/github/catvod/spider/merge/T/m;-><init>(Lcom/github/catvod/spider/merge/U/G;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/T/m;->M(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;

    return-object v0
.end method

.method public final Q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;
    .registers 3

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    new-instance v0, Lcom/github/catvod/spider/merge/T/v;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/T/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/T/m;->M(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;

    return-object p0
.end method

.method public final S(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    iget v1, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/catvod/spider/merge/T/s;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge/T/s;->b(I[Lcom/github/catvod/spider/merge/T/s;)V

    return-object p0
.end method

.method public final T()Lcom/github/catvod/spider/merge/T/m;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    return-object v0
.end method

.method final U()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/m;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->h()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/github/catvod/spider/merge/T/m;->h:Ljava/util/List;

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3f

    :cond_15
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_37

    iget-object v3, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/s;

    instance-of v4, v3, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v4, :cond_34

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->e:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_3f
    return-object v0
.end method

.method public final V()Lcom/github/catvod/spider/merge/V/g;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/V/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public W()Lcom/github/catvod/spider/merge/T/m;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/T/s;->j()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/s;

    instance-of v3, v2, Lcom/github/catvod/spider/merge/T/f;

    if-eqz v3, :cond_21

    check-cast v2, Lcom/github/catvod/spider/merge/T/f;

    .line 1
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 2
    :cond_21
    instance-of v3, v2, Lcom/github/catvod/spider/merge/T/e;

    if-eqz v3, :cond_2c

    check-cast v2, Lcom/github/catvod/spider/merge/T/e;

    .line 3
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 4
    :cond_2c
    instance-of v3, v2, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v3, :cond_37

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->X()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_37
    instance-of v3, v2, Lcom/github/catvod/spider/merge/T/d;

    if-eqz v3, :cond_a

    check-cast v2, Lcom/github/catvod/spider/merge/T/d;

    .line 5
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object v2

    .line 6
    :goto_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_45
    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Y()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    if-nez v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/m;->f0(Lcom/github/catvod/spider/merge/T/m;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final Z()Lcom/github/catvod/spider/merge/V/g;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/V/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/h;-><init>()V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge/V/c;->a(Lcom/github/catvod/spider/merge/V/N;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;
    .registers 3

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/github/catvod/spider/merge/V/w;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/V/w;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge/V/c;->a(Lcom/github/catvod/spider/merge/V/N;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    return-object p1

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b0(Ljava/lang/String;)Z
    .registers 15

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "class"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v2, :cond_5c

    if-ge v2, v9, :cond_19

    goto :goto_5c

    :cond_19
    if-ne v2, v9, :cond_20

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_20
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v2, :cond_4c

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_45

    if-eqz v3, :cond_49

    sub-int v3, v11, v10

    if-ne v3, v9, :cond_43

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_43

    return v12

    :cond_43
    const/4 v3, 0x0

    goto :goto_49

    :cond_45
    if-nez v3, :cond_49

    move v10, v11

    const/4 v3, 0x1

    :cond_49
    :goto_49
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_4c
    if-eqz v3, :cond_5c

    sub-int/2addr v2, v10

    if-ne v2, v9, :cond_5c

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_5c
    :goto_5c
    return v1
.end method

.method public final c0()Z
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/s;

    instance-of v2, v1, Lcom/github/catvod/spider/merge/T/v;

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    check-cast v1, Lcom/github/catvod/spider/merge/T/v;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/v;->M()Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_20
    instance-of v2, v1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->c0()Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->W()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    return-object v0
.end method

.method public final d0()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1b

    iget-object v3, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {v3, v0}, Lcom/github/catvod/spider/merge/T/s;->v(Ljava/lang/Appendable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2
    :cond_1b
    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->y()Lcom/github/catvod/spider/merge/T/h;

    move-result-object v1

    if-eqz v1, :cond_26

    goto :goto_2d

    :cond_26
    new-instance v1, Lcom/github/catvod/spider/merge/T/h;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/T/h;-><init>(Ljava/lang/String;)V

    :goto_2d
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/h;->B0()Lcom/github/catvod/spider/merge/T/g;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/g;->g()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    return-object v0
.end method

.method public final e()Lcom/github/catvod/spider/merge/T/c;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/github/catvod/spider/merge/T/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/T/c;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    return-object v0
.end method

.method public final e0()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    if-eqz v0, :cond_b

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge/T/m;->i:Ljava/lang/String;

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_21

    .line 1
    iget-object v2, v1, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    if-eqz v2, :cond_1c

    .line 2
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/T/c;->q(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_1c

    .line 3
    iget-object v1, v1, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/T/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 4
    :cond_1c
    iget-object v1, v1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    goto :goto_3

    :cond_21
    const-string v0, ""

    :goto_23
    return-object v0
.end method

.method public final g0()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/G;->c()Z

    move-result v0

    return v0
.end method

.method public final h()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h0()Lcom/github/catvod/spider/merge/T/m;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1
    :cond_6
    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/m;->f0(Lcom/github/catvod/spider/merge/T/m;Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_1f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    return-object v0

    :cond_1f
    return-object v1
.end method

.method final i0()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic j()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->W()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    return-object v0
.end method

.method public final j0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/G;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final k(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/s;
    .registers 4

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge/T/s;->k(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/s;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/c;->j()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-object v0, p1, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    new-instance v0, Lcom/github/catvod/spider/merge/T/l;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge/T/l;-><init>(Lcom/github/catvod/spider/merge/T/m;I)V

    iput-object v0, p1, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/R/a;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final k0()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    :goto_5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->h()I

    move-result v2

    if-ge v1, v2, :cond_3f

    iget-object v2, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/s;

    instance-of v3, v2, Lcom/github/catvod/spider/merge/T/v;

    if-eqz v3, :cond_1d

    check-cast v2, Lcom/github/catvod/spider/merge/T/v;

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/T/m;->P(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge/T/v;)V

    goto :goto_3c

    :cond_1d
    instance-of v3, v2, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v3, :cond_3c

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    .line 2
    iget-object v2, v2, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/U/G;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {v0}, Lcom/github/catvod/spider/merge/T/v;->N(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3
    :cond_3f
    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge/T/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/github/catvod/spider/merge/T/c;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/c;

    return-void
.end method

.method public final l0()Lcom/github/catvod/spider/merge/T/m;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    return-object v0
.end method

.method public final m()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public final m0()Lcom/github/catvod/spider/merge/V/g;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/m;->L(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/V/g;)V

    return-object v0
.end method

.method protected final n()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    sget-object v1, Lcom/github/catvod/spider/merge/T/s;->c:Ljava/util/List;

    if-ne v0, v1, :cond_e

    new-instance v0, Lcom/github/catvod/spider/merge/T/l;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/T/l;-><init>(Lcom/github/catvod/spider/merge/T/m;I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    return-object v0
.end method

.method public final o0()Lcom/github/catvod/spider/merge/T/m;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1
    :cond_6
    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/m;->f0(Lcom/github/catvod/spider/merge/T/m;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1b

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    return-object v0

    :cond_1b
    return-object v1
.end method

.method protected final p()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/V/Q;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/N;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge/V/c;->a(Lcom/github/catvod/spider/merge/V/N;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;
    .registers 2

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/V/Q;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/N;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge/V/c;->b(Lcom/github/catvod/spider/merge/V/N;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    return-object p1
.end method

.method final r0(Lcom/github/catvod/spider/merge/T/g;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/g;->g()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_58

    .line 1
    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/G;->a()Z

    move-result p1

    if-nez p1, :cond_20

    .line 2
    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz p1, :cond_1e

    .line 3
    iget-object p1, p1, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/G;->a()Z

    move-result p1

    if-nez p1, :cond_20

    :cond_1e
    const/4 p1, 0x0

    goto :goto_21

    :cond_20
    const/4 p1, 0x1

    :goto_21
    if-eqz p1, :cond_58

    .line 5
    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/G;->f()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 7
    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz p1, :cond_37

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->g0()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 9
    :cond_37
    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    const/4 v2, 0x0

    if-nez p1, :cond_3d

    goto :goto_50

    :cond_3d
    iget v3, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    if-lez v3, :cond_50

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/github/catvod/spider/merge/T/s;

    :cond_50
    :goto_50
    if-eqz v2, :cond_54

    const/4 p1, 0x1

    goto :goto_55

    :cond_54
    const/4 p1, 0x0

    :goto_55
    if-nez p1, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    return v0
.end method

.method public final s0()Lcom/github/catvod/spider/merge/V/g;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-nez v0, :cond_b

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/V/g;-><init>(I)V

    return-object v0

    .line 1
    :cond_b
    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge/V/g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/V/g;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    if-eq v2, p0, :cond_20

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_32
    return-object v1
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/G;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t0()Lcom/github/catvod/spider/merge/U/G;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    return-object v0
.end method

.method public final u0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/G;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->y()Lcom/github/catvod/spider/merge/T/h;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/h;->D0()Lcom/github/catvod/spider/merge/U/F;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/F;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/github/catvod/spider/merge/T/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/T/f;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :cond_22
    new-instance v0, Lcom/github/catvod/spider/merge/T/v;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/T/v;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/T/m;->M(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;

    return-object p0
.end method

.method w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V
    .registers 5

    invoke-virtual {p0, p3}, Lcom/github/catvod/spider/merge/T/m;->r0(Lcom/github/catvod/spider/merge/T/g;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_16

    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge/T/s;->r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V

    :cond_16
    const/16 p2, 0x3c

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    if-eqz p2, :cond_2a

    invoke-virtual {p2, p1, p3}, Lcom/github/catvod/spider/merge/T/c;->p(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge/T/g;)V

    :cond_2a
    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_52

    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/G;->i()Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/T/g;->h()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4c

    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/G;->d()Z

    move-result p2

    if-eqz p2, :cond_4c

    goto :goto_52

    :cond_4c
    const-string p2, " />"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_55

    :cond_52
    :goto_52
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_55
    return-void
.end method

.method public final w0()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge/T/k;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/T/k;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/github/catvod/spider/merge/V/O;->a(Lcom/github/catvod/spider/merge/V/P;Lcom/github/catvod/spider/merge/T/s;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/G;->i()Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_10
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/T/g;->g()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/m;->d:Lcom/github/catvod/spider/merge/U/G;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/G;->a()Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge/T/s;->r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V

    :cond_2a
    :goto_2a
    const-string p2, "</"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3d
    return-void
.end method

.method public final x0()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/s;

    instance-of v3, v2, Lcom/github/catvod/spider/merge/T/v;

    if-eqz v3, :cond_b

    check-cast v2, Lcom/github/catvod/spider/merge/T/v;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final y0()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->h()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    iget-object v3, p0, Lcom/github/catvod/spider/merge/T/m;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/s;

    invoke-static {v3, v0}, Lcom/github/catvod/spider/merge/T/m;->R(Lcom/github/catvod/spider/merge/T/s;Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    return-object v0
.end method
