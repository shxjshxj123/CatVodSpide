.class public final synthetic Lcom/github/catvod/spider/merge/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/merge/b/t;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/github/catvod/spider/merge/d/c;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge/b/t;Ljava/lang/String;Lcom/github/catvod/spider/merge/d/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/h;->a:Lcom/github/catvod/spider/merge/b/t;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/b/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/catvod/spider/merge/b/h;->c:Lcom/github/catvod/spider/merge/d/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/h;->a:Lcom/github/catvod/spider/merge/b/t;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/b/h;->c:Lcom/github/catvod/spider/merge/d/c;

    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge/b/t;->j(Lcom/github/catvod/spider/merge/b/t;Ljava/lang/String;Lcom/github/catvod/spider/merge/d/c;)V

    return-void
.end method
