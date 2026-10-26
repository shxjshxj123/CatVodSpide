.class final Lcom/github/catvod/spider/merge/P/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Calendar;

.field private b:I

.field final synthetic c:Lcom/github/catvod/spider/merge/P/t;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/P/t;Ljava/util/Calendar;)V
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/catvod/spider/merge/P/q;->a:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method final a()Lcom/github/catvod/spider/merge/P/p;
    .registers 13

    iget v0, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v1}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7a

    const/16 v2, 0x5a

    const/16 v3, 0x61

    const/16 v4, 0x41

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v0, v4, :cond_2a

    if-le v0, v2, :cond_2e

    :cond_2a
    if-lt v0, v3, :cond_30

    if-gt v0, v1, :cond_30

    :cond_2e
    const/4 v7, 0x1

    goto :goto_31

    :cond_30
    const/4 v7, 0x0

    :goto_31
    if-eqz v7, :cond_65

    .line 1
    iget v1, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    :cond_35
    iget v2, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    iget-object v3, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v3}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_54

    iget-object v2, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v2}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_35

    :cond_54
    iget v2, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    sub-int/2addr v2, v1

    new-instance v1, Lcom/github/catvod/spider/merge/P/p;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    iget-object v4, p0, Lcom/github/catvod/spider/merge/P/q;->a:Ljava/util/Calendar;

    invoke-static {v3, v0, v2, v4}, Lcom/github/catvod/spider/merge/P/t;->b(Lcom/github/catvod/spider/merge/P/t;CILjava/util/Calendar;)Lcom/github/catvod/spider/merge/P/o;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/github/catvod/spider/merge/P/p;-><init>(Lcom/github/catvod/spider/merge/P/o;I)V

    return-object v1

    .line 2
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_6b
    iget v8, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    iget-object v9, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v9}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_c4

    iget-object v8, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v8}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-nez v7, :cond_95

    if-lt v8, v4, :cond_8b

    if-le v8, v2, :cond_8f

    :cond_8b
    if-lt v8, v3, :cond_91

    if-gt v8, v1, :cond_91

    :cond_8f
    const/4 v9, 0x1

    goto :goto_92

    :cond_91
    const/4 v9, 0x0

    :goto_92
    if-eqz v9, :cond_95

    goto :goto_c4

    :cond_95
    const/16 v9, 0x27

    if-ne v8, v9, :cond_bb

    iget v10, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    iget-object v11, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v11}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v10, v11, :cond_b8

    iget-object v10, p0, Lcom/github/catvod/spider/merge/P/q;->c:Lcom/github/catvod/spider/merge/P/t;

    invoke-static {v10}, Lcom/github/catvod/spider/merge/P/t;->a(Lcom/github/catvod/spider/merge/P/t;)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_bb

    :cond_b8
    xor-int/lit8 v7, v7, 0x1

    goto :goto_6b

    :cond_bb
    iget v9, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/github/catvod/spider/merge/P/q;->b:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6b

    :cond_c4
    :goto_c4
    if-nez v7, :cond_d9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge/P/p;

    new-instance v2, Lcom/github/catvod/spider/merge/P/k;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/P/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/github/catvod/spider/merge/P/p;-><init>(Lcom/github/catvod/spider/merge/P/o;I)V

    return-object v1

    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unterminated quote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_e2

    :goto_e1
    throw v0

    :goto_e2
    goto :goto_e1
.end method
