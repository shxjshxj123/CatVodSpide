.class public abstract Lcom/github/catvod/spider/merge/H/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/github/catvod/spider/merge/H/a;

.field public b:I

.field public c:I

.field public d:Z

.field protected final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/H/t0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/github/catvod/spider/merge/J/k;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BASIC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RULE_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PLUS_BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STAR_BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TOKEN_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RULE_STOP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BLOCK_END"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STAR_LOOP_BACK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "STAR_LOOP_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PLUS_LOOP_BACK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LOOP_END"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/H/m;->a:Lcom/github/catvod/spider/merge/H/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/H/m;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/H/m;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/H/t0;)V
    .registers 9

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/catvod/spider/merge/H/m;->d:Z

    goto :goto_36

    :cond_17
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/m;->d:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v4

    if-eq v1, v4, :cond_36

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "ATN state %d has both epsilon and non-epsilon transitions.\n"

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iput-boolean v2, p0, Lcom/github/catvod/spider/merge/H/m;->d:Z

    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/t0;

    iget-object v5, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v5, v5, Lcom/github/catvod/spider/merge/H/m;->b:I

    iget-object v6, p1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v6, v6, Lcom/github/catvod/spider/merge/H/m;->b:I

    if-ne v5, v6, :cond_3c

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/t0;->c()Lcom/github/catvod/spider/merge/J/k;

    move-result-object v5

    if-eqz v5, :cond_6d

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/t0;->c()Lcom/github/catvod/spider/merge/J/k;

    move-result-object v5

    if-eqz v5, :cond_6d

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/t0;->c()Lcom/github/catvod/spider/merge/J/k;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/t0;->c()Lcom/github/catvod/spider/merge/J/k;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge/J/k;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    goto :goto_79

    :cond_6d
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v4

    if-eqz v4, :cond_3c

    :goto_79
    const/4 v2, 0x1

    :cond_7a
    if-nez v2, :cond_81

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_81
    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract c()I
.end method

.method public final d(I)Lcom/github/catvod/spider/merge/H/t0;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/H/t0;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/github/catvod/spider/merge/H/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/github/catvod/spider/merge/H/m;->b:I

    check-cast p1, Lcom/github/catvod/spider/merge/H/m;

    iget p1, p1, Lcom/github/catvod/spider/merge/H/m;->b:I

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/m;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
