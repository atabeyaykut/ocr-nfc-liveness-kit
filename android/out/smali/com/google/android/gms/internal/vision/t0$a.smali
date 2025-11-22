.class public final Lcom/google/android/gms/internal/vision/t0$a;
.super Lcom/google/android/gms/internal/vision/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    or-int/lit8 v0, p2, 0x0

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    sub-int/2addr v1, p2

    .line 8
    or-int/2addr v0, v1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    .line 13
    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 15
    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v2, v1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    aput-object v1, v2, p1

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    aput-object p2, v2, p1

    .line 44
    .line 45
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 46
    .line 47
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method


# virtual methods
.method public final A(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    return-void
.end method

.method public final B(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/t0$a;->C(J)V

    return-void
.end method

.method public final C(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/vision/t0$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final E(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/vision/t0$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final I(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/t0$a;->E(I)V

    return-void
.end method

.method public final U(Lcom/google/android/gms/internal/vision/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/p0;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/p0;->w(Lcom/google/android/gms/internal/vision/m0;)V

    return-void
.end method

.method public final V(Lcom/google/android/gms/internal/vision/n2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/n2;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/n2;->b(Lcom/google/android/gms/internal/vision/t0;)V

    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/y3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget v3, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    .line 22
    .line 23
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    .line 24
    .line 25
    if-ne v2, v1, :cond_0

    .line 26
    .line 27
    add-int v1, v0, v2

    .line 28
    .line 29
    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 30
    .line 31
    sub-int/2addr v3, v1

    .line 32
    sget-object v5, Lcom/google/android/gms/internal/vision/w3;->a:Lcom/google/android/gms/internal/vision/m0;

    .line 33
    .line 34
    invoke-virtual {v5, p1, v4, v1, v3}, Lcom/google/android/gms/internal/vision/m0;->b(Ljava/lang/CharSequence;[BII)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 39
    .line 40
    sub-int v3, v1, v0

    .line 41
    .line 42
    sub-int/2addr v3, v2

    .line 43
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    .line 44
    .line 45
    .line 46
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/w3;->a(Ljava/lang/CharSequence;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 57
    .line 58
    sub-int/2addr v3, v1

    .line 59
    sget-object v2, Lcom/google/android/gms/internal/vision/w3;->a:Lcom/google/android/gms/internal/vision/m0;

    .line 60
    .line 61
    invoke-virtual {v2, p1, v4, v1, v3}, Lcom/google/android/gms/internal/vision/m0;->b(Ljava/lang/CharSequence;[BII)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/y3; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Lcom/google/android/gms/internal/vision/t0$b;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :catch_1
    move-exception v1

    .line 76
    move-object v7, v1

    .line 77
    iput v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 78
    .line 79
    sget-object v2, Lcom/google/android/gms/internal/vision/t0;->b:Ljava/util/logging/Logger;

    .line 80
    .line 81
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 82
    .line 83
    const-string v4, "com.google.protobuf.CodedOutputStream"

    .line 84
    .line 85
    const-string v5, "inefficientWriteStringNoTag"

    .line 86
    .line 87
    const-string v6, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 88
    .line 89
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :try_start_2
    array-length v0, p1

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    .line 100
    .line 101
    .line 102
    array-length v0, p1

    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->X([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/vision/t0$b; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_2
    move-exception p1

    .line 109
    throw p1

    .line 110
    :catch_3
    move-exception p1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/vision/t0$b;

    .line 112
    .line 113
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 114
    .line 115
    .line 116
    throw v0
.end method

.method public final X([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/vision/t0$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final d([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t0$a;->X([BII)V

    return-void
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final g(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/vision/t0$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/t0$a;->p(J)V

    return-void
.end method

.method public final i(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/t0$a;->p(J)V

    return-void
.end method

.method public final k(ILcom/google/android/gms/internal/vision/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/t0$a;->U(Lcom/google/android/gms/internal/vision/p0;)V

    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/vision/n2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/vision/t0$a;->A(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/t0$a;->V(Lcom/google/android/gms/internal/vision/n2;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    return-void
.end method

.method public final m(ILcom/google/android/gms/internal/vision/n2;Lcom/google/android/gms/internal/vision/d3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/vision/f0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/f0;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/vision/d3;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/f0;->d(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/t0$a;->t(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/t0;->a:Lcom/google/android/gms/internal/vision/u0;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/vision/d3;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/t0$a;->W(Ljava/lang/String;)V

    return-void
.end method

.method public final o(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/t0$a;->g(B)V

    return-void
.end method

.method public final p(J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/vision/t0;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    const-wide/16 v5, -0x80

    .line 9
    .line 10
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 15
    .line 16
    sub-int v0, v2, v0

    .line 17
    .line 18
    const/16 v8, 0xa

    .line 19
    .line 20
    if-lt v0, v8, :cond_1

    .line 21
    .line 22
    :goto_0
    and-long v8, p1, v5

    .line 23
    .line 24
    cmp-long v0, v8, v3

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 33
    .line 34
    int-to-long v0, v0

    .line 35
    long-to-int p2, p1

    .line 36
    int-to-byte p1, p2

    .line 37
    invoke-static {v7, v0, v1, p1}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 42
    .line 43
    add-int/lit8 v2, v0, 0x1

    .line 44
    .line 45
    iput v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 46
    .line 47
    int-to-long v8, v0

    .line 48
    long-to-int v0, p1

    .line 49
    and-int/lit8 v0, v0, 0x7f

    .line 50
    .line 51
    or-int/lit16 v0, v0, 0x80

    .line 52
    .line 53
    int-to-byte v0, v0

    .line 54
    invoke-static {v7, v8, v9, v0}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    .line 55
    .line 56
    .line 57
    ushr-long/2addr p1, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    and-long v8, p1, v5

    .line 60
    .line 61
    cmp-long v0, v8, v3

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 66
    .line 67
    add-int/lit8 v1, v0, 0x1

    .line 68
    .line 69
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 70
    .line 71
    long-to-int p2, p1

    .line 72
    int-to-byte p1, p2

    .line 73
    aput-byte p1, v7, v0

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 77
    .line 78
    add-int/lit8 v8, v0, 0x1

    .line 79
    .line 80
    iput v8, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 81
    .line 82
    long-to-int v8, p1

    .line 83
    and-int/lit8 v8, v8, 0x7f

    .line 84
    .line 85
    or-int/lit16 v8, v8, 0x80

    .line 86
    .line 87
    int-to-byte v8, v8

    .line 88
    aput-byte v8, v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    ushr-long/2addr p1, v1

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lcom/google/android/gms/internal/vision/t0$b;

    .line 94
    .line 95
    const/4 v0, 0x3

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/4 v3, 0x0

    .line 105
    aput-object v1, v0, v3

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x1

    .line 112
    aput-object v1, v0, v2

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    aput-object v2, v0, v1

    .line 120
    .line 121
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 122
    .line 123
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 128
    .line 129
    .line 130
    throw p2
.end method

.method public final t(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/vision/t0;->c:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->e:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/t0$a;->d:[B

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/vision/i0;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 16
    .line 17
    sub-int v3, v1, v0

    .line 18
    .line 19
    const/4 v4, 0x5

    .line 20
    if-lt v3, v4, :cond_4

    .line 21
    .line 22
    and-int/lit8 v1, p1, -0x80

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 29
    .line 30
    int-to-long v0, v0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 33
    .line 34
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 35
    .line 36
    int-to-long v0, v0

    .line 37
    or-int/lit16 v3, p1, 0x80

    .line 38
    .line 39
    int-to-byte v3, v3

    .line 40
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    .line 41
    .line 42
    .line 43
    ushr-int/lit8 p1, p1, 0x7

    .line 44
    .line 45
    and-int/lit8 v0, p1, -0x80

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 51
    .line 52
    add-int/lit8 v1, v0, 0x1

    .line 53
    .line 54
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 55
    .line 56
    int-to-long v0, v0

    .line 57
    or-int/lit16 v3, p1, 0x80

    .line 58
    .line 59
    int-to-byte v3, v3

    .line 60
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    .line 61
    .line 62
    .line 63
    ushr-int/lit8 p1, p1, 0x7

    .line 64
    .line 65
    and-int/lit8 v0, p1, -0x80

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 71
    .line 72
    add-int/lit8 v1, v0, 0x1

    .line 73
    .line 74
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 75
    .line 76
    int-to-long v0, v0

    .line 77
    or-int/lit16 v3, p1, 0x80

    .line 78
    .line 79
    int-to-byte v3, v3

    .line 80
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    .line 81
    .line 82
    .line 83
    ushr-int/lit8 p1, p1, 0x7

    .line 84
    .line 85
    and-int/lit8 v0, p1, -0x80

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 91
    .line 92
    add-int/lit8 v1, v0, 0x1

    .line 93
    .line 94
    iput v1, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 95
    .line 96
    int-to-long v0, v0

    .line 97
    or-int/lit16 v3, p1, 0x80

    .line 98
    .line 99
    int-to-byte v3, v3

    .line 100
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    .line 101
    .line 102
    .line 103
    ushr-int/lit8 p1, p1, 0x7

    .line 104
    .line 105
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :goto_2
    int-to-byte p1, p1

    .line 109
    invoke-static {v2, v0, v1, p1}, Lcom/google/android/gms/internal/vision/t3;->h([BJB)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    :goto_3
    and-int/lit8 v0, p1, -0x80

    .line 114
    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 118
    .line 119
    add-int/lit8 v3, v0, 0x1

    .line 120
    .line 121
    iput v3, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 122
    .line 123
    int-to-byte p1, p1

    .line 124
    aput-byte p1, v2, v0

    .line 125
    .line 126
    return-void

    .line 127
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 128
    .line 129
    add-int/lit8 v3, v0, 0x1

    .line 130
    .line 131
    iput v3, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 132
    .line 133
    and-int/lit8 v3, p1, 0x7f

    .line 134
    .line 135
    or-int/lit16 v3, v3, 0x80

    .line 136
    .line 137
    int-to-byte v3, v3

    .line 138
    aput-byte v3, v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    ushr-int/lit8 p1, p1, 0x7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catch_0
    move-exception p1

    .line 144
    new-instance v0, Lcom/google/android/gms/internal/vision/t0$b;

    .line 145
    .line 146
    const/4 v2, 0x3

    .line 147
    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    .line 149
    iget v3, p0, Lcom/google/android/gms/internal/vision/t0$a;->f:I

    .line 150
    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const/4 v4, 0x0

    .line 156
    aput-object v3, v2, v4

    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const/4 v3, 0x1

    .line 163
    aput-object v1, v2, v3

    .line 164
    .line 165
    const/4 v1, 0x2

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    aput-object v3, v2, v1

    .line 171
    .line 172
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 173
    .line 174
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/t0$b;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 179
    .line 180
    .line 181
    throw v0
.end method

.method public final u(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/t0$a;->h(I)V

    return-void
.end method

.method public final v(ILcom/google/android/gms/internal/vision/p0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/vision/t0$a;->A(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/vision/t0$a;->k(ILcom/google/android/gms/internal/vision/p0;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/t0$a;->i(II)V

    return-void
.end method
