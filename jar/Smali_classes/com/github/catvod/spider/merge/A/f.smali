.class public final Lcom/github/catvod/spider/merge/A/f;
.super Lcom/github/catvod/spider/merge/A/k;
.source "SourceFile"


# direct methods
.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    const-string v0, "elements"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_e

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1a

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge/A/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/github/catvod/spider/merge/A/b;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_1a
    return-object p0
.end method
