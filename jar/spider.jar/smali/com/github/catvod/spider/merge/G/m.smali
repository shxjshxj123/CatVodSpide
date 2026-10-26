.class public final Lcom/github/catvod/spider/merge/G/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/G/F;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/catvod/spider/merge/G/F<",
        "Lcom/github/catvod/spider/merge/G/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/G/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/G/F<",
            "Lcom/github/catvod/spider/merge/G/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/G/m;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/G/m;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/G/m;->a:Lcom/github/catvod/spider/merge/G/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/J/m;ILjava/lang/String;IIIII)Lcom/github/catvod/spider/merge/G/E;
    .registers 16

    .line 1
    new-instance v6, Lcom/github/catvod/spider/merge/G/l;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge/G/l;-><init>(Lcom/github/catvod/spider/merge/J/m;IIII)V

    .line 2
    iput p7, v6, Lcom/github/catvod/spider/merge/G/l;->b:I

    .line 3
    iput p8, v6, Lcom/github/catvod/spider/merge/G/l;->c:I

    if-eqz p3, :cond_13

    .line 4
    iput-object p3, v6, Lcom/github/catvod/spider/merge/G/l;->f:Ljava/lang/String;

    :cond_13
    return-object v6
.end method
