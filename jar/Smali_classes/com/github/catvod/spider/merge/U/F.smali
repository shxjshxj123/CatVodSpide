.class public final Lcom/github/catvod/spider/merge/U/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge/U/j1;

.field private b:Lcom/github/catvod/spider/merge/U/D;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/U/j1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/F;->a:Lcom/github/catvod/spider/merge/U/j1;

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/U/D;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/U/D;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/F;->b:Lcom/github/catvod/spider/merge/U/D;

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/U/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/b;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/github/catvod/spider/merge/U/F;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/U/F;-><init>(Lcom/github/catvod/spider/merge/U/j1;)V

    .line 1
    invoke-virtual {v0, v1, p0}, Lcom/github/catvod/spider/merge/U/b;->c(Ljava/io/Reader;Lcom/github/catvod/spider/merge/U/F;)V

    .line 2
    iget-object p0, v0, Lcom/github/catvod/spider/merge/U/j1;->c:Lcom/github/catvod/spider/merge/U/S;

    :cond_14
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/S;->u()Lcom/github/catvod/spider/merge/U/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/P;->h()Lcom/github/catvod/spider/merge/U/P;

    iget v1, v1, Lcom/github/catvod/spider/merge/U/P;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_14

    .line 3
    iget-object p0, v0, Lcom/github/catvod/spider/merge/U/j1;->b:Lcom/github/catvod/spider/merge/U/a;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->d()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/github/catvod/spider/merge/U/j1;->b:Lcom/github/catvod/spider/merge/U/a;

    iput-object p0, v0, Lcom/github/catvod/spider/merge/U/j1;->c:Lcom/github/catvod/spider/merge/U/S;

    iput-object p0, v0, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    iput-object p0, v0, Lcom/github/catvod/spider/merge/U/j1;->i:Ljava/util/HashMap;

    iget-object p0, v0, Lcom/github/catvod/spider/merge/U/j1;->d:Lcom/github/catvod/spider/merge/T/h;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/U/D;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/F;->b:Lcom/github/catvod/spider/merge/U/D;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/F;->a:Lcom/github/catvod/spider/merge/U/j1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/U/j1;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/F;->b:Lcom/github/catvod/spider/merge/U/D;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/D;->b()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
