.class public final synthetic Lcom/github/catvod/spider/merge/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Lcom/github/catvod/spider/merge/b/e;->a:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/b/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/b/e;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/b/t;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/b/t;->d(Lcom/github/catvod/spider/merge/b/t;Ljava/util/Map;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/Bili;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/github/catvod/spider/merge/f/b;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/Bili;->d(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
