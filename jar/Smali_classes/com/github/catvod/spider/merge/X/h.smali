.class public final Lcom/github/catvod/spider/merge/X/h;
.super Lcom/github/catvod/spider/merge/X/b;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:B

.field private d:B

.field private e:Lcom/github/catvod/spider/merge/X/b;

.field private f:Lcom/github/catvod/spider/merge/X/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/h;->e:Lcom/github/catvod/spider/merge/X/b;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/h;->f:Lcom/github/catvod/spider/merge/X/b;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/h;->h()V

    return-void
.end method

.method protected static i(B)Z
    .registers 2

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-eq p0, v0, :cond_19

    const/16 v0, 0xed

    if-eq p0, v0, :cond_19

    const/16 v0, 0xef

    if-eq p0, v0, :cond_19

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_19

    const/16 v0, 0xf5

    if-ne p0, v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/X/h;->a:I

    iget v1, p0, Lcom/github/catvod/spider/merge/X/h;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_b

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->t:Ljava/lang/String;

    return-object v0

    :cond_b
    const/4 v1, -0x5

    if-gt v0, v1, :cond_11

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->f:Ljava/lang/String;

    return-object v0

    :cond_11
    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/h;->e:Lcom/github/catvod/spider/merge/X/b;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/X/b;->d()F

    move-result v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/X/h;->f:Lcom/github/catvod/spider/merge/X/b;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/X/b;->d()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_28

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->t:Ljava/lang/String;

    return-object v0

    :cond_28
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_32

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->f:Ljava/lang/String;

    return-object v0

    :cond_32
    if-gez v0, :cond_37

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->f:Ljava/lang/String;

    return-object v0

    :cond_37
    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final d()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/h;->e:Lcom/github/catvod/spider/merge/X/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/X/b;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/h;->f:Lcom/github/catvod/spider/merge/X/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/X/b;->e()I

    move-result v0

    if-ne v0, v1, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public final f([BI)I
    .registers 9

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/h;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x1

    if-ge v1, p2, :cond_5b

    aget-byte v3, p1, v1

    const/16 v4, 0x20

    iget-byte v5, p0, Lcom/github/catvod/spider/merge/X/h;->d:B

    if-ne v3, v4, :cond_41

    if-eq v5, v4, :cond_52

    iget-byte v4, p0, Lcom/github/catvod/spider/merge/X/h;->c:B

    invoke-static {v4}, Lcom/github/catvod/spider/merge/X/h;->i(B)Z

    move-result v4

    if-eqz v4, :cond_26

    iget v4, p0, Lcom/github/catvod/spider/merge/X/h;->a:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/github/catvod/spider/merge/X/h;->a:I

    goto :goto_52

    :cond_26
    iget-byte v4, p0, Lcom/github/catvod/spider/merge/X/h;->c:B

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xeb

    if-eq v4, v5, :cond_3d

    const/16 v5, 0xee

    if-eq v4, v5, :cond_3d

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_3d

    const/16 v5, 0xf4

    if-ne v4, v5, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v4, 0x1

    :goto_3e
    if-eqz v4, :cond_52

    goto :goto_4d

    :cond_41
    if-ne v5, v4, :cond_52

    iget-byte v5, p0, Lcom/github/catvod/spider/merge/X/h;->c:B

    invoke-static {v5}, Lcom/github/catvod/spider/merge/X/h;->i(B)Z

    move-result v5

    if-eqz v5, :cond_52

    if-eq v3, v4, :cond_52

    :goto_4d
    iget v4, p0, Lcom/github/catvod/spider/merge/X/h;->b:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/github/catvod/spider/merge/X/h;->b:I

    :cond_52
    :goto_52
    iget-byte v2, p0, Lcom/github/catvod/spider/merge/X/h;->c:B

    iput-byte v2, p0, Lcom/github/catvod/spider/merge/X/h;->d:B

    iput-byte v3, p0, Lcom/github/catvod/spider/merge/X/h;->c:B

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_5b
    return v2
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/X/h;->a:I

    iput v0, p0, Lcom/github/catvod/spider/merge/X/h;->b:I

    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/github/catvod/spider/merge/X/h;->c:B

    iput-byte v0, p0, Lcom/github/catvod/spider/merge/X/h;->d:B

    return-void
.end method

.method public final j(Lcom/github/catvod/spider/merge/X/b;Lcom/github/catvod/spider/merge/X/b;)V
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/merge/X/h;->e:Lcom/github/catvod/spider/merge/X/b;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/X/h;->f:Lcom/github/catvod/spider/merge/X/b;

    return-void
.end method
