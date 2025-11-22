.class public final Lyc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:Led/e;

.field public b:I

.field public c:Z

.field public final d:Lyc/d$b;

.field public final e:Led/f;

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lyc/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lyc/s;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Led/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/s;->e:Led/f;

    iput-boolean p2, p0, Lyc/s;->f:Z

    new-instance p1, Led/e;

    invoke-direct {p1}, Led/e;-><init>()V

    iput-object p1, p0, Lyc/s;->a:Led/e;

    const/16 p2, 0x4000

    iput p2, p0, Lyc/s;->b:I

    new-instance p2, Lyc/d$b;

    invoke-direct {p2, p1}, Lyc/d$b;-><init>(Led/e;)V

    iput-object p2, p0, Lyc/s;->d:Lyc/d$b;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lyc/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "peerSettings"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lyc/s;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_7

    .line 10
    .line 11
    iget v0, p0, Lyc/s;->b:I

    .line 12
    .line 13
    iget v1, p1, Lyc/v;->a:I

    .line 14
    .line 15
    and-int/lit8 v2, v1, 0x20

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lyc/v;->b:[I

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    aget v0, v0, v2

    .line 23
    .line 24
    :cond_0
    iput v0, p0, Lyc/s;->b:I

    .line 25
    .line 26
    and-int/lit8 v0, v1, 0x2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, -0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p1, Lyc/v;->b:[I

    .line 33
    .line 34
    aget v0, v0, v2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, -0x1

    .line 38
    :goto_0
    const/4 v4, 0x0

    .line 39
    if-eq v0, v3, :cond_6

    .line 40
    .line 41
    iget-object v0, p0, Lyc/s;->d:Lyc/d$b;

    .line 42
    .line 43
    and-int/lit8 v1, v1, 0x2

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object p1, p1, Lyc/v;->b:[I

    .line 48
    .line 49
    aget p1, p1, v2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 p1, -0x1

    .line 53
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x4000

    .line 57
    .line 58
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget v1, v0, Lyc/d$b;->c:I

    .line 63
    .line 64
    if-ne v1, p1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    if-ge p1, v1, :cond_4

    .line 68
    .line 69
    iget v1, v0, Lyc/d$b;->a:I

    .line 70
    .line 71
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, v0, Lyc/d$b;->a:I

    .line 76
    .line 77
    :cond_4
    iput-boolean v2, v0, Lyc/d$b;->b:Z

    .line 78
    .line 79
    iput p1, v0, Lyc/d$b;->c:I

    .line 80
    .line 81
    iget v1, v0, Lyc/d$b;->g:I

    .line 82
    .line 83
    if-ge p1, v1, :cond_6

    .line 84
    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    iget-object p1, v0, Lyc/d$b;->d:[Lyc/c;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-static {p1, v1}, Lm9/i;->m0([Ljava/lang/Object;Lkotlinx/coroutines/internal/u;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, v0, Lyc/d$b;->d:[Lyc/c;

    .line 94
    .line 95
    array-length p1, p1

    .line 96
    add-int/2addr p1, v3

    .line 97
    iput p1, v0, Lyc/d$b;->e:I

    .line 98
    .line 99
    iput v4, v0, Lyc/d$b;->f:I

    .line 100
    .line 101
    iput v4, v0, Lyc/d$b;->g:I

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    sub-int/2addr v1, p1

    .line 105
    invoke-virtual {v0, v1}, Lyc/d$b;->a(I)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_2
    const/4 p1, 0x4

    .line 109
    invoke-virtual {p0, v4, v4, p1, v2}, Lyc/s;->c(IIII)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lyc/s;->e:Led/f;

    .line 113
    .line 114
    invoke-interface {p1}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    monitor-exit p0

    .line 118
    return-void

    .line 119
    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 120
    .line 121
    const-string v0, "closed"

    .line 122
    .line 123
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :catchall_0
    move-exception p1

    .line 128
    monitor-exit p0

    .line 129
    throw p1
.end method

.method public final declared-synchronized b(ZILed/e;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lyc/s;->c:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p2, p4, v0, p1}, Lyc/s;->c(IIII)V

    .line 8
    .line 9
    .line 10
    if-lez p4, :cond_0

    .line 11
    .line 12
    invoke-static {p3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    int-to-long p1, p4

    .line 16
    iget-object p4, p0, Lyc/s;->e:Led/f;

    .line 17
    .line 18
    invoke-interface {p4, p3, p1, p2}, Led/h0;->M(Led/e;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 24
    .line 25
    const-string p2, "closed"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method

.method public final c(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 2
    .line 3
    sget-object v1, Lyc/s;->g:Ljava/util/logging/Logger;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lyc/e;->e:Lyc/e;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2, p3, p4, v2}, Lyc/e;->a(IIIIZ)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lyc/s;->b:I

    .line 25
    .line 26
    if-gt p2, v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_4

    .line 32
    .line 33
    const-wide v0, 0x80000000L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    long-to-int v1, v0

    .line 39
    and-int v0, v1, p1

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    .line 46
    sget-object v0, Lsc/c;->a:[B

    .line 47
    .line 48
    iget-object v0, p0, Lyc/s;->e:Led/f;

    .line 49
    .line 50
    const-string v1, "$this$writeMedium"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    ushr-int/lit8 v1, p2, 0x10

    .line 56
    .line 57
    and-int/lit16 v1, v1, 0xff

    .line 58
    .line 59
    invoke-interface {v0, v1}, Led/f;->writeByte(I)Led/f;

    .line 60
    .line 61
    .line 62
    ushr-int/lit8 v1, p2, 0x8

    .line 63
    .line 64
    and-int/lit16 v1, v1, 0xff

    .line 65
    .line 66
    invoke-interface {v0, v1}, Led/f;->writeByte(I)Led/f;

    .line 67
    .line 68
    .line 69
    and-int/lit16 p2, p2, 0xff

    .line 70
    .line 71
    invoke-interface {v0, p2}, Led/f;->writeByte(I)Led/f;

    .line 72
    .line 73
    .line 74
    and-int/lit16 p2, p3, 0xff

    .line 75
    .line 76
    invoke-interface {v0, p2}, Led/f;->writeByte(I)Led/f;

    .line 77
    .line 78
    .line 79
    and-int/lit16 p2, p4, 0xff

    .line 80
    .line 81
    invoke-interface {v0, p2}, Led/f;->writeByte(I)Led/f;

    .line 82
    .line 83
    .line 84
    const p2, 0x7fffffff

    .line 85
    .line 86
    .line 87
    and-int/2addr p1, p2

    .line 88
    invoke-interface {v0, p1}, Led/f;->writeInt(I)Led/f;

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    const-string p2, "reserved bit set: "

    .line 93
    .line 94
    invoke-static {p2, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p2

    .line 108
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string p3, "FRAME_SIZE_ERROR length > "

    .line 111
    .line 112
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget p3, p0, Lyc/s;->b:I

    .line 116
    .line 117
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p3, ": "

    .line 121
    .line 122
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p2
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lyc/s;->c:Z

    iget-object v0, p0, Lyc/s;->e:Led/f;

    invoke-interface {v0}, Led/h0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(ILyc/b;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lyc/s;->c:Z

    .line 3
    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    iget v0, p2, Lyc/b;->a:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_3

    .line 17
    .line 18
    array-length v0, p3

    .line 19
    add-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    invoke-virtual {p0, v2, v0, v1, v2}, Lyc/s;->c(IIII)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lyc/s;->e:Led/f;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Led/f;->writeInt(I)Led/f;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lyc/s;->e:Led/f;

    .line 31
    .line 32
    iget p2, p2, Lyc/b;->a:I

    .line 33
    .line 34
    invoke-interface {p1, p2}, Led/f;->writeInt(I)Led/f;

    .line 35
    .line 36
    .line 37
    array-length p1, p3

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    :cond_1
    xor-int/lit8 p1, v2, 0x1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lyc/s;->e:Led/f;

    .line 46
    .line 47
    invoke-interface {p1, p3}, Led/f;->write([B)Led/f;

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lyc/s;->e:Led/f;

    .line 51
    .line 52
    invoke-interface {p1}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :cond_3
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    .line 58
    .line 59
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2

    .line 69
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 70
    .line 71
    const-string p2, "closed"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    .line 79
    throw p1
.end method

.method public final declared-synchronized e(IZLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lyc/s;->c:Z

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lyc/s;->d:Lyc/d$b;

    .line 7
    .line 8
    invoke-virtual {v0, p3}, Lyc/d$b;->d(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lyc/s;->a:Led/e;

    .line 12
    .line 13
    iget-wide v0, p3, Led/e;->b:J

    .line 14
    .line 15
    iget p3, p0, Lyc/s;->b:I

    .line 16
    .line 17
    int-to-long v2, p3

    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    cmp-long p3, v0, v2

    .line 23
    .line 24
    if-nez p3, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    :goto_0
    if-eqz p2, :cond_1

    .line 30
    .line 31
    or-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    :cond_1
    long-to-int p2, v2

    .line 34
    const/4 v5, 0x1

    .line 35
    invoke-virtual {p0, p1, p2, v5, v4}, Lyc/s;->c(IIII)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lyc/s;->e:Led/f;

    .line 39
    .line 40
    iget-object v4, p0, Lyc/s;->a:Led/e;

    .line 41
    .line 42
    invoke-interface {p2, v4, v2, v3}, Led/h0;->M(Led/e;J)V

    .line 43
    .line 44
    .line 45
    if-lez p3, :cond_2

    .line 46
    .line 47
    sub-long/2addr v0, v2

    .line 48
    invoke-virtual {p0, p1, v0, v1}, Lyc/s;->k(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_2
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 54
    .line 55
    const-string p2, "closed"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1
.end method

.method public final declared-synchronized f(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyc/s;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2, p3}, Lyc/s;->c(IIII)V

    iget-object p3, p0, Lyc/s;->e:Led/f;

    invoke-interface {p3, p1}, Led/f;->writeInt(I)Led/f;

    iget-object p1, p0, Lyc/s;->e:Led/f;

    invoke-interface {p1, p2}, Led/f;->writeInt(I)Led/f;

    iget-object p1, p0, Lyc/s;->e:Led/f;

    invoke-interface {p1}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyc/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyc/s;->e:Led/f;

    invoke-interface {v0}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(ILyc/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "errorCode"

    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lyc/s;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget v0, p2, Lyc/b;->a:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-virtual {p0, p1, v0, v1, v2}, Lyc/s;->c(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lyc/s;->e:Led/f;

    .line 28
    .line 29
    iget p2, p2, Lyc/b;->a:I

    .line 30
    .line 31
    invoke-interface {p1, p2}, Led/f;->writeInt(I)Led/f;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lyc/s;->e:Led/f;

    .line 35
    .line 36
    invoke-interface {p1}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_1
    :try_start_1
    const-string p1, "Failed requirement."

    .line 42
    .line 43
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2

    .line 53
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 54
    .line 55
    const-string p2, "closed"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1
.end method

.method public final declared-synchronized i(Lyc/v;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "settings"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lyc/s;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    iget v0, p1, Lyc/v;->a:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v0, v0, 0x6

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-virtual {p0, v1, v0, v2, v1}, Lyc/s;->c(IIII)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    const/16 v3, 0xa

    .line 26
    .line 27
    if-ge v0, v3, :cond_4

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    shl-int v4, v3, v0

    .line 31
    .line 32
    iget v5, p1, Lyc/v;->a:I

    .line 33
    .line 34
    and-int/2addr v4, v5

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_1
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_1
    if-eq v0, v2, :cond_3

    .line 43
    .line 44
    const/4 v3, 0x7

    .line 45
    if-eq v0, v3, :cond_2

    .line 46
    .line 47
    move v3, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v3, 0x4

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v3, 0x3

    .line 52
    :goto_2
    iget-object v4, p0, Lyc/s;->e:Led/f;

    .line 53
    .line 54
    invoke-interface {v4, v3}, Led/f;->writeShort(I)Led/f;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lyc/s;->e:Led/f;

    .line 58
    .line 59
    iget-object v4, p1, Lyc/v;->b:[I

    .line 60
    .line 61
    aget v4, v4, v0

    .line 62
    .line 63
    invoke-interface {v3, v4}, Led/f;->writeInt(I)Led/f;

    .line 64
    .line 65
    .line 66
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget-object p1, p0, Lyc/s;->e:Led/f;

    .line 70
    .line 71
    invoke-interface {p1}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 77
    .line 78
    const-string v0, "closed"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public final declared-synchronized j(IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lyc/s;->c:Z

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v4, p2, v1

    if-gtz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1, v3}, Lyc/s;->c(IIII)V

    iget-object p1, p0, Lyc/s;->e:Led/f;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Led/f;->writeInt(I)Led/f;

    iget-object p1, p0, Lyc/s;->e:Led/f;

    invoke-interface {p1}, Led/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget v2, p0, Lyc/s;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-int v4, v2

    cmp-long v5, p2, v0

    if-nez v5, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    invoke-virtual {p0, p1, v4, v1, v0}, Lyc/s;->c(IIII)V

    iget-object v0, p0, Lyc/s;->e:Led/f;

    iget-object v1, p0, Lyc/s;->a:Led/e;

    invoke-interface {v0, v1, v2, v3}, Led/h0;->M(Led/e;J)V

    goto :goto_0

    :cond_1
    return-void
.end method
