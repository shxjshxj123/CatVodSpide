.class public final Lcom/github/catvod/spider/merge/V/M;
.super Lcom/github/catvod/spider/merge/V/N;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/V/N;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/M;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z
    .registers 3

    iget-object p1, p0, Lcom/github/catvod/spider/merge/V/M;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/V/M;->a:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":matches(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
