.class public Lcom/whl/quickjs/wrapper/JSFunction;
.super Lcom/whl/quickjs/wrapper/JSObject;
.source "SourceFile"


# instance fields
.field private final objPointer:J


# direct methods
.method public constructor <init>(Lcom/whl/quickjs/wrapper/QuickJSContext;JJ)V
    .registers 6

    invoke-direct {p0, p1, p4, p5}, Lcom/whl/quickjs/wrapper/JSObject;-><init>(Lcom/whl/quickjs/wrapper/QuickJSContext;J)V

    iput-wide p2, p0, Lcom/whl/quickjs/wrapper/JSFunction;->objPointer:J

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->getContext()Lcom/whl/quickjs/wrapper/QuickJSContext;

    move-result-object v0

    iget-wide v1, p0, Lcom/whl/quickjs/wrapper/JSFunction;->objPointer:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->call(Lcom/whl/quickjs/wrapper/JSObject;J[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
