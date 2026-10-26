.class public final Lcom/github/catvod/spider/merge/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/regex/Pattern;

.field private F:Ljava/lang/String;

.field private G:Ljava/util/regex/Pattern;

.field private H:Ljava/lang/String;

.field private I:Ljava/util/regex/Pattern;

.field private J:Ljava/lang/String;

.field private K:Ljava/util/regex/Pattern;

.field private L:Ljava/lang/String;

.field private M:Ljava/util/regex/Pattern;

.field private N:Ljava/lang/String;

.field private O:Ljava/util/regex/Pattern;

.field private P:Ljava/lang/String;

.field private Q:Ljava/util/regex/Pattern;

.field private R:Ljava/lang/String;

.field private S:Ljava/util/regex/Pattern;

.field private T:Ljava/lang/String;

.field private U:Ljava/util/regex/Pattern;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/util/regex/Pattern;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private a0:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private b0:Ljava/util/regex/Pattern;

.field private c:Ljava/lang/String;

.field private c0:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private d0:Ljava/util/regex/Pattern;

.field private e:Ljava/util/regex/Pattern;

.field private e0:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private f0:Ljava/lang/String;

.field private g:Ljava/util/regex/Pattern;

.field private g0:Ljava/lang/String;

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h0:Ljava/lang/String;

.field private i:Lorg/json/JSONObject;

.field private i0:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private j0:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private k0:Ljava/util/regex/Pattern;

.field private l:Ljava/util/regex/Pattern;

.field private l0:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private m0:Ljava/util/regex/Pattern;

.field private n:Ljava/util/regex/Pattern;

.field private n0:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private o0:Ljava/util/regex/Pattern;

.field private p:Ljava/util/regex/Pattern;

.field private p0:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private q0:Ljava/util/regex/Pattern;

.field private r:Ljava/util/regex/Pattern;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/util/regex/Pattern;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/regex/Pattern;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    invoke-static {p0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_1b
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/i/a;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/github/catvod/spider/merge/i/a;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/i/a;-><init>()V

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->a:Ljava/lang/String;

    const-string v1, "homeUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->b:Ljava/lang/String;

    const-string v1, "cateNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->c:Ljava/lang/String;

    const-string v1, "cateName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->d:Ljava/lang/String;

    const-string v1, "cateNameR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->e:Ljava/util/regex/Pattern;

    const-string v1, "cateId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->f:Ljava/lang/String;

    const-string v1, "cateIdR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->g:Ljava/util/regex/Pattern;

    const-string v1, "cateManual"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/github/catvod/spider/merge/i/a;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_7c
    const-string v1, "filter"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->i:Lorg/json/JSONObject;

    const-string v1, "homeVodNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->j:Ljava/lang/String;

    const-string v1, "homeVodName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->k:Ljava/lang/String;

    const-string v1, "homeVodNameR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->l:Ljava/util/regex/Pattern;

    const-string v1, "homeVodId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->m:Ljava/lang/String;

    const-string v1, "homeVodIdR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->n:Ljava/util/regex/Pattern;

    const-string v1, "homeVodImg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->o:Ljava/lang/String;

    const-string v1, "homeVodImgR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->p:Ljava/util/regex/Pattern;

    const-string v1, "homeVodMark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->q:Ljava/lang/String;

    const-string v1, "homeVodMarkR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->r:Ljava/util/regex/Pattern;

    const-string v1, "cateUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->s:Ljava/lang/String;

    const-string v1, "cateVodNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->t:Ljava/lang/String;

    const-string v1, "cateVodName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->u:Ljava/lang/String;

    const-string v1, "cateVodNameR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->v:Ljava/util/regex/Pattern;

    const-string v1, "cateVodId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->w:Ljava/lang/String;

    const-string v1, "cateVodIdR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->x:Ljava/util/regex/Pattern;

    const-string v1, "cateVodImg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->y:Ljava/lang/String;

    const-string v1, "cateVodImgR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->z:Ljava/util/regex/Pattern;

    const-string v1, "cateVodMark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->A:Ljava/lang/String;

    const-string v1, "cateVodMarkR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v1, "dtUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->B:Ljava/lang/String;

    const-string v1, "dtNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->C:Ljava/lang/String;

    const-string v1, "dtName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->D:Ljava/lang/String;

    const-string v1, "dtNameR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->E:Ljava/util/regex/Pattern;

    const-string v1, "dtImg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->F:Ljava/lang/String;

    const-string v1, "dtImgR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->G:Ljava/util/regex/Pattern;

    const-string v1, "dtCate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->H:Ljava/lang/String;

    const-string v1, "dtCateR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->I:Ljava/util/regex/Pattern;

    const-string v1, "dtYear"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->J:Ljava/lang/String;

    const-string v1, "dtYearR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->K:Ljava/util/regex/Pattern;

    const-string v1, "dtArea"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->L:Ljava/lang/String;

    const-string v1, "dtAreaR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->M:Ljava/util/regex/Pattern;

    const-string v1, "dtMark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->N:Ljava/lang/String;

    const-string v1, "dtMarkR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->O:Ljava/util/regex/Pattern;

    const-string v1, "dtActor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->P:Ljava/lang/String;

    const-string v1, "dtActorR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->Q:Ljava/util/regex/Pattern;

    const-string v1, "dtDirector"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->R:Ljava/lang/String;

    const-string v1, "dtDirectorR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->S:Ljava/util/regex/Pattern;

    const-string v1, "dtDesc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->T:Ljava/lang/String;

    const-string v1, "dtDescR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->U:Ljava/util/regex/Pattern;

    const-string v1, "dtFromNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->V:Ljava/lang/String;

    const-string v1, "dtFromName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->W:Ljava/lang/String;

    const-string v1, "dtFromNameR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->X:Ljava/util/regex/Pattern;

    const-string v1, "dtUrlNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->Y:Ljava/lang/String;

    const-string v1, "dtUrlSubNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->Z:Ljava/lang/String;

    const-string v1, "dtUrlId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->a0:Ljava/lang/String;

    const-string v1, "dtUrlIdR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->b0:Ljava/util/regex/Pattern;

    const-string v1, "dtUrlName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->c0:Ljava/lang/String;

    const-string v1, "dtUrlNameR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->d0:Ljava/util/regex/Pattern;

    const-string v1, "playUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->e0:Ljava/lang/String;

    const-string v1, "playUa"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->f0:Ljava/lang/String;

    const-string v1, "playReferer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->g0:Ljava/lang/String;

    const-string v1, "searchUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->h0:Ljava/lang/String;

    const-string v1, "scVodNode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->i0:Ljava/lang/String;

    const-string v1, "scVodName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->j0:Ljava/lang/String;

    const-string v1, "scVodNameR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->k0:Ljava/util/regex/Pattern;

    const-string v1, "scVodId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->l0:Ljava/lang/String;

    const-string v1, "scVodIdR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->m0:Ljava/util/regex/Pattern;

    const-string v1, "scVodImg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->n0:Ljava/lang/String;

    const-string v1, "scVodImgR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->o0:Ljava/util/regex/Pattern;

    const-string v1, "scVodMark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/i/a;->p0:Ljava/lang/String;

    const-string v1, "scVodMarkR"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/i/a;->g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->q0:Ljava/util/regex/Pattern;
    :try_end_2a9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a9} :catch_2aa

    return-object p0

    :catch_2aa
    move-exception p0

    invoke-static {p0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static g0(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    return-object v0

    :cond_10
    :try_start_10
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    invoke-static {p0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->S:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final D(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->X:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->G:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final H()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final I(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->O:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final J()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final K(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->E:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->a0:Ljava/lang/String;

    return-object v0
.end method

.method public final O(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->b0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final P()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->c0:Ljava/lang/String;

    return-object v0
.end method

.method public final Q(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->d0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final R()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final S()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final T()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final U(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->K:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final V()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final Y(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->n:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final a0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->p:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->r:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->g:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final e0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->l:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->e:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->g0:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final i0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->f0:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final j0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->e0:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->x:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->h0:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final l0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->l0:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->z:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final m0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->m0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final n0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->n0:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->v:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final o0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->o0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final p0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->p0:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->v:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->q0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final r0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->j0:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final s0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->k0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->Q:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->i0:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final u0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final v(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->M:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final x(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->I:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/i/a;->U:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/i/a;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
