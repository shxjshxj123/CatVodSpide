.class public final Lcom/github/catvod/spider/merge/T/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/github/catvod/spider/merge/T/n;

.field private b:Ljava/nio/charset/Charset;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/github/catvod/spider/merge/T/n;->f:Lcom/github/catvod/spider/merge/T/n;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/g;->a:Lcom/github/catvod/spider/merge/T/n;

    sget-object v0, Lcom/github/catvod/spider/merge/R/b;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/g;->b:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/g;->c:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/T/g;->e:Z

    iput v0, p0, Lcom/github/catvod/spider/merge/T/g;->f:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/github/catvod/spider/merge/T/g;->g:I

    iput v0, p0, Lcom/github/catvod/spider/merge/T/g;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/T/g;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/g;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_22

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/github/catvod/spider/merge/T/g;->b:Ljava/nio/charset/Charset;

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/g;->a:Lcom/github/catvod/spider/merge/T/n;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/T/n;->valueOf(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/n;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge/T/g;->a:Lcom/github/catvod/spider/merge/T/n;

    return-object v0

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final b()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/g;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/g;->f()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public final c()Lcom/github/catvod/spider/merge/T/n;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/g;->a:Lcom/github/catvod/spider/merge/T/n;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/g;->a()Lcom/github/catvod/spider/merge/T/g;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/T/g;->f:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/T/g;->g:I

    return v0
.end method

.method final f()Ljava/nio/charset/CharsetEncoder;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/g;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    .line 1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_28

    :cond_1d
    const-string v2, "UTF-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x2

    goto :goto_28

    :cond_27
    const/4 v1, 0x3

    .line 2
    :goto_28
    iput v1, p0, Lcom/github/catvod/spider/merge/T/g;->d:I

    return-object v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/T/g;->e:Z

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/T/g;->h:I

    return v0
.end method
