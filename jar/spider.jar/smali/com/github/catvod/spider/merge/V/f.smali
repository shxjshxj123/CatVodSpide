.class public abstract Lcom/github/catvod/spider/merge/V/f;
.super Lcom/github/catvod/spider/merge/V/N;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge/V/N;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/V/f;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final b()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge/V/f;->b:I

    return-void
.end method
