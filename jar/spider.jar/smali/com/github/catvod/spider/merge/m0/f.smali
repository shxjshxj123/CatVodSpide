.class public final Lcom/github/catvod/spider/merge/m0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/github/catvod/spider/merge/m0/e; = null

.field private static b:Z = false


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge/m0/f;->a:Lcom/github/catvod/spider/merge/m0/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_18

    :cond_6
    sget-boolean v0, Lcom/github/catvod/spider/merge/m0/f;->b:Z

    if-eqz v0, :cond_c

    move-object v0, v1

    goto :goto_18

    .line 2
    :cond_c
    :try_start_c
    new-instance v0, Lcom/github/catvod/spider/merge/m0/e;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/m0/e;-><init>()V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-object v0, v1

    .line 3
    :goto_13
    sput-object v0, Lcom/github/catvod/spider/merge/m0/f;->a:Lcom/github/catvod/spider/merge/m0/e;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/github/catvod/spider/merge/m0/f;->b:Z

    :goto_18
    if-nez v0, :cond_1b

    return-object v1

    .line 4
    :cond_1b
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m0/e;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/github/catvod/spider/merge/m0/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_26
    array-length v3, v0

    if-ge v2, v3, :cond_39

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_39
    :goto_39
    array-length v1, v0

    if-ge v2, v1, :cond_44

    add-int/lit8 v2, v2, 0x2

    array-length v1, v0

    if-ge v2, v1, :cond_44

    aget-object v0, v0, v2

    return-object v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4d

    :goto_4c
    throw v0

    :goto_4d
    goto :goto_4c
.end method

.method public static final b(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLF4J: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Reported exception:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
