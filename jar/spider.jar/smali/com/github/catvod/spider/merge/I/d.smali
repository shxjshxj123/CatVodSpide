.class public final Lcom/github/catvod/spider/merge/I/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/github/catvod/spider/merge/H/l0;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/l0;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/github/catvod/spider/merge/I/d;->b:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/I/d;->a:Lcom/github/catvod/spider/merge/H/l0;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "("

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/I/d;->a:Lcom/github/catvod/spider/merge/H/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/catvod/spider/merge/I/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
