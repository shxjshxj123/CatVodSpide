.class abstract Lcom/github/catvod/spider/merge/o/d;
.super Lcom/github/catvod/spider/merge/o/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/o/b;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/o/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/o/d;->a:Ljava/lang/String;

    return-object v0
.end method
