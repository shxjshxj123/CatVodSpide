.class public abstract Lcom/github/catvod/spider/merge/H/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/H/k0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/H/k0;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/H/k0;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 4

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/H/l0;

    instance-of v2, v1, Lcom/github/catvod/spider/merge/H/j0;

    if-eqz v2, :cond_5

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    check-cast v1, Lcom/github/catvod/spider/merge/H/j0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_25
    if-nez v0, :cond_2b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2b
    return-object v0
.end method

.method public static b(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)Lcom/github/catvod/spider/merge/H/l0;
    .registers 4

    if-eqz p0, :cond_1d

    sget-object v0, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    if-ne p0, v0, :cond_7

    goto :goto_1d

    :cond_7
    if-eqz p1, :cond_1c

    if-ne p1, v0, :cond_c

    goto :goto_1c

    :cond_c
    new-instance v0, Lcom/github/catvod/spider/merge/H/g0;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/H/g0;-><init>(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)V

    iget-object p0, v0, Lcom/github/catvod/spider/merge/H/g0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    array-length p1, p0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1b
    return-object v0

    :cond_1c
    :goto_1c
    return-object p0

    :cond_1d
    :goto_1d
    return-object p1
.end method

.method public static e(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)Lcom/github/catvod/spider/merge/H/l0;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    sget-object v0, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    if-eq p0, v0, :cond_1c

    if-ne p1, v0, :cond_d

    goto :goto_1c

    :cond_d
    new-instance v0, Lcom/github/catvod/spider/merge/H/h0;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/H/h0;-><init>(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)V

    iget-object p0, v0, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    array-length p1, p0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1c

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1c
    :goto_1c
    return-object v0
.end method


# virtual methods
.method public abstract c(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Lcom/github/catvod/spider/merge/G/D;",
            ")Z"
        }
    .end annotation
.end method

.method public d(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/l0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Lcom/github/catvod/spider/merge/G/D;",
            ")",
            "Lcom/github/catvod/spider/merge/H/l0;"
        }
    .end annotation

    return-object p0
.end method
