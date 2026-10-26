.class public final Lcom/github/catvod/spider/merge/X/d;
.super Lcom/github/catvod/spider/merge/X/b;
.source "SourceFile"


# static fields
.field private static final e:Lcom/github/catvod/spider/merge/b0/d;


# instance fields
.field private a:Lcom/github/catvod/spider/merge/b0/b;

.field private b:I

.field private c:Lcom/github/catvod/spider/merge/Z/d;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/b0/d;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/b0/d;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/X/d;->e:Lcom/github/catvod/spider/merge/b0/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/b0/b;

    sget-object v1, Lcom/github/catvod/spider/merge/X/d;->e:Lcom/github/catvod/spider/merge/b0/d;

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/b0/b;-><init>(Lcom/github/catvod/spider/merge/b0/m;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/d;->a:Lcom/github/catvod/spider/merge/b0/b;

    new-instance v0, Lcom/github/catvod/spider/merge/Z/d;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/Z/d;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/d;->c:Lcom/github/catvod/spider/merge/Z/d;

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/d;->d:[B

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/d;->h()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/W/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()F
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/d;->c:Lcom/github/catvod/spider/merge/Z/d;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/Z/b;->a()F

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/X/d;->b:I

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

    if-ge v1, p2, :cond_3a

    iget-object v4, p0, Lcom/github/catvod/spider/merge/X/d;->a:Lcom/github/catvod/spider/merge/b0/b;

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/b0/b;->c(B)I

    move-result v4

    if-ne v4, v3, :cond_15

    const/4 v1, 0x3

    iput v1, p0, Lcom/github/catvod/spider/merge/X/d;->b:I

    goto :goto_3a

    :cond_15
    if-ne v4, v2, :cond_1a

    iput v2, p0, Lcom/github/catvod/spider/merge/X/d;->b:I

    goto :goto_3a

    :cond_1a
    if-nez v4, :cond_37

    iget-object v2, p0, Lcom/github/catvod/spider/merge/X/d;->a:Lcom/github/catvod/spider/merge/b0/b;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/b0/b;->b()I

    move-result v2

    if-nez v1, :cond_30

    iget-object v4, p0, Lcom/github/catvod/spider/merge/X/d;->d:[B

    aget-byte v5, p1, v0

    aput-byte v5, v4, v3

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/d;->c:Lcom/github/catvod/spider/merge/Z/d;

    invoke-virtual {v3, v4, v0, v2}, Lcom/github/catvod/spider/merge/Z/b;->d([BII)V

    goto :goto_37

    :cond_30
    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/d;->c:Lcom/github/catvod/spider/merge/Z/d;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, p1, v4, v2}, Lcom/github/catvod/spider/merge/Z/b;->d([BII)V

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/d;->d:[B

    sub-int/2addr p2, v3

    aget-byte p1, p1, p2

    aput-byte p1, v1, v0

    iget p1, p0, Lcom/github/catvod/spider/merge/X/d;->b:I

    if-ne p1, v3, :cond_5a

    iget-object p1, p0, Lcom/github/catvod/spider/merge/X/d;->c:Lcom/github/catvod/spider/merge/Z/d;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/Z/b;->c()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/d;->d()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5a

    iput v2, p0, Lcom/github/catvod/spider/merge/X/d;->b:I

    :cond_5a
    iget p1, p0, Lcom/github/catvod/spider/merge/X/d;->b:I

    return p1
.end method

.method public final h()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/d;->a:Lcom/github/catvod/spider/merge/b0/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/b0/b;->d()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/X/d;->b:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/d;->c:Lcom/github/catvod/spider/merge/Z/d;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/Z/b;->e()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/d;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
