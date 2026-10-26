.class public Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation
.end field

.field private final syncToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;->resources:Ljava/util/List;

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;->syncToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;->syncToken:Ljava/lang/String;

    return-object v0
.end method
