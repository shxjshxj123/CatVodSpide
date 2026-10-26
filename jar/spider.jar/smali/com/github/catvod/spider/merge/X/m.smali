.class public final Lcom/github/catvod/spider/merge/X/m;
.super Lcom/github/catvod/spider/merge/X/b;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/github/catvod/spider/merge/a0/l;

.field private c:Z

.field private d:S

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:Lcom/github/catvod/spider/merge/X/b;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/a0/l;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/X/m;->b:Lcom/github/catvod/spider/merge/a0/l;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/X/m;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/X/m;->i:Lcom/github/catvod/spider/merge/X/b;

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/X/m;->f:[I

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/m;->h()V

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/a0/l;ZLcom/github/catvod/spider/merge/X/b;)V
    .registers 4

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/X/m;->b:Lcom/github/catvod/spider/merge/a0/l;

    iput-boolean p2, p0, Lcom/github/catvod/spider/merge/X/m;->c:Z

    iput-object p3, p0, Lcom/github/catvod/spider/merge/X/m;->i:Lcom/github/catvod/spider/merge/X/b;

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/X/m;->f:[I

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/m;->h()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/m;->i:Lcom/github/catvod/spider/merge/X/b;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/m;->b:Lcom/github/catvod/spider/merge/a0/l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/a0/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/X/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()F
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/X/m;->e:I

    if-lez v0, :cond_28

    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/m;->f:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/m;->b:Lcom/github/catvod/spider/merge/a0/l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/a0/l;->d()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/github/catvod/spider/merge/X/m;->h:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    iget v0, p0, Lcom/github/catvod/spider/merge/X/m;->g:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_27

    const v1, 0x3f7d70a4    # 0.99f

    :cond_27
    return v1

    :cond_28
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/X/m;->a:I

    return v0
.end method

.method public final f([BI)I
    .registers 10

    const/4 v0, 0x0

    add-int/2addr p2, v0

    :goto_2
    const/4 v1, 0x1

    if-ge v0, p2, :cond_52

    iget-object v2, p0, Lcom/github/catvod/spider/merge/X/m;->b:Lcom/github/catvod/spider/merge/a0/l;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/a0/l;->b(B)S

    move-result v2

    const/16 v3, 0xfa

    if-ge v2, v3, :cond_16

    iget v3, p0, Lcom/github/catvod/spider/merge/X/m;->g:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/github/catvod/spider/merge/X/m;->g:I

    :cond_16
    const/16 v3, 0x40

    if-ge v2, v3, :cond_4d

    iget v4, p0, Lcom/github/catvod/spider/merge/X/m;->h:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/github/catvod/spider/merge/X/m;->h:I

    iget-short v4, p0, Lcom/github/catvod/spider/merge/X/m;->d:S

    if-ge v4, v3, :cond_4d

    iget v3, p0, Lcom/github/catvod/spider/merge/X/m;->e:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/github/catvod/spider/merge/X/m;->e:I

    iget-boolean v3, p0, Lcom/github/catvod/spider/merge/X/m;->c:Z

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/m;->f:[I

    iget-object v5, p0, Lcom/github/catvod/spider/merge/X/m;->b:Lcom/github/catvod/spider/merge/a0/l;

    mul-int/lit8 v4, v4, 0x40

    add-int/2addr v4, v2

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/a0/l;->c(I)B

    move-result v4

    aget v5, v3, v4

    add-int/2addr v5, v1

    aput v5, v3, v4

    goto :goto_4d

    :cond_3d
    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/m;->f:[I

    iget-object v5, p0, Lcom/github/catvod/spider/merge/X/m;->b:Lcom/github/catvod/spider/merge/a0/l;

    mul-int/lit8 v6, v2, 0x40

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge/a0/l;->c(I)B

    move-result v4

    aget v5, v3, v4

    add-int/2addr v5, v1

    aput v5, v3, v4

    :cond_4d
    :goto_4d
    iput-short v2, p0, Lcom/github/catvod/spider/merge/X/m;->d:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_52
    iget p1, p0, Lcom/github/catvod/spider/merge/X/m;->a:I

    if-ne p1, v1, :cond_73

    iget p1, p0, Lcom/github/catvod/spider/merge/X/m;->e:I

    const/16 p2, 0x400

    if-le p1, p2, :cond_73

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/m;->d()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_69

    const/4 p1, 0x2

    goto :goto_71

    :cond_69
    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_73

    const/4 p1, 0x3

    :goto_71
    iput p1, p0, Lcom/github/catvod/spider/merge/X/m;->a:I

    :cond_73
    iget p1, p0, Lcom/github/catvod/spider/merge/X/m;->a:I

    return p1
.end method

.method public final h()V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/X/m;->a:I

    const/16 v0, 0xff

    iput-short v0, p0, Lcom/github/catvod/spider/merge/X/m;->d:S

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x4

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/github/catvod/spider/merge/X/m;->f:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    iput v0, p0, Lcom/github/catvod/spider/merge/X/m;->e:I

    iput v0, p0, Lcom/github/catvod/spider/merge/X/m;->g:I

    iput v0, p0, Lcom/github/catvod/spider/merge/X/m;->h:I

    return-void
.end method
