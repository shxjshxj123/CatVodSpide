.class public Lcom/thegrizzlylabs/sardineandroid/model/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    strict = false
.end annotation


# instance fields
.field private property:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/thegrizzlylabs/sardineandroid/model/Property;)Lorg/w3c/dom/Element;
    .registers 1

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Property;->property:Lorg/w3c/dom/Element;

    return-object p0
.end method


# virtual methods
.method public getProperty()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Property;->property:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public setProperty(Lorg/w3c/dom/Element;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Property;->property:Lorg/w3c/dom/Element;

    return-void
.end method
