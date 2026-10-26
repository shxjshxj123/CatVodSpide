.class public final synthetic Lcom/github/catvod/spider/merge/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/Bili;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/Bili;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/l/b;->a:Lcom/github/catvod/spider/Bili;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/github/catvod/spider/merge/l/b;->a:Lcom/github/catvod/spider/Bili;

    invoke-static {p1}, Lcom/github/catvod/spider/Bili;->f(Lcom/github/catvod/spider/Bili;)V

    return-void
.end method
