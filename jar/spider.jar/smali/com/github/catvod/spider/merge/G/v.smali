.class public final Lcom/github/catvod/spider/merge/G/v;
.super Lcom/github/catvod/spider/merge/G/A;
.source "SourceFile"


# instance fields
.field private final f:Lcom/github/catvod/spider/merge/G/E;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/x;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/x;->o()Lcom/github/catvod/spider/merge/G/E;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/x;->o()Lcom/github/catvod/spider/merge/G/E;

    move-result-object v2

    iget-object v3, p1, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    .line 3
    invoke-direct {p0, p1, v0, v3}, Lcom/github/catvod/spider/merge/G/A;-><init>(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/s;Lcom/github/catvod/spider/merge/G/y;)V

    iput-object v1, p0, Lcom/github/catvod/spider/merge/G/v;->f:Lcom/github/catvod/spider/merge/G/E;

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/G/A;->e(Lcom/github/catvod/spider/merge/G/E;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/G/H;Lcom/github/catvod/spider/merge/G/E;Lcom/github/catvod/spider/merge/G/E;Lcom/github/catvod/spider/merge/G/y;)V
    .registers 6

    invoke-direct {p0, p1, p2, p5}, Lcom/github/catvod/spider/merge/G/A;-><init>(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/s;Lcom/github/catvod/spider/merge/G/y;)V

    iput-object p3, p0, Lcom/github/catvod/spider/merge/G/v;->f:Lcom/github/catvod/spider/merge/G/E;

    invoke-virtual {p0, p4}, Lcom/github/catvod/spider/merge/G/A;->e(Lcom/github/catvod/spider/merge/G/E;)V

    return-void
.end method


# virtual methods
.method public final f()Lcom/github/catvod/spider/merge/G/E;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/v;->f:Lcom/github/catvod/spider/merge/G/E;

    return-object v0
.end method
