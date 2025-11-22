.class public Lorg/bouncycastle/asn1/util/ASN1Dump;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SAMPLE_SIZE:I = 0x20

.field private static final TAB:Ljava/lang/String; = "    "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Null;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    .line 11
    .line 12
    const-string p0, "NULL"

    .line 13
    .line 14
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    goto/16 :goto_8

    .line 18
    .line 19
    :cond_0
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "    "

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    instance-of v1, p2, Lorg/bouncycastle/asn1/BERSequence;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, "BER Sequence"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    instance-of v1, p2, Lorg/bouncycastle/asn1/DERSequence;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v1, "DER Sequence"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string v1, "Sequence"

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 52
    .line 53
    invoke-static {p0, v3}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :goto_1
    if-ge v2, v0, :cond_26

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {p0, p1, v1, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Set;

    .line 78
    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    instance-of v1, p2, Lorg/bouncycastle/asn1/BERSet;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    const-string v1, "BER Set"

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    instance-of v1, p2, Lorg/bouncycastle/asn1/DERSet;

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    const-string v1, "DER Set"

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const-string v1, "Set"

    .line 99
    .line 100
    :goto_2
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Set;

    .line 107
    .line 108
    invoke-static {p0, v3}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    :goto_3
    if-ge v2, v0, :cond_26

    .line 117
    .line 118
    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {p0, p1, v1, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 133
    .line 134
    if-eqz v1, :cond_a

    .line 135
    .line 136
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    instance-of v1, p2, Lorg/bouncycastle/asn1/BERTaggedObject;

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    const-string v1, "BER Tagged "

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_7
    instance-of v1, p2, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 147
    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    const-string v1, "DER Tagged "

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    const-string v1, "Tagged "

    .line 154
    .line 155
    :goto_4
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .line 157
    .line 158
    check-cast p2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 159
    .line 160
    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_9

    .line 172
    .line 173
    const-string v1, " IMPLICIT "

    .line 174
    .line 175
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    .line 177
    .line 178
    :cond_9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_e

    .line 208
    .line 209
    :cond_a
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 210
    .line 211
    const-string v2, "] "

    .line 212
    .line 213
    if-eqz v1, :cond_c

    .line 214
    .line 215
    move-object v1, p2

    .line 216
    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 217
    .line 218
    instance-of p2, p2, Lorg/bouncycastle/asn1/BEROctetString;

    .line 219
    .line 220
    if-eqz p2, :cond_b

    .line 221
    .line 222
    const-string p2, "BER Constructed Octet String["

    .line 223
    .line 224
    invoke-static {p0, p2}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    array-length v3, v3

    .line 233
    goto :goto_5

    .line 234
    :cond_b
    const-string p2, "DER Octet String["

    .line 235
    .line 236
    invoke-static {p0, p2}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    array-length v3, v3

    .line 245
    :goto_5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    .line 257
    .line 258
    if-eqz p1, :cond_13

    .line 259
    .line 260
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    goto/16 :goto_d

    .line 269
    .line 270
    :cond_c
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 271
    .line 272
    const-string v4, ")"

    .line 273
    .line 274
    if-eqz v1, :cond_d

    .line 275
    .line 276
    const-string p1, "ObjectIdentifier("

    .line 277
    .line 278
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    check-cast p2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 283
    .line 284
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    goto :goto_6

    .line 289
    :cond_d
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    .line 290
    .line 291
    if-eqz v1, :cond_e

    .line 292
    .line 293
    const-string p1, "RelativeOID("

    .line 294
    .line 295
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p2, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    .line 300
    .line 301
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    goto/16 :goto_a

    .line 309
    .line 310
    :cond_e
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 311
    .line 312
    if-eqz v1, :cond_f

    .line 313
    .line 314
    const-string p1, "Boolean("

    .line 315
    .line 316
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 321
    .line 322
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    goto/16 :goto_a

    .line 330
    .line 331
    :cond_f
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 332
    .line 333
    if-eqz v1, :cond_10

    .line 334
    .line 335
    const-string p1, "Integer("

    .line 336
    .line 337
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 342
    .line 343
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    goto/16 :goto_9

    .line 348
    .line 349
    :cond_10
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1BitString;

    .line 350
    .line 351
    if-eqz v1, :cond_14

    .line 352
    .line 353
    check-cast p2, Lorg/bouncycastle/asn1/ASN1BitString;

    .line 354
    .line 355
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    instance-of v4, p2, Lorg/bouncycastle/asn1/DERBitString;

    .line 364
    .line 365
    const-string v5, ", "

    .line 366
    .line 367
    if-eqz v4, :cond_11

    .line 368
    .line 369
    invoke-static {p0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    const-string v4, "DER Bit String["

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_11
    instance-of p2, p2, Lorg/bouncycastle/asn1/DLBitString;

    .line 377
    .line 378
    if-eqz p2, :cond_12

    .line 379
    .line 380
    invoke-static {p0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    const-string v4, "DL Bit String["

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_12
    invoke-static {p0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    move-result-object p2

    .line 391
    const-string v4, "BER Bit String["

    .line 392
    .line 393
    :goto_7
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    array-length v4, v1

    .line 397
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    .line 415
    .line 416
    if-eqz p1, :cond_13

    .line 417
    .line 418
    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    goto/16 :goto_d

    .line 423
    .line 424
    :cond_13
    :goto_8
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    .line 426
    .line 427
    goto/16 :goto_e

    .line 428
    .line 429
    :cond_14
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 430
    .line 431
    const-string v2, ") "

    .line 432
    .line 433
    if-eqz v1, :cond_15

    .line 434
    .line 435
    const-string p1, "IA5String("

    .line 436
    .line 437
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    check-cast p2, Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 442
    .line 443
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    goto/16 :goto_b

    .line 448
    .line 449
    :cond_15
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 450
    .line 451
    if-eqz v1, :cond_16

    .line 452
    .line 453
    const-string p1, "UTF8String("

    .line 454
    .line 455
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    check-cast p2, Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 460
    .line 461
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    goto/16 :goto_b

    .line 466
    .line 467
    :cond_16
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1NumericString;

    .line 468
    .line 469
    if-eqz v1, :cond_17

    .line 470
    .line 471
    const-string p1, "NumericString("

    .line 472
    .line 473
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    check-cast p2, Lorg/bouncycastle/asn1/ASN1NumericString;

    .line 478
    .line 479
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1NumericString;->getString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    goto/16 :goto_b

    .line 484
    .line 485
    :cond_17
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 486
    .line 487
    if-eqz v1, :cond_18

    .line 488
    .line 489
    const-string p1, "PrintableString("

    .line 490
    .line 491
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    move-result-object p0

    .line 495
    check-cast p2, Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 496
    .line 497
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    goto/16 :goto_b

    .line 502
    .line 503
    :cond_18
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1VisibleString;

    .line 504
    .line 505
    if-eqz v1, :cond_19

    .line 506
    .line 507
    const-string p1, "VisibleString("

    .line 508
    .line 509
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    check-cast p2, Lorg/bouncycastle/asn1/ASN1VisibleString;

    .line 514
    .line 515
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1VisibleString;->getString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    goto/16 :goto_b

    .line 520
    .line 521
    :cond_19
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 522
    .line 523
    if-eqz v1, :cond_1a

    .line 524
    .line 525
    const-string p1, "BMPString("

    .line 526
    .line 527
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    check-cast p2, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 532
    .line 533
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    goto/16 :goto_b

    .line 538
    .line 539
    :cond_1a
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1T61String;

    .line 540
    .line 541
    if-eqz v1, :cond_1b

    .line 542
    .line 543
    const-string p1, "T61String("

    .line 544
    .line 545
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    move-result-object p0

    .line 549
    check-cast p2, Lorg/bouncycastle/asn1/ASN1T61String;

    .line 550
    .line 551
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1T61String;->getString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    goto/16 :goto_b

    .line 556
    .line 557
    :cond_1b
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 558
    .line 559
    if-eqz v1, :cond_1c

    .line 560
    .line 561
    const-string p1, "GraphicString("

    .line 562
    .line 563
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    check-cast p2, Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 568
    .line 569
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1GraphicString;->getString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    goto :goto_b

    .line 574
    :cond_1c
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1VideotexString;

    .line 575
    .line 576
    if-eqz v1, :cond_1d

    .line 577
    .line 578
    const-string p1, "VideotexString("

    .line 579
    .line 580
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    move-result-object p0

    .line 584
    check-cast p2, Lorg/bouncycastle/asn1/ASN1VideotexString;

    .line 585
    .line 586
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1VideotexString;->getString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    goto :goto_b

    .line 591
    :cond_1d
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 592
    .line 593
    if-eqz v1, :cond_1e

    .line 594
    .line 595
    const-string p1, "UTCTime("

    .line 596
    .line 597
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    move-result-object p0

    .line 601
    check-cast p2, Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 602
    .line 603
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    goto :goto_b

    .line 608
    :cond_1e
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 609
    .line 610
    if-eqz v1, :cond_1f

    .line 611
    .line 612
    const-string p1, "GeneralizedTime("

    .line 613
    .line 614
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    check-cast p2, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 619
    .line 620
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    goto :goto_b

    .line 625
    :cond_1f
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 626
    .line 627
    if-eqz v1, :cond_20

    .line 628
    .line 629
    check-cast p2, Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 630
    .line 631
    const-string p1, "DER Enumerated("

    .line 632
    .line 633
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    move-result-object p0

    .line 637
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    :goto_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    :goto_a
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    goto/16 :goto_c

    .line 648
    .line 649
    :cond_20
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 650
    .line 651
    if-eqz v1, :cond_21

    .line 652
    .line 653
    check-cast p2, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 654
    .line 655
    const-string p1, "ObjectDescriptor("

    .line 656
    .line 657
    invoke-static {p0, p1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    move-result-object p0

    .line 661
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->getBaseGraphicString()Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1GraphicString;->getString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    :goto_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    goto/16 :goto_c

    .line 676
    .line 677
    :cond_21
    instance-of v1, p2, Lorg/bouncycastle/asn1/ASN1External;

    .line 678
    .line 679
    if-eqz v1, :cond_25

    .line 680
    .line 681
    check-cast p2, Lorg/bouncycastle/asn1/ASN1External;

    .line 682
    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    const-string v2, "External "

    .line 692
    .line 693
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    .line 705
    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object p0

    .line 721
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDirectReference()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    if-eqz v1, :cond_22

    .line 726
    .line 727
    const-string v1, "Direct Reference: "

    .line 728
    .line 729
    invoke-static {p0, v1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDirectReference()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    .line 753
    .line 754
    :cond_22
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getIndirectReference()Lorg/bouncycastle/asn1/ASN1Integer;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    if-eqz v1, :cond_23

    .line 759
    .line 760
    const-string v1, "Indirect Reference: "

    .line 761
    .line 762
    invoke-static {p0, v1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getIndirectReference()Lorg/bouncycastle/asn1/ASN1Integer;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 785
    .line 786
    .line 787
    :cond_23
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDataValueDescriptor()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    if-eqz v1, :cond_24

    .line 792
    .line 793
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getDataValueDescriptor()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    invoke-static {p0, p1, v1, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 798
    .line 799
    .line 800
    :cond_24
    const-string v1, "Encoding: "

    .line 801
    .line 802
    invoke-static {p0, v1}, Landroidx/browser/browseractions/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getEncoding()I

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    .line 822
    .line 823
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1External;->getExternalContent()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 824
    .line 825
    .line 826
    move-result-object p2

    .line 827
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    .line 829
    .line 830
    goto :goto_e

    .line 831
    :catchall_0
    move-exception p0

    .line 832
    throw p0

    .line 833
    :cond_25
    invoke-static {p0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    move-result-object p0

    .line 837
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object p1

    .line 841
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    :goto_c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object p0

    .line 851
    :goto_d
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    .line 853
    .line 854
    :cond_26
    :goto_e
    return-void
.end method

.method private static calculateAscString([BII)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-eq v1, v2, :cond_1

    aget-byte v2, p0, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-static {v1, p1, p0, v0}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown object type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    array-length v4, p1

    sub-int/2addr v4, v3

    const/16 v5, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-le v4, v5, :cond_0

    invoke-static {p1, v3, v5}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, v3, v5}, Lorg/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_0
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, v3, v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v4, p1

    sub-int/2addr v4, v3

    :goto_2
    if-eq v4, v5, :cond_1

    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, v3, v4}, Lorg/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x20

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
