.class public Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;
.super Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;->handleResponse(Lokhttp3/Response;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lokhttp3/Response;)Ljava/lang/Void;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;->validateResponse(Lokhttp3/Response;)V

    const/4 p1, 0x0

    return-object p1
.end method
