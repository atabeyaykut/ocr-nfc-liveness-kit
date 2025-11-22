.class public Lorg/bouncycastle/crypto/digests/SparkleDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;,
        Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
    }
.end annotation


# static fields
.field private static final RATE_BYTES:I = 0x10

.field private static final RATE_WORDS:I = 0x4


# instance fields
.field private final DIGEST_BYTES:I

.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private algorithmName:Ljava/lang/String;

.field private final m_buf:[B

.field private m_bufPos:I

.field private final state:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    sget-object v1, Lorg/bouncycastle/crypto/digests/SparkleDigest$1;->$SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "ESCH-384"

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x30

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid definition of SCHWAEMM instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "ESCH-256"

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x20

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    const/4 p1, 0x7

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    const/16 p1, 0xb

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    return-void
.end method

.method private static ELL(I)I
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private processBlock([BII)V
    .locals 7

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    xor-int p2, v0, v2

    invoke-static {p2}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result p2

    xor-int v3, v1, p1

    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    aput v0, v4, v5

    const/4 v0, 0x1

    aget v5, v4, v0

    xor-int/2addr v1, p2

    xor-int/2addr v1, v5

    aput v1, v4, v0

    const/4 v0, 0x2

    aget v1, v4, v0

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, v4, v0

    const/4 v0, 0x3

    aget v1, v4, v0

    xor-int/2addr p1, p2

    xor-int/2addr p1, v1

    aput p1, v4, v0

    const/4 p1, 0x4

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x5

    aget v0, v4, p1

    xor-int/2addr v0, p2

    aput v0, v4, p1

    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x7

    aget v0, v4, p1

    xor-int/2addr p2, v0

    aput p2, v4, p1

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    .line 3
    .line 4
    sub-int/2addr v0, v1

    .line 5
    if-gt p2, v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 15
    .line 16
    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    .line 17
    .line 18
    shr-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    add-int/lit8 v4, v4, -0x1

    .line 21
    .line 22
    aget v5, v3, v4

    .line 23
    .line 24
    const/high16 v6, 0x1000000

    .line 25
    .line 26
    xor-int/2addr v5, v6

    .line 27
    aput v5, v3, v4

    .line 28
    .line 29
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 30
    .line 31
    const/16 v4, -0x80

    .line 32
    .line 33
    aput-byte v4, v3, v0

    .line 34
    .line 35
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 40
    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 44
    .line 45
    aput-byte v2, v3, v0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 49
    .line 50
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    .line 51
    .line 52
    shr-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    add-int/lit8 v3, v3, -0x1

    .line 55
    .line 56
    aget v4, v0, v3

    .line 57
    .line 58
    const/high16 v5, 0x2000000

    .line 59
    .line 60
    xor-int/2addr v4, v5

    .line 61
    aput v4, v0, v3

    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 64
    .line 65
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    .line 66
    .line 67
    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 71
    .line 72
    const/4 v3, 0x4

    .line 73
    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    .line 77
    .line 78
    if-ne v0, v1, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 85
    .line 86
    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    .line 87
    .line 88
    invoke-static {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 92
    .line 93
    add-int/lit8 v1, p2, 0x10

    .line 94
    .line 95
    invoke-static {v0, v2, v3, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 103
    .line 104
    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    .line 105
    .line 106
    invoke-static {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 110
    .line 111
    add-int/lit8 p2, p2, 0x20

    .line 112
    .line 113
    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 122
    .line 123
    iget v5, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    .line 124
    .line 125
    invoke-static {v0, v4, v5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 129
    .line 130
    add-int/2addr p2, v1

    .line 131
    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->reset()V

    .line 135
    .line 136
    .line 137
    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    .line 138
    .line 139
    return p1

    .line 140
    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    .line 141
    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    .line 148
    .line 149
    const-string v1, " input buffer too short"

    .line 150
    .line 151
    invoke-static {p2, v0, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    sub-int/2addr v0, p3

    .line 3
    if-gt p2, v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ge p3, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 10
    .line 11
    rsub-int/lit8 v1, v0, 0x10

    .line 12
    .line 13
    if-gt p3, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 16
    .line 17
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 21
    .line 22
    add-int/2addr p1, p3

    .line 23
    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 30
    .line 31
    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 35
    .line 36
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    .line 37
    .line 38
    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    .line 39
    .line 40
    .line 41
    add-int/2addr v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_0
    sub-int v0, p3, v1

    .line 45
    .line 46
    const/16 v3, 0x10

    .line 47
    .line 48
    if-le v0, v3, :cond_3

    .line 49
    .line 50
    add-int v0, p2, v1

    .line 51
    .line 52
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    .line 53
    .line 54
    invoke-direct {p0, p1, v0, v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x10

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    add-int/2addr p2, v1

    .line 61
    iget-object p3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 62
    .line 63
    invoke-static {p1, p2, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    .line 77
    .line 78
    const-string v0, " input buffer too short"

    .line 79
    .line 80
    invoke-static {p2, p3, v0}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
