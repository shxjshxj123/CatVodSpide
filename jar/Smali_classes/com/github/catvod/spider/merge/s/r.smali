.class public final synthetic Lcom/github/catvod/spider/merge/s/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/merge/s/t;

.field public final synthetic b:Lcom/github/catvod/spider/merge/s/M;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/s/M;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/r;->a:Lcom/github/catvod/spider/merge/s/t;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/r;->b:Lcom/github/catvod/spider/merge/s/M;

    iput p3, p0, Lcom/github/catvod/spider/merge/s/r;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/r;->a:Lcom/github/catvod/spider/merge/s/t;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/r;->b:Lcom/github/catvod/spider/merge/s/M;

    iget v2, p0, Lcom/github/catvod/spider/merge/s/r;->c:I

    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge/s/t;->D(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/s/M;I)V

    return-void
.end method
