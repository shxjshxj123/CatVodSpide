.class public final Lcom/github/catvod/spider/merge/U/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/github/catvod/spider/merge/U/E;

.field public static final d:Lcom/github/catvod/spider/merge/U/E;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/U/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/catvod/spider/merge/U/E;-><init>(ZZ)V

    sput-object v0, Lcom/github/catvod/spider/merge/U/E;->c:Lcom/github/catvod/spider/merge/U/E;

    new-instance v0, Lcom/github/catvod/spider/merge/U/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/github/catvod/spider/merge/U/E;-><init>(ZZ)V

    sput-object v0, Lcom/github/catvod/spider/merge/U/E;->d:Lcom/github/catvod/spider/merge/U/E;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/U/E;->a:Z

    iput-boolean p2, p0, Lcom/github/catvod/spider/merge/U/E;->b:Z

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/U/E;->b:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method final c(Lcom/github/catvod/spider/merge/T/c;)Lcom/github/catvod/spider/merge/T/c;
    .registers 3

    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/U/E;->b:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/c;->u()V

    :cond_9
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/U/E;->a:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/U/E;->b:Z

    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/U/E;->a:Z

    return v0
.end method
