.class public final Lcom/google/android/gms/internal/clearcut/e0$d;
.super Lcom/google/android/gms/internal/clearcut/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/e0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->d:Ljava/nio/ByteBuffer;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 19
    .line 20
    .line 21
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->T(I)V

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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0$d;->F(J)V

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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V

    return-void
.end method

.method public final F(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw p2
.end method

.method public final J(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->V(I)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/e0$d;->w(J)V

    return-void
.end method

.method public final U(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    int-to-byte p1, p1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public final V(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0$d;->g([BII)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/clearcut/x1;->q(Lcom/google/android/gms/internal/clearcut/e0;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    mul-int/lit8 v2, v2, 0x3

    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ne v3, v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/2addr v2, v3

    .line 32
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Lcom/google/android/gms/internal/clearcut/k3; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/clearcut/i3;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/clearcut/k3; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 36
    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    sub-int v2, v3, v2

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    new-instance v3, Lcom/google/android/gms/internal/clearcut/e0$c;

    .line 56
    .line 57
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    .line 58
    .line 59
    .line 60
    throw v3

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/i3;->a(Ljava/lang/CharSequence;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/clearcut/k3; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/clearcut/i3;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/gms/internal/clearcut/k3; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_1
    move-exception v2

    .line 73
    :try_start_4
    new-instance v3, Lcom/google/android/gms/internal/clearcut/e0$c;

    .line 74
    .line 75
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    .line 76
    .line 77
    .line 78
    throw v3
    :try_end_4
    .catch Lcom/google/android/gms/internal/clearcut/k3; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 79
    :catch_2
    move-exception p1

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/clearcut/e0$c;

    .line 81
    .line 82
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :catch_3
    move-exception v2

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/clearcut/e0;->o(Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/k3;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final g([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw p2
.end method

.method public final i(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public final j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0$d;->w(J)V

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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->Z(Lcom/google/android/gms/internal/clearcut/x;)V

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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->a0(Lcom/google/android/gms/internal/clearcut/x1;)V

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
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V

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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/e0$d;->U(I)V

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

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/clearcut/e0$d;->E(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->k(ILcom/google/android/gms/internal/clearcut/x;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

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

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/clearcut/e0$d;->E(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/clearcut/e0$d;->l(ILcom/google/android/gms/internal/clearcut/x1;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/e0$d;->s(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/e0$d;->i(B)V

    return-void
.end method

.method public final w(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/e0$d;->e:Ljava/nio/ByteBuffer;

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    long-to-int p2, p1

    int-to-byte p1, p2

    :try_start_0
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw p2
.end method
