.class final Lcom/github/catvod/spider/merge/T/l;
.super Lcom/github/catvod/spider/merge/R/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/R/a<",
        "Lcom/github/catvod/spider/merge/T/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/T/m;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/T/m;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge/R/a;-><init>(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/l;->a:Lcom/github/catvod/spider/merge/T/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/l;->a:Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->i0()V

    return-void
.end method
