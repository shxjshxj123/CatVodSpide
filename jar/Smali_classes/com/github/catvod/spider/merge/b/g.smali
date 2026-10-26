.class public final synthetic Lcom/github/catvod/spider/merge/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/merge/b/t;

.field public final synthetic b:Lcom/github/catvod/spider/merge/d/c;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge/b/t;Lcom/github/catvod/spider/merge/d/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/g;->a:Lcom/github/catvod/spider/merge/b/t;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/b/g;->b:Lcom/github/catvod/spider/merge/d/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/g;->a:Lcom/github/catvod/spider/merge/b/t;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/g;->b:Lcom/github/catvod/spider/merge/d/c;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/b/t;->i(Lcom/github/catvod/spider/merge/b/t;Lcom/github/catvod/spider/merge/d/c;)V

    return-void
.end method
