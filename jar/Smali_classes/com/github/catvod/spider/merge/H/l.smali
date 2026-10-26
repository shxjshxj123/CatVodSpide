.class public abstract Lcom/github/catvod/spider/merge/H/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/github/catvod/spider/merge/I/e;


# instance fields
.field public final a:Lcom/github/catvod/spider/merge/H/a;

.field protected final b:Lcom/github/catvod/spider/merge/H/Y;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/merge/H/k;->f:Ljava/util/UUID;

    sget-object v0, Lcom/github/catvod/spider/merge/H/k;->f:Ljava/util/UUID;

    new-instance v0, Lcom/github/catvod/spider/merge/I/e;

    new-instance v1, Lcom/github/catvod/spider/merge/H/f;

    const/4 v2, 0x1

    .line 1
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    .line 2
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/I/e;-><init>(Lcom/github/catvod/spider/merge/H/f;)V

    sput-object v0, Lcom/github/catvod/spider/merge/H/l;->c:Lcom/github/catvod/spider/merge/I/e;

    const v1, 0x7fffffff

    iput v1, v0, Lcom/github/catvod/spider/merge/I/e;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/H/a;Lcom/github/catvod/spider/merge/H/Y;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/H/l;->b:Lcom/github/catvod/spider/merge/H/Y;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
