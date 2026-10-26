.class final enum Lcom/github/catvod/spider/merge/s/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge/s/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/catvod/spider/merge/s/s;

.field public static final enum b:Lcom/github/catvod/spider/merge/s/s;

.field private static final synthetic c:[Lcom/github/catvod/spider/merge/s/s;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/github/catvod/spider/merge/s/s;

    const-string v1, "OUTPUT_FUTURE_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge/s/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge/s/s;->a:Lcom/github/catvod/spider/merge/s/s;

    new-instance v1, Lcom/github/catvod/spider/merge/s/s;

    const-string v3, "ALL_INPUT_FUTURES_PROCESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/catvod/spider/merge/s/s;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/catvod/spider/merge/s/s;->b:Lcom/github/catvod/spider/merge/s/s;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/catvod/spider/merge/s/s;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/github/catvod/spider/merge/s/s;->c:[Lcom/github/catvod/spider/merge/s/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/catvod/spider/merge/s/s;
    .registers 2

    const-class v0, Lcom/github/catvod/spider/merge/s/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/s/s;

    return-object p0
.end method

.method public static values()[Lcom/github/catvod/spider/merge/s/s;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/s/s;->c:[Lcom/github/catvod/spider/merge/s/s;

    invoke-virtual {v0}, [Lcom/github/catvod/spider/merge/s/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/catvod/spider/merge/s/s;

    return-object v0
.end method
