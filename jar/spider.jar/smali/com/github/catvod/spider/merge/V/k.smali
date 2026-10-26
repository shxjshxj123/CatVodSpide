.class public final Lcom/github/catvod/spider/merge/V/k;
.super Lcom/github/catvod/spider/merge/V/N;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    iput p2, p0, Lcom/github/catvod/spider/merge/V/k;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_12

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    return-void

    .line 2
    :cond_12
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge/V/k;->a:I

    .line 3
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 4

    iget p1, p0, Lcom/github/catvod/spider/merge/V/k;->a:I

    packed-switch p1, :pswitch_data_56

    goto :goto_45

    .line 1
    :pswitch_6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->X()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 2
    :pswitch_17
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/c;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/T/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    const/4 p1, 0x1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    return p1

    .line 3
    :goto_45
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->y0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_17
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/V/k;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_8
    new-array v0, v2, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ":containsData(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17
    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "[^%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_26
    new-array v0, v2, [Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/k;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/util/regex/Pattern;

    aput-object v2, v0, v1

    const-string v1, ":matchesWholeOwnText(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_17
        :pswitch_8
    .end packed-switch
.end method
