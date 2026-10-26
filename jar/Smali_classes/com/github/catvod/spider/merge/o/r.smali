.class public final Lcom/github/catvod/spider/merge/o/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/o/g;

.field private final b:Z

.field private final c:Lcom/github/catvod/spider/merge/o/o;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/github/catvod/spider/merge/o/o;ZLcom/github/catvod/spider/merge/o/g;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/o/r;->c:Lcom/github/catvod/spider/merge/o/o;

    iput-boolean p2, p0, Lcom/github/catvod/spider/merge/o/r;->b:Z

    iput-object p3, p0, Lcom/github/catvod/spider/merge/o/r;->a:Lcom/github/catvod/spider/merge/o/g;

    iput p4, p0, Lcom/github/catvod/spider/merge/o/r;->d:I

    return-void
.end method

.method static a(Lcom/github/catvod/spider/merge/o/r;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/o/r;->c:Lcom/github/catvod/spider/merge/o/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge/o/n;

    invoke-direct {v1, v0, p0, p1}, Lcom/github/catvod/spider/merge/o/n;-><init>(Lcom/github/catvod/spider/merge/o/o;Lcom/github/catvod/spider/merge/o/r;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static synthetic b(Lcom/github/catvod/spider/merge/o/r;)Lcom/github/catvod/spider/merge/o/g;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge/o/r;->a:Lcom/github/catvod/spider/merge/o/g;

    return-object p0
.end method

.method static synthetic c(Lcom/github/catvod/spider/merge/o/r;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/github/catvod/spider/merge/o/r;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/github/catvod/spider/merge/o/r;)I
    .registers 1

    iget p0, p0, Lcom/github/catvod/spider/merge/o/r;->d:I

    return p0
.end method

.method public static f()Lcom/github/catvod/spider/merge/o/r;
    .registers 5

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/o/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/o/c;-><init>()V

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge/o/r;

    new-instance v2, Lcom/github/catvod/spider/merge/o/o;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/o/o;-><init>(Lcom/github/catvod/spider/merge/o/g;)V

    .line 3
    sget-object v0, Lcom/github/catvod/spider/merge/o/e;->b:Lcom/github/catvod/spider/merge/o/e;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    .line 4
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/github/catvod/spider/merge/o/r;-><init>(Lcom/github/catvod/spider/merge/o/o;ZLcom/github/catvod/spider/merge/o/g;I)V

    return-object v1
.end method


# virtual methods
.method public final e()Lcom/github/catvod/spider/merge/o/r;
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge/o/r;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/o/r;->c:Lcom/github/catvod/spider/merge/o/o;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/o/r;->a:Lcom/github/catvod/spider/merge/o/g;

    iget v3, p0, Lcom/github/catvod/spider/merge/o/r;->d:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/github/catvod/spider/merge/o/r;-><init>(Lcom/github/catvod/spider/merge/o/o;ZLcom/github/catvod/spider/merge/o/g;I)V

    return-object v0
.end method

.method public final g(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge/o/p;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/o/p;-><init>(Lcom/github/catvod/spider/merge/o/r;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final h()Lcom/github/catvod/spider/merge/o/r;
    .registers 6

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge/o/f;->c:Lcom/github/catvod/spider/merge/o/f;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lcom/github/catvod/spider/merge/o/r;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/o/r;->c:Lcom/github/catvod/spider/merge/o/o;

    iget-boolean v3, p0, Lcom/github/catvod/spider/merge/o/r;->b:Z

    iget v4, p0, Lcom/github/catvod/spider/merge/o/r;->d:I

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/github/catvod/spider/merge/o/r;-><init>(Lcom/github/catvod/spider/merge/o/o;ZLcom/github/catvod/spider/merge/o/g;I)V

    return-object v1
.end method
