.class Lcom/github/catvod/spider/Init$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Lcom/github/catvod/spider/Init;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/Init;

    invoke-direct {v0}, Lcom/github/catvod/spider/Init;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/Init$Loader;->a:Lcom/github/catvod/spider/Init;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
