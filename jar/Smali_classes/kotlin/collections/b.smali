.class Lkotlin/collections/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lkotlin/collections/e;


# direct methods
.method public constructor <init>(Lkotlin/collections/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/collections/b;->b:Lkotlin/collections/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .registers 2

    iget v0, p0, Lkotlin/collections/b;->a:I

    return v0
.end method

.method protected final c(I)V
    .registers 2

    iput p1, p0, Lkotlin/collections/b;->a:I

    return-void
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lkotlin/collections/b;->a:I

    iget-object v1, p0, Lkotlin/collections/b;->b:Lkotlin/collections/e;

    invoke-virtual {v1}, Lkotlin/collections/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/collections/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lkotlin/collections/b;->b:Lkotlin/collections/e;

    iget v1, p0, Lkotlin/collections/b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/b;->a:I

    invoke-virtual {v0, v1}, Lkotlin/collections/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
