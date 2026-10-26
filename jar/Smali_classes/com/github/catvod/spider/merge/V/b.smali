.class final Lcom/github/catvod/spider/merge/V/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge/T/m;

.field private b:Lcom/github/catvod/spider/merge/T/m;

.field private final c:Lcom/github/catvod/spider/merge/V/N;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/V/N;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/V/b;->a:Lcom/github/catvod/spider/merge/T/m;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/V/b;->b:Lcom/github/catvod/spider/merge/T/m;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/b;->c:Lcom/github/catvod/spider/merge/V/N;

    return-void
.end method


# virtual methods
.method final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/T/m;
    .registers 10

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/b;->a:Lcom/github/catvod/spider/merge/T/m;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/b;->b:Lcom/github/catvod/spider/merge/T/m;

    const/4 p1, 0x0

    move-object v0, p2

    const/4 v1, 0x0

    :goto_8
    if-eqz v0, :cond_54

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/V/b;->b(Lcom/github/catvod/spider/merge/T/s;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_12

    goto :goto_54

    :cond_12
    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v4

    if-lez v4, :cond_22

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/s;->g(I)Lcom/github/catvod/spider/merge/T/s;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    :goto_22
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v4, :cond_40

    if-gtz v1, :cond_2d

    goto :goto_40

    :cond_2d
    if-eq v2, v3, :cond_31

    if-ne v2, v6, :cond_32

    :cond_31
    const/4 v2, 0x1

    :cond_32
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->A()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v4

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v5, :cond_3d

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->C()V

    :cond_3d
    move-object v0, v4

    const/4 v2, 0x1

    goto :goto_22

    :cond_40
    :goto_40
    if-eq v2, v3, :cond_46

    if-ne v2, v6, :cond_45

    goto :goto_46

    :cond_45
    move v3, v2

    :cond_46
    :goto_46
    if-ne v0, p2, :cond_49

    goto :goto_54

    :cond_49
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v2

    if-ne v3, v5, :cond_52

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->C()V

    :cond_52
    move-object v0, v2

    goto :goto_8

    .line 2
    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/b;->b:Lcom/github/catvod/spider/merge/T/m;

    return-object p1
.end method

.method public final b(Lcom/github/catvod/spider/merge/T/s;)I
    .registers 4

    instance-of v0, p1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/b;->c:Lcom/github/catvod/spider/merge/V/N;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/b;->a:Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v0, v1, p1}, Lcom/github/catvod/spider/merge/V/N;->a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/b;->b:Lcom/github/catvod/spider/merge/T/m;

    const/4 p1, 0x5

    return p1

    :cond_14
    const/4 p1, 0x1

    return p1
.end method
