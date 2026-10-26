.class public final Lcom/github/catvod/spider/merge/V/r;
.super Lcom/github/catvod/spider/merge/V/N;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/V/r;->a:I

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    .line 2
    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/github/catvod/spider/merge/S/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/r;->b:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/V/r;->a:I

    .line 4
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/r;->b:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 5

    iget p1, p0, Lcom/github/catvod/spider/merge/V/r;->a:I

    packed-switch p1, :pswitch_data_34

    goto :goto_17

    .line 1
    :pswitch_6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->k0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/github/catvod/spider/merge/V/r;->b:Ljava/io/Serializable;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 2
    :goto_17
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/r;->b:Ljava/io/Serializable;

    check-cast p1, Ljava/util/regex/Pattern;

    .line 3
    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge/T/j;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/T/j;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p2}, Lcom/github/catvod/spider/merge/V/O;->a(Lcom/github/catvod/spider/merge/V/P;Lcom/github/catvod/spider/merge/T/s;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/V/r;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_26

    goto :goto_17

    :pswitch_8
    new-array v0, v2, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/r;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ":containsOwn(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_17
    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/r;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/util/regex/Pattern;

    aput-object v2, v0, v1

    const-string v1, ":matchesWholeText(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
