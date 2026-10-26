.class public Lcom/github/catvod/js/Method;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctx:Lcom/whl/quickjs/wrapper/QuickJSContext;


# direct methods
.method public constructor <init>(Lcom/whl/quickjs/wrapper/QuickJSContext;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/js/Method;->ctx:Lcom/whl/quickjs/wrapper/QuickJSContext;

    return-void
.end method


# virtual methods
.method public showToast(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/whl/quickjs/wrapper/JSMethod;
    .end annotation

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/b;->h(Ljava/lang/String;)V

    return-void
.end method
