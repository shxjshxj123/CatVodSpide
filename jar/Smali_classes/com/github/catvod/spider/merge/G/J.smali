.class public final Lcom/github/catvod/spider/merge/G/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/G/I;


# static fields
.field private static final d:[Ljava/lang/String;

.field public static final e:Lcom/github/catvod/spider/merge/G/J;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/github/catvod/spider/merge/G/J;->d:[Ljava/lang/String;

    new-instance v1, Lcom/github/catvod/spider/merge/G/J;

    invoke-direct {v1, v0, v0, v0}, Lcom/github/catvod/spider/merge/G/J;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/github/catvod/spider/merge/G/J;->e:Lcom/github/catvod/spider/merge/G/J;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/J;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/G/J;->b:[Ljava/lang/String;

    if-eqz p3, :cond_a

    goto :goto_c

    :cond_a
    sget-object p3, Lcom/github/catvod/spider/merge/G/J;->d:[Ljava/lang/String;

    :goto_c
    iput-object p3, p0, Lcom/github/catvod/spider/merge/G/J;->c:[Ljava/lang/String;

    array-length p3, p3

    array-length p1, p1

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/J;->c:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_c

    aget-object v0, v0, p1

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/J;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/J;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/J;->a:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget-object p1, v0, p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/J;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget-object p1, v0, p1

    return-object p1

    :cond_a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    const-string p1, "EOF"

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method
