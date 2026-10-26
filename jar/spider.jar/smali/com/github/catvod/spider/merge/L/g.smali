.class public final Lcom/github/catvod/spider/merge/L/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/O/a;

.field public static final b:Lcom/github/catvod/spider/merge/O/a;


# direct methods
.method static constructor <clinit>()V
    .registers 29

    new-instance v0, Lcom/github/catvod/spider/merge/O/f;

    const/4 v1, 0x2

    new-array v2, v1, [[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\""

    aput-object v5, v3, v4

    const/4 v6, 0x1

    const-string v7, "\\\""

    aput-object v7, v3, v6

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/String;

    const-string v8, "\\"

    aput-object v8, v3, v4

    const-string v9, "\\\\"

    aput-object v9, v3, v6

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    new-array v2, v6, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v3, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->i()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v4

    new-array v3, v1, [Lcom/github/catvod/spider/merge/O/b;

    aput-object v0, v3, v4

    .line 1
    invoke-static {v2, v4, v3, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-array v2, v6, [Lcom/github/catvod/spider/merge/O/b;

    .line 2
    new-instance v3, Lcom/github/catvod/spider/merge/O/e;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge/O/e;-><init>()V

    aput-object v3, v2, v4

    new-array v3, v1, [Lcom/github/catvod/spider/merge/O/b;

    aput-object v0, v3, v4

    .line 3
    invoke-static {v2, v4, v3, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    .line 4
    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    const/4 v11, 0x4

    new-array v12, v11, [[Ljava/lang/String;

    new-array v13, v1, [Ljava/lang/String;

    const-string v14, "\'"

    aput-object v14, v13, v4

    const-string v15, "\\\'"

    aput-object v15, v13, v6

    aput-object v13, v12, v4

    new-array v13, v1, [Ljava/lang/String;

    aput-object v5, v13, v4

    aput-object v7, v13, v6

    aput-object v13, v12, v6

    new-array v13, v1, [Ljava/lang/String;

    aput-object v8, v13, v4

    aput-object v9, v13, v6

    aput-object v13, v12, v1

    new-array v13, v1, [Ljava/lang/String;

    const-string v16, "/"

    aput-object v16, v13, v4

    const-string v17, "\\/"

    aput-object v17, v13, v6

    aput-object v13, v12, v2

    invoke-direct {v10, v12}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v4

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->i()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v6

    .line 5
    new-instance v10, Lcom/github/catvod/spider/merge/O/e;

    invoke-direct {v10}, Lcom/github/catvod/spider/merge/O/e;-><init>()V

    aput-object v10, v3, v1

    .line 6
    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    new-array v3, v2, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    new-array v12, v2, [[Ljava/lang/String;

    new-array v13, v1, [Ljava/lang/String;

    aput-object v5, v13, v4

    aput-object v7, v13, v6

    aput-object v13, v12, v4

    new-array v13, v1, [Ljava/lang/String;

    aput-object v8, v13, v4

    aput-object v9, v13, v6

    aput-object v13, v12, v6

    new-array v13, v1, [Ljava/lang/String;

    aput-object v16, v13, v4

    aput-object v17, v13, v6

    aput-object v13, v12, v1

    invoke-direct {v10, v12}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v4

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->i()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v6

    .line 7
    new-instance v10, Lcom/github/catvod/spider/merge/O/e;

    invoke-direct {v10}, Lcom/github/catvod/spider/merge/O/e;-><init>()V

    aput-object v10, v3, v1

    .line 8
    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    sput-object v0, Lcom/github/catvod/spider/merge/L/g;->a:Lcom/github/catvod/spider/merge/O/a;

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    new-array v3, v1, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->c()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v4

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->a()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v6

    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    const/4 v3, 0x6

    new-array v10, v3, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v12, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->c()[[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v10, v4

    new-instance v12, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->a()[[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v10, v6

    new-instance v12, Lcom/github/catvod/spider/merge/O/f;

    const/16 v13, 0x1f

    new-array v3, v13, [[Ljava/lang/String;

    new-array v13, v1, [Ljava/lang/String;

    const-string v18, "\u0000"

    aput-object v18, v13, v4

    const-string v19, ""

    aput-object v19, v13, v6

    aput-object v13, v3, v4

    new-array v13, v1, [Ljava/lang/String;

    const-string v20, "\u0001"

    aput-object v20, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v6

    new-array v13, v1, [Ljava/lang/String;

    const-string v20, "\u0002"

    aput-object v20, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v1

    new-array v13, v1, [Ljava/lang/String;

    const-string v20, "\u0003"

    aput-object v20, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v2

    new-array v13, v1, [Ljava/lang/String;

    const-string v20, "\u0004"

    aput-object v20, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    new-array v13, v1, [Ljava/lang/String;

    const-string v20, "\u0005"

    aput-object v20, v13, v4

    aput-object v19, v13, v6

    const/4 v11, 0x5

    aput-object v13, v3, v11

    new-array v13, v1, [Ljava/lang/String;

    const-string v21, "\u0006"

    aput-object v21, v13, v4

    aput-object v19, v13, v6

    const/16 v16, 0x6

    aput-object v13, v3, v16

    new-array v13, v1, [Ljava/lang/String;

    const-string v21, "\u0007"

    aput-object v21, v13, v4

    aput-object v19, v13, v6

    const/16 v21, 0x7

    aput-object v13, v3, v21

    new-array v13, v1, [Ljava/lang/String;

    const-string v22, "\u0008"

    aput-object v22, v13, v4

    aput-object v19, v13, v6

    const/16 v11, 0x8

    aput-object v13, v3, v11

    const/16 v13, 0x9

    new-array v11, v1, [Ljava/lang/String;

    const-string v23, "\u000b"

    aput-object v23, v11, v4

    aput-object v19, v11, v6

    aput-object v11, v3, v13

    const/16 v11, 0xa

    new-array v13, v1, [Ljava/lang/String;

    const-string v24, "\u000c"

    aput-object v24, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0xb

    new-array v13, v1, [Ljava/lang/String;

    const-string v25, "\u000e"

    aput-object v25, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0xc

    new-array v13, v1, [Ljava/lang/String;

    const-string v25, "\u000f"

    aput-object v25, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0xd

    new-array v13, v1, [Ljava/lang/String;

    const-string v25, "\u0010"

    aput-object v25, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    new-array v11, v1, [Ljava/lang/String;

    const-string v13, "\u0011"

    aput-object v13, v11, v4

    aput-object v19, v11, v6

    const/16 v13, 0xe

    aput-object v11, v3, v13

    const/16 v11, 0xf

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0012"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x10

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0013"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x11

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0014"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x12

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0015"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x13

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0016"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x14

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0017"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x15

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0018"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x16

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u0019"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x17

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u001a"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x18

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u001b"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x19

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u001c"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x1a

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u001d"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x1b

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u001e"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x1c

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\u001f"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x1d

    new-array v13, v1, [Ljava/lang/String;

    const-string v26, "\ufffe"

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    const/16 v11, 0x1e

    new-array v13, v1, [Ljava/lang/String;

    const-string v27, "\uffff"

    aput-object v27, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v11

    invoke-direct {v12, v3}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v10, v1

    const/16 v3, 0x7f

    const/16 v11, 0x84

    invoke-static {v3, v11}, Lcom/github/catvod/spider/merge/O/g;->c(II)Lcom/github/catvod/spider/merge/O/g;

    move-result-object v12

    aput-object v12, v10, v2

    const/16 v12, 0x86

    const/16 v13, 0x9f

    invoke-static {v12, v13}, Lcom/github/catvod/spider/merge/O/g;->c(II)Lcom/github/catvod/spider/merge/O/g;

    move-result-object v28

    const/16 v20, 0x4

    aput-object v28, v10, v20

    new-instance v28, Lcom/github/catvod/spider/merge/O/l;

    invoke-direct/range {v28 .. v28}, Lcom/github/catvod/spider/merge/O/l;-><init>()V

    const/16 v22, 0x5

    aput-object v28, v10, v22

    invoke-direct {v0, v10}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    const/16 v10, 0x8

    new-array v12, v10, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->c()[[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v12, v4

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->a()[[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v12, v6

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    const/4 v13, 0x5

    new-array v3, v13, [[Ljava/lang/String;

    new-array v13, v1, [Ljava/lang/String;

    aput-object v18, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v4

    new-array v13, v1, [Ljava/lang/String;

    aput-object v23, v13, v4

    const-string v18, "&#11;"

    aput-object v18, v13, v6

    aput-object v13, v3, v6

    new-array v13, v1, [Ljava/lang/String;

    aput-object v24, v13, v4

    const-string v18, "&#12;"

    aput-object v18, v13, v6

    aput-object v13, v3, v1

    new-array v13, v1, [Ljava/lang/String;

    aput-object v26, v13, v4

    aput-object v19, v13, v6

    aput-object v13, v3, v2

    new-array v13, v1, [Ljava/lang/String;

    aput-object v27, v13, v4

    aput-object v19, v13, v6

    const/16 v18, 0x4

    aput-object v13, v3, v18

    invoke-direct {v10, v3}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v12, v1

    const/16 v3, 0x8

    invoke-static {v6, v3}, Lcom/github/catvod/spider/merge/O/g;->c(II)Lcom/github/catvod/spider/merge/O/g;

    move-result-object v3

    aput-object v3, v12, v2

    const/16 v3, 0xe

    const/16 v10, 0x1f

    invoke-static {v3, v10}, Lcom/github/catvod/spider/merge/O/g;->c(II)Lcom/github/catvod/spider/merge/O/g;

    move-result-object v3

    aput-object v3, v12, v18

    const/16 v3, 0x7f

    invoke-static {v3, v11}, Lcom/github/catvod/spider/merge/O/g;->c(II)Lcom/github/catvod/spider/merge/O/g;

    move-result-object v3

    const/4 v10, 0x5

    aput-object v3, v12, v10

    const/16 v3, 0x9f

    const/16 v10, 0x86

    invoke-static {v10, v3}, Lcom/github/catvod/spider/merge/O/g;->c(II)Lcom/github/catvod/spider/merge/O/g;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v12, v10

    new-instance v3, Lcom/github/catvod/spider/merge/O/l;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge/O/l;-><init>()V

    aput-object v3, v12, v21

    invoke-direct {v0, v12}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    new-array v3, v1, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->c()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v4

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->g()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v6

    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    new-array v3, v2, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->c()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v4

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->g()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v6

    new-instance v10, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->e()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v3, v1

    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/L/e;

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    const/4 v3, 0x4

    new-array v10, v3, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v3, Lcom/github/catvod/spider/merge/O/j;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge/O/j;-><init>()V

    aput-object v3, v10, v4

    new-instance v3, Lcom/github/catvod/spider/merge/O/k;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge/O/k;-><init>()V

    aput-object v3, v10, v6

    new-instance v3, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->j()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v10, v1

    new-instance v3, Lcom/github/catvod/spider/merge/O/f;

    const/4 v11, 0x4

    new-array v12, v11, [[Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/String;

    aput-object v9, v11, v4

    aput-object v8, v11, v6

    aput-object v11, v12, v4

    new-array v9, v1, [Ljava/lang/String;

    aput-object v7, v9, v4

    aput-object v5, v9, v6

    aput-object v9, v12, v6

    new-array v5, v1, [Ljava/lang/String;

    aput-object v15, v5, v4

    aput-object v14, v5, v6

    aput-object v5, v12, v1

    new-array v5, v1, [Ljava/lang/String;

    aput-object v8, v5, v4

    aput-object v19, v5, v6

    aput-object v5, v12, v2

    invoke-direct {v3, v12}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v10, v2

    invoke-direct {v0, v10}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    sput-object v0, Lcom/github/catvod/spider/merge/L/g;->b:Lcom/github/catvod/spider/merge/O/a;

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    new-array v3, v2, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v5, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->d()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v5, v3, v4

    new-instance v5, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->h()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v5, v3, v6

    new-instance v5, Lcom/github/catvod/spider/merge/O/i;

    new-array v7, v4, [Lcom/github/catvod/spider/merge/O/h;

    invoke-direct {v5, v7}, Lcom/github/catvod/spider/merge/O/i;-><init>([Lcom/github/catvod/spider/merge/O/h;)V

    aput-object v5, v3, v1

    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v5, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->d()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v5, v3, v4

    new-instance v5, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->h()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v5, v3, v6

    new-instance v5, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->f()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v5, v3, v1

    new-instance v5, Lcom/github/catvod/spider/merge/O/i;

    new-array v7, v4, [Lcom/github/catvod/spider/merge/O/h;

    invoke-direct {v5, v7}, Lcom/github/catvod/spider/merge/O/i;-><init>([Lcom/github/catvod/spider/merge/O/h;)V

    aput-object v5, v3, v2

    invoke-direct {v0, v3}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/O/a;

    new-array v2, v2, [Lcom/github/catvod/spider/merge/O/b;

    new-instance v3, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->d()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/github/catvod/spider/merge/O/f;

    invoke-static {}, Lcom/github/catvod/spider/merge/O/d;->b()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/github/catvod/spider/merge/O/f;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/github/catvod/spider/merge/O/i;

    new-array v4, v4, [Lcom/github/catvod/spider/merge/O/h;

    invoke-direct {v3, v4}, Lcom/github/catvod/spider/merge/O/i;-><init>([Lcom/github/catvod/spider/merge/O/h;)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/O/a;-><init>([Lcom/github/catvod/spider/merge/O/b;)V

    new-instance v0, Lcom/github/catvod/spider/merge/L/f;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    sget-object v0, Lcom/github/catvod/spider/merge/L/g;->a:Lcom/github/catvod/spider/merge/O/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_56

    .line 1
    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1a
    :goto_1a
    if-ge v4, v2, :cond_52

    invoke-virtual {v0, p0, v4, v1}, Lcom/github/catvod/spider/merge/O/a;->a(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-ge v4, v2, :cond_1a

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_43
    const/4 v6, 0x0

    :goto_44
    if-ge v6, v5, :cond_1a

    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 3
    :cond_52
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_56} :catch_57

    :goto_56
    return-object p0

    :catch_57
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5f

    :goto_5e
    throw v0

    :goto_5f
    goto :goto_5e
.end method
