.class public final Lcom/github/catvod/spider/merge/O/a;
.super Lcom/github/catvod/spider/merge/O/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:[Lcom/github/catvod/spider/merge/O/b;


# direct methods
.method public varargs constructor <init>([Lcom/github/catvod/spider/merge/O/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/O/b;-><init>()V

    .line 1
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 2
    check-cast p1, [Lcom/github/catvod/spider/merge/O/b;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/O/a;->b:[Lcom/github/catvod/spider/merge/O/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 9

    iget-object v0, p0, Lcom/github/catvod/spider/merge/O/a;->b:[Lcom/github/catvod/spider/merge/O/b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/github/catvod/spider/merge/O/b;->a(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v4

    if-eqz v4, :cond_10

    return v4

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    return v2
.end method
