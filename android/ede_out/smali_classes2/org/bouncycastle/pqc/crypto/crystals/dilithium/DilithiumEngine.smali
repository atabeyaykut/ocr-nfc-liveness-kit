.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CrhBytes:I = 0x40

.field public static final DilithiumD:I = 0xd

.field public static final DilithiumN:I = 0x100

.field public static final DilithiumPolyT0PackedBytes:I = 0x1a0

.field public static final DilithiumPolyT1PackedBytes:I = 0x140

.field public static final DilithiumQ:I = 0x7fe001

.field public static final DilithiumQinv:I = 0x3802001

.field public static final DilithiumRootOfUnity:I = 0x6d9

.field public static final RndBytes:I = 0x20

.field public static final SeedBytes:I = 0x20

.field public static final TrBytes:I = 0x40


# instance fields
.field private final CryptoBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final DilithiumBeta:I

.field private final DilithiumCTilde:I

.field private final DilithiumEta:I

.field private final DilithiumGamma1:I

.field private final DilithiumGamma2:I

.field private final DilithiumK:I

.field private final DilithiumL:I

.field private final DilithiumMode:I

.field private final DilithiumOmega:I

.field private final DilithiumPolyEtaPackedBytes:I

.field private final DilithiumPolyVecHPackedBytes:I

.field private final DilithiumPolyW1PackedBytes:I

.field private final DilithiumPolyZPackedBytes:I

.field private final DilithiumTau:I

.field private final PolyUniformGamma1NBlocks:I

.field private final random:Ljava/security/SecureRandom;

.field private final shake128Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;Z)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 5
    .line 6
    const/16 v1, 0x80

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake128Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 12
    .line 13
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 14
    .line 15
    const/16 v2, 0x100

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 21
    .line 22
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumMode:I

    .line 23
    .line 24
    const/16 v0, 0x20

    .line 25
    .line 26
    const/high16 v2, 0x20000

    .line 27
    .line 28
    const/high16 v3, 0x80000

    .line 29
    .line 30
    const/16 v4, 0x60

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x2

    .line 34
    if-eq p1, v6, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x3

    .line 37
    const v8, 0x3ff00

    .line 38
    .line 39
    .line 40
    const/4 v9, 0x5

    .line 41
    const/16 v10, 0x280

    .line 42
    .line 43
    if-eq p1, v7, :cond_1

    .line 44
    .line 45
    if-ne p1, v9, :cond_0

    .line 46
    .line 47
    const/16 p1, 0x8

    .line 48
    .line 49
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    .line 50
    .line 51
    const/4 p1, 0x7

    .line 52
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    .line 53
    .line 54
    iput v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    .line 55
    .line 56
    const/16 p1, 0x3c

    .line 57
    .line 58
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    .line 59
    .line 60
    const/16 p1, 0x78

    .line 61
    .line 62
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    .line 63
    .line 64
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    .line 65
    .line 66
    iput v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    .line 67
    .line 68
    const/16 p1, 0x4b

    .line 69
    .line 70
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    .line 71
    .line 72
    iput v10, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    .line 73
    .line 74
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    .line 75
    .line 76
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    .line 77
    .line 78
    const/16 p1, 0x40

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p3, "The mode "

    .line 84
    .line 85
    const-string v0, "is not supported by Crystals Dilithium!"

    .line 86
    .line 87
    invoke-static {p3, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p2

    .line 95
    :cond_1
    const/4 p1, 0x6

    .line 96
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    .line 97
    .line 98
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    .line 99
    .line 100
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    .line 101
    .line 102
    const/16 p1, 0x31

    .line 103
    .line 104
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    .line 105
    .line 106
    const/16 p1, 0xc4

    .line 107
    .line 108
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    .line 109
    .line 110
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    .line 111
    .line 112
    iput v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    .line 113
    .line 114
    const/16 p1, 0x37

    .line 115
    .line 116
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    .line 117
    .line 118
    iput v10, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    .line 119
    .line 120
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    .line 121
    .line 122
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    .line 123
    .line 124
    const/16 p1, 0x30

    .line 125
    .line 126
    :goto_0
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    .line 130
    .line 131
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    .line 132
    .line 133
    iput v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    .line 134
    .line 135
    const/16 p1, 0x27

    .line 136
    .line 137
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    .line 138
    .line 139
    const/16 p1, 0x4e

    .line 140
    .line 141
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    .line 142
    .line 143
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    .line 144
    .line 145
    const p1, 0x17400

    .line 146
    .line 147
    .line 148
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    .line 149
    .line 150
    const/16 p1, 0x50

    .line 151
    .line 152
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    .line 153
    .line 154
    const/16 p1, 0x240

    .line 155
    .line 156
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    .line 157
    .line 158
    const/16 p1, 0xc0

    .line 159
    .line 160
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    .line 161
    .line 162
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    .line 163
    .line 164
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    .line 165
    .line 166
    :goto_1
    if-eqz p3, :cond_3

    .line 167
    .line 168
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;

    .line 169
    .line 170
    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;-><init>()V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    new-instance p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;

    .line 175
    .line 176
    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;-><init>()V

    .line 177
    .line 178
    .line 179
    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    .line 180
    .line 181
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    .line 182
    .line 183
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    .line 184
    .line 185
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    .line 186
    .line 187
    add-int/2addr p1, p2

    .line 188
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyVecHPackedBytes:I

    .line 189
    .line 190
    mul-int/lit16 p3, p2, 0x140

    .line 191
    .line 192
    add-int/2addr p3, v0

    .line 193
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoPublicKeyBytes:I

    .line 194
    .line 195
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    .line 196
    .line 197
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    .line 198
    .line 199
    mul-int v1, p3, v0

    .line 200
    .line 201
    add-int/2addr v1, v4

    .line 202
    mul-int v0, v0, p2

    .line 203
    .line 204
    add-int/2addr v0, v1

    .line 205
    mul-int/lit16 p2, p2, 0x1a0

    .line 206
    .line 207
    add-int/2addr p2, v0

    .line 208
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoSecretKeyBytes:I

    .line 209
    .line 210
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    .line 211
    .line 212
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    .line 213
    .line 214
    invoke-static {p3, v0, p2, p1}, Landroidx/camera/core/impl/a;->d(IIII)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    .line 219
    .line 220
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    .line 221
    .line 222
    if-ne p1, v2, :cond_4

    .line 223
    .line 224
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    .line 225
    .line 226
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    .line 227
    .line 228
    add-int/lit16 p2, p1, 0x240

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_4
    if-ne p1, v3, :cond_5

    .line 232
    .line 233
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    .line 234
    .line 235
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    .line 236
    .line 237
    add-int/lit16 p2, p1, 0x280

    .line 238
    .line 239
    :goto_3
    add-int/lit8 p2, p2, -0x1

    .line 240
    .line 241
    div-int/2addr p2, p1

    .line 242
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->PolyUniformGamma1NBlocks:I

    .line 243
    .line 244
    return-void

    .line 245
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 246
    .line 247
    const-string p2, "Wrong Dilithium Gamma1!"

    .line 248
    .line 249
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1
.end method


# virtual methods
.method public GetSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    return-object v0
.end method

.method public generateKeyPair()[[B
    .locals 16

    move-object/from16 v7, p0

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/16 v4, 0x40

    new-array v5, v4, [B

    new-array v6, v0, [B

    new-array v8, v4, [B

    new-array v9, v0, [B

    new-instance v10, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v10, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v11, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v12, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v13, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v14, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    iget-object v15, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v15, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v15, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v1, v3, v4, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {v3, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x40

    invoke-static {v3, v0, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x60

    invoke-static {v3, v1, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v10, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v11, v8, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->uniformEta([BS)V

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    int-to-short v1, v1

    invoke-virtual {v12, v8, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->uniformEta([BS)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v1, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    invoke-virtual {v11, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    invoke-virtual {v10, v13, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->power2Round(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-static {v13, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B

    move-result-object v8

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v1, v6, v4, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, v8

    invoke-virtual {v0, v8, v4, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x40

    invoke-virtual {v0, v5, v4, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object v0, v6

    move-object v1, v5

    move-object v2, v9

    move-object v3, v14

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[[B

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [[B

    aget-object v2, v0, v9

    aput-object v2, v1, v9

    const/4 v2, 0x1

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    const/4 v0, 0x6

    aput-object v8, v1, v0

    return-object v1
.end method

.method public getCryptoBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    return v0
.end method

.method public getCryptoPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method public getCryptoSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoSecretKeyBytes:I

    return v0
.end method

.method public getDilithiumBeta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    return v0
.end method

.method public getDilithiumCTilde()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    return v0
.end method

.method public getDilithiumEta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    return v0
.end method

.method public getDilithiumGamma1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    return v0
.end method

.method public getDilithiumGamma2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    return v0
.end method

.method public getDilithiumK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    return v0
.end method

.method public getDilithiumL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    return v0
.end method

.method public getDilithiumMode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumMode:I

    return v0
.end method

.method public getDilithiumOmega()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    return v0
.end method

.method public getDilithiumPolyEtaPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    return v0
.end method

.method public getDilithiumPolyVecHPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyVecHPackedBytes:I

    return v0
.end method

.method public getDilithiumPolyW1PackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    return v0
.end method

.method public getDilithiumPolyZPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    return v0
.end method

.method public getDilithiumTau()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    return v0
.end method

.method public getPolyUniformGamma1NBlocks()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->PolyUniformGamma1NBlocks:I

    return v0
.end method

.method public getShake128Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake128Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-object v0
.end method

.method public getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-object v0
.end method

.method public sign([BI[B[B[B[B[B[B)[B
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signSignature([BI[B[B[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public signOpen([B[BI[B[B)Z
    .locals 7

    array-length v4, p1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signVerify([BI[BI[B[B)Z

    move-result p1

    return p1
.end method

.method public signSignature([BI[B[B[B[B[B[B)[B
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    add-int/2addr v0, v8

    new-array v9, v0, [B

    const/16 v10, 0x40

    new-array v11, v10, [B

    new-array v12, v10, [B

    new-instance v13, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v13, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v14, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v15, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v5, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v4, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v3, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v2, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    invoke-direct {v1, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v17, v1

    move-object v1, v13

    move-object/from16 v18, v2

    move-object v2, v5

    move-object/from16 v19, v3

    move-object/from16 v3, p6

    move-object/from16 v20, v4

    move-object/from16 v4, p7

    move-object/from16 p6, v5

    move-object/from16 v5, p8

    move-object/from16 p7, v6

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v1, 0x0

    move-object/from16 v2, p5

    invoke-virtual {v0, v2, v1, v10}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1, v8}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, v11, v1, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    const/16 v0, 0x20

    new-array v2, v0, [B

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    const/16 v3, 0x80

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-static {v2, v1, v4, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v1, v4, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v2, v4, v1, v3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v2, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v2, v12, v1, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    invoke-virtual/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    invoke-virtual/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-short v5, v5

    invoke-virtual {v14, v12, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->uniformGamma1([BS)V

    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    move-object/from16 v4, v20

    invoke-virtual {v3, v4, v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    move-object/from16 v6, v19

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->decompose(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->packW1()[B

    move-result-object v8

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    iget v10, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v0, v0, v10

    invoke-static {v8, v1, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v8, 0x40

    invoke-virtual {v0, v11, v1, v8}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v10, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    iget v8, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v10, v10, v8

    invoke-virtual {v0, v9, v1, v10}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v8, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-virtual {v0, v9, v1, v8}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    const/16 v0, 0x20

    invoke-static {v9, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object/from16 v10, v17

    invoke-virtual {v10, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->challenge([B)V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyNtt()V

    invoke-virtual {v15, v10, v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->invNttToMont()V

    invoke-virtual {v15, v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->addPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->reduce()V

    iget v8, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    sub-int/2addr v8, v0

    invoke-virtual {v15, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->checkNorm(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v17, p6

    move-object/from16 v8, v18

    goto :goto_1

    :cond_1
    move-object/from16 v0, p6

    move-object/from16 v8, v18

    invoke-virtual {v8, v10, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v6, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    move-object/from16 v17, v0

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    sub-int/2addr v1, v0

    invoke-virtual {v6, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->checkNorm(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p7

    invoke-virtual {v8, v10, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->checkNorm(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 p7, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v8, v6, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->makeHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)I

    move-result v1

    move-object/from16 p7, v0

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    if-le v1, v0, :cond_4

    :goto_1
    move-object/from16 v20, v4

    move v4, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v8

    move-object/from16 p6, v17

    const/16 v0, 0x20

    const/4 v1, 0x0

    move-object/from16 v17, v10

    const/16 v10, 0x40

    goto/16 :goto_0

    :cond_4
    invoke-static {v9, v15, v8, v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packSignature([BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public signVerify([BI[BI[B[B)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/16 v4, 0x40

    new-array v5, v4, [B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    new-array v6, v6, [B

    new-instance v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v8, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    const/4 v14, 0x0

    move/from16 v15, p2

    if-eq v15, v13, :cond_0

    return v14

    :cond_0
    invoke-static {v10, v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    move-result-object v10

    invoke-static {v9, v12, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackSignature(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Z

    move-result v13

    if-nez v13, :cond_1

    return v14

    :cond_1
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-static {v1, v14, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumBeta()I

    move-result v15

    sub-int/2addr v13, v15

    invoke-virtual {v9, v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->checkNorm(I)Z

    move-result v13

    if-eqz v13, :cond_2

    return v14

    :cond_2
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v15, v2

    invoke-virtual {v13, v2, v14, v15}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v15, v3

    invoke-virtual {v13, v3, v14, v15}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v13, p3

    move/from16 v15, p4

    invoke-virtual {v3, v13, v14, v15}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v3, v5, v14}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    const/16 v3, 0x20

    invoke-static {v1, v14, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->challenge([B)V

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    invoke-virtual {v8, v11, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyNtt()V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->shiftLeft()V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    invoke-virtual {v10, v7, v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v11, v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v11, v11, v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->useHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->packW1()[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x100

    invoke-direct {v3, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-virtual {v3, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v4, v4, v5

    invoke-virtual {v3, v2, v14, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-virtual {v3, v6, v14, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    if-ge v2, v3, :cond_4

    aget-byte v3, v1, v2

    aget-byte v4, v6, v2

    if-eq v3, v4, :cond_3

    return v14

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    return v1
.end method
