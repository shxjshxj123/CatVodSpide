.class public final synthetic Lcom/github/catvod/spider/merge/s/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/merge/s/t;

.field public final synthetic b:Lcom/github/catvod/spider/merge/p/c;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/p/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/q;->a:Lcom/github/catvod/spider/merge/s/t;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/q;->b:Lcom/github/catvod/spider/merge/p/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/q;->a:Lcom/github/catvod/spider/merge/s/t;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/q;->b:Lcom/github/catvod/spider/merge/p/c;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/s/t;->E(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/p/c;)V

    return-void
.end method
