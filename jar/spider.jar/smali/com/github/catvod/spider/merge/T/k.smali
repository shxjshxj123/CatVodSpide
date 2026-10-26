.class final Lcom/github/catvod/spider/merge/T/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/V/P;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/k;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/s;I)V
    .registers 3

    instance-of p2, p1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz p2, :cond_24

    move-object p2, p1

    check-cast p2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->g0()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object p1

    instance-of p1, p1, Lcom/github/catvod/spider/merge/T/v;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/k;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/T/v;->N(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/k;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    return-void
.end method

.method public final b(Lcom/github/catvod/spider/merge/T/s;I)V
    .registers 3

    instance-of p2, p1, Lcom/github/catvod/spider/merge/T/v;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/github/catvod/spider/merge/T/v;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/k;->a:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/github/catvod/spider/merge/T/m;->J(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge/T/v;)V

    goto :goto_3f

    :cond_c
    instance-of p2, p1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz p2, :cond_3f

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/k;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3f

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->g0()Z

    move-result p2

    if-nez p2, :cond_30

    invoke-static {p1}, Lcom/github/catvod/spider/merge/T/m;->K(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/U/G;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/G;->j()Ljava/lang/String;

    move-result-object p1

    const-string p2, "br"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    :cond_30
    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/k;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/T/v;->N(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/k;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    :goto_3f
    return-void
.end method
