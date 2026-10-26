.class Lorg/simpleframework/xml/core/ScannerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/core/Scanner;",
            ">;"
        }
    .end annotation
.end field

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Support;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Scanner;

    if-nez v0, :cond_40

    iget-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Support;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/Support;->isPrimitive(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveScanner;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/PrimitiveScanner;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    goto :goto_3a

    :cond_1e
    new-instance v1, Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/ObjectScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Scanner;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Support;->isContainer(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3a

    new-instance v1, Lorg/simpleframework/xml/core/DefaultScanner;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ScannerFactory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/DefaultScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    :cond_3a
    :goto_3a
    move-object v0, v1

    iget-object v1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    return-object v0
.end method
