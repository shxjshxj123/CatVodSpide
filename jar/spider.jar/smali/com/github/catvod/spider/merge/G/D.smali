.class public Lcom/github/catvod/spider/merge/G/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/K/e;


# static fields
.field public static final c:Lcom/github/catvod/spider/merge/G/y;


# instance fields
.field public a:Lcom/github/catvod/spider/merge/G/D;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/G/y;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/G/y;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/G/D;->c:Lcom/github/catvod/spider/merge/G/y;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/G/D;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/G/D;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    iput p2, p0, Lcom/github/catvod/spider/merge/G/D;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/catvod/spider/merge/K/d<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/d;->v(Lcom/github/catvod/spider/merge/K/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lcom/github/catvod/spider/merge/K/b;
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public d()I
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public e()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final f()Z
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/G/D;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/D;->d()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/D;->d()I

    move-result v2

    if-ge v1, v2, :cond_23

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/G/D;->c(I)Lcom/github/catvod/spider/merge/K/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "["

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    :goto_7
    if-eqz v1, :cond_26

    .line 2
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v2

    if-nez v2, :cond_14

    iget v2, v1, Lcom/github/catvod/spider/merge/G/D;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v2, v1, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, v1, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    goto :goto_7

    :cond_26
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
