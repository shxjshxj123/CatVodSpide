.class public final Lcom/github/catvod/spider/merge/H/o;
.super Lcom/github/catvod/spider/merge/H/t0;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/m;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/t0;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    iput p2, p0, Lcom/github/catvod/spider/merge/H/o;->b:I

    iput p3, p0, Lcom/github/catvod/spider/merge/H/o;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public final d(II)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "action_"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge/H/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/catvod/spider/merge/H/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
