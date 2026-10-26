.class final Lcom/github/catvod/spider/merge/P/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/x;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/P/L;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .registers 4

    const/16 v0, 0xa

    if-ge p2, v0, :cond_d

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_19

    :cond_d
    const/16 v0, 0x64

    if-ge p2, v0, :cond_15

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/P/N;->a(Ljava/lang/Appendable;I)V

    goto :goto_19

    :cond_15
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge/P/N;->b(Ljava/lang/Appendable;II)V

    :goto_19
    return-void
.end method

.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/P/L;->a:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/P/L;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
