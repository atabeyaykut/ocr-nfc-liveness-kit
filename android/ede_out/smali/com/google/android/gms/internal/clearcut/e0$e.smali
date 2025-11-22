.class public final Lcom/google/android/gms/internal/clearcut/e0$e;
.super Lcom/google/android/gms/internal/clearcut/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:J

.field public final g:J

.field public final h:J

.field public i:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/e0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->d:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->e:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 19
    .line 20
    sget-wide v1, Lcom/google/android/gms/internal/clearcut/g3;->h:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/clearcut/g3$d;->k(JLjava/lang/Object;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->f:J

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-long v2, v2

    .line 33
    add-long/2addr v2, v0

    .line 34
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-long v4, p1

    .line 39
    add-long/2addr v0, v4

    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->g:J

    .line 41
    .line 42
    const-wide/16 v4, 0xa

    .line 43
    .line 44
    sub-long/2addr v0, v4

    .line 45
    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->h:J

    .line 46
    .line 47
    iput-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final B(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->T(I)V

    return-void
.end method

.method public final C(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0$e;->F(J)V

    return-void
.end method

.method public final E(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    return-void
.end method

.method public final F(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    return-void
.end method

.method public final J(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->V(I)V

    return-void
.end method

.method public final T(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/e0$e;->w(J)V

    return-void
.end method

.method public final U(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->h:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    :goto_1
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->g:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/clearcut/e0$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final V(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    return-void
.end method

.method public final Z(Lcom/google/android/gms/internal/clearcut/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/x;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/clearcut/x;->m(Lcom/google/android/gms/internal/clearcut/w;)V

    return-void
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0$e;->g([BII)V

    return-void
.end method

.method public final a0(Lcom/google/android/gms/internal/clearcut/x1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/clearcut/x1;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/clearcut/x1;->q(Lcom/google/android/gms/internal/clearcut/e0;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->e:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->f:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    mul-int/lit8 v5, v5, 0x3

    .line 12
    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-ne v6, v5, :cond_0

    .line 26
    .line 27
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 28
    .line 29
    sub-long/2addr v7, v1

    .line 30
    long-to-int v5, v7

    .line 31
    add-int/2addr v5, v6

    .line 32
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/clearcut/i3;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    sub-int/2addr v6, v5

    .line 43
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    .line 44
    .line 45
    .line 46
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 47
    .line 48
    int-to-long v5, v6

    .line 49
    add-long/2addr v7, v5

    .line 50
    iput-wide v7, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/i3;->a(Ljava/lang/CharSequence;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    .line 58
    .line 59
    .line 60
    iget-wide v6, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 61
    .line 62
    sub-long/2addr v6, v1

    .line 63
    long-to-int v7, v6

    .line 64
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/clearcut/i3;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 68
    .line 69
    .line 70
    iget-wide v6, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 71
    .line 72
    int-to-long v8, v5

    .line 73
    add-long/2addr v6, v8

    .line 74
    iput-wide v6, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/clearcut/k3; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Lcom/google/android/gms/internal/clearcut/e0$c;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :catch_1
    move-exception p1

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/clearcut/e0$c;

    .line 86
    .line 87
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :catch_2
    move-exception v5

    .line 92
    iput-wide v3, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 93
    .line 94
    sub-long/2addr v3, v1

    .line 95
    long-to-int v1, v3

    .line 96
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/clearcut/e0;->o(Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/k3;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final f()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final g([BII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move v1, p2

    .line 4
    move/from16 v3, p3

    .line 5
    .line 6
    iget-wide v4, v0, Lcom/google/android/gms/internal/clearcut/e0$e;->g:J

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ltz v1, :cond_1

    .line 11
    .line 12
    if-ltz v3, :cond_1

    .line 13
    .line 14
    array-length v6, v2

    .line 15
    sub-int/2addr v6, v3

    .line 16
    if-lt v6, v1, :cond_1

    .line 17
    .line 18
    int-to-long v9, v3

    .line 19
    sub-long v6, v4, v9

    .line 20
    .line 21
    iget-wide v11, v0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 22
    .line 23
    cmp-long v8, v6, v11

    .line 24
    .line 25
    if-gez v8, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    int-to-long v3, v1

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 30
    .line 31
    move-object v2, p1

    .line 32
    move-wide v5, v11

    .line 33
    move-wide v7, v9

    .line 34
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/clearcut/g3$d;->g([BJJJ)V

    .line 35
    .line 36
    .line 37
    iget-wide v1, v0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 38
    .line 39
    add-long/2addr v1, v9

    .line 40
    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 44
    .line 45
    new-instance v1, Ljava/lang/NullPointerException;

    .line 46
    .line 47
    const-string v2, "value"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/clearcut/e0$c;

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    iget-wide v6, v0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    .line 59
    .line 60
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v7, 0x0

    .line 65
    aput-object v6, v2, v7

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    aput-object v4, v2, v6

    .line 73
    .line 74
    const/4 v4, 0x2

    .line 75
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    aput-object v3, v2, v4

    .line 80
    .line 81
    const-string v3, "Pos: %d, limit: %d, len: %d"

    .line 82
    .line 83
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public final i(B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->g:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/clearcut/e0$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0$e;->w(J)V

    return-void
.end method

.method public final k(ILcom/google/android/gms/internal/clearcut/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->Z(Lcom/google/android/gms/internal/clearcut/x;)V

    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/clearcut/x1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->a0(Lcom/google/android/gms/internal/clearcut/x1;)V

    return-void
.end method

.method public final m(ILcom/google/android/gms/internal/clearcut/x1;Lcom/google/android/gms/internal/clearcut/o2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    .line 3
    .line 4
    .line 5
    move-object p1, p2

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/clearcut/n;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n;->d()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/clearcut/o2;->f(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/clearcut/n;->a(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/e0;->a:Lcom/google/android/gms/internal/clearcut/f0;

    .line 26
    .line 27
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/clearcut/o2;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final n(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public final p()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->g:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final s(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/e0$e;->U(I)V

    return-void
.end method

.method public final t(ILcom/google/android/gms/internal/clearcut/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/clearcut/e0$e;->E(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->k(ILcom/google/android/gms/internal/clearcut/x;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    return-void
.end method

.method public final u(ILcom/google/android/gms/internal/clearcut/x1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/clearcut/e0$e;->E(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/clearcut/e0$e;->l(ILcom/google/android/gms/internal/clearcut/x1;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    return-void
.end method

.method public final v(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$e;->s(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/e0$e;->i(B)V

    return-void
.end method

.method public final w(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->h:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_1

    :goto_0
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    if-nez v2, :cond_0

    :goto_1
    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    return-void

    :cond_0
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    ushr-long/2addr p1, v4

    goto :goto_0

    :cond_1
    :goto_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->g:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_3

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/g3;->b(JB)V

    ushr-long/2addr p1, v4

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/clearcut/e0$c;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/e0$e;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
