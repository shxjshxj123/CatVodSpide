.class public final Lcom/github/catvod/spider/merge/H/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/H/C;


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/H/M;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/H/M;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/H/M;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/H/M;->a:Lcom/github/catvod/spider/merge/H/M;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/github/catvod/spider/merge/G/t;)V
    .registers 3

    const/4 v0, -0x3

    iput v0, p1, Lcom/github/catvod/spider/merge/G/t;->m:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public final hashCode()I
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "skip"

    return-object v0
.end method
