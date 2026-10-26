.class public final Lcom/github/catvod/spider/merge/B/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/B/b;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/B/b;

    const-string v1, "java.specification.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/github/catvod/spider/merge/F/c;->d(Ljava/lang/CharSequence;II)I

    move-result v2

    const/high16 v4, 0x10000

    if-gez v2, :cond_1b

    :try_start_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_44

    mul-int v1, v1, v4

    goto :goto_47

    :cond_1b
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x4

    invoke-static {v1, v5, v6}, Lcom/github/catvod/spider/merge/F/c;->d(Ljava/lang/CharSequence;II)I

    move-result v6

    if-gez v6, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    :cond_28
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_38
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int v2, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_42} :catch_44

    add-int/2addr v1, v2

    goto :goto_47

    :catch_44
    :cond_44
    const v1, 0x10006

    :goto_47
    const v2, 0x10008

    const-string v3, "ClassCastException(\"Inst\u2026baseTypeCL\").initCause(e)"

    const-string v4, ", base type classloader: "

    const-string v5, "Instance classloader: "

    const-string v6, "Class.forName(\"kotlin.in\u2026entations\").newInstance()"

    if-lt v1, v2, :cond_d5

    :try_start_54
    const-string v2, "kotlin.internal.jdk8.JDK8PlatformImplementations"

    .line 2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_61} :catch_94

    :try_start_61
    check-cast v2, Lcom/github/catvod/spider/merge/B/b;
    :try_end_63
    .catch Ljava/lang/ClassCastException; {:try_start_61 .. :try_end_63} :catch_65
    .catch Ljava/lang/ClassNotFoundException; {:try_start_61 .. :try_end_63} :catch_94

    goto/16 :goto_15f

    :catch_65
    move-exception v7

    :try_start_66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Ljava/lang/ClassCastException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2
    :try_end_94
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_94} :catch_94

    :catch_94
    :try_start_94
    const-string v2, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_94 .. :try_end_a1} :catch_d4

    :try_start_a1
    check-cast v2, Lcom/github/catvod/spider/merge/B/b;
    :try_end_a3
    .catch Ljava/lang/ClassCastException; {:try_start_a1 .. :try_end_a3} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a1 .. :try_end_a3} :catch_d4

    goto/16 :goto_15f

    :catch_a5
    move-exception v7

    :try_start_a6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Ljava/lang/ClassCastException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2
    :try_end_d4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a6 .. :try_end_d4} :catch_d4

    :catch_d4
    nop

    :cond_d5
    const v2, 0x10007

    if-lt v1, v2, :cond_15a

    :try_start_da
    const-string v1, "kotlin.internal.jdk7.JDK7PlatformImplementations"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_da .. :try_end_e7} :catch_11a

    :try_start_e7
    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/B/b;
    :try_end_ea
    .catch Ljava/lang/ClassCastException; {:try_start_e7 .. :try_end_ea} :catch_eb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e7 .. :try_end_ea} :catch_11a

    goto :goto_15f

    :catch_eb
    move-exception v2

    :try_start_ec
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-instance v8, Ljava/lang/ClassCastException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
    :try_end_11a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ec .. :try_end_11a} :catch_11a

    :catch_11a
    :try_start_11a
    const-string v1, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11a .. :try_end_127} :catch_15a

    :try_start_127
    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/B/b;
    :try_end_12a
    .catch Ljava/lang/ClassCastException; {:try_start_127 .. :try_end_12a} :catch_12b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_127 .. :try_end_12a} :catch_15a

    goto :goto_15f

    :catch_12b
    move-exception v2

    :try_start_12c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v6, Ljava/lang/ClassCastException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_15a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12c .. :try_end_15a} :catch_15a

    :catch_15a
    :cond_15a
    new-instance v2, Lcom/github/catvod/spider/merge/B/b;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge/B/b;-><init>()V

    :goto_15f
    sput-object v2, Lcom/github/catvod/spider/merge/B/c;->a:Lcom/github/catvod/spider/merge/B/b;

    return-void
.end method
