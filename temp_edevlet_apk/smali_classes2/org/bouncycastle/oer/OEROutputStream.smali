.class public Lorg/bouncycastle/oer/OEROutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final bits:[I


# instance fields
.field protected debugOutput:Ljava/io/PrintWriter;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    iput-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static byteLength(J)I
    .locals 7

    const/16 v0, 0x8

    const/16 v1, 0x8

    :goto_0
    if-lez v1, :cond_0

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    shl-long/2addr p0, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private encodeLength(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method private encodeQuantity(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public debugPrint(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "debugPrint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OERInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-lez v2, :cond_3

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/oer/OEROptional;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/bouncycastle/oer/OEROptional;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lorg/bouncycastle/oer/OEROutputStream$1;->$SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType:[I

    .line 25
    .line 26
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    aget v0, v0, v1

    .line 35
    .line 36
    const-string v1, " "

    .line 37
    .line 38
    const/16 v2, 0xff

    .line 39
    .line 40
    const/4 v3, 0x6

    .line 41
    const/16 v4, 0x80

    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    const/4 v7, 0x0

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    :pswitch_0
    goto/16 :goto_22

    .line 51
    .line 52
    :pswitch_1
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p0, p2}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_10

    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 77
    .line 78
    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_10

    .line 82
    .line 83
    :pswitch_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    array-length v0, p1

    .line 99
    int-to-long v0, v0

    .line 100
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 101
    .line 102
    .line 103
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :pswitch_3
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    array-length v1, v0

    .line 129
    add-int/2addr v1, v6

    .line 130
    int-to-long v1, v1

    .line 131
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 137
    .line 138
    .line 139
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 142
    .line 143
    .line 144
    :goto_2
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    array-length v0, p1

    .line 167
    int-to-long v0, v0

    .line 168
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 172
    .line 173
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :pswitch_5
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getOctets()[B

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    array-length v2, p1

    .line 200
    if-ne v0, v2, :cond_5

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 204
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v3, "IA5String string length does not equal declared fixed length "

    .line 208
    .line 209
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    array-length p1, p1

    .line 213
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_7
    array-length v0, p1

    .line 242
    int-to-long v0, v0

    .line 243
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 244
    .line 245
    .line 246
    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 247
    .line 248
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 249
    .line 250
    .line 251
    :goto_5
    invoke-virtual {p2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :pswitch_6
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_8

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_8
    array-length v0, p1

    .line 273
    int-to-long v0, v0

    .line 274
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 275
    .line 276
    .line 277
    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :pswitch_7
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->intBytesForRange()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-lez v0, :cond_b

    .line 293
    .line 294
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    if-eq v0, v6, :cond_a

    .line 303
    .line 304
    const/4 v1, 0x2

    .line 305
    if-eq v0, v1, :cond_a

    .line 306
    .line 307
    const/4 v1, 0x4

    .line 308
    if-eq v0, v1, :cond_a

    .line 309
    .line 310
    const/16 v1, 0x8

    .line 311
    .line 312
    if-ne v0, v1, :cond_9

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 316
    .line 317
    const-string p2, "unknown uint length "

    .line 318
    .line 319
    invoke-static {p2, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p1

    .line 327
    :cond_a
    :goto_7
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 328
    .line 329
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :cond_b
    if-gez v0, :cond_10

    .line 335
    .line 336
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const/4 v1, -0x8

    .line 341
    if-eq v0, v1, :cond_f

    .line 342
    .line 343
    const/4 v1, -0x4

    .line 344
    if-eq v0, v1, :cond_e

    .line 345
    .line 346
    const/4 v1, -0x2

    .line 347
    if-eq v0, v1, :cond_d

    .line 348
    .line 349
    const/4 v1, -0x1

    .line 350
    if-ne v0, v1, :cond_c

    .line 351
    .line 352
    new-array v0, v6, [B

    .line 353
    .line 354
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->byteValueExact(Ljava/math/BigInteger;)B

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    aput-byte p1, v0, v7

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 362
    .line 363
    const-string p2, "unknown twos compliment length"

    .line 364
    .line 365
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw p1

    .line 369
    :cond_d
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->shortValueExact(Ljava/math/BigInteger;)S

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    goto :goto_8

    .line 378
    :cond_e
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    goto :goto_8

    .line 387
    :cond_f
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    .line 388
    .line 389
    .line 390
    move-result-wide v0

    .line 391
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    :goto_8
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :cond_10
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isLowerRangeZero()Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    if-eqz v0, :cond_11

    .line 411
    .line 412
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    goto :goto_9

    .line 417
    :cond_11
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    :goto_9
    array-length v0, p1

    .line 422
    int-to-long v0, v0

    .line 423
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 424
    .line 425
    .line 426
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 427
    .line 428
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_2

    .line 432
    .line 433
    :goto_a
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_10

    .line 437
    .line 438
    :pswitch_8
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 439
    .line 440
    if-eqz v0, :cond_12

    .line 441
    .line 442
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    goto :goto_b

    .line 451
    :cond_12
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    :goto_b
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_15

    .line 472
    .line 473
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    check-cast v3, Lorg/bouncycastle/oer/Element;

    .line 478
    .line 479
    invoke-static {v3, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-virtual {v3}, Lorg/bouncycastle/oer/Element;->getEnumValue()Ljava/math/BigInteger;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-eqz v3, :cond_13

    .line 492
    .line 493
    const-wide/16 v0, 0x7f

    .line 494
    .line 495
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-lez v0, :cond_14

    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    array-length v0, p1

    .line 510
    and-int/2addr v0, v2

    .line 511
    or-int/2addr v0, v4

    .line 512
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 513
    .line 514
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 515
    .line 516
    .line 517
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 518
    .line 519
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 520
    .line 521
    .line 522
    goto :goto_c

    .line 523
    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 524
    .line 525
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 526
    .line 527
    .line 528
    move-result p1

    .line 529
    and-int/lit8 p1, p1, 0x7f

    .line 530
    .line 531
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 532
    .line 533
    .line 534
    :goto_c
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 535
    .line 536
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    return-void

    .line 551
    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 552
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v2, "enum value "

    .line 556
    .line 557
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string p1, " no in defined child list"

    .line 578
    .line 579
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    throw p2

    .line 590
    :pswitch_9
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    new-instance v0, Lorg/bouncycastle/oer/BitBuilder;

    .line 595
    .line 596
    invoke-direct {v0}, Lorg/bouncycastle/oer/BitBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 600
    .line 601
    if-eqz v1, :cond_1c

    .line 602
    .line 603
    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 604
    .line 605
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    and-int/lit16 v5, v2, 0x80

    .line 610
    .line 611
    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    const/16 v6, 0x40

    .line 616
    .line 617
    and-int/2addr v2, v6

    .line 618
    invoke-virtual {v5, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    const/16 v7, 0x3f

    .line 634
    .line 635
    if-gt v2, v7, :cond_16

    .line 636
    .line 637
    int-to-long v7, v2

    .line 638
    invoke-virtual {v0, v7, v8, v3}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    .line 639
    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_16
    const-wide/16 v7, 0xff

    .line 643
    .line 644
    invoke-virtual {v0, v7, v8, v3}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/BitBuilder;->write7BitBytes(I)V

    .line 648
    .line 649
    .line 650
    :goto_d
    iget-object v3, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    .line 651
    .line 652
    if-eqz v3, :cond_1a

    .line 653
    .line 654
    if-eqz v1, :cond_1a

    .line 655
    .line 656
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    .line 657
    .line 658
    .line 659
    move-result p1

    .line 660
    if-eq p1, v6, :cond_19

    .line 661
    .line 662
    if-eq p1, v4, :cond_18

    .line 663
    .line 664
    const/16 v1, 0xc0

    .line 665
    .line 666
    if-eq p1, v1, :cond_17

    .line 667
    .line 668
    goto :goto_f

    .line 669
    :cond_17
    const-string p1, "PR"

    .line 670
    .line 671
    goto :goto_e

    .line 672
    :cond_18
    const-string p1, "CS"

    .line 673
    .line 674
    goto :goto_e

    .line 675
    :cond_19
    const-string p1, "AS"

    .line 676
    .line 677
    :goto_e
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    :cond_1a
    :goto_f
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 685
    .line 686
    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/BitBuilder;->writeAndClear(Ljava/io/OutputStream;)I

    .line 687
    .line 688
    .line 689
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    check-cast p1, Lorg/bouncycastle/oer/Element;

    .line 698
    .line 699
    invoke-static {p1, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getBlock()I

    .line 704
    .line 705
    .line 706
    move-result p2

    .line 707
    if-lez p2, :cond_1b

    .line 708
    .line 709
    invoke-virtual {p0, v5, p1}, Lorg/bouncycastle/oer/OEROutputStream;->writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 710
    .line 711
    .line 712
    goto :goto_10

    .line 713
    :cond_1b
    invoke-virtual {p0, v5, p1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 714
    .line 715
    .line 716
    :goto_10
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 717
    .line 718
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_22

    .line 722
    .line 723
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 724
    .line 725
    const-string p2, "only support tagged objects"

    .line 726
    .line 727
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    throw p1

    .line 731
    :pswitch_a
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 732
    .line 733
    if-eqz v0, :cond_1d

    .line 734
    .line 735
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 736
    .line 737
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    .line 742
    .line 743
    .line 744
    move-result p1

    .line 745
    goto :goto_11

    .line 746
    :cond_1d
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 747
    .line 748
    if-eqz v0, :cond_1e

    .line 749
    .line 750
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 751
    .line 752
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 757
    .line 758
    .line 759
    move-result p1

    .line 760
    :goto_11
    int-to-long v1, p1

    .line 761
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeQuantity(J)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getFirstChid()Lorg/bouncycastle/oer/Element;

    .line 765
    .line 766
    .line 767
    move-result-object p1

    .line 768
    invoke-static {p1, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    if-eqz v1, :cond_3b

    .line 777
    .line 778
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 783
    .line 784
    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 785
    .line 786
    .line 787
    goto :goto_12

    .line 788
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 789
    .line 790
    const-string p2, "encodable at for SEQ_OF is not a container"

    .line 791
    .line 792
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    throw p1

    .line 796
    :pswitch_b
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 797
    .line 798
    .line 799
    move-result-object p1

    .line 800
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->isExtensionsInDefinition()Z

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    const/4 v1, 0x7

    .line 805
    if-eqz v0, :cond_23

    .line 806
    .line 807
    const/4 v0, 0x0

    .line 808
    :goto_13
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 813
    .line 814
    .line 815
    move-result v2

    .line 816
    if-ge v0, v2, :cond_21

    .line 817
    .line 818
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    check-cast v2, Lorg/bouncycastle/oer/Element;

    .line 827
    .line 828
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 829
    .line 830
    .line 831
    move-result-object v4

    .line 832
    sget-object v8, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 833
    .line 834
    if-ne v4, v8, :cond_1f

    .line 835
    .line 836
    goto :goto_14

    .line 837
    :cond_1f
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getBlock()I

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    if-lez v2, :cond_20

    .line 842
    .line 843
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    if-ge v0, v2, :cond_20

    .line 848
    .line 849
    sget-object v2, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    .line 850
    .line 851
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    if-nez v2, :cond_20

    .line 860
    .line 861
    const/4 v0, 0x1

    .line 862
    goto :goto_15

    .line 863
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 864
    .line 865
    goto :goto_13

    .line 866
    :cond_21
    :goto_14
    const/4 v0, 0x0

    .line 867
    :goto_15
    if-eqz v0, :cond_22

    .line 868
    .line 869
    sget-object v2, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 870
    .line 871
    aget v2, v2, v1

    .line 872
    .line 873
    or-int/2addr v2, v7

    .line 874
    goto :goto_16

    .line 875
    :cond_22
    const/4 v2, 0x0

    .line 876
    goto :goto_16

    .line 877
    :cond_23
    const/4 v0, 0x0

    .line 878
    const/4 v2, 0x0

    .line 879
    const/4 v3, 0x7

    .line 880
    :goto_16
    const/4 v4, 0x0

    .line 881
    :goto_17
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 882
    .line 883
    .line 884
    move-result-object v8

    .line 885
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 886
    .line 887
    .line 888
    move-result v8

    .line 889
    if-ge v4, v8, :cond_2e

    .line 890
    .line 891
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 892
    .line 893
    .line 894
    move-result-object v8

    .line 895
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v8

    .line 899
    check-cast v8, Lorg/bouncycastle/oer/Element;

    .line 900
    .line 901
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 902
    .line 903
    .line 904
    move-result-object v9

    .line 905
    sget-object v10, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 906
    .line 907
    if-ne v9, v10, :cond_24

    .line 908
    .line 909
    goto/16 :goto_1a

    .line 910
    .line 911
    :cond_24
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getBlock()I

    .line 912
    .line 913
    .line 914
    move-result v9

    .line 915
    if-lez v9, :cond_25

    .line 916
    .line 917
    goto/16 :goto_1b

    .line 918
    .line 919
    :cond_25
    invoke-static {v8, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    .line 920
    .line 921
    .line 922
    move-result-object v8

    .line 923
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    .line 924
    .line 925
    .line 926
    move-result-object v9

    .line 927
    if-eqz v9, :cond_26

    .line 928
    .line 929
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    .line 930
    .line 931
    .line 932
    move-result-object v8

    .line 933
    new-instance v9, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;

    .line 934
    .line 935
    invoke-direct {v9, p1}, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 936
    .line 937
    .line 938
    invoke-interface {v8, v9}, Lorg/bouncycastle/oer/Switch;->result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;

    .line 939
    .line 940
    .line 941
    move-result-object v8

    .line 942
    invoke-static {v8, p2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    .line 943
    .line 944
    .line 945
    move-result-object v8

    .line 946
    :cond_26
    if-gez v3, :cond_27

    .line 947
    .line 948
    iget-object v3, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 949
    .line 950
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 951
    .line 952
    .line 953
    const/4 v2, 0x0

    .line 954
    const/4 v3, 0x7

    .line 955
    :cond_27
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 956
    .line 957
    .line 958
    move-result-object v9

    .line 959
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    .line 960
    .line 961
    .line 962
    move-result v10

    .line 963
    if-eqz v10, :cond_29

    .line 964
    .line 965
    instance-of v10, v9, Lorg/bouncycastle/oer/OEROptional;

    .line 966
    .line 967
    if-nez v10, :cond_28

    .line 968
    .line 969
    goto :goto_18

    .line 970
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 971
    .line 972
    const-string p2, "absent sequence element that is required by oer definition"

    .line 973
    .line 974
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    throw p1

    .line 978
    :cond_29
    :goto_18
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    .line 979
    .line 980
    .line 981
    move-result v10

    .line 982
    if-nez v10, :cond_2d

    .line 983
    .line 984
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 985
    .line 986
    .line 987
    move-result-object v10

    .line 988
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 989
    .line 990
    .line 991
    move-result-object v11

    .line 992
    if-eqz v11, :cond_2b

    .line 993
    .line 994
    instance-of v9, v10, Lorg/bouncycastle/oer/OEROptional;

    .line 995
    .line 996
    if-eqz v9, :cond_2a

    .line 997
    .line 998
    check-cast v10, Lorg/bouncycastle/oer/OEROptional;

    .line 999
    .line 1000
    invoke-virtual {v10}, Lorg/bouncycastle/oer/OEROptional;->isDefined()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v9

    .line 1004
    if-eqz v9, :cond_2c

    .line 1005
    .line 1006
    invoke-virtual {v10}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v9

    .line 1010
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v8

    .line 1014
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v8

    .line 1018
    if-nez v8, :cond_2c

    .line 1019
    .line 1020
    sget-object v8, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 1021
    .line 1022
    aget v8, v8, v3

    .line 1023
    .line 1024
    goto :goto_19

    .line 1025
    :cond_2a
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v8

    .line 1029
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v8

    .line 1033
    if-nez v8, :cond_2c

    .line 1034
    .line 1035
    sget-object v8, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 1036
    .line 1037
    aget v8, v8, v3

    .line 1038
    .line 1039
    goto :goto_19

    .line 1040
    :cond_2b
    sget-object v8, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    .line 1041
    .line 1042
    if-eq v9, v8, :cond_2c

    .line 1043
    .line 1044
    sget-object v8, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 1045
    .line 1046
    aget v8, v8, v3

    .line 1047
    .line 1048
    :goto_19
    or-int/2addr v2, v8

    .line 1049
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    .line 1050
    .line 1051
    :cond_2d
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    .line 1052
    .line 1053
    goto/16 :goto_17

    .line 1054
    .line 1055
    :cond_2e
    :goto_1b
    if-eq v3, v1, :cond_2f

    .line 1056
    .line 1057
    iget-object v3, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 1058
    .line 1059
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1060
    .line 1061
    .line 1062
    :cond_2f
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v2

    .line 1066
    const/4 v3, 0x0

    .line 1067
    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1068
    .line 1069
    .line 1070
    move-result v4

    .line 1071
    if-ge v3, v4, :cond_34

    .line 1072
    .line 1073
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v4

    .line 1077
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    check-cast v4, Lorg/bouncycastle/oer/Element;

    .line 1082
    .line 1083
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v8

    .line 1087
    sget-object v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 1088
    .line 1089
    if-ne v8, v9, :cond_30

    .line 1090
    .line 1091
    goto :goto_1d

    .line 1092
    :cond_30
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getBlock()I

    .line 1093
    .line 1094
    .line 1095
    move-result v8

    .line 1096
    if-lez v8, :cond_31

    .line 1097
    .line 1098
    goto :goto_1e

    .line 1099
    :cond_31
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v8

    .line 1103
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v9

    .line 1107
    if-eqz v9, :cond_32

    .line 1108
    .line 1109
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v4

    .line 1113
    new-instance v9, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;

    .line 1114
    .line 1115
    invoke-direct {v9, p1}, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-interface {v4, v9}, Lorg/bouncycastle/oer/Switch;->result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v4

    .line 1122
    :cond_32
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v9

    .line 1126
    if-eqz v9, :cond_33

    .line 1127
    .line 1128
    invoke-virtual {v4}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v9

    .line 1132
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v9

    .line 1136
    if-eqz v9, :cond_33

    .line 1137
    .line 1138
    goto :goto_1d

    .line 1139
    :cond_33
    invoke-virtual {p0, v8, v4}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 1140
    .line 1141
    .line 1142
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    .line 1143
    .line 1144
    goto :goto_1c

    .line 1145
    :cond_34
    :goto_1e
    if-eqz v0, :cond_3b

    .line 1146
    .line 1147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 1148
    .line 1149
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1150
    .line 1151
    .line 1152
    const/4 v4, 0x7

    .line 1153
    const/4 v8, 0x0

    .line 1154
    move v9, v3

    .line 1155
    :goto_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1156
    .line 1157
    .line 1158
    move-result v10

    .line 1159
    if-ge v9, v10, :cond_37

    .line 1160
    .line 1161
    if-gez v4, :cond_35

    .line 1162
    .line 1163
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1164
    .line 1165
    .line 1166
    const/4 v4, 0x7

    .line 1167
    const/4 v8, 0x0

    .line 1168
    :cond_35
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 1169
    .line 1170
    .line 1171
    move-result v10

    .line 1172
    if-ge v9, v10, :cond_36

    .line 1173
    .line 1174
    sget-object v10, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    .line 1175
    .line 1176
    invoke-virtual {p1, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v11

    .line 1180
    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v10

    .line 1184
    if-nez v10, :cond_36

    .line 1185
    .line 1186
    sget-object v10, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 1187
    .line 1188
    aget v10, v10, v4

    .line 1189
    .line 1190
    or-int/2addr v8, v10

    .line 1191
    :cond_36
    add-int/lit8 v4, v4, -0x1

    .line 1192
    .line 1193
    add-int/lit8 v9, v9, 0x1

    .line 1194
    .line 1195
    goto :goto_1f

    .line 1196
    :cond_37
    if-eq v4, v1, :cond_38

    .line 1197
    .line 1198
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1199
    .line 1200
    .line 1201
    :cond_38
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 1202
    .line 1203
    .line 1204
    move-result v8

    .line 1205
    add-int/2addr v8, v6

    .line 1206
    int-to-long v8, v8

    .line 1207
    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 1208
    .line 1209
    .line 1210
    if-ne v4, v1, :cond_39

    .line 1211
    .line 1212
    invoke-virtual {p0, v7}, Lorg/bouncycastle/oer/OEROutputStream;->write(I)V

    .line 1213
    .line 1214
    .line 1215
    goto :goto_20

    .line 1216
    :cond_39
    add-int/2addr v4, v6

    .line 1217
    invoke-virtual {p0, v4}, Lorg/bouncycastle/oer/OEROutputStream;->write(I)V

    .line 1218
    .line 1219
    .line 1220
    :goto_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1221
    .line 1222
    .line 1223
    move-result-object v0

    .line 1224
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1225
    .line 1226
    .line 1227
    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    if-ge v3, v0, :cond_3b

    .line 1232
    .line 1233
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 1234
    .line 1235
    .line 1236
    move-result v0

    .line 1237
    if-ge v3, v0, :cond_3a

    .line 1238
    .line 1239
    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    .line 1240
    .line 1241
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    if-nez v0, :cond_3a

    .line 1250
    .line 1251
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v1

    .line 1259
    check-cast v1, Lorg/bouncycastle/oer/Element;

    .line 1260
    .line 1261
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 1262
    .line 1263
    .line 1264
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    .line 1265
    .line 1266
    goto :goto_21

    .line 1267
    :cond_3b
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 1268
    .line 1269
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {p2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object p1

    .line 1276
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    goto :goto_22

    .line 1280
    :pswitch_c
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getElementSupplier()Lorg/bouncycastle/oer/ElementSupplier;

    .line 1281
    .line 1282
    .line 1283
    move-result-object p2

    .line 1284
    invoke-interface {p2}, Lorg/bouncycastle/oer/ElementSupplier;->build()Lorg/bouncycastle/oer/Element;

    .line 1285
    .line 1286
    .line 1287
    move-result-object p2

    .line 1288
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    .line 1290
    .line 1291
    goto :goto_22

    .line 1292
    :catchall_0
    move-exception p1

    .line 1293
    throw p1

    .line 1294
    :goto_22
    return-void

    .line 1295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/oer/OEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/oer/OEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
