.class public final Lcom/github/catvod/spider/merge/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->h0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    if-lez p0, :cond_16

    return-object v0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/e0/e;)I
    .registers 8

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->V()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-ne p0, v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_3a

    goto :goto_3d

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3d
    :goto_3d
    return v2
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_9
    const-string p0, ""

    :goto_b
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/m;->o0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    if-lez p0, :cond_16

    return-object v0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->h(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const-string p0, ""

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3a

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    :cond_3a
    return-object p0

    :catch_3b
    const-string p0, ""

    return-object p0
.end method

.method public static i(Lcom/github/catvod/spider/merge/T/m;I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EL_SAME_TAG_INDEX"

    invoke-virtual {p0, v0, p1}, Lcom/github/catvod/spider/merge/T/s;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/s;

    return-void
.end method

.method public static j(Lcom/github/catvod/spider/merge/T/m;I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EL_SAME_TAG_ALL_NUM"

    invoke-virtual {p0, v0, p1}, Lcom/github/catvod/spider/merge/T/s;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/s;

    return-void
.end method

.method public static k(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 1
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_34

    .line 2
    :try_start_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_2f

    goto :goto_38

    :catch_2f
    move-exception p0

    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_38
    return-void
.end method
