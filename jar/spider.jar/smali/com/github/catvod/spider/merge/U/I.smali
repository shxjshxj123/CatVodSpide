.class Lcom/github/catvod/spider/merge/U/I;
.super Lcom/github/catvod/spider/merge/U/P;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/P;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/github/catvod/spider/merge/U/P;->a:I

    return-void
.end method


# virtual methods
.method final h()Lcom/github/catvod/spider/merge/U/P;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/U/P;->h()Lcom/github/catvod/spider/merge/U/P;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/I;->d:Ljava/lang/String;

    return-object p0
.end method

.method final k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/I;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/I;->d:Ljava/lang/String;

    return-object p0
.end method

.method final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/I;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/I;->d:Ljava/lang/String;

    return-object v0
.end method
