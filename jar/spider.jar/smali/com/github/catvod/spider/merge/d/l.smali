.class public final Lcom/github/catvod/spider/merge/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responses"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/github/catvod/spider/merge/d/k;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/d/k;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/l;->b:Lcom/github/catvod/spider/merge/d/k;

    if-nez v0, :cond_9

    new-instance v0, Lcom/github/catvod/spider/merge/d/k;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/d/k;-><init>()V

    :cond_9
    return-object v0
.end method

.method public final b()Lcom/github/catvod/spider/merge/d/l;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/l;->a:Ljava/util/List;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/github/catvod/spider/merge/d/l;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/d/l;-><init>()V

    goto :goto_23

    .line 3
    :cond_14
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/l;->a:Ljava/util/List;

    if-nez v0, :cond_1c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1c
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/d/l;

    :goto_23
    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/d/l;->d:I

    return v0
.end method
