.class public final synthetic Lcom/github/catvod/spider/merge/l/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/github/catvod/spider/merge/l/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/l/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/l/h;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/l/h;->a:Lcom/github/catvod/spider/merge/l/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5e74\u4efd\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
