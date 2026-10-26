.class public final Lcom/github/catvod/spider/merge/m/a;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/Scroller;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const v0, 0x1010084

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/m/a;->a:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setScroller(Landroid/widget/Scroller;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/github/catvod/spider/merge/m/a;->b:I

    return-void
.end method

.method public final b()V
    .registers 8

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m/a;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    .line 2
    iget v2, p0, Lcom/github/catvod/spider/merge/m/a;->b:I

    mul-int/lit16 v5, v2, 0x3e8

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public final computeScroll()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m/a;->a:Landroid/widget/Scroller;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m/a;->a:Landroid/widget/Scroller;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_14
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method
