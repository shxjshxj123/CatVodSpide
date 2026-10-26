.class public final Lcom/github/catvod/spider/merge/T/h;
.super Lcom/github/catvod/spider/merge/T/m;
.source "SourceFile"


# instance fields
.field private j:Lcom/github/catvod/spider/merge/T/g;

.field private k:Lcom/github/catvod/spider/merge/U/F;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/V/s;

    const-string v1, "title"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge/V/s;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/github/catvod/spider/merge/U/E;->c:Lcom/github/catvod/spider/merge/U/E;

    const-string v1, "#root"

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/U/G;->m(Ljava/lang/String;Lcom/github/catvod/spider/merge/U/E;)Lcom/github/catvod/spider/merge/U/G;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/github/catvod/spider/merge/T/m;-><init>(Lcom/github/catvod/spider/merge/U/G;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    .line 2
    new-instance p1, Lcom/github/catvod/spider/merge/T/g;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/T/g;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/h;->j:Lcom/github/catvod/spider/merge/T/g;

    const/4 p1, 0x1

    iput p1, p0, Lcom/github/catvod/spider/merge/T/h;->l:I

    .line 3
    new-instance p1, Lcom/github/catvod/spider/merge/U/F;

    new-instance v0, Lcom/github/catvod/spider/merge/U/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/b;-><init>()V

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/U/F;-><init>(Lcom/github/catvod/spider/merge/U/j1;)V

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/h;->k:Lcom/github/catvod/spider/merge/U/F;

    return-void
.end method


# virtual methods
.method public final A0()Lcom/github/catvod/spider/merge/T/h;
    .registers 3

    invoke-super {p0}, Lcom/github/catvod/spider/merge/T/m;->W()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/h;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/h;->j:Lcom/github/catvod/spider/merge/T/g;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/g;->a()Lcom/github/catvod/spider/merge/T/g;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge/T/h;->j:Lcom/github/catvod/spider/merge/T/g;

    return-object v0
.end method

.method public final B0()Lcom/github/catvod/spider/merge/T/g;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/h;->j:Lcom/github/catvod/spider/merge/T/g;

    return-object v0
.end method

.method public final C0(Lcom/github/catvod/spider/merge/U/F;)Lcom/github/catvod/spider/merge/T/h;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/h;->k:Lcom/github/catvod/spider/merge/U/F;

    return-object p0
.end method

.method public final D0()Lcom/github/catvod/spider/merge/U/F;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/h;->k:Lcom/github/catvod/spider/merge/U/F;

    return-object v0
.end method

.method public final E0()Lcom/github/catvod/spider/merge/T/h;
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge/T/h;->l:I

    return-object p0
.end method

.method public final F0()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/T/h;->l:I

    return v0
.end method

.method public final G0()Lcom/github/catvod/spider/merge/T/h;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/T/h;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/T/h;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/c;->j()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge/T/m;->g:Lcom/github/catvod/spider/merge/T/c;

    :cond_13
    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/h;->j:Lcom/github/catvod/spider/merge/T/g;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/g;->a()Lcom/github/catvod/spider/merge/T/g;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge/T/h;->j:Lcom/github/catvod/spider/merge/T/g;

    return-object v0
.end method

.method public final bridge synthetic W()Lcom/github/catvod/spider/merge/T/m;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/h;->A0()Lcom/github/catvod/spider/merge/T/h;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/h;->A0()Lcom/github/catvod/spider/merge/T/h;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/h;->A0()Lcom/github/catvod/spider/merge/T/h;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    const-string v0, "#document"

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->d0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/h;->z0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->v0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    return-object p0
.end method

.method public final z0()Lcom/github/catvod/spider/merge/T/m;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_25

    :cond_21
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/T/m;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v1

    .line 2
    :goto_25
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->U()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "body"

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_51
    return-object v2

    :cond_52
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/T/m;->O(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    return-object v0
.end method
