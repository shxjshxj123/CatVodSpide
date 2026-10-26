.class public abstract Lcom/github/catvod/spider/merge/H/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/github/catvod/spider/merge/H/m;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EPSILON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RULE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PREDICATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ATOM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SET"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NOT_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WILDCARD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PRECEDENCE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    new-instance v0, Lcom/github/catvod/spider/merge/H/s0;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/H/s0;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/github/catvod/spider/merge/H/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "target cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b()Z
    .registers 1

    instance-of p0, p0, Lcom/github/catvod/spider/merge/H/o;

    return p0
.end method

.method public c()Lcom/github/catvod/spider/merge/J/k;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d(II)Z
.end method
