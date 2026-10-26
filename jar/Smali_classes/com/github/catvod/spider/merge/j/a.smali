.class public final synthetic Lcom/github/catvod/spider/merge/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/github/catvod/spider/merge/j/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/j/a;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/j/a;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/j/a;->a:Lcom/github/catvod/spider/merge/j/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    sget v0, Lcom/github/catvod/debug/MainActivity;->a:I

    return-void
.end method
