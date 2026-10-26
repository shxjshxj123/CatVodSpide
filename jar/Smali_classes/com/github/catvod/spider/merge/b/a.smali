.class public final synthetic Lcom/github/catvod/spider/merge/b/a;
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

    iput p2, p0, Lcom/github/catvod/spider/merge/b/a;->a:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/b/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_16

    :pswitch_6
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/Bili;

    invoke-static {v0}, Lcom/github/catvod/spider/Bili;->b(Lcom/github/catvod/spider/Bili;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/b/t;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/b/t;->b(Lcom/github/catvod/spider/merge/b/t;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
