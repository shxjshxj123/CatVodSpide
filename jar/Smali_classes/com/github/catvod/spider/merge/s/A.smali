.class final enum Lcom/github/catvod/spider/merge/s/A;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge/s/A;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/catvod/spider/merge/s/A;

.field private static final synthetic b:[Lcom/github/catvod/spider/merge/s/A;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/s/A;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/s/A;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/s/A;->a:Lcom/github/catvod/spider/merge/s/A;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/catvod/spider/merge/s/A;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/github/catvod/spider/merge/s/A;->b:[Lcom/github/catvod/spider/merge/s/A;

    return-void
.end method

.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/catvod/spider/merge/s/A;
    .registers 2

    const-class v0, Lcom/github/catvod/spider/merge/s/A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/s/A;

    return-object p0
.end method

.method public static values()[Lcom/github/catvod/spider/merge/s/A;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/s/A;->b:[Lcom/github/catvod/spider/merge/s/A;

    invoke-virtual {v0}, [Lcom/github/catvod/spider/merge/s/A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/catvod/spider/merge/s/A;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
