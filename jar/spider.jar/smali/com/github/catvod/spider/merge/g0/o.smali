.class public final Lcom/github/catvod/spider/merge/g0/o;
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
    .registers 5
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

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p2

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {p2}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_31

    :cond_25
    invoke-virtual {v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    :cond_31
    :goto_31
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "substring-before-last"

    return-object v0
.end method
