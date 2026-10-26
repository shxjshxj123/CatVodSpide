.class final Lcom/github/catvod/spider/merge/P/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/x;


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/P/x;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/P/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/F;->a:Lcom/github/catvod/spider/merge/P/x;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/F;->a:Lcom/github/catvod/spider/merge/P/x;

    invoke-interface {v0, p1, p2}, Lcom/github/catvod/spider/merge/P/x;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 5

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    :cond_e
    iget-object p2, p0, Lcom/github/catvod/spider/merge/P/F;->a:Lcom/github/catvod/spider/merge/P/x;

    invoke-interface {p2, p1, v1}, Lcom/github/catvod/spider/merge/P/x;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/F;->a:Lcom/github/catvod/spider/merge/P/x;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/P/z;->c()I

    move-result v0

    return v0
.end method
