.class final Lcom/github/catvod/spider/merge/V/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/V/P;


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/T/m;

.field private final b:Lcom/github/catvod/spider/merge/V/g;

.field private final c:Lcom/github/catvod/spider/merge/V/N;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/V/g;Lcom/github/catvod/spider/merge/V/N;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/V/a;->a:Lcom/github/catvod/spider/merge/T/m;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/V/a;->b:Lcom/github/catvod/spider/merge/V/g;

    iput-object p3, p0, Lcom/github/catvod/spider/merge/V/a;->c:Lcom/github/catvod/spider/merge/V/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/s;I)V
    .registers 3

    return-void
.end method

.method public final b(Lcom/github/catvod/spider/merge/T/s;I)V
    .registers 4

    instance-of p2, p1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz p2, :cond_15

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/V/a;->c:Lcom/github/catvod/spider/merge/V/N;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/V/a;->a:Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2, v0, p1}, Lcom/github/catvod/spider/merge/V/N;->a(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/github/catvod/spider/merge/V/a;->b:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method
