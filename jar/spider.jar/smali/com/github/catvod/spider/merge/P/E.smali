.class final Lcom/github/catvod/spider/merge/P/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/z;


# static fields
.field static final b:Lcom/github/catvod/spider/merge/P/E;

.field static final c:Lcom/github/catvod/spider/merge/P/E;


# instance fields
.field final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/P/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/P/E;-><init>(Z)V

    sput-object v0, Lcom/github/catvod/spider/merge/P/E;->b:Lcom/github/catvod/spider/merge/P/E;

    new-instance v0, Lcom/github/catvod/spider/merge/P/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/P/E;-><init>(Z)V

    sput-object v0, Lcom/github/catvod/spider/merge/P/E;->c:Lcom/github/catvod/spider/merge/P/E;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/P/E;->a:Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 6

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v0

    if-gez p2, :cond_19

    const/16 v0, 0x2d

    move-object v1, p1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    neg-int p2, p2

    goto :goto_21

    :cond_19
    const/16 v0, 0x2b

    move-object v1, p1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :goto_21
    const v0, 0x36ee80

    div-int v0, p2, v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/P/N;->a(Ljava/lang/Appendable;I)V

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/P/E;->a:Z

    if-eqz v1, :cond_35

    const/16 v1, 0x3a

    move-object v2, p1

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_35
    const v1, 0xea60

    div-int/2addr p2, v1

    mul-int/lit8 v0, v0, 0x3c

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/P/N;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
