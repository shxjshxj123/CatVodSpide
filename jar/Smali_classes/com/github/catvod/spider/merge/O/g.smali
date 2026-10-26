.class public final Lcom/github/catvod/spider/merge/O/g;
.super Lcom/github/catvod/spider/merge/O/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/O/c;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/O/g;->b:I

    iput p2, p0, Lcom/github/catvod/spider/merge/O/g;->c:I

    return-void
.end method

.method public static c(II)Lcom/github/catvod/spider/merge/O/g;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/O/g;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/O/g;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final b(ILjava/io/Writer;)Z
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/O/g;->b:I

    if-lt p1, v0, :cond_1e

    iget v0, p0, Lcom/github/catvod/spider/merge/O/g;->c:I

    if-le p1, v0, :cond_9

    goto :goto_1e

    :cond_9
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x1

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return p1
.end method
