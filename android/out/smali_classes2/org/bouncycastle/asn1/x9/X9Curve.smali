.class public Lorg/bouncycastle/asn1/x9/X9Curve;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lorg/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x9/X9FieldID;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    .line 17
    sget-object v3, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 33
    .line 34
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    new-instance v8, Ljava/math/BigInteger;

    .line 39
    .line 40
    invoke-static {v1, v4}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 45
    .line 46
    .line 47
    new-instance v9, Ljava/math/BigInteger;

    .line 48
    .line 49
    invoke-static {v1, v5}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    .line 57
    .line 58
    move-object v6, v2

    .line 59
    move-object/from16 v10, p2

    .line 60
    .line 61
    move-object/from16 v11, p3

    .line 62
    .line 63
    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 69
    .line 70
    sget-object v6, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->characteristic_two_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    .line 72
    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 91
    .line 92
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    .line 102
    sget-object v7, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->tpBasis:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_1

    .line 109
    .line 110
    invoke-static {v2, v3}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    move v9, v2

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    sget-object v7, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ppBasis:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2, v4}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-static {v2, v5}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-static {v2, v3}, Landroidx/camera/core/impl/utils/f;->f(Lorg/bouncycastle/asn1/ASN1Sequence;I)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    move v11, v2

    .line 149
    move v9, v6

    .line 150
    move v10, v7

    .line 151
    :goto_0
    new-instance v12, Ljava/math/BigInteger;

    .line 152
    .line 153
    invoke-static {v1, v4}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {v12, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 158
    .line 159
    .line 160
    new-instance v13, Ljava/math/BigInteger;

    .line 161
    .line 162
    invoke-static {v1, v5}, Landroidx/appcompat/graphics/drawable/a;->k(Lorg/bouncycastle/asn1/ASN1Sequence;I)[B

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-direct {v13, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 170
    .line 171
    move-object v7, v2

    .line 172
    move-object/from16 v14, p2

    .line 173
    .line 174
    move-object/from16 v15, p3

    .line 175
    .line 176
    invoke-direct/range {v7 .. v15}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    .line 180
    .line 181
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    const/4 v4, 0x3

    .line 186
    if-ne v2, v4, :cond_2

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lorg/bouncycastle/asn1/DERBitString;

    .line 193
    .line 194
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput-object v1, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 199
    .line 200
    :cond_2
    return-void

    .line 201
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    const-string v2, "This type of EC basis is not implemented"

    .line 204
    .line 205
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v1

    .line 209
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    const-string v2, "This type of ECCurve is not implemented"

    .line 212
    .line 213
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x9/X9Curve;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->characteristic_two_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->characteristic_two_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
