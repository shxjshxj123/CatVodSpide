.class public final Lcom/github/catvod/spider/merge/M/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcom/github/catvod/spider/merge/M/i;


# instance fields
.field private final a:Ljava/lang/StringBuffer;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/github/catvod/spider/merge/M/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/M/i;->q:Lcom/github/catvod/spider/merge/M/i;

    sput-object v0, Lcom/github/catvod/spider/merge/M/a;->d:Lcom/github/catvod/spider/merge/M/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge/M/a;->d:Lcom/github/catvod/spider/merge/M/i;

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/github/catvod/spider/merge/M/a;->a:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/M/a;->c:Lcom/github/catvod/spider/merge/M/i;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/M/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/github/catvod/spider/merge/M/i;->m(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/github/catvod/spider/merge/M/a;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/a;->c:Lcom/github/catvod/spider/merge/M/i;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/M/a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/github/catvod/spider/merge/M/i;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;Z)Lcom/github/catvod/spider/merge/M/a;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/a;->c:Lcom/github/catvod/spider/merge/M/i;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/M/a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/github/catvod/spider/merge/M/i;->b(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/a;->a:Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge/M/a;->c:Lcom/github/catvod/spider/merge/M/i;

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/M/i;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    :cond_10
    iget-object v1, p0, Lcom/github/catvod/spider/merge/M/a;->c:Lcom/github/catvod/spider/merge/M/i;

    .line 5
    iget-object v2, p0, Lcom/github/catvod/spider/merge/M/a;->a:Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/github/catvod/spider/merge/M/i;->h(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 7
    :goto_17
    iget-object v0, p0, Lcom/github/catvod/spider/merge/M/a;->a:Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
