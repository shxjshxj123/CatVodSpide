.class public final synthetic Lcom/github/catvod/spider/merge/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/merge/b/t;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge/b/t;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/k;->a:Lcom/github/catvod/spider/merge/b/t;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/b/k;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/github/catvod/spider/merge/b/k;->a:Lcom/github/catvod/spider/merge/b/t;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/b/k;->b:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/b/t;->h(Lcom/github/catvod/spider/merge/b/t;Landroid/widget/EditText;)V

    return-void
.end method
