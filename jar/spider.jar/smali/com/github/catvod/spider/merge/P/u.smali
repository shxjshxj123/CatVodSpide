.class final Lcom/github/catvod/spider/merge/P/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/z;


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/github/catvod/spider/merge/P/u;->a:C

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 3

    iget-char p2, p0, Lcom/github/catvod/spider/merge/P/u;->a:C

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
