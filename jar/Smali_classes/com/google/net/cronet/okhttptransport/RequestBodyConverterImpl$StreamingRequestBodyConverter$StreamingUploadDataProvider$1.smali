.class Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/s/E;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/catvod/spider/merge/s/E<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider$1;->this$0:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider$1;->this$0:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;

    # getter for: Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->broker:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->access$100(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->setBackgroundReadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
