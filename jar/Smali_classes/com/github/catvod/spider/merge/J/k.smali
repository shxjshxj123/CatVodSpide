.class public final Lcom/github/catvod/spider/merge/J/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/J/g;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/J/j;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    const v1, 0x10ffff

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/J/k;->g(II)Lcom/github/catvod/spider/merge/J/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/J/k;->i()V

    new-instance v1, Lcom/github/catvod/spider/merge/J/k;

    new-array v0, v0, [I

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/J/k;->i()V

    return-void
.end method

.method public varargs constructor <init>([I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public static g(II)Lcom/github/catvod/spider/merge/J/k;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/J/k;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-virtual {v0, p0, p1}, Lcom/github/catvod/spider/merge/J/k;->b(II)V

    return-object v0
.end method

.method public static k(Lcom/github/catvod/spider/merge/J/k;Lcom/github/catvod/spider/merge/J/k;)Lcom/github/catvod/spider/merge/J/k;
    .registers 10

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/k;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1
    new-instance p0, Lcom/github/catvod/spider/merge/J/k;

    new-array p1, v1, [I

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    return-object p0

    .line 2
    :cond_f
    new-instance v0, Lcom/github/catvod/spider/merge/J/k;

    new-array v2, v1, [I

    .line 3
    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/J/k;->c(Lcom/github/catvod/spider/merge/J/g;)Lcom/github/catvod/spider/merge/J/k;

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/J/k;->f()Z

    move-result p0

    if-eqz p0, :cond_21

    goto/16 :goto_85

    :cond_21
    const/4 p0, 0x0

    :goto_22
    iget-object v2, v0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_85

    iget-object v2, p1, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_85

    iget-object v2, v0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/J/j;

    iget-object v3, p1, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/J/j;

    iget v4, v3, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget v5, v2, Lcom/github/catvod/spider/merge/J/j;->a:I

    if-ge v4, v5, :cond_49

    goto :goto_7e

    :cond_49
    iget v3, v3, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v2, v2, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-le v3, v2, :cond_50

    goto :goto_76

    :cond_50
    const/4 v6, 0x0

    if-le v3, v5, :cond_5b

    new-instance v7, Lcom/github/catvod/spider/merge/J/j;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v7, v5, v3}, Lcom/github/catvod/spider/merge/J/j;-><init>(II)V

    goto :goto_5c

    :cond_5b
    move-object v7, v6

    :goto_5c
    if-ge v4, v2, :cond_65

    new-instance v6, Lcom/github/catvod/spider/merge/J/j;

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v6, v4, v2}, Lcom/github/catvod/spider/merge/J/j;-><init>(II)V

    :cond_65
    iget-object v2, v0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    if-eqz v7, :cond_79

    invoke-virtual {v2, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_76

    iget-object v2, v0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7e

    :cond_76
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_79
    if-eqz v6, :cond_81

    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_7e
    add-int/lit8 p0, p0, 0x1

    goto :goto_22

    :cond_81
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_22

    :cond_85
    :goto_85
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/J/k;->b:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p1, p1}, Lcom/github/catvod/spider/merge/J/k;->b(II)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t alter readonly IntervalSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(II)V
    .registers 8

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/J/j;->b(II)Lcom/github/catvod/spider/merge/J/j;

    move-result-object p1

    .line 1
    iget-boolean p2, p0, Lcom/github/catvod/spider/merge/J/k;->b:Z

    if-nez p2, :cond_a1

    iget p2, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget v0, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    if-ge p2, v0, :cond_10

    goto/16 :goto_a0

    :cond_10
    iget-object p2, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :cond_16
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/J/j;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/J/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto/16 :goto_a0

    .line 2
    :cond_2a
    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v2, v0, Lcom/github/catvod/spider/merge/J/j;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3d

    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget v2, v0, Lcom/github/catvod/spider/merge/J/j;->a:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v1, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    :goto_3e
    if-nez v1, :cond_5c

    .line 3
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/J/j;->a(Lcom/github/catvod/spider/merge/J/j;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_5c

    .line 4
    :cond_47
    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v0, v0, Lcom/github/catvod/spider/merge/J/j;->a:I

    if-ge v1, v0, :cond_52

    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-ge v1, v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    :goto_53
    if-eqz v3, :cond_16

    .line 5
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_a0

    :cond_5c
    :goto_5c
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/J/j;->c(Lcom/github/catvod/spider/merge/J/j;)Lcom/github/catvod/spider/merge/J/j;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    :goto_63
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/J/j;

    .line 6
    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v2, v0, Lcom/github/catvod/spider/merge/J/j;->b:I

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_80

    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget v2, v0, Lcom/github/catvod/spider/merge/J/j;->a:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_7e

    goto :goto_80

    :cond_7e
    const/4 v1, 0x0

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v1, 0x1

    :goto_81
    if-nez v1, :cond_8a

    .line 7
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/J/j;->a(Lcom/github/catvod/spider/merge/J/j;)Z

    move-result v1

    if-eqz v1, :cond_8a

    goto :goto_a0

    :cond_8a
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/J/j;->c(Lcom/github/catvod/spider/merge/J/j;)Lcom/github/catvod/spider/merge/J/j;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_63

    :cond_9b
    iget-object p2, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    :goto_a0
    return-void

    :cond_a1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "can\'t alter readonly IntervalSet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_aa

    :goto_a9
    throw p1

    :goto_aa
    goto :goto_a9
.end method

.method public final c(Lcom/github/catvod/spider/merge/J/g;)Lcom/github/catvod/spider/merge/J/k;
    .registers 8

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    instance-of v0, p1, Lcom/github/catvod/spider/merge/J/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    check-cast p1, Lcom/github/catvod/spider/merge/J/k;

    iget-object v0, p1, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_66

    iget-object v2, p1, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/J/j;

    iget v3, v2, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v2, v2, Lcom/github/catvod/spider/merge/J/j;->b:I

    invoke-virtual {p0, v3, v2}, Lcom/github/catvod/spider/merge/J/k;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    check-cast p1, Lcom/github/catvod/spider/merge/J/k;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_31
    if-ge v1, v2, :cond_4e

    iget-object v3, p1, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/J/j;

    iget v4, v3, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v3, v3, Lcom/github/catvod/spider/merge/J/j;->b:I

    :goto_3f
    if-gt v4, v3, :cond_4b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 2
    :cond_4e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    goto :goto_52

    :cond_66
    return-object p0
.end method

.method public final d(I)Z
    .registers 9

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-gt v3, v0, :cond_27

    add-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/J/j;

    iget v6, v5, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v5, v5, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-ge v5, p1, :cond_21

    add-int/lit8 v3, v4, 0x1

    goto :goto_a

    :cond_21
    if-le v6, p1, :cond_26

    add-int/lit8 v0, v4, -0x1

    goto :goto_a

    :cond_26
    return v1

    :cond_27
    return v2
.end method

.method public final e()I
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/k;->f()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/J/j;

    iget v0, v0, Lcom/github/catvod/spider/merge/J/j;->a:I

    return v0

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_12

    instance-of v0, p1, Lcom/github/catvod/spider/merge/J/k;

    if-nez v0, :cond_7

    goto :goto_12

    :cond_7
    check-cast p1, Lcom/github/catvod/spider/merge/J/k;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final h()V
    .registers 8

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/J/k;->b:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_42

    iget-object v2, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/J/j;

    iget v3, v2, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v4, v2, Lcom/github/catvod/spider/merge/J/j;->b:I

    const/4 v5, -0x2

    if-ge v5, v3, :cond_1d

    goto :goto_42

    :cond_1d
    if-ne v5, v3, :cond_27

    if-ne v5, v4, :cond_27

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_42

    :cond_27
    if-ne v5, v3, :cond_2e

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/github/catvod/spider/merge/J/j;->a:I

    goto :goto_42

    :cond_2e
    const/4 v6, -0x1

    if-ne v5, v4, :cond_35

    add-int/2addr v4, v6

    iput v4, v2, Lcom/github/catvod/spider/merge/J/j;->b:I

    goto :goto_42

    :cond_35
    if-le v5, v3, :cond_3f

    if-ge v5, v4, :cond_3f

    const/4 v3, -0x3

    iput v3, v2, Lcom/github/catvod/spider/merge/J/j;->b:I

    invoke-virtual {p0, v6, v4}, Lcom/github/catvod/spider/merge/J/k;->b(II)V

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_42
    :goto_42
    return-void

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4c

    :goto_4b
    throw v0

    :goto_4c
    goto :goto_4b
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/J/j;

    iget v3, v2, Lcom/github/catvod/spider/merge/J/j;->a:I

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v1

    iget v2, v2, Lcom/github/catvod/spider/merge/J/j;->b:I

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v1

    goto :goto_7

    :cond_20
    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final i()V
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/J/k;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/J/k;->b:Z

    return-void
.end method

.method public final j()I
    .registers 7

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/J/j;

    iget v2, v0, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget v0, v0, Lcom/github/catvod/spider/merge/J/j;->a:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-ge v2, v0, :cond_2e

    iget-object v4, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/J/j;

    iget v5, v4, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget v4, v4, Lcom/github/catvod/spider/merge/J/j;->a:I

    sub-int/2addr v5, v4

    add-int/2addr v5, v1

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    return v3
.end method

.method public final l(Lcom/github/catvod/spider/merge/G/I;)Ljava/lang/String;
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_86

    :cond_11
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/k;->j()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/J/j;

    iget v4, v3, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v3, v3, Lcom/github/catvod/spider/merge/J/j;->b:I

    const-string v5, ", "

    const-string v6, "<EPSILON>"

    const-string v7, "<EOF>"

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-ne v4, v3, :cond_4f

    if-ne v4, v9, :cond_41

    move-object v6, v7

    goto :goto_4b

    :cond_41
    if-ne v4, v8, :cond_44

    goto :goto_4b

    .line 1
    :cond_44
    move-object v3, p1

    check-cast v3, Lcom/github/catvod/spider/merge/G/J;

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/G/J;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 2
    :goto_4b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    :cond_4f
    move v10, v4

    :goto_50
    if-gt v10, v3, :cond_6c

    if-le v10, v4, :cond_57

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    if-ne v10, v9, :cond_5b

    move-object v11, v7

    goto :goto_66

    :cond_5b
    if-ne v10, v8, :cond_5f

    move-object v11, v6

    goto :goto_66

    .line 3
    :cond_5f
    move-object v11, p1

    check-cast v11, Lcom/github/catvod/spider/merge/G/J;

    invoke-virtual {v11, v10}, Lcom/github/catvod/spider/merge/G/J;->a(I)Ljava/lang/String;

    move-result-object v11

    .line 4
    :goto_66
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_50

    :cond_6c
    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_76
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/k;->j()I

    move-result p1

    if-le p1, v2, :cond_81

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_86
    :goto_86
    const-string p1, "{}"

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_68

    :cond_10
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/k;->j()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1c

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/J/j;

    iget v4, v3, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v3, v3, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-ne v4, v3, :cond_41

    const/4 v3, -0x1

    if-ne v4, v3, :cond_3d

    const-string v3, "<EOF>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_3d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_58
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/k;->j()I

    move-result v1

    if-le v1, v2, :cond_63

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :cond_68
    :goto_68
    const-string v0, "{}"

    :goto_6a
    return-object v0
.end method
