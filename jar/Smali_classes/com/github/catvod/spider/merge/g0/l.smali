.class public final Lcom/github/catvod/spider/merge/g0/l;
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

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p2

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_35

    :cond_1f
    if-nez p2, :cond_22

    goto :goto_29

    :cond_22
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    :goto_29
    const-string p1, ""

    goto :goto_35

    :cond_2c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_35
    new-instance p2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "substring-after"

    return-object v0
.end method
