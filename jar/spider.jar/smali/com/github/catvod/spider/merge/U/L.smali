.class final Lcom/github/catvod/spider/merge/U/L;
.super Lcom/github/catvod/spider/merge/U/P;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/P;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/catvod/spider/merge/U/P;->a:I

    return-void
.end method


# virtual methods
.method final h()Lcom/github/catvod/spider/merge/U/P;
    .registers 1

    invoke-super {p0}, Lcom/github/catvod/spider/merge/U/P;->h()Lcom/github/catvod/spider/merge/U/P;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
