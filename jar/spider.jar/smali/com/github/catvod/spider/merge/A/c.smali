.class public final Lcom/github/catvod/spider/merge/A/c;
.super Lcom/github/catvod/spider/merge/A/e;
.source "SourceFile"


# direct methods
.method public static b([B[BIII)[B
    .registers 6

    const-string v0, "$this$copyInto"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static c([BII)[B
    .registers 4

    const-string v0, "$this$copyOfRangeImpl"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge/A/d;->a(II)V

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const-string p1, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static d([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 4

    const-string v0, "$this$copyOfRangeImpl"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge/A/d;->a(II)V

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static e([Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    const-string v0, "$this$toMutableList"

    .line 1
    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge/A/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/github/catvod/spider/merge/A/b;-><init>([Ljava/lang/Object;Z)V

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
