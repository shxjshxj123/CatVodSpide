.class public final synthetic Lcom/github/catvod/spider/merge/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/github/catvod/spider/merge/b/q;->a:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/b/q;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/b/t;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/b/t;->k(Lcom/github/catvod/spider/merge/b/t;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/b/t;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/b/t;->b(Lcom/github/catvod/spider/merge/b/t;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/Notice;

    invoke-static {v0}, Lcom/github/catvod/spider/Notice;->b(Lcom/github/catvod/spider/Notice;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
