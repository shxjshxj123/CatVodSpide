.class public final Lcom/github/catvod/spider/merge/J/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/J/m;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/J/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/J/m;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/J/m;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/m;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/github/catvod/spider/merge/J/m;->a:Ljava/lang/Object;

    if-nez v1, :cond_18

    if-nez v3, :cond_16

    const/4 v1, 0x1

    goto :goto_1c

    :cond_16
    const/4 v1, 0x0

    goto :goto_1c

    .line 1
    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1c
    if-eqz v1, :cond_31

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/m;->b:Ljava/lang/Object;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/J/m;->b:Ljava/lang/Object;

    if-nez v1, :cond_2a

    if-nez p1, :cond_28

    const/4 p1, 0x1

    goto :goto_2e

    :cond_28
    const/4 p1, 0x0

    goto :goto_2e

    .line 3
    :cond_2a
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_2e
    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/m;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->l(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/m;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->l(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/m;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/m;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "(%s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
