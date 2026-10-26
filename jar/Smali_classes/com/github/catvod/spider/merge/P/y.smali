.class final Lcom/github/catvod/spider/merge/P/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/x;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-lt p2, v0, :cond_b

    iput p1, p0, Lcom/github/catvod/spider/merge/P/y;->a:I

    iput p2, p0, Lcom/github/catvod/spider/merge/P/y;->b:I

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/P/y;->b:I

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge/P/N;->b(Ljava/lang/Appendable;II)V

    return-void
.end method

.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/P/y;->a:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/P/y;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/P/y;->b:I

    return v0
.end method
