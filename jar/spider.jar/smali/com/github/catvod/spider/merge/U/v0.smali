.class final enum Lcom/github/catvod/spider/merge/U/v0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterAttributeName"

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    sget-object v1, Lcom/github/catvod/spider/merge/U/i1;->I:Lcom/github/catvod/spider/merge/U/u0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result v2

    if-eqz v2, :cond_5d

    const/16 v3, 0x20

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x27

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_49

    const v3, 0xffff

    if-eq v2, v3, :cond_42

    const/16 v3, 0x9

    if-eq v2, v3, :cond_6b

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6b

    const/16 v3, 0xc

    if-eq v2, v3, :cond_6b

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6b

    packed-switch v2, :pswitch_data_6c

    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/O;->x()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->P()V

    goto :goto_68

    :pswitch_3b
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->p()V

    goto :goto_45

    :pswitch_3f
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->K:Lcom/github/catvod/spider/merge/U/w0;

    goto :goto_4b

    :cond_42
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_45
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_6b

    :cond_49
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->P:Lcom/github/catvod/spider/merge/U/C0;

    :goto_4b
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_6b

    :cond_4f
    :pswitch_4f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/O;->x()V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/O;->k(C)V

    goto :goto_68

    :cond_5d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/O;->k(C)V

    :goto_68
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :cond_6b
    :goto_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x3c
        :pswitch_4f
        :pswitch_3f
        :pswitch_3b
    .end packed-switch
.end method
