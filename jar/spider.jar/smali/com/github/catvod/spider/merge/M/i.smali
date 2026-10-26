.class public abstract Lcom/github/catvod/spider/merge/M/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:Lcom/github/catvod/spider/merge/M/i;

.field private static final r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/M/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/M/b;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/M/i;->q:Lcom/github/catvod/spider/merge/M/i;

    new-instance v0, Lcom/github/catvod/spider/merge/M/d;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/M/d;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/M/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/M/f;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/M/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/M/g;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/M/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/M/h;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/M/e;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/M/e;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/M/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/M/c;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/M/i;->r:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->a:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->b:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->d:Z

    const-string v0, "["

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->e:Ljava/lang/String;

    const-string v0, "]"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->f:Ljava/lang/String;

    const-string v0, "="

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->g:Ljava/lang/String;

    const-string v0, ","

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    const-string v0, "{"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    const-string v0, "}"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    const-string v0, "<null>"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->l:Ljava/lang/String;

    const-string v0, "<size="

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->m:Ljava/lang/String;

    const-string v0, ">"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->n:Ljava/lang/String;

    const-string v1, "<"

    iput-object v1, p0, Lcom/github/catvod/spider/merge/M/i;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->p:Ljava/lang/String;

    return-void
.end method

.method static L(Ljava/lang/Object;)V
    .registers 2

    if-eqz p0, :cond_16

    invoke-static {}, Lcom/github/catvod/spider/merge/M/i;->t()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/github/catvod/spider/merge/M/i;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_16
    return-void
.end method

.method static t()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/M/i;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static u(Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/github/catvod/spider/merge/M/i;->t()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/github/catvod/spider/merge/M/i;->r:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    invoke-static {}, Lcom/github/catvod/spider/merge/M/i;->t()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method


# virtual methods
.method protected final A(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    return-void
.end method

.method protected final B()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->h:Z

    return-void
.end method

.method protected final C()V
    .registers 2

    const-string v0, "null"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->l:Ljava/lang/String;

    return-void
.end method

.method protected final D()V
    .registers 2

    const-string v0, ">\""

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->n:Ljava/lang/String;

    return-void
.end method

.method protected final E()V
    .registers 2

    const-string v0, "\"<size="

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->m:Ljava/lang/String;

    return-void
.end method

.method protected final F()V
    .registers 2

    const-string v0, ">\""

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->p:Ljava/lang/String;

    return-void
.end method

.method protected final G()V
    .registers 2

    const-string v0, "\"<"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->o:Ljava/lang/String;

    return-void
.end method

.method protected final H()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->b:Z

    return-void
.end method

.method protected final I()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->a:Z

    return-void
.end method

.method protected final J()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->d:Z

    return-void
.end method

.method protected final K()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->c:Z

    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "value"

    invoke-virtual {p0, p1, v0}, Lcom/github/catvod/spider/merge/M/i;->j(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p2, :cond_d

    .line 1
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_d
    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/github/catvod/spider/merge/M/i;->k(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 3
    :goto_11
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final b(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->j(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected c(Ljava/lang/StringBuffer;C)V
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final d(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    if-lez p3, :cond_7

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    if-nez p4, :cond_f

    .line 1
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    :cond_f
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/github/catvod/spider/merge/M/i;->k(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_13
    return-void
.end method

.method protected e(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected f(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected g(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final h(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/L/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2
    :cond_16
    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-static {p2}, Lcom/github/catvod/spider/merge/M/i;->L(Ljava/lang/Object;)V

    return-void
.end method

.method protected final i(Ljava/lang/StringBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected j(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->a:Z

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    return-void
.end method

.method protected final k(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge/M/i;->t()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_23

    .line 2
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_23

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_23

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_23

    .line 3
    invoke-static {p1, p3}, Lcom/github/catvod/spider/merge/L/d;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_23
    invoke-static {p3}, Lcom/github/catvod/spider/merge/M/i;->u(Ljava/lang/Object;)V

    :try_start_26
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_3c

    if-eqz p4, :cond_34

    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p4}, Lcom/github/catvod/spider/merge/M/i;->f(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_21b

    :cond_34
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    goto :goto_51

    :cond_3c
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_56

    if-eqz p4, :cond_4a

    move-object p2, p3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->g(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    goto/16 :goto_21b

    :cond_4a
    move-object p2, p3

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    :goto_51
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    :cond_56
    instance-of v0, p3, [J
    :try_end_58
    .catchall {:try_start_26 .. :try_end_58} :catchall_21f

    const-string v3, ","

    if-eqz v0, :cond_86

    if-eqz p4, :cond_7d

    :try_start_5e
    move-object p2, p3

    check-cast p2, [J

    .line 5
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_66
    array-length p4, p2

    if-ge v1, p4, :cond_76

    if-lez v1, :cond_6e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6e
    aget-wide v4, p2, v1

    .line 6
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 7
    :cond_76
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21b

    .line 8
    :cond_7d
    move-object p2, p3

    check-cast p2, [J

    .line 9
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    .line 10
    :cond_86
    instance-of v0, p3, [I

    if-eqz v0, :cond_b4

    if-eqz p4, :cond_ab

    move-object p2, p3

    check-cast p2, [I

    .line 11
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_94
    array-length p4, p2

    if-ge v1, p4, :cond_a4

    if-lez v1, :cond_9c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9c
    aget p4, p2, v1

    .line 12
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 13
    :cond_a4
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21b

    .line 14
    :cond_ab
    move-object p2, p3

    check-cast p2, [I

    .line 15
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    .line 16
    :cond_b4
    instance-of v0, p3, [S

    if-eqz v0, :cond_e2

    if-eqz p4, :cond_d9

    move-object p2, p3

    check-cast p2, [S

    .line 17
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_c2
    array-length p4, p2

    if-ge v1, p4, :cond_d2

    if-lez v1, :cond_ca

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ca
    aget-short p4, p2, v1

    .line 18
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 19
    :cond_d2
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21b

    .line 20
    :cond_d9
    move-object p2, p3

    check-cast p2, [S

    .line 21
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    .line 22
    :cond_e2
    instance-of v0, p3, [B

    if-eqz v0, :cond_110

    if-eqz p4, :cond_107

    move-object p2, p3

    check-cast p2, [B

    .line 23
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_f0
    array-length p4, p2

    if-ge v1, p4, :cond_100

    if-lez v1, :cond_f8

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f8
    aget-byte p4, p2, v1

    .line 24
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f0

    .line 25
    :cond_100
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21b

    .line 26
    :cond_107
    move-object p2, p3

    check-cast p2, [B

    .line 27
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    .line 28
    :cond_110
    instance-of v0, p3, [C

    if-eqz v0, :cond_13e

    if-eqz p4, :cond_135

    move-object p2, p3

    check-cast p2, [C

    .line 29
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_11e
    array-length p4, p2

    if-ge v1, p4, :cond_12e

    if-lez v1, :cond_126

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_126
    aget-char p4, p2, v1

    invoke-virtual {p0, p1, p4}, Lcom/github/catvod/spider/merge/M/i;->c(Ljava/lang/StringBuffer;C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11e

    :cond_12e
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21b

    .line 30
    :cond_135
    move-object p2, p3

    check-cast p2, [C

    .line 31
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    .line 32
    :cond_13e
    instance-of v0, p3, [D

    if-eqz v0, :cond_16c

    if-eqz p4, :cond_163

    move-object p2, p3

    check-cast p2, [D

    .line 33
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_14c
    array-length p4, p2

    if-ge v1, p4, :cond_15c

    if-lez v1, :cond_154

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_154
    aget-wide v4, p2, v1

    .line 34
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14c

    .line 35
    :cond_15c
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21b

    .line 36
    :cond_163
    move-object p2, p3

    check-cast p2, [D

    .line 37
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    .line 38
    :cond_16c
    instance-of v0, p3, [F

    if-eqz v0, :cond_19a

    if-eqz p4, :cond_191

    move-object p2, p3

    check-cast p2, [F

    .line 39
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_17a
    array-length p4, p2

    if-ge v1, p4, :cond_18a

    if-lez v1, :cond_182

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_182
    aget p4, p2, v1

    .line 40
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17a

    .line 41
    :cond_18a
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_21b

    .line 42
    :cond_191
    move-object p2, p3

    check-cast p2, [F

    .line 43
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_21b

    .line 44
    :cond_19a
    instance-of v0, p3, [Z

    if-eqz v0, :cond_1c6

    if-eqz p4, :cond_1be

    move-object p2, p3

    check-cast p2, [Z

    .line 45
    iget-object p4, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1a8
    array-length p4, p2

    if-ge v1, p4, :cond_1b8

    if-lez v1, :cond_1b0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b0
    aget-boolean p4, p2, v1

    .line 46
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a8

    .line 47
    :cond_1b8
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21b

    .line 48
    :cond_1be
    move-object p2, p3

    check-cast p2, [Z

    .line 49
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto :goto_21b

    .line 50
    :cond_1c6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_200

    if-eqz p4, :cond_1f8

    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1da
    array-length v0, p4

    if-ge v1, v0, :cond_1f2

    aget-object v0, p4, v1

    if-lez v1, :cond_1e4

    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e4
    if-nez v0, :cond_1ec

    .line 53
    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1ef

    .line 54
    :cond_1ec
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/github/catvod/spider/merge/M/i;->k(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1ef
    add-int/lit8 v1, v1, 0x1

    goto :goto_1da

    .line 55
    :cond_1f2
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21b

    .line 56
    :cond_1f8
    move-object p2, p3

    check-cast p2, [Ljava/lang/Object;

    .line 57
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->n(Ljava/lang/StringBuffer;I)V

    goto :goto_21b

    :cond_200
    if-eqz p4, :cond_206

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge/M/i;->e(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21b

    .line 59
    :cond_206
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 60
    invoke-static {p2}, Lcom/github/catvod/spider/merge/L/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21b
    .catchall {:try_start_5e .. :try_end_21b} :catchall_21f

    .line 62
    :goto_21b
    invoke-static {p3}, Lcom/github/catvod/spider/merge/M/i;->L(Ljava/lang/Object;)V

    return-void

    :catchall_21f
    move-exception p1

    invoke-static {p3}, Lcom/github/catvod/spider/merge/M/i;->L(Ljava/lang/Object;)V

    goto :goto_225

    :goto_224
    throw p1

    :goto_225
    goto :goto_224
.end method

.method protected final l(Ljava/lang/StringBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final m(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 5

    if-eqz p2, :cond_42

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->b:Z

    if-eqz v0, :cond_1d

    invoke-static {p2}, Lcom/github/catvod/spider/merge/M/i;->u(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->c:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_16

    .line 2
    invoke-static {v1}, Lcom/github/catvod/spider/merge/L/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 3
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_1d
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/M/i;->d:Z

    if-eqz v0, :cond_34

    .line 5
    invoke-static {p2}, Lcom/github/catvod/spider/merge/M/i;->u(Ljava/lang/Object;)V

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_34
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-boolean p2, p0, Lcom/github/catvod/spider/merge/M/i;->h:Z

    if-eqz p2, :cond_42

    .line 8
    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_42
    return-void
.end method

.method protected final n(Ljava/lang/StringBuffer;I)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/M/i;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected final p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected final q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected final s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final v()V
    .registers 2

    const-string v0, "]"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->k:Ljava/lang/String;

    return-void
.end method

.method protected final w()V
    .registers 2

    const-string v0, "["

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->j:Ljava/lang/String;

    return-void
.end method

.method protected final x(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/github/catvod/spider/merge/M/i;->f:Ljava/lang/String;

    return-void
.end method

.method protected final y(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/M/i;->e:Ljava/lang/String;

    return-void
.end method

.method protected final z()V
    .registers 2

    const-string v0, ":"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/i;->g:Ljava/lang/String;

    return-void
.end method
