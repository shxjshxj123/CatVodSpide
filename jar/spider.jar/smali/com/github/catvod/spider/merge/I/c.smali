.class public final Lcom/github/catvod/spider/merge/I/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/I/b;

.field private final b:Lcom/github/catvod/spider/merge/G/I;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/G/I;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/I/c;->a:Lcom/github/catvod/spider/merge/I/b;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/I/c;->b:Lcom/github/catvod/spider/merge/G/I;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/github/catvod/spider/merge/I/e;)Ljava/lang/String;
    .registers 6

    iget v0, p1, Lcom/github/catvod/spider/merge/I/e;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Lcom/github/catvod/spider/merge/I/e;->d:Z

    const-string v3, ""

    if-eqz v2, :cond_10

    const-string v2, ":"

    goto :goto_11

    :cond_10
    move-object v2, v3

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/github/catvod/spider/merge/I/e;->g:Z

    if-eqz v0, :cond_22

    const-string v3, "^"

    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p1, Lcom/github/catvod/spider/merge/I/e;->d:Z

    if-eqz v1, :cond_5d

    iget-object v1, p1, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    const-string v2, "=>"

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/github/catvod/spider/merge/I/e;->e:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5d
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/github/catvod/spider/merge/I/c;->a:Lcom/github/catvod/spider/merge/I/b;

    iget-object v0, v0, Lcom/github/catvod/spider/merge/I/b;->b:Lcom/github/catvod/spider/merge/I/e;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/catvod/spider/merge/I/c;->a:Lcom/github/catvod/spider/merge/I/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/github/catvod/spider/merge/I/a;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge/I/a;-><init>()V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/I/e;

    iget-object v4, v3, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    const/4 v5, 0x0

    if-eqz v4, :cond_3c

    array-length v4, v4

    goto :goto_3d

    :cond_3c
    const/4 v4, 0x0

    :goto_3d
    if-ge v5, v4, :cond_29

    iget-object v6, v3, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    aget-object v6, v6, v5

    if-eqz v6, :cond_76

    iget v7, v6, Lcom/github/catvod/spider/merge/I/e;->a:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_76

    invoke-virtual {p0, v3}, Lcom/github/catvod/spider/merge/I/c;->a(Lcom/github/catvod/spider/merge/I/e;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v7, p0, Lcom/github/catvod/spider/merge/I/c;->b:Lcom/github/catvod/spider/merge/G/I;

    add-int/lit8 v8, v5, -0x1

    check-cast v7, Lcom/github/catvod/spider/merge/G/J;

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge/G/J;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    .line 4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/github/catvod/spider/merge/I/c;->a(Lcom/github/catvod/spider/merge/I/e;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_84

    return-object v1

    :cond_84
    return-object v0
.end method
