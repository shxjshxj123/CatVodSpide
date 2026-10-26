.class public abstract Lcom/github/catvod/spider/merge/q/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/github/catvod/spider/merge/q/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/github/catvod/spider/merge/q/c;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/github/catvod/spider/merge/q/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, Lcom/github/catvod/spider/merge/q/c;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v2, v3, v1}, Lcom/github/catvod/spider/merge/q/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, Lcom/github/catvod/spider/merge/q/e;

    .line 1
    new-instance v2, Lcom/github/catvod/spider/merge/q/a;

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base32()"

    invoke-direct {v2, v4, v3}, Lcom/github/catvod/spider/merge/q/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lcom/github/catvod/spider/merge/q/e;-><init>(Lcom/github/catvod/spider/merge/q/a;Ljava/lang/Character;)V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge/q/e;

    .line 3
    new-instance v2, Lcom/github/catvod/spider/merge/q/a;

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base32Hex()"

    invoke-direct {v2, v4, v3}, Lcom/github/catvod/spider/merge/q/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lcom/github/catvod/spider/merge/q/e;-><init>(Lcom/github/catvod/spider/merge/q/a;Ljava/lang/Character;)V

    .line 4
    new-instance v0, Lcom/github/catvod/spider/merge/q/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/q/b;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/q/f;->a:Lcom/github/catvod/spider/merge/q/f;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/github/catvod/spider/merge/q/f;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/q/f;->a:Lcom/github/catvod/spider/merge/q/f;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)[B
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/q/f;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lcom/github/catvod/spider/merge/q/e;

    .line 2
    iget-object v1, v1, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    iget v1, v1, Lcom/github/catvod/spider/merge/q/a;->c:I

    int-to-long v1, v1

    int-to-long v3, v0

    mul-long v1, v1, v3

    const-wide/16 v3, 0x7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 3
    new-array v1, v0, [B

    invoke-virtual {p0, v1, p1}, Lcom/github/catvod/spider/merge/q/f;->c([BLjava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v0, :cond_23

    goto :goto_2a

    .line 4
    :cond_23
    new-array v0, p1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_29
    .catch Lcom/github/catvod/spider/merge/q/d; {:try_start_0 .. :try_end_29} :catch_2b

    move-object v1, v0

    :goto_2a
    return-object v1

    :catch_2b
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method abstract c([BLjava/lang/CharSequence;)I
.end method

.method abstract d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method
