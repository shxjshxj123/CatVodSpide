.class public final enum Lcom/github/catvod/spider/merge/O/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge/O/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/catvod/spider/merge/O/h;

.field public static final enum b:Lcom/github/catvod/spider/merge/O/h;

.field private static final synthetic c:[Lcom/github/catvod/spider/merge/O/h;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/github/catvod/spider/merge/O/h;

    const-string v1, "semiColonRequired"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge/O/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge/O/h;->a:Lcom/github/catvod/spider/merge/O/h;

    new-instance v1, Lcom/github/catvod/spider/merge/O/h;

    const-string v3, "semiColonOptional"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/catvod/spider/merge/O/h;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/github/catvod/spider/merge/O/h;

    const-string v5, "errorIfNoSemiColon"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/catvod/spider/merge/O/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/catvod/spider/merge/O/h;->b:Lcom/github/catvod/spider/merge/O/h;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/catvod/spider/merge/O/h;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/github/catvod/spider/merge/O/h;->c:[Lcom/github/catvod/spider/merge/O/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/catvod/spider/merge/O/h;
    .registers 2

    const-class v0, Lcom/github/catvod/spider/merge/O/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/O/h;

    return-object p0
.end method

.method public static values()[Lcom/github/catvod/spider/merge/O/h;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/O/h;->c:[Lcom/github/catvod/spider/merge/O/h;

    invoke-virtual {v0}, [Lcom/github/catvod/spider/merge/O/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/catvod/spider/merge/O/h;

    return-object v0
.end method
