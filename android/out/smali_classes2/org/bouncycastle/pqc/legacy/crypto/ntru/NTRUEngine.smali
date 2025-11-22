.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

.field private privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int v2, p3, v1

    new-array v2, v2, [B

    if-eqz p4, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B

    move-result-object p1

    :cond_0
    const/4 p4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    array-length v4, p1

    invoke-interface {v0, p1, p4, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v4

    mul-int v5, v3, v1

    invoke-static {v4, p4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p3, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_2
    array-length v5, v2

    if-eq v1, v5, :cond_6

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xf3

    if-lt v5, v6, :cond_2

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    rem-int/lit8 v7, v5, 0x3

    iget-object v8, p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v9, v7, -0x1

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_3

    return-object p3

    :cond_3
    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v5, v5, -0x1

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_5

    return-object p3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-lt v4, p2, :cond_7

    return-object p3

    :cond_7
    array-length v1, p1

    invoke-interface {v0, p1, p4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 3

    array-length v0, p1

    add-int/2addr v0, p3

    array-length p3, p4

    add-int/2addr v0, p3

    array-length p3, p5

    add-int/2addr v0, p3

    new-array p3, v0, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, p2

    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    array-length v2, p4

    invoke-static {p4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, p4

    add-int/2addr p1, p2

    array-length p2, p5

    invoke-static {p5, v1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B
    .locals 3

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private copyOf([BI)[B
    .locals 2

    new-array v0, p2, [B

    array-length v1, p1

    if-ge p2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 8
    .line 9
    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 10
    .line 11
    iget-object v0, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    .line 12
    .line 13
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 14
    .line 15
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 16
    .line 17
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 18
    .line 19
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    .line 20
    .line 21
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 22
    .line 23
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    .line 24
    .line 25
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 26
    .line 27
    iget-boolean v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 28
    .line 29
    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 30
    .line 31
    const/16 v0, 0xff

    .line 32
    .line 33
    if-gt v5, v0, :cond_6

    .line 34
    .line 35
    div-int/lit8 v4, v4, 0x8

    .line 36
    .line 37
    move-object/from16 v0, p1

    .line 38
    .line 39
    invoke-static {v0, v3, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, -0x1

    .line 48
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lt v2, v9, :cond_5

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    .line 56
    .line 57
    .line 58
    move-result v14

    .line 59
    if-lt v14, v9, :cond_4

    .line 60
    .line 61
    const/4 v14, 0x1

    .line 62
    invoke-virtual {v1, v14}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    if-lt v15, v9, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v9, v0

    .line 73
    check-cast v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 74
    .line 75
    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 86
    .line 87
    const/4 v15, 0x4

    .line 88
    invoke-virtual {v0, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v6, v0, v3, v11, v12}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-array v11, v4, [B

    .line 110
    .line 111
    invoke-static {v0, v2, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    aget-byte v1, v0, v4

    .line 115
    .line 116
    and-int/lit16 v3, v1, 0xff

    .line 117
    .line 118
    if-gt v3, v5, :cond_2

    .line 119
    .line 120
    new-array v12, v3, [B

    .line 121
    .line 122
    add-int/2addr v4, v14

    .line 123
    invoke-static {v0, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    .line 125
    .line 126
    array-length v1, v0

    .line 127
    add-int/2addr v4, v3

    .line 128
    sub-int/2addr v1, v4

    .line 129
    new-array v5, v1, [B

    .line 130
    .line 131
    invoke-static {v0, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    new-array v0, v1, [B

    .line 135
    .line 136
    invoke-static {v5, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    .line 142
    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    div-int/lit8 v10, v10, 0x8

    .line 147
    .line 148
    invoke-direct {v6, v0, v10}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    move-object/from16 v0, p0

    .line 153
    .line 154
    move-object v1, v13

    .line 155
    move-object v2, v12

    .line 156
    move-object v4, v11

    .line 157
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {v6, v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    .line 178
    return-object v12

    .line 179
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 180
    .line 181
    const-string v1, "Invalid message encoding"

    .line 182
    .line 183
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 188
    .line 189
    const-string v1, "The message is not followed by zeroes"

    .line 190
    .line 191
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 196
    .line 197
    const-string v1, "Message too long: "

    .line 198
    .line 199
    const-string v2, ">"

    .line 200
    .line 201
    invoke-static {v1, v3, v2, v5}, Landroidx/constraintlayout/core/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 210
    .line 211
    const-string v1, "Less than dm0 coefficients equal 1"

    .line 212
    .line 213
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 218
    .line 219
    const-string v1, "Less than dm0 coefficients equal 0"

    .line 220
    .line 221
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    .line 226
    .line 227
    const-string v1, "Less than dm0 coefficients equal -1"

    .line 228
    .line 229
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_6
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    .line 234
    .line 235
    const-string v1, "maxMsgLenBytes values bigger than 255 are not supported"

    .line 236
    .line 237
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0
.end method

.method private encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 8
    .line 9
    iget-object v0, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    .line 10
    .line 11
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 12
    .line 13
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 14
    .line 15
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    .line 16
    .line 17
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 18
    .line 19
    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    .line 20
    .line 21
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 22
    .line 23
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    .line 24
    .line 25
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 26
    .line 27
    iget-boolean v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 28
    .line 29
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 30
    .line 31
    array-length v2, v7

    .line 32
    const/16 v0, 0xff

    .line 33
    .line 34
    if-gt v11, v0, :cond_4

    .line 35
    .line 36
    if-gt v2, v11, :cond_3

    .line 37
    .line 38
    :goto_0
    div-int/lit8 v0, v12, 0x8

    .line 39
    .line 40
    new-array v1, v0, [B

    .line 41
    .line 42
    move/from16 p2, v4

    .line 43
    .line 44
    iget-object v4, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v11, 0x1

    .line 50
    .line 51
    sub-int/2addr v4, v2

    .line 52
    move/from16 v16, v5

    .line 53
    .line 54
    new-array v5, v4, [B

    .line 55
    .line 56
    move/from16 v17, v12

    .line 57
    .line 58
    div-int/lit8 v12, v13, 0x8

    .line 59
    .line 60
    new-array v12, v12, [B

    .line 61
    .line 62
    move/from16 v18, v13

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    invoke-static {v1, v13, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    int-to-byte v13, v2

    .line 69
    aput-byte v13, v12, v0

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    array-length v13, v7

    .line 74
    move-object/from16 v19, v1

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-static {v7, v1, v12, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    array-length v13, v7

    .line 81
    add-int/2addr v0, v13

    .line 82
    invoke-static {v5, v1, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .line 84
    .line 85
    invoke-static {v12, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    invoke-virtual {v8, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    div-int/lit8 v1, v15, 0x8

    .line 94
    .line 95
    invoke-direct {v6, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move-object/from16 v0, p0

    .line 100
    .line 101
    move-object/from16 v4, v19

    .line 102
    .line 103
    move-object v1, v3

    .line 104
    move/from16 v19, v2

    .line 105
    .line 106
    move-object/from16 v2, p1

    .line 107
    .line 108
    move-object/from16 v20, v3

    .line 109
    .line 110
    move/from16 v3, v19

    .line 111
    .line 112
    move/from16 v7, p2

    .line 113
    .line 114
    move/from16 p2, v15

    .line 115
    .line 116
    move/from16 v15, v16

    .line 117
    .line 118
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v6, v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0, v8, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 135
    .line 136
    const/4 v2, 0x4

    .line 137
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v6, v1, v9, v15, v7}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 152
    .line 153
    .line 154
    const/4 v1, -0x1

    .line 155
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-ge v1, v14, :cond_0

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 163
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-ge v1, v14, :cond_1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_1
    const/4 v1, 0x1

    .line 171
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-ge v1, v14, :cond_2

    .line 176
    .line 177
    :goto_1
    move v4, v7

    .line 178
    move v5, v15

    .line 179
    move/from16 v12, v17

    .line 180
    .line 181
    move/from16 v13, v18

    .line 182
    .line 183
    move/from16 v2, v19

    .line 184
    .line 185
    move-object/from16 v3, v20

    .line 186
    .line 187
    move-object/from16 v7, p1

    .line 188
    .line 189
    move/from16 v15, p2

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_2
    invoke-virtual {v0, v13, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0

    .line 204
    :cond_3
    move/from16 v19, v2

    .line 205
    .line 206
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    .line 207
    .line 208
    const-string v1, "Message too long: "

    .line 209
    .line 210
    const-string v2, ">"

    .line 211
    .line 212
    move/from16 v3, v19

    .line 213
    .line 214
    invoke-static {v1, v3, v2, v11}, Landroidx/constraintlayout/core/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 223
    .line 224
    const-string v1, "llen values bigger than 1 are not supported"

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0
.end method

.method private generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    new-array v0, v0, [I

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v3

    aget v4, v0, v3

    if-nez v4, :cond_0

    aput v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .locals 3

    new-instance p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;-><init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance p2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {p2, v0, p1, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object p2

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    iget-boolean p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object p2

    if-eqz p1, :cond_1

    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object p1
.end method

.method private log2(I)I
    .locals 1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    const/16 p1, 0xb

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "log2 not fully implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte p2, p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method public decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/4 v2, 0x3

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p1, p3, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    return-object p2
.end method

.method public encrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p3, p3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    return-object p2
.end method

.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->log2(I)I

    move-result v0

    mul-int v1, v1, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    :goto_1
    return-void
.end method

.method public processBlock([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object p1

    return-object p1
.end method
