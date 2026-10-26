.class public final synthetic Lcom/github/catvod/spider/merge/w/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/whl/quickjs/wrapper/JSCallFunction;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/w/a;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/w/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/w/a;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/w/a;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/whl/quickjs/wrapper/JSObject;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
