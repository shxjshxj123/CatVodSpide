.class public final Lcom/github/catvod/spider/merge/O/l;
.super Lcom/github/catvod/spider/merge/O/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/O/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/io/Writer;)Z
    .registers 3

    const p2, 0xd800

    if-lt p1, p2, :cond_c

    const p2, 0xdfff

    if-gt p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
