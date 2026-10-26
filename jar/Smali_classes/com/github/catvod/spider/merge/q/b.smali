.class final Lcom/github/catvod/spider/merge/q/b;
.super Lcom/github/catvod/spider/merge/q/e;
.source "SourceFile"


# instance fields
.field final d:[C


# direct methods
.method constructor <init>()V
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge/q/a;

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "base16()"

    invoke-direct {v0, v2, v1}, Lcom/github/catvod/spider/merge/q/a;-><init>(Ljava/lang/String;[C)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/catvod/spider/merge/q/e;-><init>(Lcom/github/catvod/spider/merge/q/a;Ljava/lang/Character;)V

    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/github/catvod/spider/merge/q/b;->d:[C

    invoke-static {v0}, Lcom/github/catvod/spider/merge/q/a;->a(Lcom/github/catvod/spider/merge/q/a;)[C

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-static {v1}, Lcom/github/catvod/spider/merge/o/m;->b(Z)V

    :goto_27
    const/16 v1, 0x100

    if-ge v2, v1, :cond_44

    iget-object v1, p0, Lcom/github/catvod/spider/merge/q/b;->d:[C

    ushr-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/q/a;->c(I)C

    move-result v3

    aput-char v3, v1, v2

    iget-object v1, p0, Lcom/github/catvod/spider/merge/q/b;->d:[C

    or-int/lit16 v3, v2, 0x100

    and-int/lit8 v4, v2, 0xf

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge/q/a;->c(I)C

    move-result v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_44
    return-void
.end method


# virtual methods
.method final c([BLjava/lang/CharSequence;)I
    .registers 8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_33

    iget-object v2, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/q/a;->b(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/q/a;->b(C)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_b

    :cond_33
    return v1

    :cond_34
    new-instance p1, Lcom/github/catvod/spider/merge/q/d;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid input length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/github/catvod/spider/merge/q/d;-><init>(Ljava/lang/String;)V

    goto :goto_52

    :goto_51
    throw p1

    :goto_52
    goto :goto_51
.end method
