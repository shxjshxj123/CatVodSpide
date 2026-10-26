.class public final Lcom/github/catvod/spider/merge/X/f;
.super Lcom/github/catvod/spider/merge/X/b;
.source "SourceFile"


# static fields
.field private static final e:Lcom/github/catvod/spider/merge/b0/g;

.field private static final f:Lcom/github/catvod/spider/merge/b0/h;

.field private static final g:Lcom/github/catvod/spider/merge/b0/i;

.field private static final h:Lcom/github/catvod/spider/merge/b0/j;


# instance fields
.field private a:[Lcom/github/catvod/spider/merge/b0/b;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/b0/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/b0/g;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/X/f;->e:Lcom/github/catvod/spider/merge/b0/g;

    new-instance v0, Lcom/github/catvod/spider/merge/b0/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/b0/h;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/X/f;->f:Lcom/github/catvod/spider/merge/b0/h;

    new-instance v0, Lcom/github/catvod/spider/merge/b0/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/b0/i;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/X/f;->g:Lcom/github/catvod/spider/merge/b0/i;

    new-instance v0, Lcom/github/catvod/spider/merge/b0/j;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/b0/j;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/X/f;->h:Lcom/github/catvod/spider/merge/b0/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/catvod/spider/merge/b0/b;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/f;->a:[Lcom/github/catvod/spider/merge/b0/b;

    new-instance v1, Lcom/github/catvod/spider/merge/b0/b;

    sget-object v2, Lcom/github/catvod/spider/merge/X/f;->e:Lcom/github/catvod/spider/merge/b0/g;

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/b0/b;-><init>(Lcom/github/catvod/spider/merge/b0/m;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/catvod/spider/merge/b0/b;

    sget-object v2, Lcom/github/catvod/spider/merge/X/f;->f:Lcom/github/catvod/spider/merge/b0/h;

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/b0/b;-><init>(Lcom/github/catvod/spider/merge/b0/m;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/catvod/spider/merge/b0/b;

    sget-object v2, Lcom/github/catvod/spider/merge/X/f;->g:Lcom/github/catvod/spider/merge/b0/i;

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/b0/b;-><init>(Lcom/github/catvod/spider/merge/b0/m;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/catvod/spider/merge/b0/b;

    sget-object v2, Lcom/github/catvod/spider/merge/X/f;->h:Lcom/github/catvod/spider/merge/b0/j;

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/b0/b;-><init>(Lcom/github/catvod/spider/merge/b0/m;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/f;->h()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()F
    .registers 2

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/X/f;->c:I

    return v0
.end method

.method public final f([BI)I
    .registers 10

    const/4 v0, 0x0

    add-int/2addr p2, v0

    :goto_2
    if-ge v0, p2, :cond_4a

    iget v1, p0, Lcom/github/catvod/spider/merge/X/f;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4a

    iget v1, p0, Lcom/github/catvod/spider/merge/X/f;->b:I

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_47

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/f;->a:[Lcom/github/catvod/spider/merge/b0/b;

    aget-object v3, v3, v1

    aget-byte v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/b0/b;->c(B)I

    move-result v3

    if-ne v3, v2, :cond_32

    iget v3, p0, Lcom/github/catvod/spider/merge/X/f;->b:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/github/catvod/spider/merge/X/f;->b:I

    if-gtz v3, :cond_25

    const/4 p1, 0x3

    iput p1, p0, Lcom/github/catvod/spider/merge/X/f;->c:I

    return p1

    :cond_25
    if-eq v1, v3, :cond_44

    iget-object v4, p0, Lcom/github/catvod/spider/merge/X/f;->a:[Lcom/github/catvod/spider/merge/b0/b;

    aget-object v5, v4, v3

    aget-object v6, v4, v1

    aput-object v6, v4, v3

    aput-object v5, v4, v1

    goto :goto_44

    :cond_32
    const/4 v4, 0x2

    if-ne v3, v4, :cond_44

    iput v4, p0, Lcom/github/catvod/spider/merge/X/f;->c:I

    iget-object p1, p0, Lcom/github/catvod/spider/merge/X/f;->a:[Lcom/github/catvod/spider/merge/b0/b;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/b0/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/X/f;->d:Ljava/lang/String;

    iget p1, p0, Lcom/github/catvod/spider/merge/X/f;->c:I

    return p1

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4a
    iget p1, p0, Lcom/github/catvod/spider/merge/X/f;->c:I

    return p1
.end method

.method public final h()V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/X/f;->c:I

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/f;->a:[Lcom/github/catvod/spider/merge/b0/b;

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/b0/b;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    array-length v0, v1

    iput v0, p0, Lcom/github/catvod/spider/merge/X/f;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/f;->d:Ljava/lang/String;

    return-void
.end method
