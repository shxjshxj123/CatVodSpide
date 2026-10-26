.class public Lorg/chromium/net/ApiVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final API_LEVEL:I = 0xe

.field private static final CRONET_VERSION:Ljava/lang/String; = "98.0.4758.101"

.field private static final LAST_CHANGE:Ljava/lang/String; = "9883bca270e5c0fdf116b98ce040ce741100a171-refs/branch-heads/4758@{#1144}"

.field private static final MIN_COMPATIBLE_API_LEVEL:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiLevel()I
    .registers 1

    const/4 v0, 0x3

    return v0
.end method

.method public static getCronetVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "98.0.4758.101"

    return-object v0
.end method

.method public static getCronetVersionWithLastChange()Ljava/lang/String;
    .registers 1

    const-string v0, "98.0.4758.101@9883bca2"

    return-object v0
.end method

.method public static getLastChange()Ljava/lang/String;
    .registers 1

    const-string v0, "9883bca270e5c0fdf116b98ce040ce741100a171-refs/branch-heads/4758@{#1144}"

    return-object v0
.end method

.method public static getMaximumAvailableApiLevel()I
    .registers 1

    const/16 v0, 0xe

    return v0
.end method
