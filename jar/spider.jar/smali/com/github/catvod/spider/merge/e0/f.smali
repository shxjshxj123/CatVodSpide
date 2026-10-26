.class public final Lcom/github/catvod/spider/merge/e0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/github/catvod/spider/merge/e0/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/f;->b:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/f;->c:Z

    iput-object p1, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_9
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/L/h;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Date;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    const-string v2, "cast to date fail. vale = "

    if-eqz v1, :cond_24

    :try_start_8
    sget-object v1, Lcom/github/catvod/spider/merge/P/a;->a:Lcom/github/catvod/spider/merge/P/c;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/P/c;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    .line 1
    invoke-static {v2}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_2b

    check-cast v0, Ljava/util/Date;

    return-object v0

    :cond_2b
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    .line 3
    invoke-static {v2}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/Double;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_1e

    :cond_14
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_23

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_1e
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "cast to number fail. vale = "

    .line 1
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/e0/f;->i(Lcom/github/catvod/spider/merge/e0/f;)I

    move-result p1

    return p1
.end method

.method public final d()Lcom/github/catvod/spider/merge/V/g;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/V/g;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    const-class v2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_23

    :cond_10
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    if-eq v2, p1, :cond_22

    if-eqz v2, :cond_21

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :cond_22
    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public final f()Ljava/lang/Long;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1a

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    goto :goto_24

    :cond_1a
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_29

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_29
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "cast to number fail. vale = "

    .line 1
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/github/catvod/spider/merge/V/g;

    if-eqz v1, :cond_2c

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    check-cast v1, Lcom/github/catvod/spider/merge/V/g;

    .line 4
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->k0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    instance-of v1, v0, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v1, :cond_51

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JX_TEXT"

    if-eq v0, v1, :cond_45

    if-eqz v0, :cond_43

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    const/4 v0, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v0, 0x1

    :goto_46
    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->k0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_60

    check-cast v0, Ljava/util/List;

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/L/h;->e(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/github/catvod/spider/merge/e0/f;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/f;->b:Z

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public final i(Lcom/github/catvod/spider/merge/e0/f;)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/e0/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    if-eqz p1, :cond_4e

    iget-object v0, p1, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    if-nez v0, :cond_f

    goto :goto_4e

    :cond_f
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    if-nez v0, :cond_15

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_15
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3
    :cond_26
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_37

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    :cond_37
    new-instance p1, Lcom/github/catvod/spider/merge/o/u;

    const-string v0, "Unsupported comparable XValue = "

    .line 5
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e0/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    :goto_4e
    const/4 p1, 0x1

    return p1
.end method

.method public final j()Lcom/github/catvod/spider/merge/e0/f;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/f;->c:Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/L/h;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/L/h;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/L/h;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/L/h;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/f;->b:Z

    return v0
.end method

.method public final l()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public final m()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    return v0
.end method

.method public final n()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/github/catvod/spider/merge/V/g;

    return v0
.end method

.method public final o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/e0/f;->c:Z

    return v0
.end method

.method public final p()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    return v0
.end method

.method public final q()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public final r()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method public final s()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-class v0, Ljava/lang/Object;

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/M/a;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/M/a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/e0/f;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/M/a;->a(Ljava/lang/Object;)Lcom/github/catvod/spider/merge/M/a;

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/e0/f;->b:Z

    const-string v2, "isAttr"

    invoke-virtual {v0, v2, v1}, Lcom/github/catvod/spider/merge/M/a;->b(Ljava/lang/String;Z)Lcom/github/catvod/spider/merge/M/a;

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/e0/f;->c:Z

    const-string v2, "isExprStr"

    invoke-virtual {v0, v2, v1}, Lcom/github/catvod/spider/merge/M/a;->b(Ljava/lang/String;Z)Lcom/github/catvod/spider/merge/M/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/M/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
