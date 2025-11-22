.class public Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert([B)[S
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method

.method public static createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_25

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    .line 28
    .line 29
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->qTeslaLookupSecurityCategory(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;-><init>(I[B)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_0
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincs256LookupTreeAlgName(Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;-><init>([BLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_1
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->convert([B)[S

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;-><init>([S)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_2
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const/4 v3, 0x1

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x4

    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v0, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-ne v2, v3, :cond_4

    .line 141
    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    array-length v2, v0

    .line 149
    invoke-static {v0, v5, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    array-length v2, v1

    .line 154
    invoke-static {v1, v5, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance([B[B)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :cond_3
    array-length v1, v0

    .line 164
    invoke-static {v0, v5, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0

    .line 173
    :cond_4
    if-eqz v1, :cond_5

    .line 174
    .line 175
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    array-length v2, v0

    .line 180
    invoke-static {v0, v5, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getInstance([B[B)Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0

    .line 189
    :cond_5
    array-length v1, v0

    .line 190
    invoke-static {v0, v5, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0

    .line 199
    :cond_6
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_23

    .line 206
    .line 207
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_interop:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_7

    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_7
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_8

    .line 224
    .line 225
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->picnicParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    .line 242
    .line 243
    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;[B)V

    .line 244
    .line 245
    .line 246
    return-object v2

    .line 247
    :cond_8
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_mceliece:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_9

    .line 254
    .line 255
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mcElieceParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    new-instance v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    .line 268
    .line 269
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getDelta()[B

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getC()[B

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getG()[B

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getAlpha()[B

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->getS()[B

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    move-object v2, v1

    .line 290
    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B[B[B[B[B)V

    .line 291
    .line 292
    .line 293
    return-object v1

    .line 294
    :cond_9
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_frodo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_a

    .line 301
    .line 302
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->frodoParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    new-instance v2, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    .line 319
    .line 320
    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;[B)V

    .line 321
    .line 322
    .line 323
    return-object v2

    .line 324
    :cond_a
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_saber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 325
    .line 326
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_b

    .line 331
    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->saberParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    new-instance v2, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    .line 349
    .line 350
    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;[B)V

    .line 351
    .line 352
    .line 353
    return-object v2

    .line 354
    :cond_b
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_ntru:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-eqz v2, :cond_c

    .line 361
    .line 362
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    .line 379
    .line 380
    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;[B)V

    .line 381
    .line 382
    .line 383
    return-object v2

    .line 384
    :cond_c
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_kyber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-eqz v2, :cond_d

    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->kyberParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    .line 405
    .line 406
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V

    .line 411
    .line 412
    .line 413
    return-object v2

    .line 414
    :cond_d
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_ntrulprime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    const/4 v6, 0x3

    .line 421
    const/4 v7, 0x2

    .line 422
    if-eqz v2, :cond_e

    .line 423
    .line 424
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntrulprimeParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    .line 437
    .line 438
    invoke-static {v0, v4}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 439
    .line 440
    .line 441
    move-result-object v10

    .line 442
    invoke-static {v0, v3}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 443
    .line 444
    .line 445
    move-result-object v11

    .line 446
    invoke-static {v0, v7}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 447
    .line 448
    .line 449
    move-result-object v12

    .line 450
    invoke-static {v0, v6}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 451
    .line 452
    .line 453
    move-result-object v13

    .line 454
    move-object v8, v1

    .line 455
    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;[B[B[B[B)V

    .line 456
    .line 457
    .line 458
    return-object v1

    .line 459
    :cond_e
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_sntruprime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 460
    .line 461
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-eqz v2, :cond_f

    .line 466
    .line 467
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sntruprimeParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    .line 476
    .line 477
    .line 478
    move-result-object v9

    .line 479
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    .line 480
    .line 481
    invoke-static {v0, v4}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    invoke-static {v0, v3}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    invoke-static {v0, v7}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 490
    .line 491
    .line 492
    move-result-object v12

    .line 493
    invoke-static {v0, v6}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 494
    .line 495
    .line 496
    move-result-object v13

    .line 497
    invoke-static {v0, v5}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 498
    .line 499
    .line 500
    move-result-object v14

    .line 501
    move-object v8, v1

    .line 502
    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B[B[B[B[B)V

    .line 503
    .line 504
    .line 505
    return-object v1

    .line 506
    :cond_f
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 507
    .line 508
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-nez v2, :cond_1d

    .line 513
    .line 514
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 515
    .line 516
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-nez v2, :cond_1d

    .line 521
    .line 522
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 523
    .line 524
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-eqz v2, :cond_10

    .line 529
    .line 530
    goto/16 :goto_1

    .line 531
    .line 532
    :cond_10
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 533
    .line 534
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-nez v2, :cond_1c

    .line 539
    .line 540
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 541
    .line 542
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-eqz v2, :cond_11

    .line 547
    .line 548
    goto/16 :goto_0

    .line 549
    .line 550
    :cond_11
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_bike:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 551
    .line 552
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_12

    .line 557
    .line 558
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->bikeParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    invoke-static {v0, v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    mul-int/lit8 v4, v4, 0x2

    .line 591
    .line 592
    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    .line 597
    .line 598
    .line 599
    move-result v4

    .line 600
    mul-int/lit8 v4, v4, 0x2

    .line 601
    .line 602
    array-length v5, v0

    .line 603
    invoke-static {v0, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    new-instance v4, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    .line 608
    .line 609
    invoke-direct {v4, v1, v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B[B[B)V

    .line 610
    .line 611
    .line 612
    return-object v4

    .line 613
    :cond_12
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_hqc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 614
    .line 615
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    if-eqz v2, :cond_13

    .line 620
    .line 621
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->hqcParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    .line 638
    .line 639
    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    .line 640
    .line 641
    .line 642
    return-object v2

    .line 643
    :cond_13
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    if-eqz v2, :cond_14

    .line 650
    .line 651
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->rainbowParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    .line 668
    .line 669
    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V

    .line 670
    .line 671
    .line 672
    return-object v2

    .line 673
    :cond_14
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 674
    .line 675
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    const-string v3, "ClassNotFoundException processing BDS state: "

    .line 680
    .line 681
    if-eqz v2, :cond_17

    .line 682
    .line 683
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getTreeDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    invoke-static {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    :try_start_0
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 708
    .line 709
    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    .line 710
    .line 711
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getHeight()I

    .line 712
    .line 713
    .line 714
    move-result v0

    .line 715
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    invoke-direct {v5, v0, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    .line 720
    .line 721
    .line 722
    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getIndex()I

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getSecretKeySeed()[B

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getSecretKeyPRF()[B

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getPublicSeed()[B

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getRoot()[B

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getVersion()I

    .line 766
    .line 767
    .line 768
    move-result v4

    .line 769
    if-eqz v4, :cond_15

    .line 770
    .line 771
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getMaxIndex()I

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withMaxIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 776
    .line 777
    .line 778
    :cond_15
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getBdsState()[B

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    if-eqz v4, :cond_16

    .line 783
    .line 784
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->getBdsState()[B

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    .line 789
    .line 790
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    .line 795
    .line 796
    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->withWOTSDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .line 801
    .line 802
    .line 803
    :cond_16
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .line 804
    .line 805
    .line 806
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    return-object v0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    new-instance v1, Ljava/io/IOException;

    .line 810
    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    throw v1

    .line 831
    :cond_17
    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 832
    .line 833
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    if-eqz v2, :cond_1a

    .line 838
    .line 839
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getTreeDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    invoke-static {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 864
    .line 865
    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 866
    .line 867
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getHeight()I

    .line 868
    .line 869
    .line 870
    move-result v6

    .line 871
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getLayers()I

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    .line 876
    .line 877
    .line 878
    move-result-object v7

    .line 879
    invoke-direct {v5, v6, v0, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    .line 880
    .line 881
    .line 882
    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getIndex()J

    .line 886
    .line 887
    .line 888
    move-result-wide v5

    .line 889
    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withIndex(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getSecretKeySeed()[B

    .line 894
    .line 895
    .line 896
    move-result-object v4

    .line 897
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getSecretKeyPRF()[B

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getPublicSeed()[B

    .line 910
    .line 911
    .line 912
    move-result-object v4

    .line 913
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getRoot()[B

    .line 918
    .line 919
    .line 920
    move-result-object v4

    .line 921
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getVersion()I

    .line 926
    .line 927
    .line 928
    move-result v4

    .line 929
    if-eqz v4, :cond_18

    .line 930
    .line 931
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getMaxIndex()J

    .line 932
    .line 933
    .line 934
    move-result-wide v4

    .line 935
    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withMaxIndex(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 936
    .line 937
    .line 938
    :cond_18
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getBdsState()[B

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    if-eqz v4, :cond_19

    .line 943
    .line 944
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->getBdsState()[B

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    .line 949
    .line 950
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    .line 955
    .line 956
    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->withWOTSDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .line 961
    .line 962
    .line 963
    :cond_19
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 964
    .line 965
    .line 966
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 967
    return-object v0

    .line 968
    :catch_1
    move-exception v0

    .line 969
    new-instance v1, Ljava/io/IOException;

    .line 970
    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    .line 972
    .line 973
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    throw v1

    .line 991
    :cond_1a
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 992
    .line 993
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    if-eqz v0, :cond_1b

    .line 998
    .line 999
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    new-instance v8, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getN()I

    .line 1010
    .line 1011
    .line 1012
    move-result v2

    .line 1013
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getK()I

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v4

    .line 1021
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v5

    .line 1025
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getP()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v6

    .line 1029
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v7

    .line 1041
    move-object v1, v8

    .line 1042
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    return-object v8

    .line 1046
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1047
    .line 1048
    const-string v1, "algorithm identifier in private key not recognised"

    .line 1049
    .line 1050
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    throw v0

    .line 1054
    :cond_1c
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->falconParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v3

    .line 1066
    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    .line 1067
    .line 1068
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getf()[B

    .line 1069
    .line 1070
    .line 1071
    move-result-object v4

    .line 1072
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getG()[B

    .line 1073
    .line 1074
    .line 1075
    move-result-object v5

    .line 1076
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getF()[B

    .line 1077
    .line 1078
    .line 1079
    move-result-object v6

    .line 1080
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->getPublicKey()Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;->getH()[B

    .line 1085
    .line 1086
    .line 1087
    move-result-object v7

    .line 1088
    move-object v2, v1

    .line 1089
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    .line 1090
    .line 1091
    .line 1092
    return-object v1

    .line 1093
    :cond_1d
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->dilithiumParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v9

    .line 1101
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1102
    .line 1103
    if-eqz v1, :cond_20

    .line 1104
    .line 1105
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-static {v0, v4}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-nez v1, :cond_1f

    .line 1114
    .line 1115
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    const/4 v2, 0x6

    .line 1120
    const/4 v4, 0x5

    .line 1121
    if-eqz v1, :cond_1e

    .line 1122
    .line 1123
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-static {v9, v1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    new-instance v17, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    .line 1132
    .line 1133
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v3

    .line 1137
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1142
    .line 1143
    .line 1144
    move-result-object v10

    .line 1145
    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v3

    .line 1149
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v3

    .line 1153
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1154
    .line 1155
    .line 1156
    move-result-object v11

    .line 1157
    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v3

    .line 1161
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v3

    .line 1165
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1166
    .line 1167
    .line 1168
    move-result-object v12

    .line 1169
    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v3

    .line 1173
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v3

    .line 1177
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1178
    .line 1179
    .line 1180
    move-result-object v13

    .line 1181
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v3

    .line 1189
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1190
    .line 1191
    .line 1192
    move-result-object v14

    .line 1193
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1202
    .line 1203
    .line 1204
    move-result-object v15

    .line 1205
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->getT1()[B

    .line 1206
    .line 1207
    .line 1208
    move-result-object v16

    .line 1209
    move-object/from16 v8, v17

    .line 1210
    .line 1211
    invoke-direct/range {v8 .. v16}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    .line 1212
    .line 1213
    .line 1214
    return-object v17

    .line 1215
    :cond_1e
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    .line 1216
    .line 1217
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3

    .line 1221
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v3

    .line 1225
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1226
    .line 1227
    .line 1228
    move-result-object v10

    .line 1229
    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3

    .line 1237
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1238
    .line 1239
    .line 1240
    move-result-object v11

    .line 1241
    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v3

    .line 1245
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v3

    .line 1249
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1250
    .line 1251
    .line 1252
    move-result-object v12

    .line 1253
    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v3

    .line 1257
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1262
    .line 1263
    .line 1264
    move-result-object v13

    .line 1265
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v3

    .line 1269
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v3

    .line 1273
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1274
    .line 1275
    .line 1276
    move-result-object v14

    .line 1277
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 1286
    .line 1287
    .line 1288
    move-result-object v15

    .line 1289
    const/16 v16, 0x0

    .line 1290
    .line 1291
    move-object v8, v1

    .line 1292
    invoke-direct/range {v8 .. v16}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    .line 1293
    .line 1294
    .line 1295
    return-object v1

    .line 1296
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    .line 1297
    .line 1298
    const-string v2, "unknown private key version: "

    .line 1299
    .line 1300
    invoke-static {v2, v1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v1

    .line 1304
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    throw v0

    .line 1308
    :cond_20
    instance-of v1, v0, Lorg/bouncycastle/asn1/DEROctetString;

    .line 1309
    .line 1310
    if-eqz v1, :cond_22

    .line 1311
    .line 1312
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    if-eqz v1, :cond_21

    .line 1325
    .line 1326
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    invoke-static {v9, v1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v1

    .line 1334
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    .line 1335
    .line 1336
    invoke-direct {v2, v9, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    .line 1337
    .line 1338
    .line 1339
    return-object v2

    .line 1340
    :cond_21
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    .line 1341
    .line 1342
    const/4 v2, 0x0

    .line 1343
    invoke-direct {v1, v9, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    .line 1344
    .line 1345
    .line 1346
    return-object v1

    .line 1347
    :cond_22
    new-instance v0, Ljava/io/IOException;

    .line 1348
    .line 1349
    const-string v1, "not supported"

    .line 1350
    .line 1351
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    throw v0

    .line 1355
    :cond_23
    :goto_2
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincsPlusParamsLookup(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v3

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1364
    .line 1365
    if-eqz v1, :cond_24

    .line 1366
    .line 1367
    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getPublicKey()Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v1

    .line 1375
    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    .line 1376
    .line 1377
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getSkseed()[B

    .line 1378
    .line 1379
    .line 1380
    move-result-object v4

    .line 1381
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getSkprf()[B

    .line 1382
    .line 1383
    .line 1384
    move-result-object v5

    .line 1385
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkseed()[B

    .line 1386
    .line 1387
    .line 1388
    move-result-object v6

    .line 1389
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->getPkroot()[B

    .line 1390
    .line 1391
    .line 1392
    move-result-object v7

    .line 1393
    move-object v2, v8

    .line 1394
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B[B[B[B)V

    .line 1395
    .line 1396
    .line 1397
    return-object v8

    .line 1398
    :cond_24
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    .line 1399
    .line 1400
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B)V

    .line 1409
    .line 1410
    .line 1411
    return-object v1

    .line 1412
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1413
    .line 1414
    const-string v1, "keyInfo array null"

    .line 1415
    .line 1416
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    throw v0
.end method

.method public static createKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
