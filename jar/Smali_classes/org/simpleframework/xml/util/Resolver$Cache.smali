.class Lorg/simpleframework/xml/util/Resolver$Cache;
.super Lorg/simpleframework/xml/util/LimitedCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/LimitedCache<",
        "Ljava/util/List<",
        "Lorg/simpleframework/xml/util/Match;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/Resolver;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/Resolver;)V
    .registers 2

    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Cache;->this$0:Lorg/simpleframework/xml/util/Resolver;

    const/16 p1, 0x400

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/LimitedCache;-><init>(I)V

    return-void
.end method
