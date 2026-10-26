.class public final Lcom/github/catvod/spider/merge/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge/g/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/g/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/g/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/g/a;->b:Ljava/util/List;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final b()Lcom/github/catvod/spider/merge/g/a;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/g/a;->a:Lcom/github/catvod/spider/merge/g/a;

    if-nez v0, :cond_9

    new-instance v0, Lcom/github/catvod/spider/merge/g/a;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/g/a;-><init>()V

    :cond_9
    return-object v0
.end method
