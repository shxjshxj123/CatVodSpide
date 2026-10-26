.class final Lcom/github/catvod/spider/merge/P/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/TimeZone;

.field final b:I


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/r;->a:Ljava/util/TimeZone;

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput p1, p0, Lcom/github/catvod/spider/merge/P/r;->b:I

    return-void
.end method
