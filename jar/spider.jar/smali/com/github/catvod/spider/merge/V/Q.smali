.class public final Lcom/github/catvod/spider/merge/V/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/U/Q;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/V/N;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ","

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ">"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "+"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "~"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, " "

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/github/catvod/spider/merge/V/Q;->d:[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "="

    aput-object v2, v1, v3

    const-string v2, "!="

    aput-object v2, v1, v4

    const-string v2, "^="

    aput-object v2, v1, v5

    const-string v2, "$="

    aput-object v2, v1, v6

    const-string v2, "*="

    aput-object v2, v1, v7

    const-string v2, "~="

    aput-object v2, v1, v0

    sput-object v1, Lcom/github/catvod/spider/merge/V/Q;->e:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/V/Q;->f:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/V/Q;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/Q;->b:Ljava/lang/String;

    new-instance v0, Lcom/github/catvod/spider/merge/U/Q;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/U/Q;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    return-void
.end method

.method private a(C)V
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->h()Z

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_9
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/Q;->i()Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    goto :goto_4a

    :cond_2e
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_4e
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    sget-object v2, Lcom/github/catvod/spider/merge/V/Q;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/U/Q;->l([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5f

    goto :goto_6f

    :cond_5f
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/Q;->c()C

    goto :goto_9

    :cond_65
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/Q;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_6f
    :goto_6f
    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge/V/Q;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/N;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a6

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/V/N;

    instance-of v5, v1, Lcom/github/catvod/spider/merge/V/e;

    if-eqz v5, :cond_ad

    if-eq p1, v2, :cond_ad

    move-object v5, v1

    check-cast v5, Lcom/github/catvod/spider/merge/V/e;

    .line 3
    iget v6, v5, Lcom/github/catvod/spider/merge/V/f;->b:I

    if-lez v6, :cond_a3

    iget-object v5, v5, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/V/N;

    goto :goto_a4

    :cond_a3
    const/4 v5, 0x0

    :goto_a4
    const/4 v6, 0x1

    goto :goto_af

    .line 4
    :cond_a6
    new-instance v1, Lcom/github/catvod/spider/merge/V/d;

    iget-object v5, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Lcom/github/catvod/spider/merge/V/d;-><init>(Ljava/util/Collection;)V

    :cond_ad
    move-object v5, v1

    const/4 v6, 0x0

    :goto_af
    iget-object v7, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/16 v7, 0x20

    const/4 v8, 0x2

    if-eq p1, v7, :cond_128

    const/16 v7, 0x3e

    if-eq p1, v7, :cond_117

    const/16 v7, 0x7e

    if-eq p1, v7, :cond_106

    const/16 v7, 0x2b

    if-eq p1, v7, :cond_f5

    if-ne p1, v2, :cond_e5

    instance-of p1, v5, Lcom/github/catvod/spider/merge/V/e;

    if-eqz p1, :cond_ce

    check-cast v5, Lcom/github/catvod/spider/merge/V/e;

    goto :goto_dc

    :cond_ce
    new-instance p1, Lcom/github/catvod/spider/merge/V/e;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/V/e;-><init>()V

    .line 5
    iget-object v2, p1, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/V/f;->b()V

    move-object v5, p1

    .line 6
    :goto_dc
    iget-object p1, v5, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/V/f;->b()V

    goto :goto_139

    .line 7
    :cond_e5
    new-instance v0, Lcom/github/catvod/spider/merge/V/S;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "Unknown combinator \'%s\'"

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge/V/S;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_f5
    new-instance p1, Lcom/github/catvod/spider/merge/V/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge/V/N;

    new-instance v7, Lcom/github/catvod/spider/merge/V/V;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge/V/V;-><init>(Lcom/github/catvod/spider/merge/V/N;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge/V/d;-><init>([Lcom/github/catvod/spider/merge/V/N;)V

    goto :goto_138

    :cond_106
    new-instance p1, Lcom/github/catvod/spider/merge/V/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge/V/N;

    new-instance v7, Lcom/github/catvod/spider/merge/V/Y;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge/V/Y;-><init>(Lcom/github/catvod/spider/merge/V/N;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge/V/d;-><init>([Lcom/github/catvod/spider/merge/V/N;)V

    goto :goto_138

    :cond_117
    new-instance p1, Lcom/github/catvod/spider/merge/V/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge/V/N;

    new-instance v7, Lcom/github/catvod/spider/merge/V/U;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge/V/U;-><init>(Lcom/github/catvod/spider/merge/V/N;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge/V/d;-><init>([Lcom/github/catvod/spider/merge/V/N;)V

    goto :goto_138

    :cond_128
    new-instance p1, Lcom/github/catvod/spider/merge/V/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge/V/N;

    new-instance v7, Lcom/github/catvod/spider/merge/V/X;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge/V/X;-><init>(Lcom/github/catvod/spider/merge/V/N;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge/V/d;-><init>([Lcom/github/catvod/spider/merge/V/N;)V

    :goto_138
    move-object v5, p1

    :goto_139
    if-eqz v6, :cond_148

    move-object p1, v1

    check-cast p1, Lcom/github/catvod/spider/merge/V/e;

    .line 8
    iget-object v0, p1, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    iget p1, p1, Lcom/github/catvod/spider/merge/V/f;->b:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_149

    :cond_148
    move-object v1, v5

    .line 9
    :goto_149
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()I
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/github/catvod/spider/merge/S/b;->f:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_2c

    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_2c

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    :goto_2c
    const-string v2, "Index must be numeric"

    .line 2
    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/R/c;->f(ZLjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private c(Z)V
    .registers 6

    if-eqz p1, :cond_5

    const-string v0, ":containsOwn"

    goto :goto_7

    :cond_5
    const-string v0, ":contains"

    :goto_7
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/U/Q;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/U/Q;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(text) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_38

    new-instance p1, Lcom/github/catvod/spider/merge/V/r;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/V/r;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :cond_38
    new-instance p1, Lcom/github/catvod/spider/merge/V/s;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/github/catvod/spider/merge/V/s;-><init>(Ljava/lang/String;I)V

    :goto_3e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(Z)V
    .registers 6

    if-eqz p1, :cond_5

    const-string v0, ":containsWholeOwnText"

    goto :goto_7

    :cond_5
    const-string v0, ":containsWholeText"

    :goto_7
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/U/Q;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/U/Q;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(text) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_39

    new-instance p1, Lcom/github/catvod/spider/merge/V/t;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/github/catvod/spider/merge/V/t;-><init>(Ljava/lang/String;I)V

    goto :goto_3e

    :cond_39
    new-instance p1, Lcom/github/catvod/spider/merge/V/u;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/V/u;-><init>(Ljava/lang/String;)V

    :goto_3e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e(ZZ)V
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge/V/Q;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/github/catvod/spider/merge/V/Q;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    :goto_22
    const/4 v4, 0x2

    goto :goto_74

    :cond_24
    const-string v3, "even"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x0

    goto :goto_22

    :cond_2e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v6, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_62

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_4b
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5f

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    :cond_5f
    move v0, v4

    move v4, v5

    goto :goto_74

    :cond_62
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_74
    if-eqz p2, :cond_88

    if-eqz p1, :cond_80

    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge/V/I;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge/V/I;-><init>(II)V

    goto :goto_99

    :cond_80
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge/V/J;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge/V/J;-><init>(II)V

    goto :goto_99

    :cond_88
    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge/V/H;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge/V/H;-><init>(II)V

    goto :goto_99

    :cond_92
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge/V/G;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge/V/G;-><init>(II)V

    :goto_99
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9d
    new-instance p1, Lcom/github/catvod/spider/merge/V/S;

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v0, p2, v4

    const-string v0, "Could not parse nth-index \'%s\': unexpected format"

    invoke-direct {p1, v0, p2}, Lcom/github/catvod/spider/merge/V/S;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_aa

    :goto_a9
    throw p1

    :goto_aa
    goto :goto_a9
.end method

.method private f()V
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge/V/w;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/V/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 2
    :cond_1f
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/i;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/github/catvod/spider/merge/V/i;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 4
    :cond_43
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->m()Z

    move-result v0

    const-string v2, "*|"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_39a

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto/16 :goto_39a

    :cond_59
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, "["

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 5
    new-instance v0, Lcom/github/catvod/spider/merge/U/Q;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const/16 v5, 0x5b

    const/16 v6, 0x5d

    invoke-virtual {v2, v5, v6}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/github/catvod/spider/merge/V/Q;->e:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->g([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->h()Z

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->i()Z

    move-result v5

    if-eqz v5, :cond_a4

    const-string v0, "^"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/k;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v4}, Lcom/github/catvod/spider/merge/V/k;-><init>(Ljava/lang/String;I)V

    goto :goto_9f

    :cond_98
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/i;

    invoke-direct {v3, v2, v4}, Lcom/github/catvod/spider/merge/V/i;-><init>(Ljava/lang/Object;I)V

    :goto_9f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    :cond_a4
    const-string v5, "="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge/V/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_b8
    const-string v5, "!="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/p;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge/V/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_cc
    const-string v5, "^="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge/V/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_e0
    const-string v5, "$="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f4

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/n;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge/V/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_f4
    const-string v5, "*="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_108

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge/V/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_108
    const-string v5, "~="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_124

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/o;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge/V/o;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    :goto_11f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    :cond_124
    new-instance v2, Lcom/github/catvod/spider/merge/V/S;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/github/catvod/spider/merge/V/Q;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v2, v0, v3}, Lcom/github/catvod/spider/merge/V/S;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 6
    :cond_138
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/h;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/h;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 8
    :cond_14e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":lt("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 9
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/A;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/Q;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/V/A;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 10
    :cond_168
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":gt("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 11
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/z;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/Q;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/V/z;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 12
    :cond_182
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":eq("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 13
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/x;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/Q;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/V/x;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 14
    :cond_19c
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":has("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x29

    const/16 v5, 0x28

    if-eqz v0, :cond_1cc

    .line 15
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/Q;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0, v5, v2}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(selector) sub-select must not be empty"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge/V/T;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/V/Q;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/N;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/V/T;-><init>(Lcom/github/catvod/spider/merge/V/N;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 16
    :cond_1cc
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":contains("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge/V/Q;->c(Z)V

    goto/16 :goto_3e8

    :cond_1db
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":containsOwn("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge/V/Q;->c(Z)V

    goto/16 :goto_3e8

    :cond_1ea
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":containsWholeText("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge/V/Q;->d(Z)V

    goto/16 :goto_3e8

    :cond_1f9
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":containsWholeOwnText("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_208

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge/V/Q;->d(Z)V

    goto/16 :goto_3e8

    :cond_208
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":containsData("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_234

    .line 17
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v3, ":containsData"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/U/Q;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0, v5, v2}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/U/Q;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":containsData(text) query must not be empty"

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/R/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/k;

    invoke-direct {v3, v0, v1}, Lcom/github/catvod/spider/merge/V/k;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 18
    :cond_234
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":matches("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_243

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge/V/Q;->g(Z)V

    goto/16 :goto_3e8

    :cond_243
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":matchesOwn("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_252

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge/V/Q;->g(Z)V

    goto/16 :goto_3e8

    :cond_252
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":matchesWholeText("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_261

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge/V/Q;->h(Z)V

    goto/16 :goto_3e8

    :cond_261
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":matchesWholeOwnText("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_270

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge/V/Q;->h(Z)V

    goto/16 :goto_3e8

    :cond_270
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v6, ":not("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/Q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29c

    .line 19
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/Q;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0, v5, v2}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge/V/W;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/V/Q;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/N;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/V/W;-><init>(Lcom/github/catvod/spider/merge/V/N;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 20
    :cond_29c
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":nth-child("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    invoke-direct {p0, v4, v4}, Lcom/github/catvod/spider/merge/V/Q;->e(ZZ)V

    goto/16 :goto_3e8

    :cond_2ab
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":nth-last-child("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    invoke-direct {p0, v1, v4}, Lcom/github/catvod/spider/merge/V/Q;->e(ZZ)V

    goto/16 :goto_3e8

    :cond_2ba
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":nth-of-type("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c9

    invoke-direct {p0, v4, v1}, Lcom/github/catvod/spider/merge/V/Q;->e(ZZ)V

    goto/16 :goto_3e8

    :cond_2c9
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":nth-last-of-type("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    invoke-direct {p0, v1, v1}, Lcom/github/catvod/spider/merge/V/Q;->e(ZZ)V

    goto/16 :goto_3e8

    :cond_2d8
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":first-child"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/C;

    invoke-direct {v1, v4}, Lcom/github/catvod/spider/merge/V/C;-><init>(I)V

    goto/16 :goto_380

    :cond_2eb
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":last-child"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2fe

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/E;

    invoke-direct {v1, v4}, Lcom/github/catvod/spider/merge/V/E;-><init>(I)V

    goto/16 :goto_380

    :cond_2fe
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":first-of-type"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_311

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/D;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/D;-><init>()V

    goto/16 :goto_380

    :cond_311
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":last-of-type"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_323

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/F;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/F;-><init>()V

    goto :goto_380

    :cond_323
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":only-child"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_335

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge/V/C;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge/V/C;-><init>(I)V

    goto :goto_36a

    :cond_335
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":only-of-type"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_347

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/K;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/K;-><init>()V

    goto :goto_380

    :cond_347
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":empty"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_359

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/B;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/B;-><init>()V

    goto :goto_380

    :cond_359
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":root"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36f

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge/V/E;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge/V/E;-><init>(I)V

    :goto_36a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    :cond_36f
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const-string v2, ":matchText"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/Q;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_384

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/L;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/L;-><init>()V

    :goto_380
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e8

    :cond_384
    new-instance v0, Lcom/github/catvod/spider/merge/V/S;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/V/Q;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/U/Q;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge/V/S;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 21
    :cond_39a
    :goto_39a
    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ":"

    if-eqz v5, :cond_3d2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v8, Lcom/github/catvod/spider/merge/V/e;

    new-array v3, v3, [Lcom/github/catvod/spider/merge/V/N;

    new-instance v9, Lcom/github/catvod/spider/merge/V/s;

    invoke-direct {v9, v5, v1}, Lcom/github/catvod/spider/merge/V/s;-><init>(Ljava/lang/String;I)V

    aput-object v9, v3, v4

    new-instance v4, Lcom/github/catvod/spider/merge/V/t;

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v1}, Lcom/github/catvod/spider/merge/V/t;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v1

    invoke-direct {v8, v3}, Lcom/github/catvod/spider/merge/V/e;-><init>([Lcom/github/catvod/spider/merge/V/N;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e8

    :cond_3d2
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3de

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3de
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge/V/s;

    invoke-direct {v3, v0, v1}, Lcom/github/catvod/spider/merge/V/s;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e8
    return-void
.end method

.method private g(Z)V
    .registers 6

    if-eqz p1, :cond_5

    const-string v0, ":matchesOwn"

    goto :goto_7

    :cond_5
    const-string v0, ":matches"

    :goto_7
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/U/Q;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(regex) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_39

    new-instance p1, Lcom/github/catvod/spider/merge/V/i;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p1, v1, v2}, Lcom/github/catvod/spider/merge/V/i;-><init>(Ljava/lang/Object;I)V

    goto :goto_42

    :cond_39
    new-instance p1, Lcom/github/catvod/spider/merge/V/M;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/V/M;-><init>(Ljava/util/regex/Pattern;)V

    :goto_42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private h(Z)V
    .registers 6

    if-eqz p1, :cond_5

    const-string v0, ":matchesWholeOwnText"

    goto :goto_7

    :cond_5
    const-string v0, ":matchesWholeText"

    :goto_7
    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/U/Q;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/U/Q;->a(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(regex) query must not be empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_38

    new-instance p1, Lcom/github/catvod/spider/merge/V/k;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/V/k;-><init>(Ljava/util/regex/Pattern;)V

    goto :goto_41

    :cond_38
    new-instance p1, Lcom/github/catvod/spider/merge/V/r;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/V/r;-><init>(Ljava/util/regex/Pattern;)V

    :goto_41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/N;
    .registers 2

    :try_start_0
    new-instance v0, Lcom/github/catvod/spider/merge/V/Q;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/V/Q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/V/Q;->i()Lcom/github/catvod/spider/merge/V/N;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lcom/github/catvod/spider/merge/V/S;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/V/S;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final i()Lcom/github/catvod/spider/merge/V/N;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/Q;->h()Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    sget-object v1, Lcom/github/catvod/spider/merge/V/Q;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/Q;->l([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/V/Z;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/Z;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    goto :goto_37

    :cond_1b
    move-object v0, p0

    :cond_1c
    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/Q;->f()V

    :goto_1f
    iget-object v1, v0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/Q;->i()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/Q;->h()Z

    move-result v1

    iget-object v2, v0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    sget-object v3, Lcom/github/catvod/spider/merge/V/Q;->d:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/U/Q;->l([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :goto_37
    iget-object v1, v0, Lcom/github/catvod/spider/merge/V/Q;->a:Lcom/github/catvod/spider/merge/U/Q;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/Q;->c()C

    move-result v1

    goto :goto_42

    :cond_3e
    if-eqz v1, :cond_1c

    const/16 v1, 0x20

    :goto_42
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/V/Q;->a(C)V

    goto :goto_1f

    :cond_46
    iget-object v1, v0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    iget-object v0, v0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/V/N;

    return-object v0

    :cond_59
    new-instance v1, Lcom/github/catvod/spider/merge/V/d;

    iget-object v0, v0, Lcom/github/catvod/spider/merge/V/Q;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/V/d;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/Q;->b:Ljava/lang/String;

    return-object v0
.end method
