.class public final synthetic Lcom/github/catvod/spider/merge/b/p;
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

    iput p2, p0, Lcom/github/catvod/spider/merge/b/p;->a:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/b/p;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/b/t;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/b/t;->l(Lcom/github/catvod/spider/merge/b/t;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/JSDemo;

    invoke-static {v0}, Lcom/github/catvod/spider/JSDemo;->b(Lcom/github/catvod/spider/JSDemo;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
