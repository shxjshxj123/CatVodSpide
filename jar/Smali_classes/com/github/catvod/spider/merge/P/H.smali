.class final Lcom/github/catvod/spider/merge/P/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/x;


# static fields
.field static final a:Lcom/github/catvod/spider/merge/P/H;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/P/H;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/P/H;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/P/H;->a:Lcom/github/catvod/spider/merge/P/H;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/P/N;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/P/N;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
