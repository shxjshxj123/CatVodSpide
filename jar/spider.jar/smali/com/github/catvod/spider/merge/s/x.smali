.class abstract Lcom/github/catvod/spider/merge/s/x;
.super Lcom/github/catvod/spider/merge/s/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/j<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final j:Lcom/github/catvod/spider/merge/s/a;

.field private static final k:Ljava/util/logging/Logger;


# instance fields
.field private volatile h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lcom/github/catvod/spider/merge/s/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/s/x;->k:Ljava/util/logging/Logger;

    :try_start_c
    new-instance v0, Lcom/github/catvod/spider/merge/s/v;

    const-class v1, Lcom/github/catvod/spider/merge/s/x;

    const-class v2, Ljava/util/Set;

    const-string v3, "h"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Lcom/github/catvod/spider/merge/s/x;

    const-string v3, "i"

    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge/s/v;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_25

    const/4 v1, 0x0

    goto :goto_2c

    :catchall_25
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/github/catvod/spider/merge/s/w;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/s/w;-><init>()V

    :goto_2c
    sput-object v0, Lcom/github/catvod/spider/merge/s/x;->j:Lcom/github/catvod/spider/merge/s/a;

    if-eqz v1, :cond_39

    sget-object v0, Lcom/github/catvod/spider/merge/s/x;->k:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/x;->h:Ljava/util/Set;

    iput p1, p0, Lcom/github/catvod/spider/merge/s/x;->i:I

    return-void
.end method

.method static synthetic w(Lcom/github/catvod/spider/merge/s/x;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge/s/x;->h:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic x(Lcom/github/catvod/spider/merge/s/x;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/x;->h:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic y(Lcom/github/catvod/spider/merge/s/x;)I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/s/x;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/s/x;->i:I

    return v0
.end method


# virtual methods
.method final A()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/x;->h:Ljava/util/Set;

    return-void
.end method

.method final B()I
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/s/x;->j:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/s/a;->e(Lcom/github/catvod/spider/merge/s/x;)I

    move-result v0

    return v0
.end method

.method final C()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/x;->h:Ljava/util/Set;

    if-nez v0, :cond_1a

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/s/x;->z(Ljava/util/Set;)V

    sget-object v1, Lcom/github/catvod/spider/merge/s/x;->j:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v1, p0, v0}, Lcom/github/catvod/spider/merge/s/a;->d(Lcom/github/catvod/spider/merge/s/x;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/x;->h:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1a
    return-object v0
.end method

.method abstract z(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
