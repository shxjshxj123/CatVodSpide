.class public final synthetic Lcom/github/catvod/spider/merge/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/Bili;

.field public final synthetic b:Lcom/github/catvod/spider/merge/f/b;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/l/c;->a:Lcom/github/catvod/spider/Bili;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/l/c;->b:Lcom/github/catvod/spider/merge/f/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/l/c;->a:Lcom/github/catvod/spider/Bili;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/l/c;->b:Lcom/github/catvod/spider/merge/f/b;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/Bili;->d(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V

    return-void
.end method
