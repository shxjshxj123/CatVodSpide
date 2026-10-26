.class synthetic Lcom/thegrizzlylabs/sardineandroid/DavAce$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$thegrizzlylabs$sardineandroid$DavPrincipal$PrincipalType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->values()[Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/DavAce$1;->$SwitchMap$com$thegrizzlylabs$sardineandroid$DavPrincipal$PrincipalType:[I

    :try_start_9
    sget-object v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->HREF:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/DavAce$1;->$SwitchMap$com$thegrizzlylabs$sardineandroid$DavPrincipal$PrincipalType:[I

    sget-object v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->PROPERTY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/DavAce$1;->$SwitchMap$com$thegrizzlylabs$sardineandroid$DavPrincipal$PrincipalType:[I

    sget-object v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->KEY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
