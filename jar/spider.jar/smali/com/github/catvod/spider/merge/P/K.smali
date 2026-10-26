.class final Lcom/github/catvod/spider/merge/P/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/x;


# static fields
.field static final a:Lcom/github/catvod/spider/merge/P/K;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/P/K;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/P/K;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/P/K;->a:Lcom/github/catvod/spider/merge/P/K;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .registers 4

    const/16 v0, 0xa

    if-ge p2, v0, :cond_d

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_10

    :cond_d
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/P/N;->a(Ljava/lang/Appendable;I)V

    :goto_10
    return-void
.end method

.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/P/K;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
