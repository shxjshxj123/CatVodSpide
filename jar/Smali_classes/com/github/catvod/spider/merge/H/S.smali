.class public final Lcom/github/catvod/spider/merge/H/S;
.super Lcom/github/catvod/spider/merge/H/l;
.source "SourceFile"


# static fields
.field public static final k:Z


# instance fields
.field protected final d:Lcom/github/catvod/spider/merge/G/x;

.field public final e:[Lcom/github/catvod/spider/merge/I/b;

.field protected f:Lcom/github/catvod/spider/merge/J/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/J/d<",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/github/catvod/spider/merge/G/H;

.field protected h:I

.field protected i:Lcom/github/catvod/spider/merge/G/y;

.field protected j:Lcom/github/catvod/spider/merge/I/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT"

    .line 1
    :try_start_2
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 2
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/github/catvod/spider/merge/H/S;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/H/a;[Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/H/Y;)V
    .registers 5

    invoke-direct {p0, p2, p4}, Lcom/github/catvod/spider/merge/H/l;-><init>(Lcom/github/catvod/spider/merge/H/a;Lcom/github/catvod/spider/merge/H/Y;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    iput-object p3, p0, Lcom/github/catvod/spider/merge/H/S;->e:[Lcom/github/catvod/spider/merge/I/b;

    return-void
.end method

.method protected static o(Lcom/github/catvod/spider/merge/H/f;)I
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    if-nez v1, :cond_17

    iget v1, v2, Lcom/github/catvod/spider/merge/H/b;->b:I

    goto :goto_6

    :cond_17
    iget v2, v2, Lcom/github/catvod/spider/merge/H/b;->b:I

    if-eq v2, v1, :cond_6

    return v0

    :cond_1c
    return v1
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b(Lcom/github/catvod/spider/merge/G/H;ILcom/github/catvod/spider/merge/G/y;)I
    .registers 11

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/S;->g:Lcom/github/catvod/spider/merge/G/H;

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge/H/S;->h:I

    iput-object p3, p0, Lcom/github/catvod/spider/merge/H/S;->i:Lcom/github/catvod/spider/merge/G/y;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/S;->e:[Lcom/github/catvod/spider/merge/I/b;

    aget-object v2, v0, p2

    iput-object v2, p0, Lcom/github/catvod/spider/merge/H/S;->j:Lcom/github/catvod/spider/merge/I/b;

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->c()I

    iget p2, p0, Lcom/github/catvod/spider/merge/H/S;->h:I

    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/I/b;->b()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/G/x;->p()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/I/b;->a(I)Lcom/github/catvod/spider/merge/I/e;

    move-result-object v1

    goto :goto_29

    :cond_27
    iget-object v1, v2, Lcom/github/catvod/spider/merge/I/b;->b:Lcom/github/catvod/spider/merge/I/e;

    :goto_29
    if-nez v1, :cond_64

    if-nez p3, :cond_2f

    sget-object p3, Lcom/github/catvod/spider/merge/G/D;->c:Lcom/github/catvod/spider/merge/G/y;

    :cond_2f
    const/4 v1, 0x0

    iget-object v3, v2, Lcom/github/catvod/spider/merge/I/b;->d:Lcom/github/catvod/spider/merge/H/v;

    sget-object v4, Lcom/github/catvod/spider/merge/G/D;->c:Lcom/github/catvod/spider/merge/G/y;

    invoke-virtual {p0, v3, v4, v1}, Lcom/github/catvod/spider/merge/H/S;->i(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/G/D;Z)Lcom/github/catvod/spider/merge/H/f;

    move-result-object v1

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/I/b;->b()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, v2, Lcom/github/catvod/spider/merge/I/b;->b:Lcom/github/catvod/spider/merge/I/e;

    iput-object v1, v3, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/S;->e(Lcom/github/catvod/spider/merge/H/f;)Lcom/github/catvod/spider/merge/H/f;

    move-result-object v1

    new-instance v3, Lcom/github/catvod/spider/merge/I/e;

    invoke-direct {v3, v1}, Lcom/github/catvod/spider/merge/I/e;-><init>(Lcom/github/catvod/spider/merge/H/f;)V

    invoke-virtual {p0, v2, v3}, Lcom/github/catvod/spider/merge/H/S;->d(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;)Lcom/github/catvod/spider/merge/I/e;

    move-result-object v1

    iget-object v3, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/G/x;->p()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/github/catvod/spider/merge/I/b;->c(ILcom/github/catvod/spider/merge/I/e;)V

    goto :goto_64

    :cond_59
    new-instance v3, Lcom/github/catvod/spider/merge/I/e;

    invoke-direct {v3, v1}, Lcom/github/catvod/spider/merge/I/e;-><init>(Lcom/github/catvod/spider/merge/H/f;)V

    invoke-virtual {p0, v2, v3}, Lcom/github/catvod/spider/merge/H/S;->d(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;)Lcom/github/catvod/spider/merge/I/e;

    move-result-object v1

    iput-object v1, v2, Lcom/github/catvod/spider/merge/I/b;->b:Lcom/github/catvod/spider/merge/I/e;

    :cond_64
    :goto_64
    move-object v6, p3

    move-object v3, v1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/catvod/spider/merge/H/S;->l(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;Lcom/github/catvod/spider/merge/G/H;ILcom/github/catvod/spider/merge/G/y;)I

    move-result p3
    :try_end_6d
    .catchall {:try_start_16 .. :try_end_6d} :catchall_78

    iput-object v0, p0, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/H/S;->j:Lcom/github/catvod/spider/merge/I/b;

    invoke-interface {p1, p2}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    return p3

    :catchall_78
    move-exception p3

    iput-object v0, p0, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/H/S;->j:Lcom/github/catvod/spider/merge/I/b;

    invoke-interface {p1, p2}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    throw p3
.end method

.method protected final c(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;ILcom/github/catvod/spider/merge/I/e;)Lcom/github/catvod/spider/merge/I/e;
    .registers 5

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p0, p1, p4}, Lcom/github/catvod/spider/merge/H/S;->d(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;)Lcom/github/catvod/spider/merge/I/e;

    move-result-object p1

    const/4 p4, -0x1

    if-lt p3, p4, :cond_2e

    iget-object p4, p0, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget p4, p4, Lcom/github/catvod/spider/merge/H/a;->f:I

    if-le p3, p4, :cond_12

    goto :goto_2e

    :cond_12
    monitor-enter p2

    :try_start_13
    iget-object p4, p2, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    if-nez p4, :cond_23

    iget-object p4, p0, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget p4, p4, Lcom/github/catvod/spider/merge/H/a;->f:I

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p4, p4, 0x1

    new-array p4, p4, [Lcom/github/catvod/spider/merge/I/e;

    iput-object p4, p2, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    :cond_23
    iget-object p4, p2, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    add-int/lit8 p3, p3, 0x1

    aput-object p1, p4, p3

    monitor-exit p2

    return-object p1

    :catchall_2b
    move-exception p1

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2b

    throw p1

    :cond_2e
    :goto_2e
    return-object p1
.end method

.method protected final d(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;)Lcom/github/catvod/spider/merge/I/e;
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge/H/l;->c:Lcom/github/catvod/spider/merge/I/e;

    if-ne p2, v0, :cond_5

    return-object p2

    :cond_5
    iget-object v0, p1, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p1, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/I/e;

    if-eqz v1, :cond_14

    monitor-exit v0

    return-object v1

    :cond_14
    iget-object v1, p1, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iput v1, p2, Lcom/github/catvod/spider/merge/I/e;->a:I

    iget-object v1, p2, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    .line 1
    iget-boolean v2, v1, Lcom/github/catvod/spider/merge/H/f;->a:Z

    if-nez v2, :cond_2d

    .line 2
    invoke-virtual {v1, p0}, Lcom/github/catvod/spider/merge/H/f;->b(Lcom/github/catvod/spider/merge/H/l;)V

    iget-object v1, p2, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lcom/github/catvod/spider/merge/H/f;->a:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    .line 4
    :cond_2d
    iget-object p1, p1, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p2

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw p1
.end method

.method protected final e(Lcom/github/catvod/spider/merge/H/f;)Lcom/github/catvod/spider/merge/H/f;
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/github/catvod/spider/merge/H/f;

    iget-boolean v2, p1, Lcom/github/catvod/spider/merge/H/f;->h:Z

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/H/b;

    iget v5, v3, Lcom/github/catvod/spider/merge/H/b;->b:I

    if-eq v5, v4, :cond_22

    goto :goto_10

    :cond_22
    iget-object v4, v3, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    iget-object v5, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    iget-object v6, p0, Lcom/github/catvod/spider/merge/H/S;->i:Lcom/github/catvod/spider/merge/G/y;

    invoke-virtual {v4, v5, v6}, Lcom/github/catvod/spider/merge/H/l0;->d(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/l0;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_10

    :cond_2f
    iget-object v5, v3, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v5, v5, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    if-eq v4, v5, :cond_4f

    new-instance v5, Lcom/github/catvod/spider/merge/H/b;

    .line 1
    iget-object v6, v3, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget-object v7, v3, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-direct {v5, v3, v6, v7, v4}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    .line 2
    iget-object v3, p0, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v1, v5, v3}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_10

    :cond_4f
    iget-object v4, p0, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v1, v3, v4}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_10

    :cond_55
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    iget v3, v2, Lcom/github/catvod/spider/merge/H/b;->b:I

    if-ne v3, v4, :cond_6a

    goto :goto_59

    :cond_6a
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/H/b;->c()Z

    move-result v3

    if-nez v3, :cond_89

    iget-object v3, v2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v3, v3, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/H/X;

    if-eqz v3, :cond_89

    iget-object v5, v2, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge/H/X;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_59

    :cond_89
    iget-object v3, p0, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_59

    :cond_8f
    return-object v1
.end method

.method protected final f(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/H/b;",
            "Lcom/github/catvod/spider/merge/H/f;",
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/H/b;",
            ">;ZZIZ)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    iget-object v0, v9, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v0, v0, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v0, :cond_7b

    iget-object v0, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/X;->f()Z

    move-result v0

    if-nez v0, :cond_73

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_13
    iget-object v0, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v0

    if-ge v11, v0, :cond_72

    iget-object v0, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v0, v11}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_3d

    if-eqz p5, :cond_39

    new-instance v0, Lcom/github/catvod/spider/merge/H/b;

    iget-object v1, v9, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    sget-object v2, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    .line 1
    iget-object v3, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    .line 2
    iget-object v1, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {p2, v0, v1}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_6f

    :cond_39
    invoke-virtual/range {p0 .. p7}, Lcom/github/catvod/spider/merge/H/S;->g(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V

    goto :goto_6f

    :cond_3d
    iget-object v0, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v0, v0, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    iget-object v1, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/m;

    iget-object v1, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge/H/X;->c(I)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v1

    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    iget v3, v9, Lcom/github/catvod/spider/merge/H/b;->b:I

    iget-object v4, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/m;ILcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    iget v0, v9, Lcom/github/catvod/spider/merge/H/b;->d:I

    iput v0, v2, Lcom/github/catvod/spider/merge/H/b;->d:I

    add-int/lit8 v6, p6, -0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/github/catvod/spider/merge/H/S;->f(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V

    :goto_6f
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_72
    return-void

    :cond_73
    if-eqz p5, :cond_7b

    iget-object v0, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    return-void

    :cond_7b
    invoke-virtual/range {p0 .. p7}, Lcom/github/catvod/spider/merge/H/S;->g(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V

    return-void
.end method

.method protected final g(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/H/b;",
            "Lcom/github/catvod/spider/merge/H/f;",
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/H/b;",
            ">;ZZIZ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v12, v9, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 1
    iget-boolean v0, v12, Lcom/github/catvod/spider/merge/H/m;->d:Z

    if-nez v0, :cond_13

    .line 2
    iget-object v0, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v10, v9, v0}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    :cond_13
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_15
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v0

    if-ge v14, v0, :cond_261

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-nez v14, :cond_e6

    .line 3
    sget-boolean v2, Lcom/github/catvod/spider/merge/H/S;->k:Z

    if-eqz v2, :cond_26

    goto/16 :goto_e1

    :cond_26
    iget-object v2, v9, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/H/m;->c()I

    move-result v3

    if-ne v3, v0, :cond_e1

    move-object v3, v2

    check-cast v3, Lcom/github/catvod/spider/merge/H/p0;

    iget-boolean v3, v3, Lcom/github/catvod/spider/merge/H/p0;->j:Z

    if-eqz v3, :cond_e1

    iget-object v3, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/H/X;->f()Z

    move-result v3

    if-nez v3, :cond_e1

    iget-object v3, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/H/X;->e()Z

    move-result v3

    if-eqz v3, :cond_47

    goto/16 :goto_e1

    :cond_47
    iget-object v3, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v3

    const/4 v4, 0x0

    :goto_4e
    if-ge v4, v3, :cond_6b

    iget-object v5, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v5, v5, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v6, v4}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/H/m;

    iget v5, v5, Lcom/github/catvod/spider/merge/H/m;->c:I

    iget v6, v2, Lcom/github/catvod/spider/merge/H/m;->c:I

    if-eq v5, v6, :cond_68

    goto/16 :goto_e1

    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_6b
    invoke-virtual {v2, v13}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v4

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    check-cast v4, Lcom/github/catvod/spider/merge/H/u;

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/u;->i:Lcom/github/catvod/spider/merge/H/t;

    iget v4, v4, Lcom/github/catvod/spider/merge/H/m;->b:I

    iget-object v5, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v5, v5, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/t;

    const/4 v5, 0x0

    :goto_82
    if-ge v5, v3, :cond_df

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v6

    iget-object v7, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v7, v7, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v7

    if-ne v7, v1, :cond_e1

    invoke-virtual {v6, v13}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v7

    if-nez v7, :cond_a5

    goto :goto_e1

    :cond_a5
    invoke-virtual {v6, v13}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v7

    iget-object v7, v7, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/H/m;->c()I

    move-result v15

    const/16 v0, 0x8

    if-ne v15, v0, :cond_b6

    if-ne v7, v2, :cond_b6

    goto :goto_da

    :cond_b6
    if-ne v6, v4, :cond_b9

    goto :goto_da

    :cond_b9
    if-ne v7, v4, :cond_bc

    goto :goto_da

    :cond_bc
    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/H/m;->c()I

    move-result v6

    if-ne v6, v0, :cond_e1

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v0

    if-ne v0, v1, :cond_e1

    invoke-virtual {v7, v13}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {v7, v13}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v0

    iget-object v0, v0, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    if-ne v0, v2, :cond_e1

    :goto_da
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0xa

    goto :goto_82

    :cond_df
    const/4 v0, 0x1

    goto :goto_e2

    :cond_e1
    :goto_e1
    const/4 v0, 0x0

    :goto_e2
    if-eqz v0, :cond_e6

    goto/16 :goto_25d

    .line 4
    :cond_e6
    invoke-virtual {v12, v14}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v0

    instance-of v2, v0, Lcom/github/catvod/spider/merge/H/o;

    if-nez v2, :cond_f2

    if-eqz p4, :cond_f2

    const/4 v4, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v4, 0x0

    :goto_f3
    if-nez p6, :cond_f7

    const/4 v2, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v2, 0x0

    .line 5
    :goto_f8
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/t0;->a()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-eq v3, v6, :cond_1a9

    packed-switch v3, :pswitch_data_262

    goto/16 :goto_1da

    :pswitch_106
    move-object v2, v0

    check-cast v2, Lcom/github/catvod/spider/merge/H/o;

    .line 6
    new-instance v3, Lcom/github/catvod/spider/merge/H/b;

    iget-object v2, v2, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 7
    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v3, v9, v2, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    move-object v2, v3

    goto/16 :goto_1fe

    .line 8
    :pswitch_117
    move-object v3, v0

    check-cast v3, Lcom/github/catvod/spider/merge/H/W;

    if-eqz v4, :cond_164

    .line 9
    iget-boolean v5, v3, Lcom/github/catvod/spider/merge/H/W;->d:Z

    if-eqz v5, :cond_124

    if-eqz v5, :cond_164

    if-eqz v2, :cond_164

    :cond_124
    if-eqz p5, :cond_14a

    iget-object v2, v8, Lcom/github/catvod/spider/merge/H/S;->g:Lcom/github/catvod/spider/merge/G/H;

    invoke-interface {v2}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v2

    iget-object v5, v8, Lcom/github/catvod/spider/merge/H/S;->g:Lcom/github/catvod/spider/merge/G/H;

    iget v6, v8, Lcom/github/catvod/spider/merge/H/S;->h:I

    invoke-interface {v5, v6}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    .line 10
    iget-object v5, v8, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v5, v8, Lcom/github/catvod/spider/merge/H/S;->g:Lcom/github/catvod/spider/merge/G/H;

    invoke-interface {v5, v2}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 13
    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v2, v9, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto/16 :goto_1fe

    .line 14
    :cond_14a
    iget-object v2, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    .line 15
    new-instance v6, Lcom/github/catvod/spider/merge/H/k0;

    iget v7, v3, Lcom/github/catvod/spider/merge/H/W;->b:I

    iget v15, v3, Lcom/github/catvod/spider/merge/H/W;->c:I

    invoke-direct {v6, v7, v15, v5}, Lcom/github/catvod/spider/merge/H/k0;-><init>(IIZ)V

    .line 16
    invoke-static {v2, v6}, Lcom/github/catvod/spider/merge/H/l0;->b(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)Lcom/github/catvod/spider/merge/H/l0;

    move-result-object v2

    new-instance v5, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 17
    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-direct {v5, v9, v3, v6, v2}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto/16 :goto_1da

    .line 18
    :cond_164
    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 19
    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v2, v9, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto/16 :goto_1fe

    .line 20
    :pswitch_171
    move-object v2, v0

    check-cast v2, Lcom/github/catvod/spider/merge/H/f0;

    .line 21
    iget-object v3, v2, Lcom/github/catvod/spider/merge/H/f0;->c:Lcom/github/catvod/spider/merge/H/m;

    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget v3, v3, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v5, v3}, Lcom/github/catvod/spider/merge/H/n0;->i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;

    move-result-object v3

    new-instance v5, Lcom/github/catvod/spider/merge/H/b;

    iget-object v2, v2, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 22
    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v5, v9, v2, v3, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto :goto_1da

    :pswitch_188
    if-eqz p7, :cond_1da

    const/4 v2, -0x1

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/github/catvod/spider/merge/H/t0;->d(II)Z

    move-result v2

    if-eqz v2, :cond_1da

    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v0, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 24
    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v2, v9, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto :goto_1fe

    .line 25
    :pswitch_19d
    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v0, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 26
    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v2, v9, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto :goto_1fe

    .line 27
    :cond_1a9
    move-object v3, v0

    check-cast v3, Lcom/github/catvod/spider/merge/H/V;

    if-eqz v4, :cond_1f3

    if-eqz v2, :cond_1f3

    if-eqz p5, :cond_1dc

    .line 28
    iget-object v2, v8, Lcom/github/catvod/spider/merge/H/S;->g:Lcom/github/catvod/spider/merge/G/H;

    invoke-interface {v2}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v2

    iget-object v6, v8, Lcom/github/catvod/spider/merge/H/S;->g:Lcom/github/catvod/spider/merge/G/H;

    iget v7, v8, Lcom/github/catvod/spider/merge/H/S;->h:I

    invoke-interface {v6, v7}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    .line 29
    iget v6, v3, Lcom/github/catvod/spider/merge/H/V;->b:I

    .line 30
    iget-object v7, v8, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    .line 31
    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/G/x;->h(I)Z

    move-result v6

    .line 32
    iget-object v7, v8, Lcom/github/catvod/spider/merge/H/S;->g:Lcom/github/catvod/spider/merge/G/H;

    invoke-interface {v7, v2}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    if-eqz v6, :cond_1da

    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 33
    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v2, v9, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto :goto_1fe

    :cond_1da
    :goto_1da
    move-object v2, v5

    goto :goto_1fe

    .line 34
    :cond_1dc
    iget-object v2, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    .line 35
    new-instance v5, Lcom/github/catvod/spider/merge/H/j0;

    iget v6, v3, Lcom/github/catvod/spider/merge/H/V;->b:I

    invoke-direct {v5, v6}, Lcom/github/catvod/spider/merge/H/j0;-><init>(I)V

    .line 36
    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge/H/l0;->b(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)Lcom/github/catvod/spider/merge/H/l0;

    move-result-object v2

    new-instance v5, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 37
    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-direct {v5, v9, v3, v6, v2}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    goto :goto_1da

    .line 38
    :cond_1f3
    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    .line 39
    iget-object v5, v9, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v9, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v2, v9, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    :goto_1fe
    if-eqz v2, :cond_25d

    .line 40
    iget-object v3, v9, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v3, v3, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v3, :cond_236

    iget-object v3, v8, Lcom/github/catvod/spider/merge/H/S;->j:Lcom/github/catvod/spider/merge/I/b;

    if-eqz v3, :cond_225

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/I/b;->b()Z

    move-result v3

    if-eqz v3, :cond_225

    check-cast v0, Lcom/github/catvod/spider/merge/H/x;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/x;->e()I

    move-result v0

    iget-object v3, v8, Lcom/github/catvod/spider/merge/H/S;->j:Lcom/github/catvod/spider/merge/I/b;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/I/b;->d:Lcom/github/catvod/spider/merge/H/v;

    iget v3, v3, Lcom/github/catvod/spider/merge/H/m;->c:I

    if-ne v0, v3, :cond_225

    .line 41
    iget v0, v2, Lcom/github/catvod/spider/merge/H/b;->d:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v0, v3

    iput v0, v2, Lcom/github/catvod/spider/merge/H/b;->d:I

    .line 42
    :cond_225
    iget v0, v2, Lcom/github/catvod/spider/merge/H/b;->d:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/github/catvod/spider/merge/H/b;->d:I

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_231

    goto :goto_25d

    :cond_231
    iput-boolean v1, v10, Lcom/github/catvod/spider/merge/H/f;->g:Z

    add-int/lit8 v0, p6, -0x1

    goto :goto_24b

    :cond_236
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v1

    if-nez v1, :cond_243

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_243

    goto :goto_25d

    :cond_243
    instance-of v0, v0, Lcom/github/catvod/spider/merge/H/f0;

    if-eqz v0, :cond_24d

    if-ltz p6, :cond_24d

    add-int/lit8 v0, p6, 0x1

    :goto_24b
    move v6, v0

    goto :goto_24f

    :cond_24d
    move/from16 v6, p6

    :goto_24f
    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/github/catvod/spider/merge/H/S;->f(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V

    :cond_25d
    :goto_25d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_15

    :cond_261
    return-void

    :pswitch_data_262
    .packed-switch 0x1
        :pswitch_19d
        :pswitch_188
        :pswitch_171
        :pswitch_117
        :pswitch_188
        :pswitch_106
        :pswitch_188
    .end packed-switch
.end method

.method protected final h(Lcom/github/catvod/spider/merge/H/f;IZ)Lcom/github/catvod/spider/merge/H/f;
    .registers 25

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    if-nez v0, :cond_11

    new-instance v0, Lcom/github/catvod/spider/merge/J/d;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/J/d;-><init>()V

    iput-object v0, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    :cond_11
    new-instance v11, Lcom/github/catvod/spider/merge/H/f;

    invoke-direct {v11, v10}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v12, 0x0

    move-object v13, v12

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/H/b;

    iget-object v2, v1, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v3, v2, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v3, :cond_40

    if-nez v10, :cond_34

    if-ne v9, v14, :cond_1c

    :cond_34
    if-nez v13, :cond_3c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    :cond_3c
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_40
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v2

    :goto_44
    if-ge v15, v2, :cond_1c

    iget-object v3, v1, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v3, v15}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v3

    .line 1
    iget-object v4, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget v4, v4, Lcom/github/catvod/spider/merge/H/a;->f:I

    invoke-virtual {v3, v9, v4}, Lcom/github/catvod/spider/merge/H/t0;->d(II)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    goto :goto_5a

    :cond_59
    move-object v3, v12

    :goto_5a
    if-eqz v3, :cond_6a

    .line 2
    new-instance v4, Lcom/github/catvod/spider/merge/H/b;

    .line 3
    iget-object v5, v1, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v1, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    .line 4
    iget-object v3, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v11, v4, v3}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    :cond_6a
    add-int/lit8 v15, v15, 0x1

    goto :goto_44

    :cond_6d
    const/4 v7, 0x1

    if-nez v13, :cond_81

    if-eq v9, v14, :cond_81

    invoke-virtual {v11}, Lcom/github/catvod/spider/merge/H/f;->size()I

    move-result v0

    if-ne v0, v7, :cond_79

    goto :goto_7f

    :cond_79
    invoke-static {v11}, Lcom/github/catvod/spider/merge/H/S;->o(Lcom/github/catvod/spider/merge/H/f;)I

    move-result v0

    if-eqz v0, :cond_81

    :goto_7f
    move-object v0, v11

    goto :goto_82

    :cond_81
    move-object v0, v12

    :goto_82
    if-nez v0, :cond_c6

    new-instance v6, Lcom/github/catvod/spider/merge/H/f;

    invoke-direct {v6, v10}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    if-ne v9, v14, :cond_93

    const/16 v17, 0x1

    goto :goto_95

    :cond_93
    const/16 v17, 0x0

    :goto_95
    invoke-virtual {v11}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_99
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/H/b;

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v2, v6

    move-object/from16 v3, v16

    move/from16 v5, p3

    move-object/from16 v20, v6

    move/from16 v6, v19

    const/16 v19, 0x1

    move/from16 v7, v17

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/github/catvod/spider/merge/H/S;->f(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V

    move-object/from16 v6, v20

    const/4 v7, 0x1

    goto :goto_99

    :cond_bf
    move-object/from16 v20, v6

    const/16 v19, 0x1

    move-object/from16 v0, v20

    goto :goto_c8

    :cond_c6
    const/16 v19, 0x1

    :goto_c8
    if-ne v9, v14, :cond_126

    if-ne v0, v11, :cond_ce

    const/4 v7, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v7, 0x0

    .line 6
    :goto_cf
    invoke-static {v0}, Lcom/github/catvod/spider/merge/H/b0;->a(Lcom/github/catvod/spider/merge/H/f;)Z

    move-result v1

    if-eqz v1, :cond_d6

    goto :goto_126

    :cond_d6
    new-instance v1, Lcom/github/catvod/spider/merge/H/f;

    iget-boolean v2, v0, Lcom/github/catvod/spider/merge/H/f;->h:Z

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e1
    :goto_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v3, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v4, :cond_f9

    iget-object v3, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_e1

    :cond_f9
    if-eqz v7, :cond_e1

    .line 7
    iget-boolean v4, v3, Lcom/github/catvod/spider/merge/H/m;->d:Z

    if-eqz v4, :cond_e1

    .line 8
    iget-object v4, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge/H/a;->e(Lcom/github/catvod/spider/merge/H/m;)Lcom/github/catvod/spider/merge/J/k;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/J/k;->d(I)Z

    move-result v3

    if-eqz v3, :cond_e1

    iget-object v3, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/a;->d:[Lcom/github/catvod/spider/merge/H/e0;

    iget-object v4, v2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v4, v4, Lcom/github/catvod/spider/merge/H/m;->c:I

    aget-object v3, v3, v4

    new-instance v4, Lcom/github/catvod/spider/merge/H/b;

    .line 9
    iget-object v5, v2, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v6, v2, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    .line 10
    iget-object v2, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v1, v4, v2}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_e1

    :cond_125
    move-object v0, v1

    :cond_126
    :goto_126
    if-eqz v13, :cond_159

    if-eqz v10, :cond_143

    .line 11
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v2, v2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v2, v2, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v2, :cond_12e

    const/4 v15, 0x1

    :cond_141
    if-nez v15, :cond_159

    .line 12
    :cond_143
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_147
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_159

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v8, Lcom/github/catvod/spider/merge/H/S;->f:Lcom/github/catvod/spider/merge/J/d;

    invoke-virtual {v0, v2, v3}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_147

    :cond_159
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/f;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_160

    return-object v12

    :cond_160
    return-object v0
.end method

.method protected final i(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/G/D;Z)Lcom/github/catvod/spider/merge/H/f;
    .registers 14

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    invoke-static {v0, p2}, Lcom/github/catvod/spider/merge/H/X;->a(Lcom/github/catvod/spider/merge/H/a;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/X;

    move-result-object p2

    new-instance v8, Lcom/github/catvod/spider/merge/H/f;

    invoke-direct {v8, p3}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v1

    if-ge v0, v1, :cond_32

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v1

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    new-instance v2, Lcom/github/catvod/spider/merge/H/b;

    add-int/lit8 v9, v0, 0x1

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    invoke-direct {v2, v1, v9, p2, v0}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/m;ILcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    .line 2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v8

    move v5, p3

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/github/catvod/spider/merge/H/S;->f(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/H/f;Ljava/util/Set;ZZIZ)V

    move v0, v9

    goto :goto_c

    :cond_32
    return-object v8
.end method

.method protected final j([Lcom/github/catvod/spider/merge/I/d;Lcom/github/catvod/spider/merge/G/y;)Ljava/util/BitSet;
    .registers 9

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/github/catvod/spider/merge/I/d;->a:Lcom/github/catvod/spider/merge/H/l0;

    sget-object v5, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    if-ne v4, v5, :cond_17

    :goto_11
    iget v3, v3, Lcom/github/catvod/spider/merge/I/d;->b:I

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_1e

    :cond_17
    invoke-virtual {p0, v4, p2}, Lcom/github/catvod/spider/merge/H/S;->k(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/G/y;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_11

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    return-object v0
.end method

.method protected final k(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/G/y;)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    invoke-virtual {p1, v0, p2}, Lcom/github/catvod/spider/merge/H/l0;->c(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Z

    move-result p1

    return p1
.end method

.method protected final l(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;Lcom/github/catvod/spider/merge/G/H;ILcom/github/catvod/spider/merge/G/y;)I
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v5

    move v7, v5

    move-object/from16 v5, p2

    .line 1
    :goto_12
    iget-object v8, v5, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    if-eqz v8, :cond_21

    add-int/lit8 v10, v7, 0x1

    if-ltz v10, :cond_21

    array-length v11, v8

    if-lt v10, v11, :cond_1e

    goto :goto_21

    :cond_1e
    aget-object v8, v8, v10

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v8, 0x0

    :goto_22
    const/4 v10, 0x0

    if-nez v8, :cond_1b3

    .line 2
    iget-object v8, v5, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {v6, v8, v7, v10}, Lcom/github/catvod/spider/merge/H/S;->h(Lcom/github/catvod/spider/merge/H/f;IZ)Lcom/github/catvod/spider/merge/H/f;

    move-result-object v8

    if-nez v8, :cond_34

    sget-object v8, Lcom/github/catvod/spider/merge/H/l;->c:Lcom/github/catvod/spider/merge/I/e;

    invoke-virtual {v6, v1, v5, v7, v8}, Lcom/github/catvod/spider/merge/H/S;->c(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;ILcom/github/catvod/spider/merge/I/e;)Lcom/github/catvod/spider/merge/I/e;

    goto/16 :goto_1b3

    :cond_34
    new-instance v11, Lcom/github/catvod/spider/merge/I/e;

    invoke-direct {v11, v8}, Lcom/github/catvod/spider/merge/I/e;-><init>(Lcom/github/catvod/spider/merge/H/f;)V

    invoke-static {v8}, Lcom/github/catvod/spider/merge/H/S;->o(Lcom/github/catvod/spider/merge/H/f;)I

    move-result v12

    if-eqz v12, :cond_49

    iput-boolean v4, v11, Lcom/github/catvod/spider/merge/I/e;->d:Z

    iget-object v8, v11, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    iput v12, v8, Lcom/github/catvod/spider/merge/H/f;->d:I

    iput v12, v11, Lcom/github/catvod/spider/merge/I/e;->e:I

    goto/16 :goto_f6

    .line 3
    :cond_49
    invoke-static {v8}, Lcom/github/catvod/spider/merge/H/b0;->a(Lcom/github/catvod/spider/merge/H/f;)Z

    move-result v12

    if-eqz v12, :cond_51

    goto/16 :goto_c0

    :cond_51
    invoke-static {v8}, Lcom/github/catvod/spider/merge/H/b0;->b(Lcom/github/catvod/spider/merge/H/f;)Ljava/util/Collection;

    move-result-object v12

    .line 4
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    invoke-virtual {v13}, Ljava/util/BitSet;->cardinality()I

    move-result v13

    if-le v13, v4, :cond_5b

    const/4 v12, 0x1

    goto :goto_70

    :cond_6f
    const/4 v12, 0x0

    :goto_70
    if-eqz v12, :cond_c2

    .line 5
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/catvod/spider/merge/H/b;

    iget-object v15, v14, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/BitSet;

    if-nez v15, :cond_9b

    new-instance v15, Ljava/util/BitSet;

    invoke-direct {v15}, Ljava/util/BitSet;-><init>()V

    iget-object v9, v14, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v12, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    iget v9, v14, Lcom/github/catvod/spider/merge/H/b;->b:I

    invoke-virtual {v15, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_7b

    .line 6
    :cond_a1
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->cardinality()I

    move-result v12

    if-ne v12, v4, :cond_a9

    const/4 v9, 0x1

    goto :goto_be

    :cond_bd
    const/4 v9, 0x0

    :goto_be
    if-nez v9, :cond_c2

    :goto_c0
    const/4 v9, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v9, 0x0

    :goto_c3
    if-eqz v9, :cond_f6

    .line 7
    iget-object v9, v11, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    .line 8
    invoke-static {v8}, Lcom/github/catvod/spider/merge/H/b0;->b(Lcom/github/catvod/spider/merge/H/f;)Ljava/util/Collection;

    move-result-object v8

    .line 9
    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_d6

    .line 10
    :cond_e6
    iput-object v12, v9, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    iput-boolean v4, v11, Lcom/github/catvod/spider/merge/I/e;->g:Z

    iput-boolean v4, v11, Lcom/github/catvod/spider/merge/I/e;->d:Z

    iget-object v8, v11, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    iget-object v8, v8, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v8

    iput v8, v11, Lcom/github/catvod/spider/merge/I/e;->e:I

    :cond_f6
    :goto_f6
    iget-boolean v8, v11, Lcom/github/catvod/spider/merge/I/e;->d:Z

    if-eqz v8, :cond_1ae

    iget-object v8, v11, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    iget-boolean v8, v8, Lcom/github/catvod/spider/merge/H/f;->f:Z

    if-eqz v8, :cond_1ae

    iget-object v8, v6, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget v9, v1, Lcom/github/catvod/spider/merge/I/b;->c:I

    invoke-virtual {v8, v9}, Lcom/github/catvod/spider/merge/H/a;->b(I)Lcom/github/catvod/spider/merge/H/v;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v8

    iget-object v9, v11, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    .line 12
    iget v12, v9, Lcom/github/catvod/spider/merge/H/f;->d:I

    if-eqz v12, :cond_11d

    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    iget v9, v9, Lcom/github/catvod/spider/merge/H/f;->d:I

    invoke-virtual {v12, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_11f

    :cond_11d
    iget-object v12, v9, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    .line 13
    :goto_11f
    iget-object v9, v11, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    add-int/lit8 v13, v8, 0x1

    .line 14
    new-array v13, v13, [Lcom/github/catvod/spider/merge/H/l0;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_129
    :goto_129
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/catvod/spider/merge/H/b;

    iget v15, v14, Lcom/github/catvod/spider/merge/H/b;->b:I

    invoke-virtual {v12, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_129

    iget v15, v14, Lcom/github/catvod/spider/merge/H/b;->b:I

    aget-object v4, v13, v15

    iget-object v14, v14, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    invoke-static {v4, v14}, Lcom/github/catvod/spider/merge/H/l0;->e(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)Lcom/github/catvod/spider/merge/H/l0;

    move-result-object v4

    aput-object v4, v13, v15

    const/4 v4, 0x1

    goto :goto_129

    :cond_14b
    const/4 v4, 0x1

    const/4 v9, 0x0

    :goto_14d
    if-gt v4, v8, :cond_163

    aget-object v14, v13, v4

    if-nez v14, :cond_158

    sget-object v14, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    aput-object v14, v13, v4

    goto :goto_160

    :cond_158
    aget-object v14, v13, v4

    sget-object v15, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    if-eq v14, v15, :cond_160

    add-int/lit8 v9, v9, 0x1

    :cond_160
    :goto_160
    add-int/lit8 v4, v4, 0x1

    goto :goto_14d

    :cond_163
    if-nez v9, :cond_166

    const/4 v13, 0x0

    :cond_166
    if-eqz v13, :cond_1a2

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_16f
    array-length v14, v13

    if-ge v8, v14, :cond_18c

    aget-object v14, v13, v8

    if-eqz v12, :cond_184

    invoke-virtual {v12, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_184

    new-instance v15, Lcom/github/catvod/spider/merge/I/d;

    invoke-direct {v15, v14, v8}, Lcom/github/catvod/spider/merge/I/d;-><init>(Lcom/github/catvod/spider/merge/H/l0;I)V

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_184
    sget-object v15, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    if-eq v14, v15, :cond_189

    const/4 v9, 0x1

    :cond_189
    add-int/lit8 v8, v8, 0x1

    goto :goto_16f

    :cond_18c
    if-nez v9, :cond_190

    const/4 v9, 0x0

    goto :goto_19d

    :cond_190
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/github/catvod/spider/merge/I/d;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [Lcom/github/catvod/spider/merge/I/d;

    .line 16
    :goto_19d
    iput-object v9, v11, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    iput v10, v11, Lcom/github/catvod/spider/merge/I/e;->e:I

    goto :goto_1a8

    :cond_1a2
    invoke-virtual {v12, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    iput v4, v11, Lcom/github/catvod/spider/merge/I/e;->e:I

    .line 17
    :goto_1a8
    iget-object v4, v11, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    if-eqz v4, :cond_1ae

    iput v10, v11, Lcom/github/catvod/spider/merge/I/e;->e:I

    :cond_1ae
    invoke-virtual {v6, v1, v5, v7, v11}, Lcom/github/catvod/spider/merge/H/S;->c(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/I/e;ILcom/github/catvod/spider/merge/I/e;)Lcom/github/catvod/spider/merge/I/e;

    move-result-object v4

    move-object v8, v4

    .line 18
    :cond_1b3
    :goto_1b3
    sget-object v4, Lcom/github/catvod/spider/merge/H/l;->c:Lcom/github/catvod/spider/merge/I/e;

    if-ne v8, v4, :cond_1ca

    iget-object v1, v5, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {v6, v0, v3, v1, v2}, Lcom/github/catvod/spider/merge/H/S;->p(Lcom/github/catvod/spider/merge/G/H;Lcom/github/catvod/spider/merge/G/y;Lcom/github/catvod/spider/merge/H/f;I)Lcom/github/catvod/spider/merge/G/v;

    move-result-object v1

    invoke-interface/range {p3 .. p4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    iget-object v0, v5, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {v6, v0, v3}, Lcom/github/catvod/spider/merge/H/S;->n(Lcom/github/catvod/spider/merge/H/f;Lcom/github/catvod/spider/merge/G/y;)I

    move-result v0

    if-eqz v0, :cond_1c9

    return v0

    :cond_1c9
    throw v1

    :cond_1ca
    iget-boolean v4, v8, Lcom/github/catvod/spider/merge/I/e;->g:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_2a2

    iget-object v4, v8, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    iget-object v7, v8, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    if-eqz v7, :cond_1f9

    invoke-interface/range {p3 .. p3}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v4

    if-eq v4, v2, :cond_1e0

    invoke-interface/range {p3 .. p4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    :cond_1e0
    iget-object v7, v8, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    invoke-virtual {v6, v7, v3}, Lcom/github/catvod/spider/merge/H/S;->j([Lcom/github/catvod/spider/merge/I/d;Lcom/github/catvod/spider/merge/G/y;)Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1f2

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    :cond_1f2
    if-eq v4, v2, :cond_1f7

    invoke-interface {v0, v4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    :cond_1f7
    move-object v12, v7

    goto :goto_1fb

    :cond_1f9
    const/4 v11, 0x1

    move-object v12, v4

    :goto_1fb
    iget-object v4, v1, Lcom/github/catvod/spider/merge/I/b;->d:Lcom/github/catvod/spider/merge/H/v;

    invoke-virtual {v6, v4, v3, v11}, Lcom/github/catvod/spider/merge/H/S;->i(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/G/D;Z)Lcom/github/catvod/spider/merge/H/f;

    move-result-object v4

    iget-object v13, v8, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-interface/range {p3 .. p3}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v11

    .line 19
    iget-object v7, v6, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    if-eqz v7, :cond_21a

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/G/C;->e()Lcom/github/catvod/spider/merge/G/a;

    move-result-object v7

    iget-object v8, v6, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    check-cast v7, Lcom/github/catvod/spider/merge/G/z;

    move-object/from16 v9, p1

    move/from16 v10, p4

    invoke-virtual/range {v7 .. v13}, Lcom/github/catvod/spider/merge/G/z;->a(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V

    .line 20
    :cond_21a
    invoke-interface/range {p3 .. p4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v8

    :goto_222
    invoke-virtual {v6, v4, v8, v7}, Lcom/github/catvod/spider/merge/H/S;->h(Lcom/github/catvod/spider/merge/H/f;IZ)Lcom/github/catvod/spider/merge/H/f;

    move-result-object v13

    if-nez v13, :cond_237

    invoke-virtual {v6, v0, v3, v4, v2}, Lcom/github/catvod/spider/merge/H/S;->p(Lcom/github/catvod/spider/merge/G/H;Lcom/github/catvod/spider/merge/G/y;Lcom/github/catvod/spider/merge/H/f;I)Lcom/github/catvod/spider/merge/G/v;

    move-result-object v1

    invoke-interface/range {p3 .. p4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    invoke-virtual {v6, v4, v3}, Lcom/github/catvod/spider/merge/H/S;->n(Lcom/github/catvod/spider/merge/H/f;Lcom/github/catvod/spider/merge/G/y;)I

    move-result v0

    if-eqz v0, :cond_236

    goto :goto_293

    :cond_236
    throw v1

    :cond_237
    invoke-static {v13}, Lcom/github/catvod/spider/merge/H/b0;->b(Lcom/github/catvod/spider/merge/H/f;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v13}, Lcom/github/catvod/spider/merge/H/S;->o(Lcom/github/catvod/spider/merge/H/f;)I

    move-result v7

    iput v7, v13, Lcom/github/catvod/spider/merge/H/f;->d:I

    if-eqz v7, :cond_245

    move v14, v7

    goto :goto_24c

    .line 21
    :cond_245
    invoke-static {v4}, Lcom/github/catvod/spider/merge/H/b0;->c(Ljava/util/Collection;)I

    move-result v4

    if-eqz v4, :cond_294

    move v14, v4

    .line 22
    :goto_24c
    iget v3, v13, Lcom/github/catvod/spider/merge/H/f;->d:I

    invoke-interface/range {p3 .. p3}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v11

    if-eqz v3, :cond_26a

    .line 23
    iget-object v0, v6, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    if-eqz v0, :cond_292

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/C;->e()Lcom/github/catvod/spider/merge/G/a;

    move-result-object v0

    iget-object v8, v6, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    move-object v7, v0

    check-cast v7, Lcom/github/catvod/spider/merge/G/z;

    move-object/from16 v9, p1

    move/from16 v10, p4

    move v12, v14

    invoke-virtual/range {v7 .. v13}, Lcom/github/catvod/spider/merge/G/z;->b(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IIILcom/github/catvod/spider/merge/H/f;)V

    goto :goto_292

    .line 24
    :cond_26a
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iget-object v0, v13, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_275
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_287

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/H/b;

    iget v3, v3, Lcom/github/catvod/spider/merge/H/b;->b:I

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_275

    :cond_287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move v3, v11

    move-object v5, v13

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/github/catvod/spider/merge/H/S;->q(Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V

    :cond_292
    :goto_292
    move v0, v14

    :goto_293
    return v0

    :cond_294
    if-eq v8, v5, :cond_29f

    invoke-interface/range {p3 .. p3}, Lcom/github/catvod/spider/merge/G/s;->i()V

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v7

    move v8, v7

    :cond_29f
    move-object v4, v13

    const/4 v7, 0x1

    goto :goto_222

    .line 26
    :cond_2a2
    iget-boolean v4, v8, Lcom/github/catvod/spider/merge/I/e;->d:Z

    if-eqz v4, :cond_2e1

    iget-object v4, v8, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    if-nez v4, :cond_2ad

    iget v0, v8, Lcom/github/catvod/spider/merge/I/e;->e:I

    return v0

    :cond_2ad
    invoke-interface/range {p3 .. p3}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v4

    invoke-interface/range {p3 .. p4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    iget-object v5, v8, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    invoke-virtual {v6, v5, v3}, Lcom/github/catvod/spider/merge/H/S;->j([Lcom/github/catvod/spider/merge/I/d;Lcom/github/catvod/spider/merge/G/y;)Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_2da

    const/4 v9, 0x1

    if-eq v5, v9, :cond_2d5

    iget-object v5, v8, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move v3, v4

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/github/catvod/spider/merge/H/S;->q(Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    :cond_2d5
    invoke-virtual {v7, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    :cond_2da
    iget-object v1, v8, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {v6, v0, v3, v1, v2}, Lcom/github/catvod/spider/merge/H/S;->p(Lcom/github/catvod/spider/merge/G/H;Lcom/github/catvod/spider/merge/G/y;Lcom/github/catvod/spider/merge/H/f;I)Lcom/github/catvod/spider/merge/G/v;

    move-result-object v0

    throw v0

    :cond_2e1
    if-eq v7, v5, :cond_2ed

    invoke-interface/range {p3 .. p3}, Lcom/github/catvod/spider/merge/G/s;->i()V

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v5

    move v7, v5

    goto :goto_2ee

    :cond_2ed
    const/4 v4, 0x1

    :goto_2ee
    move-object v5, v8

    goto/16 :goto_12
.end method

.method protected final m(Lcom/github/catvod/spider/merge/H/f;)I
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge/J/k;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/H/b;->b()I

    move-result v3

    if-gtz v3, :cond_2c

    iget-object v3, v2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v3, v3, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/H/X;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_2c
    iget v2, v2, Lcom/github/catvod/spider/merge/H/b;->b:I

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    goto :goto_c

    :cond_32
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/k;->j()I

    move-result p1

    if-nez p1, :cond_39

    return v1

    :cond_39
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/k;->e()I

    move-result p1

    return p1
.end method

.method protected final n(Lcom/github/catvod/spider/merge/H/f;Lcom/github/catvod/spider/merge/G/y;)I
    .registers 9

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/H/f;

    iget-boolean v1, p1, Lcom/github/catvod/spider/merge/H/f;->h:Z

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    new-instance v1, Lcom/github/catvod/spider/merge/H/f;

    iget-boolean v2, p1, Lcom/github/catvod/spider/merge/H/f;->h:Z

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v3, v2, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    sget-object v4, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_30

    invoke-virtual {p0, v3, p2}, Lcom/github/catvod/spider/merge/H/S;->k(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/G/y;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_30

    .line 2
    :cond_2c
    invoke-virtual {v1, v2, v5}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_12

    :cond_30
    :goto_30
    invoke-virtual {v0, v2, v5}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_12

    .line 3
    :cond_34
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/H/S;->m(Lcom/github/catvod/spider/merge/H/f;)I

    move-result p1

    if-eqz p1, :cond_3b

    return p1

    :cond_3b
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/f;->size()I

    move-result p1

    if-lez p1, :cond_48

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/S;->m(Lcom/github/catvod/spider/merge/H/f;)I

    move-result p1

    if-eqz p1, :cond_48

    return p1

    :cond_48
    const/4 p1, 0x0

    return p1
.end method

.method protected final p(Lcom/github/catvod/spider/merge/G/H;Lcom/github/catvod/spider/merge/G/y;Lcom/github/catvod/spider/merge/H/f;I)Lcom/github/catvod/spider/merge/G/v;
    .registers 11

    new-instance p3, Lcom/github/catvod/spider/merge/G/v;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    invoke-interface {p1, p4}, Lcom/github/catvod/spider/merge/G/H;->get(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v3

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Lcom/github/catvod/spider/merge/G/H;->f(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v4

    move-object v0, p3

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge/G/v;-><init>(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/G/H;Lcom/github/catvod/spider/merge/G/E;Lcom/github/catvod/spider/merge/G/E;Lcom/github/catvod/spider/merge/G/y;)V

    return-object p3
.end method

.method protected final q(Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V
    .registers 14

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/C;->e()Lcom/github/catvod/spider/merge/G/a;

    move-result-object v0

    iget-object v2, p0, Lcom/github/catvod/spider/merge/H/S;->d:Lcom/github/catvod/spider/merge/G/x;

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/G/z;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/github/catvod/spider/merge/G/z;->c(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V

    :cond_15
    return-void
.end method
