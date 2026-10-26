.class synthetic Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$google$net$cronet$okhttptransport$UploadBodyDataBroker$ReadResult:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->values()[Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$1;->$SwitchMap$com$google$net$cronet$okhttptransport$UploadBodyDataBroker$ReadResult:[I

    :try_start_9
    sget-object v1, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->SUCCESS:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$1;->$SwitchMap$com$google$net$cronet$okhttptransport$UploadBodyDataBroker$ReadResult:[I

    sget-object v1, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
