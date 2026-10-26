.class public final Lcom/github/catvod/spider/merge/V/t;
.super Lcom/github/catvod/spider/merge/V/N;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/github/catvod/spider/merge/V/t;->a:I

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 3

    iget p1, p0, Lcom/github/catvod/spider/merge/V/t;->a:I

    packed-switch p1, :pswitch_data_1c

    goto :goto_11

    .line 1
    :pswitch_6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->y0()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/github/catvod/spider/merge/V/t;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 2
    :goto_11
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/github/catvod/spider/merge/V/t;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/V/t;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_22

    goto :goto_15

    :pswitch_8
    new-array v0, v2, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/t;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ":containsWholeOwnText(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_15
    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge/V/t;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
