.class public abstract Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract toJaxb()Ljava/lang/Object;
.end method

.method public toXml()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;->toJaxb()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
