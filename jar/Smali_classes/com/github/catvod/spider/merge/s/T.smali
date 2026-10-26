.class public final Lcom/github/catvod/spider/merge/s/T;
.super Lcom/github/catvod/spider/merge/s/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/j<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/j;-><init>()V

    return-void
.end method

.method public static w()Lcom/github/catvod/spider/merge/s/T;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/catvod/spider/merge/s/T<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/s/T;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/s/T;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge/s/o;->t(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final u(Ljava/lang/Throwable;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge/s/o;->u(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
