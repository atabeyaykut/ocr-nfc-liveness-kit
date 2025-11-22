.class public Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    sub-int/2addr v0, p3

    .line 3
    if-lt v0, p2, :cond_4

    .line 4
    .line 5
    int-to-long v0, p3

    .line 6
    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 7
    .line 8
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-wide v3, 0x1ffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v5, v0, v3

    .line 18
    .line 19
    if-gtz v5, :cond_3

    .line 20
    .line 21
    int-to-long v3, v2

    .line 22
    add-long v5, v0, v3

    .line 23
    .line 24
    const-wide/16 v7, 0x1

    .line 25
    .line 26
    sub-long/2addr v5, v7

    .line 27
    div-long/2addr v5, v3

    .line 28
    long-to-int v3, v5

    .line 29
    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 30
    .line 31
    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    new-array v4, v4, [B

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x1

    .line 40
    :goto_0
    if-ge v6, v3, :cond_2

    .line 41
    .line 42
    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 43
    .line 44
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    .line 45
    .line 46
    array-length v10, v9

    .line 47
    invoke-interface {v8, v9, v5, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 51
    .line 52
    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 56
    .line 57
    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    .line 62
    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 63
    .line 64
    .line 65
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    .line 66
    .line 67
    invoke-static {v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 75
    .line 76
    .line 77
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    .line 78
    .line 79
    invoke-direct {v10, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    .line 84
    .line 85
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 86
    .line 87
    if-eqz v9, :cond_0

    .line 88
    .line 89
    new-instance v9, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 90
    .line 91
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    .line 92
    .line 93
    iget-object v11, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 94
    .line 95
    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 96
    .line 97
    .line 98
    const/4 v11, 0x1

    .line 99
    invoke-direct {v9, v11, v5, v10}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_0
    const/4 v11, 0x1

    .line 107
    :goto_1
    new-instance v5, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 108
    .line 109
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    .line 110
    .line 111
    iget v10, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    .line 112
    .line 113
    invoke-static {v10}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 118
    .line 119
    .line 120
    const/4 v10, 0x2

    .line 121
    invoke-direct {v5, v11, v10, v9}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 125
    .line 126
    .line 127
    :try_start_0
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 128
    .line 129
    invoke-direct {v5, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 130
    .line 131
    .line 132
    const-string v8, "DER"

    .line 133
    .line 134
    invoke-virtual {v5, v8}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 139
    .line 140
    array-length v9, v5

    .line 141
    const/4 v10, 0x0

    .line 142
    invoke-interface {v8, v5, v10, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 146
    .line 147
    invoke-interface {v5, v4, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 148
    .line 149
    .line 150
    if-le p3, v2, :cond_1

    .line 151
    .line 152
    invoke-static {v4, v10, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    add-int/2addr p2, v2

    .line 156
    sub-int/2addr p3, v2

    .line 157
    goto :goto_2

    .line 158
    :cond_1
    invoke-static {v4, v10, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    .line 160
    .line 161
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 162
    .line 163
    add-int/lit8 v6, v6, 0x1

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    goto :goto_0

    .line 167
    :catch_0
    move-exception p1

    .line 168
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v0, "unable to encode parameter info: "

    .line 173
    .line 174
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p3}, Landroid/support/v4/media/a;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p2

    .line 185
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 186
    .line 187
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 188
    .line 189
    .line 190
    long-to-int p1, v0

    .line 191
    return p1

    .line 192
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 193
    .line 194
    const-string p2, "Output length too large"

    .line 195
    .line 196
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    .line 201
    .line 202
    const-string p2, "output buffer too small"

    .line 203
    .line 204
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    return-void
.end method
