.class final Lcom/github/catvod/spider/merge/P/v;
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

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/v;->a:Lcom/github/catvod/spider/merge/P/x;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/v;->a:Lcom/github/catvod/spider/merge/P/x;

    invoke-interface {v0, p1, p2}, Lcom/github/catvod/spider/merge/P/x;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 6

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/v;->a:Lcom/github/catvod/spider/merge/P/x;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    goto :goto_d

    :cond_b
    add-int/lit8 v0, p2, -0x1

    :goto_d
    invoke-interface {v1, p1, v0}, Lcom/github/catvod/spider/merge/P/x;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/v;->a:Lcom/github/catvod/spider/merge/P/x;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/P/z;->c()I

    move-result v0

    return v0
.end method
