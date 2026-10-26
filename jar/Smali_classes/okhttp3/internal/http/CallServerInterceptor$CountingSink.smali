.class final Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Lokio/ForwardingSink;
.source "SourceFile"


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Lokio/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-wide v0, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    return-void
.end method
