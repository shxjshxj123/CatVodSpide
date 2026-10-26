.class public final Lcom/github/catvod/spider/merge/J/l;
.super Lcom/github/catvod/spider/merge/J/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/J/a;"
    }
.end annotation


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/J/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/J/l;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/J/l;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/J/l;->a:Lcom/github/catvod/spider/merge/J/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/J/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final F(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
