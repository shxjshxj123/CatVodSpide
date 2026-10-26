.class public final Lcom/github/catvod/spider/merge/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/github/catvod/spider/merge/k/d;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/github/catvod/spider/merge/k/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/k/d;->a:I

    iput-object p2, p0, Lcom/github/catvod/spider/merge/k/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/k/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/k/d;->b:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/k/d;->a:I

    return v0
.end method
