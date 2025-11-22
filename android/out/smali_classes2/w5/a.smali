.class public final Lw5/a;
.super Lw5/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw5/a$a;,
        Lw5/a$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;ILjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lw5/r;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-lt v0, v1, :cond_6

    .line 8
    .line 9
    if-lt v0, p3, :cond_6

    .line 10
    .line 11
    invoke-static {p3}, Lw5/a0;->a(I)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    if-lt p5, v0, :cond_5

    .line 17
    .line 18
    const-string v0, "HmacSha1"

    .line 19
    .line 20
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x14

    .line 27
    .line 28
    if-gt p5, v0, :cond_2

    .line 29
    .line 30
    :cond_0
    const-string v0, "HmacSha256"

    .line 31
    .line 32
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/16 v0, 0x20

    .line 39
    .line 40
    if-gt p5, v0, :cond_2

    .line 41
    .line 42
    :cond_1
    const-string v0, "HmacSha512"

    .line 43
    .line 44
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const/16 v0, 0x40

    .line 51
    .line 52
    if-gt p5, v0, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 56
    .line 57
    const-string p2, "tag size too big"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    :goto_0
    add-int/lit8 v0, p6, 0x0

    .line 64
    .line 65
    sub-int/2addr v0, p5

    .line 66
    sub-int/2addr v0, p3

    .line 67
    add-int/lit8 v0, v0, -0x7

    .line 68
    .line 69
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    if-lez v0, :cond_4

    .line 72
    .line 73
    array-length v0, p1

    .line 74
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lw5/a;->h:[B

    .line 79
    .line 80
    iput-object p2, p0, Lw5/a;->g:Ljava/lang/String;

    .line 81
    .line 82
    iput p3, p0, Lw5/a;->a:I

    .line 83
    .line 84
    iput-object p4, p0, Lw5/a;->b:Ljava/lang/String;

    .line 85
    .line 86
    iput p5, p0, Lw5/a;->c:I

    .line 87
    .line 88
    iput p6, p0, Lw5/a;->d:I

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lw5/a;->f:I

    .line 92
    .line 93
    sub-int/2addr p6, p5

    .line 94
    iput p6, p0, Lw5/a;->e:I

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 98
    .line 99
    const-string p2, "ciphertextSegmentSize too small"

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 106
    .line 107
    const-string p2, "tag size too small "

    .line 108
    .line 109
    invoke-static {p2, p5}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p4, "ikm too short, must be >= "

    .line 122
    .line 123
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public static i(Lw5/a;[BJZ)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x10

    .line 5
    .line 6
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long p1, v0, p2

    .line 21
    .line 22
    if-gtz p1, :cond_0

    .line 23
    .line 24
    const-wide v0, 0x100000000L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long p1, p2, v0

    .line 30
    .line 31
    if-gez p1, :cond_0

    .line 32
    .line 33
    long-to-int p1, p2

    .line 34
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    int-to-byte p1, p4

    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 51
    .line 52
    const-string p1, "Index out of range"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method


# virtual methods
.method public final c()I
    .locals 2

    invoke-virtual {p0}, Lw5/a;->e()I

    move-result v0

    iget v1, p0, Lw5/a;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lw5/a;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lw5/a;->a:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lw5/a;->e:I

    return v0
.end method

.method public final g()Lw5/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lw5/a$a;

    invoke-direct {v0, p0}, Lw5/a$a;-><init>(Lw5/a;)V

    return-object v0
.end method

.method public final h([B)Lw5/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lw5/a$b;

    invoke-direct {v0, p0, p1}, Lw5/a$b;-><init>(Lw5/a;[B)V

    return-object v0
.end method
