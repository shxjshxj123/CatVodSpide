.class final Lcom/github/catvod/spider/merge/p/l;
.super Lcom/github/catvod/spider/merge/p/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/p/g<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/p/g;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/p/l;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/l;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 p1, 0x1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/l;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()Lcom/github/catvod/spider/merge/p/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/p/m<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/l;->c:Ljava/lang/Object;

    new-instance v1, Lcom/github/catvod/spider/merge/p/h;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/p/h;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/l;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/l;->e()Lcom/github/catvod/spider/merge/p/m;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/l;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
