.class public final Lcom/github/catvod/spider/merge/X/n;
.super Lcom/github/catvod/spider/merge/X/b;
.source "SourceFile"


# static fields
.field private static final d:Lcom/github/catvod/spider/merge/b0/n;


# instance fields
.field private a:Lcom/github/catvod/spider/merge/b0/b;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/b0/n;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/b0/n;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/X/n;->d:Lcom/github/catvod/spider/merge/b0/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/X/n;->c:I

    new-instance v0, Lcom/github/catvod/spider/merge/b0/b;

    sget-object v1, Lcom/github/catvod/spider/merge/X/n;->d:Lcom/github/catvod/spider/merge/b0/n;

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/b0/b;-><init>(Lcom/github/catvod/spider/merge/b0/m;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/n;->a:Lcom/github/catvod/spider/merge/b0/b;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/n;->h()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final d()F
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/X/n;->c:I

    const v1, 0x3f7d70a4    # 0.99f

    const/4 v2, 0x6

    if-ge v0, v2, :cond_18

    const/4 v0, 0x0

    :goto_9
    iget v2, p0, Lcom/github/catvod/spider/merge/X/n;->c:I

    if-ge v0, v2, :cond_14

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0

    :cond_18
    return v1
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/X/n;->b:I

    return v0
.end method

.method public final f([BI)I
    .registers 8

    const/4 v0, 0x0

    add-int/2addr p2, v0

    :goto_2
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, p2, :cond_2b

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/n;->a:Lcom/github/catvod/spider/merge/b0/b;

    aget-byte v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/b0/b;->c(B)I

    move-result v3

    if-ne v3, v2, :cond_14

    const/4 p1, 0x3

    iput p1, p0, Lcom/github/catvod/spider/merge/X/n;->b:I

    goto :goto_2b

    :cond_14
    if-ne v3, v1, :cond_19

    iput v1, p0, Lcom/github/catvod/spider/merge/X/n;->b:I

    goto :goto_2b

    :cond_19
    if-nez v3, :cond_28

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/n;->a:Lcom/github/catvod/spider/merge/b0/b;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/b0/b;->b()I

    move-result v3

    if-lt v3, v1, :cond_28

    iget v1, p0, Lcom/github/catvod/spider/merge/X/n;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/github/catvod/spider/merge/X/n;->c:I

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2b
    :goto_2b
    iget p1, p0, Lcom/github/catvod/spider/merge/X/n;->b:I

    if-ne p1, v2, :cond_3c

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/n;->d()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3c

    iput v1, p0, Lcom/github/catvod/spider/merge/X/n;->b:I

    :cond_3c
    iget p1, p0, Lcom/github/catvod/spider/merge/X/n;->b:I

    return p1
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/n;->a:Lcom/github/catvod/spider/merge/b0/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/b0/b;->d()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/X/n;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/X/n;->b:I

    return-void
.end method
