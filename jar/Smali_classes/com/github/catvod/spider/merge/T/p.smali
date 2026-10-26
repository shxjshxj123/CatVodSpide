.class public final Lcom/github/catvod/spider/merge/T/p;
.super Lcom/github/catvod/spider/merge/T/m;
.source "SourceFile"


# instance fields
.field private final j:Lcom/github/catvod/spider/merge/V/g;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/U/G;Lcom/github/catvod/spider/merge/T/c;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/github/catvod/spider/merge/T/m;-><init>(Lcom/github/catvod/spider/merge/U/G;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    new-instance p1, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/p;->j:Lcom/github/catvod/spider/merge/V/g;

    return-void
.end method


# virtual methods
.method public final A0()Lcom/github/catvod/spider/merge/T/p;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/T/m;->W()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/p;

    return-object v0
.end method

.method protected final D(Lcom/github/catvod/spider/merge/T/s;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge/T/s;->D(Lcom/github/catvod/spider/merge/T/s;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/p;->j:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic W()Lcom/github/catvod/spider/merge/T/m;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/p;->A0()Lcom/github/catvod/spider/merge/T/p;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/p;->A0()Lcom/github/catvod/spider/merge/T/p;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/p;->A0()Lcom/github/catvod/spider/merge/T/p;

    move-result-object v0

    return-object v0
.end method

.method public final z0(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/T/p;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/p;->j:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
