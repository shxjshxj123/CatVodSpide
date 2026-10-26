.class public abstract Lcom/github/catvod/spider/merge/J/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/K/d;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract E(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract F(Ljava/lang/Object;)I
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public v(Lcom/github/catvod/spider/merge/K/e;)Ljava/lang/Object;
    .registers 5

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/K/b;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    invoke-interface {p1, v2}, Lcom/github/catvod/spider/merge/K/b;->c(I)Lcom/github/catvod/spider/merge/K/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    return-object v1
.end method
