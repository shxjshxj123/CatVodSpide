.class Lcom/github/catvod/spider/Notice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/github/catvod/spider/Notice;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/Notice;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/Notice$1;->a:Lcom/github/catvod/spider/Notice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/Notice$1;->a:Lcom/github/catvod/spider/Notice;

    invoke-static {v1}, Lcom/github/catvod/spider/Notice;->c(Lcom/github/catvod/spider/Notice;)Lcom/github/catvod/spider/merge/m/a;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v2, 0xff

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/github/catvod/spider/Notice$1;->a:Lcom/github/catvod/spider/Notice;

    invoke-static {v0}, Lcom/github/catvod/spider/Notice;->d(Lcom/github/catvod/spider/Notice;)V

    return-void
.end method
