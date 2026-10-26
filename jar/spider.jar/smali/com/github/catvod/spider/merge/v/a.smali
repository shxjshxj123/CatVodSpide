.class public final synthetic Lcom/github/catvod/spider/merge/v/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/whl/quickjs/wrapper/JSCallFunction;


# instance fields
.field public final synthetic a:Lcom/whl/quickjs/android/QuickJSLoader$Console;


# direct methods
.method public synthetic constructor <init>(Lcom/whl/quickjs/android/QuickJSLoader$Console;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/v/a;->a:Lcom/whl/quickjs/android/QuickJSLoader$Console;

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/v/a;->a:Lcom/whl/quickjs/android/QuickJSLoader$Console;

    invoke-static {v0, p1}, Lcom/whl/quickjs/android/QuickJSLoader;->a(Lcom/whl/quickjs/android/QuickJSLoader$Console;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
