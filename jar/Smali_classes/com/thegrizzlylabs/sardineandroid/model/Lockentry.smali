.class public Lcom/thegrizzlylabs/sardineandroid/model/Lockentry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field private lockscope:Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private locktype:Lcom/thegrizzlylabs/sardineandroid/model/Locktype;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockscope()Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Lockentry;->lockscope:Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;

    return-object v0
.end method

.method public getLocktype()Lcom/thegrizzlylabs/sardineandroid/model/Locktype;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Lockentry;->locktype:Lcom/thegrizzlylabs/sardineandroid/model/Locktype;

    return-object v0
.end method

.method public setLockscope(Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Lockentry;->lockscope:Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;

    return-void
.end method

.method public setLocktype(Lcom/thegrizzlylabs/sardineandroid/model/Locktype;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Lockentry;->locktype:Lcom/thegrizzlylabs/sardineandroid/model/Locktype;

    return-void
.end method
