.class public final Lcom/github/catvod/spider/merge/g0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/e0/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/e0/e;Ljava/util/List;)Lcom/github/catvod/spider/merge/e0/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/e0/e;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/e0/f;",
            ">;)",
            "Lcom/github/catvod/spider/merge/e0/f;"
        }
    .end annotation

    check-cast p2, Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1
    new-instance p2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 2
    :cond_23
    new-instance p1, Lcom/github/catvod/spider/merge/o/u;

    const-string p2, "error param in not(bool) function.Please check."

    invoke-direct {p1, p2}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "not"

    return-object v0
.end method
