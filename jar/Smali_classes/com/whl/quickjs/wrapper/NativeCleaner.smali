.class abstract Lcom/whl/quickjs/wrapper/NativeCleaner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private phantomReferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->phantomReferences:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public clean()V
    .registers 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->phantomReferences:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;->pointer:J
    invoke-static {v0}, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;->access$100(Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/whl/quickjs/wrapper/NativeCleaner;->onRemove(J)V

    iget-object v1, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->phantomReferences:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1f
    return-void
.end method

.method public forceClean()V
    .registers 4

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->phantomReferences:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;

    # getter for: Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;->pointer:J
    invoke-static {v1}, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;->access$100(Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/whl/quickjs/wrapper/NativeCleaner;->onRemove(J)V

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->phantomReferences:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public abstract onRemove(J)V
.end method

.method public register(Ljava/lang/Object;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->phantomReferences:Ljava/util/Set;

    new-instance v7, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;

    iget-object v5, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;-><init>(Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;Lcom/whl/quickjs/wrapper/NativeCleaner$1;)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner;->phantomReferences:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
