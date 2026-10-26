.class final Lcom/github/catvod/spider/merge/U/H;
.super Lcom/github/catvod/spider/merge/U/I;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/I;-><init>()V

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/U/I;->k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/I;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "<![CDATA["

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/I;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
