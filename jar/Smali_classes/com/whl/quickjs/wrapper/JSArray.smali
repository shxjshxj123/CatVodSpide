.class public Lcom/whl/quickjs/wrapper/JSArray;
.super Lcom/whl/quickjs/wrapper/JSObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/whl/quickjs/wrapper/QuickJSContext;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/whl/quickjs/wrapper/JSObject;-><init>(Lcom/whl/quickjs/wrapper/QuickJSContext;J)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->checkReleased()V

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->getContext()Lcom/whl/quickjs/wrapper/QuickJSContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->get(Lcom/whl/quickjs/wrapper/JSArray;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .registers 2

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->checkReleased()V

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->getContext()Lcom/whl/quickjs/wrapper/QuickJSContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->length(Lcom/whl/quickjs/wrapper/JSArray;)I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->checkReleased()V

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->getContext()Lcom/whl/quickjs/wrapper/QuickJSContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->set(Lcom/whl/quickjs/wrapper/JSArray;Ljava/lang/Object;I)V

    return-void
.end method
