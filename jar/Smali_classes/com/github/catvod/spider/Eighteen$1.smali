.class Lcom/github/catvod/spider/Eighteen$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/Eighteen$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const-string v0, ".m3u8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/github/catvod/spider/Eighteen$1;->a:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_12
    return-void
.end method
