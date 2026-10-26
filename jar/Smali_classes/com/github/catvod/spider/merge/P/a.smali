.class public final Lcom/github/catvod/spider/merge/P/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/P/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/github/catvod/spider/merge/P/O;->c:I

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/P/a;->a:Lcom/github/catvod/spider/merge/P/c;

    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    const-string v0, "yyyy-MM-ddZZ"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    const-string v0, "\'T\'HH:mm:ss"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    const-string v0, "\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    const-string v0, "HH:mm:ssZZ"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/P/c;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/P/c;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/github/catvod/spider/merge/P/c;->a()Lcom/github/catvod/spider/merge/P/c;

    return-void
.end method
