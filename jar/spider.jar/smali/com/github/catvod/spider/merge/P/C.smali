.class final Lcom/github/catvod/spider/merge/P/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/TimeZone;

.field private final b:I

.field private final c:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/C;->a:Ljava/util/TimeZone;

    if-eqz p2, :cond_d

    const/high16 p1, -0x80000000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/github/catvod/spider/merge/P/C;->b:I

    goto :goto_f

    :cond_d
    iput p3, p0, Lcom/github/catvod/spider/merge/P/C;->b:I

    :goto_f
    invoke-static {p4}, Lcom/github/catvod/spider/merge/L/c;->a(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/C;->c:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/P/C;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p1, Lcom/github/catvod/spider/merge/P/C;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/C;->a:Ljava/util/TimeZone;

    iget-object v3, p1, Lcom/github/catvod/spider/merge/P/C;->a:Ljava/util/TimeZone;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, p0, Lcom/github/catvod/spider/merge/P/C;->b:I

    iget v3, p1, Lcom/github/catvod/spider/merge/P/C;->b:I

    if-ne v1, v3, :cond_26

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/C;->c:Ljava/util/Locale;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/P/C;->c:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    :cond_28
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/P/C;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/C;->c:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/C;->a:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
