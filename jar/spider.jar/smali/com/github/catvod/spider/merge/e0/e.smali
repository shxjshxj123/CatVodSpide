.class public final Lcom/github/catvod/spider/merge/e0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge/V/g;

.field private b:Z

.field private c:Lcom/github/catvod/spider/merge/e0/e;


# direct methods
.method private constructor <init>(Lcom/github/catvod/spider/merge/T/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/e;->b:Z

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Lcom/github/catvod/spider/merge/V/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/e;->b:Z

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static b(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/e0/e;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/e0/e;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/e0/e;-><init>(Lcom/github/catvod/spider/merge/T/m;)V

    return-object v0
.end method

.method public static c(Lcom/github/catvod/spider/merge/V/g;)Lcom/github/catvod/spider/merge/e0/e;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/e0/e;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/e0/e;-><init>(Lcom/github/catvod/spider/merge/V/g;)V

    return-object v0
.end method

.method public static d(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/e;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/e0/e;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    .line 2
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/e0/e;-><init>(Lcom/github/catvod/spider/merge/V/g;)V

    .line 3
    iput-object p0, v0, Lcom/github/catvod/spider/merge/e0/e;->c:Lcom/github/catvod/spider/merge/e0/e;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/V/g;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    return-object v0
.end method

.method public final e()Lcom/github/catvod/spider/merge/e0/e;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/e;->c:Lcom/github/catvod/spider/merge/e0/e;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/e;->b:Z

    return v0
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/e;->b:Z

    return-void
.end method

.method final h()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/e;->b:Z

    return-void
.end method

.method public final i(Lcom/github/catvod/spider/merge/V/g;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    return-void
.end method

.method public final j(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/e;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/e0/e;->c:Lcom/github/catvod/spider/merge/e0/e;

    return-object p0
.end method

.method public final k()Lcom/github/catvod/spider/merge/T/m;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    .line 1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    goto :goto_1a

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    :goto_1a
    return-object v0

    .line 2
    :cond_1b
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "current context is more than one el,total = "

    .line 3
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/e;->a:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method
