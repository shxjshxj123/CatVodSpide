.class Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private pointer:J


# direct methods
.method private constructor <init>(Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-wide p2, p0, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;->pointer:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;Lcom/whl/quickjs/wrapper/NativeCleaner$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;-><init>(Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;)J
    .registers 3

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/NativeCleaner$NativeReference;->pointer:J

    return-wide v0
.end method
