.class public abstract Lcom/github/catvod/spider/merge/O/c;
.super Lcom/github/catvod/spider/merge/O/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/O/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/github/catvod/spider/merge/O/c;->b(ILjava/io/Writer;)Z

    move-result p1

    return p1
.end method

.method public abstract b(ILjava/io/Writer;)Z
.end method
