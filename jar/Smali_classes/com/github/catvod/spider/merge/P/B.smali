.class final Lcom/github/catvod/spider/merge/P/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/z;


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/P/B;->a:I

    iput-object p2, p0, Lcom/github/catvod/spider/merge/P/B;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/B;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge/P/B;->a:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    aget-object p2, v0, p2

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final c()I
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/B;->b:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    iget-object v2, p0, Lcom/github/catvod/spider/merge/P/B;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_14
    return v1
.end method
