.class public final Lcom/github/catvod/spider/merge/X/l;
.super Lcom/github/catvod/spider/merge/X/b;
.source "SourceFile"


# static fields
.field private static final f:Lcom/github/catvod/spider/merge/b0/l;


# instance fields
.field private a:Lcom/github/catvod/spider/merge/b0/b;

.field private b:I

.field private c:Lcom/github/catvod/spider/merge/Y/c;

.field private d:Lcom/github/catvod/spider/merge/Z/h;

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/b0/l;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/b0/l;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/X/l;->f:Lcom/github/catvod/spider/merge/b0/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/b0/b;

    sget-object v1, Lcom/github/catvod/spider/merge/X/l;->f:Lcom/github/catvod/spider/merge/b0/l;

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/b0/b;-><init>(Lcom/github/catvod/spider/merge/b0/m;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->a:Lcom/github/catvod/spider/merge/b0/b;

    new-instance v0, Lcom/github/catvod/spider/merge/Y/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/Y/c;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->c:Lcom/github/catvod/spider/merge/Y/c;

    new-instance v0, Lcom/github/catvod/spider/merge/Z/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/Z/h;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->d:Lcom/github/catvod/spider/merge/Z/h;

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->e:[B

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/l;->h()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()F
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->c:Lcom/github/catvod/spider/merge/Y/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/Y/b;->a()F

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/l;->d:Lcom/github/catvod/spider/merge/Z/h;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/Z/b;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/X/l;->b:I

    return v0
.end method

.method public final f([BI)I
    .registers 9

    const/4 v0, 0x0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v1, p2, :cond_4b

    iget-object v4, p0, Lcom/github/catvod/spider/merge/X/l;->a:Lcom/github/catvod/spider/merge/b0/b;

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/b0/b;->c(B)I

    move-result v4

    if-ne v4, v3, :cond_15

    const/4 v1, 0x3

    iput v1, p0, Lcom/github/catvod/spider/merge/X/l;->b:I

    goto :goto_4b

    :cond_15
    if-ne v4, v2, :cond_1a

    iput v2, p0, Lcom/github/catvod/spider/merge/X/l;->b:I

    goto :goto_4b

    :cond_1a
    if-nez v4, :cond_48

    iget-object v2, p0, Lcom/github/catvod/spider/merge/X/l;->a:Lcom/github/catvod/spider/merge/b0/b;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/b0/b;->b()I

    move-result v2

    if-nez v1, :cond_39

    iget-object v4, p0, Lcom/github/catvod/spider/merge/X/l;->e:[B

    aget-byte v5, p1, v0

    aput-byte v5, v4, v3

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/l;->c:Lcom/github/catvod/spider/merge/Y/c;

    rsub-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v4, v5, v2}, Lcom/github/catvod/spider/merge/Y/b;->d([BII)V

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/l;->d:Lcom/github/catvod/spider/merge/Z/h;

    iget-object v4, p0, Lcom/github/catvod/spider/merge/X/l;->e:[B

    invoke-virtual {v3, v4, v0, v2}, Lcom/github/catvod/spider/merge/Z/b;->d([BII)V

    goto :goto_48

    :cond_39
    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/l;->c:Lcom/github/catvod/spider/merge/Y/c;

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v4, v2

    invoke-virtual {v3, p1, v4, v2}, Lcom/github/catvod/spider/merge/Y/b;->d([BII)V

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/l;->d:Lcom/github/catvod/spider/merge/Z/h;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, p1, v4, v2}, Lcom/github/catvod/spider/merge/Z/b;->d([BII)V

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/l;->e:[B

    sub-int/2addr p2, v3

    aget-byte p1, p1, p2

    aput-byte p1, v1, v0

    iget p1, p0, Lcom/github/catvod/spider/merge/X/l;->b:I

    if-ne p1, v3, :cond_6b

    iget-object p1, p0, Lcom/github/catvod/spider/merge/X/l;->c:Lcom/github/catvod/spider/merge/Y/c;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/Y/b;->c()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/l;->d()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6b

    iput v2, p0, Lcom/github/catvod/spider/merge/X/l;->b:I

    :cond_6b
    iget p1, p0, Lcom/github/catvod/spider/merge/X/l;->b:I

    return p1
.end method

.method public final h()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->a:Lcom/github/catvod/spider/merge/b0/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/b0/b;->d()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/X/l;->b:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->c:Lcom/github/catvod/spider/merge/Y/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/Y/b;->e()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->d:Lcom/github/catvod/spider/merge/Z/h;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/Z/b;->e()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/l;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
