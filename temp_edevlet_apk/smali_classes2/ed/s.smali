.class public final Led/s;
.super Led/i;
.source "SourceFile"


# instance fields
.field public final c:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    invoke-direct {p0}, Led/i;-><init>()V

    iput-object p1, p0, Led/s;->c:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Led/s;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(IIJ[B)I
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "array"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Led/s;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object p4, p0, Led/s;->c:Ljava/io/RandomAccessFile;

    sub-int v0, p2, p3

    invoke-virtual {p4, p5, p1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    if-nez p3, :cond_1

    monitor-exit p0

    return v0

    :cond_0
    add-int/2addr p3, p4

    goto :goto_0

    :cond_1
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Led/s;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
