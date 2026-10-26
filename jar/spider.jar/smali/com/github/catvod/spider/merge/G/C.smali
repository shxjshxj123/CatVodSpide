.class public abstract Lcom/github/catvod/spider/merge/G/C;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Symbol:",
        "Ljava/lang/Object;",
        "ATNInterpreter:",
        "Lcom/github/catvod/spider/merge/H/l;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/G/a;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/github/catvod/spider/merge/H/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TATNInterpreter;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/G/B;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/G/B;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/C;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/G/C;->c:I

    return-void
.end method


# virtual methods
.method public abstract d()Lcom/github/catvod/spider/merge/H/a;
.end method

.method public final e()Lcom/github/catvod/spider/merge/G/a;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/G/z;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/C;->a:Ljava/util/List;

    .line 2
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/G/z;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final f()Lcom/github/catvod/spider/merge/H/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TATNInterpreter;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/G/C;->c:I

    return v0
.end method

.method public h(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final i(I)V
    .registers 2

    iput p1, p0, Lcom/github/catvod/spider/merge/G/C;->c:I

    return-void
.end method
