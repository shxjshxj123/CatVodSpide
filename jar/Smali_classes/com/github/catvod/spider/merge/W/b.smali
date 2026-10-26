.class public final Lcom/github/catvod/spider/merge/W/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:B

.field private f:Ljava/lang/String;

.field private g:[Lcom/github/catvod/spider/merge/X/b;

.field private h:Lcom/github/catvod/spider/merge/X/f;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/github/catvod/spider/merge/X/b;

    iput-object v1, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    array-length v4, v3

    if-ge v2, v4, :cond_17

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    iput-boolean v1, p0, Lcom/github/catvod/spider/merge/W/b;->b:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/github/catvod/spider/merge/W/b;->c:Z

    iput-object v0, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/github/catvod/spider/merge/W/b;->d:Z

    iput v2, p0, Lcom/github/catvod/spider/merge/W/b;->a:I

    iput-byte v1, p0, Lcom/github/catvod/spider/merge/W/b;->e:B

    iget-object v0, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/X/f;->h()V

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    array-length v2, v0

    if-ge v1, v2, :cond_3c

    aget-object v2, v0, v1

    if-eqz v2, :cond_39

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/X/b;->h()V

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/W/b;->d:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/W/b;->b:Z

    return-void

    :cond_d
    iget v0, p0, Lcom/github/catvod/spider/merge/W/b;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    array-length v4, v3

    if-ge v1, v4, :cond_29

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/X/b;->d()F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_26

    move v2, v1

    move v0, v3

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/X/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    :cond_38
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c([BI)V
    .registers 14

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/W/b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-lez p2, :cond_a

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/W/b;->d:Z

    :cond_a
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/W/b;->c:Z

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_71

    iput-boolean v3, p0, Lcom/github/catvod/spider/merge/W/b;->c:Z

    if-le p2, v4, :cond_71

    aget-byte v1, p1, v3

    and-int/2addr v1, v2

    aget-byte v6, p1, v0

    and-int/2addr v6, v2

    aget-byte v7, p1, v5

    and-int/2addr v7, v2

    aget-byte v8, p1, v4

    and-int/2addr v8, v2

    const/16 v9, 0xfe

    if-eqz v1, :cond_57

    const/16 v10, 0xef

    if-eq v1, v10, :cond_4c

    if-eq v1, v9, :cond_3e

    if-eq v1, v2, :cond_30

    goto :goto_6a

    :cond_30
    if-ne v6, v9, :cond_39

    if-nez v7, :cond_39

    if-nez v8, :cond_39

    sget-object v1, Lcom/github/catvod/spider/merge/W/a;->y:Ljava/lang/String;

    goto :goto_68

    :cond_39
    if-ne v6, v9, :cond_6a

    sget-object v1, Lcom/github/catvod/spider/merge/W/a;->w:Ljava/lang/String;

    goto :goto_68

    :cond_3e
    if-ne v6, v2, :cond_47

    if-nez v7, :cond_47

    if-nez v8, :cond_47

    sget-object v1, Lcom/github/catvod/spider/merge/W/a;->A:Ljava/lang/String;

    goto :goto_68

    :cond_47
    if-ne v6, v2, :cond_6a

    sget-object v1, Lcom/github/catvod/spider/merge/W/a;->v:Ljava/lang/String;

    goto :goto_68

    :cond_4c
    const/16 v1, 0xbb

    if-ne v6, v1, :cond_6a

    const/16 v1, 0xbf

    if-ne v7, v1, :cond_6a

    sget-object v1, Lcom/github/catvod/spider/merge/W/a;->u:Ljava/lang/String;

    goto :goto_68

    :cond_57
    if-nez v6, :cond_60

    if-ne v7, v9, :cond_60

    if-ne v8, v2, :cond_60

    sget-object v1, Lcom/github/catvod/spider/merge/W/a;->x:Ljava/lang/String;

    goto :goto_68

    :cond_60
    if-nez v6, :cond_6a

    if-ne v7, v2, :cond_6a

    if-ne v8, v9, :cond_6a

    sget-object v1, Lcom/github/catvod/spider/merge/W/a;->B:Ljava/lang/String;

    :goto_68
    iput-object v1, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    :cond_6a
    :goto_6a
    iget-object v1, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_71

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/W/b;->b:Z

    return-void

    :cond_71
    add-int v1, v3, p2

    const/4 v6, 0x0

    :goto_74
    if-ge v6, v1, :cond_d1

    aget-byte v7, p1, v6

    and-int/2addr v7, v2

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_b6

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_b6

    iget v7, p0, Lcom/github/catvod/spider/merge/W/b;->a:I

    if-eq v7, v4, :cond_ce

    iput v4, p0, Lcom/github/catvod/spider/merge/W/b;->a:I

    iget-object v7, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    if-eqz v7, :cond_8e

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    :cond_8e
    iget-object v7, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    aget-object v8, v7, v3

    if-nez v8, :cond_9b

    new-instance v8, Lcom/github/catvod/spider/merge/X/j;

    invoke-direct {v8}, Lcom/github/catvod/spider/merge/X/j;-><init>()V

    aput-object v8, v7, v3

    :cond_9b
    iget-object v7, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    aget-object v8, v7, v0

    if-nez v8, :cond_a8

    new-instance v8, Lcom/github/catvod/spider/merge/X/k;

    invoke-direct {v8}, Lcom/github/catvod/spider/merge/X/k;-><init>()V

    aput-object v8, v7, v0

    :cond_a8
    iget-object v7, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    aget-object v8, v7, v5

    if-nez v8, :cond_ce

    new-instance v8, Lcom/github/catvod/spider/merge/X/i;

    invoke-direct {v8}, Lcom/github/catvod/spider/merge/X/i;-><init>()V

    aput-object v8, v7, v5

    goto :goto_ce

    :cond_b6
    iget v8, p0, Lcom/github/catvod/spider/merge/W/b;->a:I

    if-ne v8, v0, :cond_ca

    const/16 v8, 0x1b

    if-eq v7, v8, :cond_c8

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_ca

    iget-byte v7, p0, Lcom/github/catvod/spider/merge/W/b;->e:B

    const/16 v8, 0x7e

    if-ne v7, v8, :cond_ca

    :cond_c8
    iput v5, p0, Lcom/github/catvod/spider/merge/W/b;->a:I

    :cond_ca
    aget-byte v7, p1, v6

    iput-byte v7, p0, Lcom/github/catvod/spider/merge/W/b;->e:B

    :cond_ce
    :goto_ce
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    :cond_d1
    iget v1, p0, Lcom/github/catvod/spider/merge/W/b;->a:I

    if-ne v1, v5, :cond_f3

    iget-object v1, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    if-nez v1, :cond_e0

    new-instance v1, Lcom/github/catvod/spider/merge/X/f;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/X/f;-><init>()V

    iput-object v1, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    :cond_e0
    iget-object v1, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    invoke-virtual {v1, p1, p2}, Lcom/github/catvod/spider/merge/X/f;->f([BI)I

    move-result p1

    if-ne p1, v5, :cond_112

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/W/b;->b:Z

    iget-object p1, p0, Lcom/github/catvod/spider/merge/W/b;->h:Lcom/github/catvod/spider/merge/X/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/X/f;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    goto :goto_112

    :cond_f3
    if-ne v1, v4, :cond_112

    :goto_f5
    iget-object v1, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    array-length v2, v1

    if-ge v3, v2, :cond_112

    aget-object v1, v1, v3

    invoke-virtual {v1, p1, p2}, Lcom/github/catvod/spider/merge/X/b;->f([BI)I

    move-result v1

    if-ne v1, v5, :cond_10f

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/W/b;->b:Z

    iget-object p1, p0, Lcom/github/catvod/spider/merge/W/b;->g:[Lcom/github/catvod/spider/merge/X/b;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/X/b;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/W/b;->f:Ljava/lang/String;

    return-void

    :cond_10f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f5

    :cond_112
    :goto_112
    return-void
.end method
