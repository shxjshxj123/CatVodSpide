.class public final Lcom/github/catvod/spider/merge/V/i;
.super Lcom/github/catvod/spider/merge/V/N;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/github/catvod/spider/merge/V/i;->a:I

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 3

    iget p1, p0, Lcom/github/catvod/spider/merge/V/i;->a:I

    packed-switch p1, :pswitch_data_2a

    goto :goto_18

    .line 1
    :pswitch_6
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/T/m;->b0(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :pswitch_f
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/T/s;->o(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :goto_18
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->k0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/V/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_8
    new-array v0, v2, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ".%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17
    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_26
    new-array v0, v2, [Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/regex/Pattern;

    aput-object v2, v0, v1

    const-string v1, ":matchesOwn(%s)"

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
