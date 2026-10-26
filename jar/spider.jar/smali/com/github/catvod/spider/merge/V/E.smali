.class public final Lcom/github/catvod/spider/merge/V/E;
.super Lcom/github/catvod/spider/merge/V/N;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/github/catvod/spider/merge/V/E;->a:I

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge/V/E;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_32

    goto :goto_24

    .line 1
    :pswitch_8
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    if-eqz p1, :cond_22

    instance-of v0, p1, Lcom/github/catvod/spider/merge/T/h;

    if-nez v0, :cond_22

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->Y()I

    move-result p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->V()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne p2, p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1

    .line 2
    :goto_24
    instance-of v0, p1, Lcom/github/catvod/spider/merge/T/h;

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->T()Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    :cond_2c
    if-ne p2, p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/V/E;->a:I

    packed-switch v0, :pswitch_data_c

    const-string v0, ":root"

    return-object v0

    :pswitch_8
    const-string v0, ":last-child"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
