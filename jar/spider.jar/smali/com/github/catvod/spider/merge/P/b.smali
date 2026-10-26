.class final Lcom/github/catvod/spider/merge/P/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/github/catvod/spider/merge/P/P;",
            "Lcom/github/catvod/spider/merge/P/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/P/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;
    .registers 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge/L/j;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {p2}, Lcom/github/catvod/spider/merge/L/c;->a(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p2

    new-instance v2, Lcom/github/catvod/spider/merge/P/P;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p2, v3, v0

    invoke-direct {v2, v3}, Lcom/github/catvod/spider/merge/P/P;-><init>([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge/P/c;

    .line 3
    invoke-direct {v0, p1, v1, p2}, Lcom/github/catvod/spider/merge/P/c;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 4
    iget-object p1, p0, Lcom/github/catvod/spider/merge/P/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/Format;

    if-eqz p1, :cond_38

    move-object v0, p1

    :cond_38
    return-object v0
.end method
