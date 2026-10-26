.class public final Lcom/github/catvod/spider/merge/n0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final d:Ljava/lang/Class;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/n0/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/n0/b;-><init>()V

    const-class v0, Lcom/github/catvod/spider/merge/n0/b;

    sput-object v0, Lcom/github/catvod/spider/merge/n0/b;->d:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/n0/b;->c:Ljava/util/Hashtable;

    return-void
.end method

.method public static a()Lcom/github/catvod/spider/merge/n0/b;
    .registers 12

    sget-object v0, Lcom/github/catvod/spider/merge/n0/b;->d:Ljava/lang/Class;

    :try_start_2
    const-string v1, "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_ad

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_f
    :goto_f
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_a3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_b5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "resource /META-INF/services/org.xmlpull.v1.XmlPullParserFactory that contained \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    :goto_40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v5, v7, :cond_52

    if-nez v6, :cond_4d

    new-instance v6, Lcom/github/catvod/spider/merge/n0/b;

    invoke-direct {v6}, Lcom/github/catvod/spider/merge/n0/b;-><init>()V

    :cond_4d
    iput-object v2, v6, Lcom/github/catvod/spider/merge/n0/b;->a:Ljava/util/Vector;

    iput-object v1, v6, Lcom/github/catvod/spider/merge/n0/b;->b:Ljava/lang/String;

    return-object v6

    :cond_52
    const/16 v7, 0x2c

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    :cond_5f
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :try_start_63
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_67} :catch_6c

    :try_start_67
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_6d

    goto :goto_6e

    :catch_6c
    move-object v8, v4

    :catch_6d
    move-object v9, v4

    :goto_6e
    if-eqz v8, :cond_a0

    instance-of v10, v9, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v11, 0x1

    if-eqz v10, :cond_7a

    invoke-virtual {v2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v8, 0x0

    :goto_7b
    instance-of v10, v9, Lcom/github/catvod/spider/merge/n0/b;

    if-eqz v10, :cond_85

    if-nez v6, :cond_86

    move-object v6, v9

    check-cast v6, Lcom/github/catvod/spider/merge/n0/b;

    goto :goto_86

    :cond_85
    move v11, v8

    :cond_86
    :goto_86
    if-eqz v11, :cond_89

    goto :goto_a0

    :cond_89
    new-instance v0, Lcom/github/catvod/spider/merge/n0/a;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "incompatible class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/n0/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    :goto_a0
    add-int/lit8 v5, v7, 0x1

    goto :goto_40

    :cond_a3
    const/16 v3, 0x20

    if-le v2, v3, :cond_f

    int-to-char v2, v2

    :try_start_a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_f

    :cond_ad
    new-instance v0, Lcom/github/catvod/spider/merge/n0/a;

    const-string v1, "resource not found: /META-INF/services/org.xmlpull.v1.XmlPullParserFactory make sure that parser implementing XmlPull API is available"

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/n0/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b5} :catch_b5

    :catch_b5
    move-exception v0

    new-instance v1, Lcom/github/catvod/spider/merge/n0/a;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/n0/a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_bd

    :goto_bc
    throw v1

    :goto_bd
    goto :goto_bc
.end method


# virtual methods
.method public final b()Lorg/xmlpull/v1/XmlPullParser;
    .registers 8

    iget-object v0, p0, Lcom/github/catvod/spider/merge/n0/b;->a:Ljava/util/Vector;

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/github/catvod/spider/merge/n0/b;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    iget-object v2, p0, Lcom/github/catvod/spider/merge/n0/b;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v4, p0, Lcom/github/catvod/spider/merge/n0/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_33

    return-object v3

    :cond_33
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/github/catvod/spider/merge/n0/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4d} :catch_4e

    goto :goto_2c

    :catch_4e
    move-exception v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_76
    new-instance v1, Lcom/github/catvod/spider/merge/n0/a;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not create parser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/n0/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8d
    new-instance v0, Lcom/github/catvod/spider/merge/n0/a;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No valid parser classes found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/n0/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/n0/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a6
    new-instance v0, Lcom/github/catvod/spider/merge/n0/a;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Factory initialization was incomplete - has not tried "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/n0/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/n0/a;-><init>(Ljava/lang/String;)V

    goto :goto_c0

    :goto_bf
    throw v0

    :goto_c0
    goto :goto_bf
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/n0/b;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
