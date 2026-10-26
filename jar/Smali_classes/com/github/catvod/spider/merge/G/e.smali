.class public final Lcom/github/catvod/spider/merge/G/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/G/k;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge/G/f;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/G/f;-><init>(I)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/G/f;->a(Ljava/nio/CharBuffer;)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/G/f;->d()Lcom/github/catvod/spider/merge/G/g;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->d()I

    move-result v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v0

    if-eqz v0, :cond_60

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    new-instance v0, Lcom/github/catvod/spider/merge/G/i;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->e()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->a()I

    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/G/i;-><init>(II[I)V

    goto :goto_74

    :cond_43
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not reached"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    new-instance v0, Lcom/github/catvod/spider/merge/G/h;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->c()[C

    move-result-object v3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->a()I

    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/G/h;-><init>(II[C)V

    goto :goto_74

    :cond_60
    new-instance v0, Lcom/github/catvod/spider/merge/G/j;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->b()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/g;->a()I

    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/G/j;-><init>(II[B)V

    :goto_74
    return-object v0
.end method
