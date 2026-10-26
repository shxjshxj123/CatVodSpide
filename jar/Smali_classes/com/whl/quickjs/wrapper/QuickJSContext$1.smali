.class Lcom/whl/quickjs/wrapper/QuickJSContext$1;
.super Lcom/whl/quickjs/wrapper/NativeCleaner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/whl/quickjs/wrapper/NativeCleaner<",
        "Lcom/whl/quickjs/wrapper/JSObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/whl/quickjs/wrapper/QuickJSContext;


# direct methods
.method constructor <init>(Lcom/whl/quickjs/wrapper/QuickJSContext;)V
    .registers 2

    iput-object p1, p0, Lcom/whl/quickjs/wrapper/QuickJSContext$1;->this$0:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/NativeCleaner;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(J)V
    .registers 6

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext$1;->this$0:Lcom/whl/quickjs/wrapper/QuickJSContext;

    # getter for: Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J
    invoke-static {v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->access$000(Lcom/whl/quickjs/wrapper/QuickJSContext;)J

    move-result-wide v1

    # invokes: Lcom/whl/quickjs/wrapper/QuickJSContext;->freeDupValue(JJ)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->access$100(Lcom/whl/quickjs/wrapper/QuickJSContext;JJ)V

    return-void
.end method
