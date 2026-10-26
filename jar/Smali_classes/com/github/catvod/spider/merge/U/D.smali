.class public final Lcom/github/catvod/spider/merge/U/D;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/github/catvod/spider/merge/U/C;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput v0, p0, Lcom/github/catvod/spider/merge/U/D;->a:I

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/U/D;->a:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method final b()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/U/D;->a:I

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
