.class final Lcom/github/catvod/spider/merge/P/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/Object;

.field private final b:I


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/P;->a:[Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1f

    .line 2
    iput p1, p0, Lcom/github/catvod/spider/merge/P/P;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    const-class v1, Lcom/github/catvod/spider/merge/P/P;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_11

    return v0

    :cond_11
    check-cast p1, Lcom/github/catvod/spider/merge/P/P;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/P;->a:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/P/P;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/P/P;->b:I

    return v0
.end method
