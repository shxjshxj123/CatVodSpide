.class public final Lcom/github/catvod/spider/merge/h0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/e0/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/f;
    .registers 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "script"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->X()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_32
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "allText"

    return-object v0
.end method
