.class public final synthetic Lcom/github/catvod/spider/merge/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/merge/b/t;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/f;->a:Lcom/github/catvod/spider/merge/b/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/f;->a:Lcom/github/catvod/spider/merge/b/t;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/b/t;->b(Lcom/github/catvod/spider/merge/b/t;)V

    return-void
.end method
