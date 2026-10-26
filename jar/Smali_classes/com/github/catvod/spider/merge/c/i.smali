.class public final Lcom/github/catvod/spider/merge/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type_name"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_id"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_name"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_pic"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_remarks"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_year"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_area"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_actor"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_director"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_content"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_play_from"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_play_url"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_tag"
    .end annotation
.end field

.field private n:Lcom/github/catvod/spider/merge/c/h;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->b:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/github/catvod/spider/merge/c/i;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/github/catvod/spider/merge/c/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/github/catvod/spider/merge/c/i;->c:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/github/catvod/spider/merge/c/i;->d:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/github/catvod/spider/merge/c/i;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->b:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/github/catvod/spider/merge/c/i;->c:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/github/catvod/spider/merge/c/i;->d:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/github/catvod/spider/merge/c/i;->e:Ljava/lang/String;

    if-eqz p5, :cond_10

    const-string p1, "folder"

    goto :goto_12

    :cond_10
    const-string p1, "file"

    .line 12
    :goto_12
    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/c/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/c/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->a:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->h:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->g:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->j:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->i:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->b:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->c:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->d:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->k:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->l:Ljava/lang/String;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->e:Ljava/lang/String;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->m:Ljava/lang/String;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/i;->f:Ljava/lang/String;

    return-void
.end method
