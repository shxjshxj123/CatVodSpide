.class final Lcom/github/catvod/spider/merge/I/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/github/catvod/spider/merge/I/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/github/catvod/spider/merge/I/e;

    check-cast p2, Lcom/github/catvod/spider/merge/I/e;

    iget p1, p1, Lcom/github/catvod/spider/merge/I/e;->a:I

    iget p2, p2, Lcom/github/catvod/spider/merge/I/e;->a:I

    sub-int/2addr p1, p2

    return p1
.end method
