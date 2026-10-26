.class public final synthetic Lcom/github/catvod/spider/merge/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/JSDemo;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/JSDemo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/l/e;->a:Lcom/github/catvod/spider/JSDemo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/l/e;->a:Lcom/github/catvod/spider/JSDemo;

    invoke-static {v0}, Lcom/github/catvod/spider/JSDemo;->c(Lcom/github/catvod/spider/JSDemo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
