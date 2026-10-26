.class public abstract Lcom/github/catvod/spider/merge/G/t;
.super Lcom/github/catvod/spider/merge/G/C;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/G/G;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/G/C<",
        "Ljava/lang/Integer;",
        "Lcom/github/catvod/spider/merge/H/B;",
        ">;",
        "Lcom/github/catvod/spider/merge/G/G;"
    }
.end annotation


# instance fields
.field public d:Lcom/github/catvod/spider/merge/G/d;

.field protected e:Lcom/github/catvod/spider/merge/J/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/J/m<",
            "Lcom/github/catvod/spider/merge/G/G;",
            "Lcom/github/catvod/spider/merge/G/d;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/github/catvod/spider/merge/G/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/G/F<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Lcom/github/catvod/spider/merge/G/E;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Lcom/github/catvod/spider/merge/J/i;

.field public o:I


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/d;)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/G/C;-><init>()V

    sget-object v0, Lcom/github/catvod/spider/merge/G/m;->a:Lcom/github/catvod/spider/merge/G/m;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->f:Lcom/github/catvod/spider/merge/G/m;

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/G/t;->h:I

    new-instance v0, Lcom/github/catvod/spider/merge/J/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/J/i;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->n:Lcom/github/catvod/spider/merge/J/i;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/G/t;->o:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    new-instance v0, Lcom/github/catvod/spider/merge/J/m;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/J/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->e:Lcom/github/catvod/spider/merge/J/m;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 2
    check-cast v0, Lcom/github/catvod/spider/merge/H/B;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/B;->g()I

    move-result v0

    return v0
.end method

.method public final b()Lcom/github/catvod/spider/merge/G/d;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    return-object v0
.end method

.method public final c()Lcom/github/catvod/spider/merge/G/F;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/G/F<",
            "+",
            "Lcom/github/catvod/spider/merge/G/E;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->f:Lcom/github/catvod/spider/merge/G/m;

    return-object v0
.end method

.method public final getLine()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 2
    check-cast v0, Lcom/github/catvod/spider/merge/H/B;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/B;->h()I

    move-result v0

    return v0
.end method

.method public final j()Lcom/github/catvod/spider/merge/G/E;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 2
    check-cast v0, Lcom/github/catvod/spider/merge/H/B;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/B;->g()I

    move-result v9

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 4
    check-cast v0, Lcom/github/catvod/spider/merge/H/B;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/B;->h()I

    move-result v8

    .line 5
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/t;->f:Lcom/github/catvod/spider/merge/G/m;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/t;->e:Lcom/github/catvod/spider/merge/J/m;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v6

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/github/catvod/spider/merge/G/m;->a(Lcom/github/catvod/spider/merge/J/m;ILjava/lang/String;IIIII)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->g:Lcom/github/catvod/spider/merge/G/E;

    return-object v0
.end method

.method public final k(Lcom/github/catvod/spider/merge/G/u;)V
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    iget v1, p0, Lcom/github/catvod/spider/merge/G/t;->h:I

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v2

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/J/j;->b(II)Lcom/github/catvod/spider/merge/J/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/catvod/spider/merge/G/d;->j(Lcom/github/catvod/spider/merge/J/j;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token recognition error at: \'"

    .line 1
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_4b

    aget-char v5, v0, v4

    int-to-char v6, v5

    .line 3
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_43

    const/16 v7, 0xd

    if-eq v5, v7, :cond_40

    const/16 v7, 0x9

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xa

    if-eq v5, v7, :cond_3a

    goto :goto_45

    :cond_3a
    const-string v6, "\\n"

    goto :goto_45

    :cond_3d
    const-string v6, "\\t"

    goto :goto_45

    :cond_40
    const-string v6, "\\r"

    goto :goto_45

    :cond_43
    const-string v6, "<EOF>"

    .line 4
    :goto_45
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/C;->e()Lcom/github/catvod/spider/merge/G/a;

    move-result-object v0

    const/4 v4, 0x0

    iget v5, p0, Lcom/github/catvod/spider/merge/G/t;->i:I

    iget v6, p0, Lcom/github/catvod/spider/merge/G/t;->j:I

    move-object v2, v0

    check-cast v2, Lcom/github/catvod/spider/merge/G/z;

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/github/catvod/spider/merge/G/z;->d(Lcom/github/catvod/spider/merge/G/C;Ljava/lang/Object;IILjava/lang/String;Lcom/github/catvod/spider/merge/G/A;)V

    return-void
.end method

.method public final nextToken()Lcom/github/catvod/spider/merge/G/E;
    .registers 12

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    if-eqz v0, :cond_a8

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/s;->c()I

    :goto_7
    :try_start_7
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/G/t;->k:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/t;->j()Lcom/github/catvod/spider/merge/G/E;

    goto/16 :goto_99

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->g:Lcom/github/catvod/spider/merge/G/E;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/G/t;->l:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v1

    iput v1, p0, Lcom/github/catvod/spider/merge/G/t;->h:I

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 2
    check-cast v1, Lcom/github/catvod/spider/merge/H/B;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/B;->g()I

    move-result v1

    iput v1, p0, Lcom/github/catvod/spider/merge/G/t;->j:I

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 4
    check-cast v1, Lcom/github/catvod/spider/merge/H/B;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/B;->h()I

    move-result v1

    iput v1, p0, Lcom/github/catvod/spider/merge/G/t;->i:I

    :cond_32
    iput v0, p0, Lcom/github/catvod/spider/merge/G/t;->m:I
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_a1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x3

    .line 5
    :try_start_37
    iget-object v4, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 6
    check-cast v4, Lcom/github/catvod/spider/merge/H/B;

    iget-object v5, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    iget v6, p0, Lcom/github/catvod/spider/merge/G/t;->o:I

    invoke-virtual {v4, v5, v6}, Lcom/github/catvod/spider/merge/H/B;->i(Lcom/github/catvod/spider/merge/G/d;I)I

    move-result v4
    :try_end_43
    .catch Lcom/github/catvod/spider/merge/G/u; {:try_start_37 .. :try_end_43} :catch_44
    .catchall {:try_start_37 .. :try_end_43} :catchall_a1

    goto :goto_5a

    :catch_44
    move-exception v4

    :try_start_45
    invoke-virtual {p0, v4}, Lcom/github/catvod/spider/merge/G/t;->k(Lcom/github/catvod/spider/merge/G/u;)V

    .line 7
    iget-object v4, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v4, v1}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v4

    if-eq v4, v2, :cond_59

    .line 8
    iget-object v4, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    .line 9
    check-cast v4, Lcom/github/catvod/spider/merge/H/B;

    iget-object v5, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/H/B;->e(Lcom/github/catvod/spider/merge/G/d;)V

    :cond_59
    const/4 v4, -0x3

    .line 10
    :goto_5a
    iget-object v5, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v5, v1}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v5

    if-ne v5, v2, :cond_64

    iput-boolean v1, p0, Lcom/github/catvod/spider/merge/G/t;->k:Z

    :cond_64
    iget v1, p0, Lcom/github/catvod/spider/merge/G/t;->m:I

    if-nez v1, :cond_6a

    iput v4, p0, Lcom/github/catvod/spider/merge/G/t;->m:I

    :cond_6a
    iget v4, p0, Lcom/github/catvod/spider/merge/G/t;->m:I

    if-ne v4, v3, :cond_6f

    goto :goto_7

    :cond_6f
    const/4 v1, -0x2

    if-eq v4, v1, :cond_32

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->g:Lcom/github/catvod/spider/merge/G/E;

    if-nez v0, :cond_99

    .line 11
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/t;->f:Lcom/github/catvod/spider/merge/G/m;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->e:Lcom/github/catvod/spider/merge/J/m;

    const/4 v5, 0x0

    iget v6, p0, Lcom/github/catvod/spider/merge/G/t;->l:I

    iget v7, p0, Lcom/github/catvod/spider/merge/G/t;->h:I

    .line 12
    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v3}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    .line 13
    iget v9, p0, Lcom/github/catvod/spider/merge/G/t;->i:I

    iget v10, p0, Lcom/github/catvod/spider/merge/G/t;->j:I

    move-object v2, v0

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/github/catvod/spider/merge/G/m;->a(Lcom/github/catvod/spider/merge/J/m;ILjava/lang/String;IIIII)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->g:Lcom/github/catvod/spider/merge/G/E;

    .line 15
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/t;->g:Lcom/github/catvod/spider/merge/G/E;
    :try_end_9b
    .catchall {:try_start_45 .. :try_end_9b} :catchall_a1

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    return-object v0

    :catchall_a1
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/t;->d:Lcom/github/catvod/spider/merge/G/d;

    invoke-interface {v1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    throw v0

    :cond_a8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nextToken requires a non-null input stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b1

    :goto_b0
    throw v0

    :goto_b1
    goto :goto_b0
.end method
