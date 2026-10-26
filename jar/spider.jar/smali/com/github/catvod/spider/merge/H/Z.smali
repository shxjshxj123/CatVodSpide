.class final Lcom/github/catvod/spider/merge/H/Z;
.super Lcom/github/catvod/spider/merge/J/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/J/a;"
    }
.end annotation


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/H/Z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/H/Z;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/H/Z;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/H/Z;->a:Lcom/github/catvod/spider/merge/H/Z;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/J/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    check-cast p1, Lcom/github/catvod/spider/merge/H/b;

    check-cast p2, Lcom/github/catvod/spider/merge/H/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_9

    goto :goto_24

    :cond_9
    if-eqz p1, :cond_23

    if-nez p2, :cond_e

    goto :goto_23

    :cond_e
    iget-object v2, p1, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v2, v2, Lcom/github/catvod/spider/merge/H/m;->b:I

    iget-object v3, p2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v3, v3, Lcom/github/catvod/spider/merge/H/m;->b:I

    if-ne v2, v3, :cond_23

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object p2, p2, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/H/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public final F(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/github/catvod/spider/merge/H/b;

    iget-object v0, p1, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v0, v0, Lcom/github/catvod/spider/merge/H/m;->b:I

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/R/c;->l(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result p1

    return p1
.end method
