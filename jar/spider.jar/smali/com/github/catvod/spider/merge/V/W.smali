.class final Lcom/github/catvod/spider/merge/V/W;
.super Lcom/github/catvod/spider/merge/V/a0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/V/N;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/a0;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/a0;->a:Lcom/github/catvod/spider/merge/V/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/a0;->a:Lcom/github/catvod/spider/merge/V/N;

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge/V/N;->a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/a0;->a:Lcom/github/catvod/spider/merge/V/N;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":not(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
