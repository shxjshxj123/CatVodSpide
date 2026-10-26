.class final Lcom/github/catvod/spider/merge/P/i;
.super Lcom/github/catvod/spider/merge/P/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/P/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method final c(Lcom/github/catvod/spider/merge/P/t;I)I
    .registers 3

    const/16 p1, 0xc

    if-ne p2, p1, :cond_5

    const/4 p2, 0x0

    :cond_5
    return p2
.end method
