.class public final synthetic Lcom/github/catvod/spider/merge/b/c;
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

    iput p3, p0, Lcom/github/catvod/spider/merge/b/c;->a:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/b/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge/b/c;->a:I

    packed-switch v0, :pswitch_data_58

    goto :goto_1e

    :pswitch_6
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/Bili;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/github/catvod/spider/merge/f/b;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/Bili;->a(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/b/t;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/github/catvod/spider/merge/d/c;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/b/t;->i(Lcom/github/catvod/spider/merge/b/t;Lcom/github/catvod/spider/merge/d/c;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/c;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    new-instance v2, Landroid/webkit/WebView;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/n/b;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method
