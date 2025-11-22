.class public Lorg/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/EC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string v0, "AlgorithmParameters.EC"

    .line 6
    .line 7
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.AlgorithmParametersSpi"

    .line 8
    .line 9
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DH"

    .line 13
    .line 14
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "KeyAgreement.ECDH"

    .line 19
    .line 20
    invoke-interface {v8, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "KeyAgreement.ECDHC"

    .line 28
    .line 29
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHC"

    .line 30
    .line 31
    invoke-interface {v8, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "KeyAgreement.ECCDH"

    .line 35
    .line 36
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUC"

    .line 37
    .line 38
    const-string v3, "KeyAgreement.ECCDHU"

    .line 39
    .line 40
    invoke-static {v8, v0, v2, v3, v1}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "KeyAgreement.ECDHWITHSHA1KDF"

    .line 45
    .line 46
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1KDFAndSharedInfo"

    .line 47
    .line 48
    invoke-interface {v8, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "KeyAgreement.ECCDHWITHSHA1KDF"

    .line 52
    .line 53
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA1KDFAndSharedInfo"

    .line 54
    .line 55
    const-string v3, "KeyAgreement.ECDHWITHSHA224KDF"

    .line 56
    .line 57
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA224KDFAndSharedInfo"

    .line 58
    .line 59
    invoke-static {v8, v0, v1, v3, v4}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "KeyAgreement.ECCDHWITHSHA224KDF"

    .line 64
    .line 65
    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA224KDFAndSharedInfo"

    .line 66
    .line 67
    invoke-interface {v8, v3, v5, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "KeyAgreement.ECDHWITHSHA256KDF"

    .line 71
    .line 72
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA256KDFAndSharedInfo"

    .line 73
    .line 74
    const-string v6, "KeyAgreement.ECCDHWITHSHA256KDF"

    .line 75
    .line 76
    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA256KDFAndSharedInfo"

    .line 77
    .line 78
    invoke-static {v8, v0, v3, v6, v9}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v6, "KeyAgreement.ECDHWITHSHA384KDF"

    .line 83
    .line 84
    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA384KDFAndSharedInfo"

    .line 85
    .line 86
    invoke-interface {v8, v6, v10, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "KeyAgreement.ECCDHWITHSHA384KDF"

    .line 90
    .line 91
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA384KDFAndSharedInfo"

    .line 92
    .line 93
    const-string v11, "KeyAgreement.ECDHWITHSHA512KDF"

    .line 94
    .line 95
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA512KDFAndSharedInfo"

    .line 96
    .line 97
    invoke-static {v8, v0, v6, v11, v12}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v11, "KeyAgreement.ECCDHWITHSHA512KDF"

    .line 102
    .line 103
    const-string v13, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA512KDFAndSharedInfo"

    .line 104
    .line 105
    invoke-interface {v8, v11, v13, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    .line 110
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    const-string v14, "KeyAgreement"

    .line 115
    .line 116
    invoke-interface {v8, v14, v0, v2, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_cofactorDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .line 121
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-interface {v8, v14, v2, v1, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    .line 127
    .line 128
    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 129
    .line 130
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    invoke-interface {v8, v14, v1, v4, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    sget-object v4, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 138
    .line 139
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    invoke-interface {v8, v14, v4, v5, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    .line 145
    .line 146
    sget-object v5, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    .line 148
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-interface {v8, v14, v5, v3, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 156
    .line 157
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    invoke-interface {v8, v14, v3, v9, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    .line 163
    .line 164
    sget-object v9, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 165
    .line 166
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-interface {v8, v14, v9, v10, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    sget-object v10, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 174
    .line 175
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-interface {v8, v14, v10, v6, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    .line 181
    .line 182
    sget-object v6, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 183
    .line 184
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-interface {v8, v14, v6, v12, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    .line 190
    .line 191
    sget-object v11, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    .line 193
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    invoke-interface {v8, v14, v11, v13, v12}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    .line 199
    .line 200
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1CKDF"

    .line 201
    .line 202
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    const-string v15, "KeyAgreement.ECCDHWITHSHA1CKDF"

    .line 207
    .line 208
    invoke-interface {v8, v15, v12, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    .line 210
    .line 211
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA256CKDF"

    .line 212
    .line 213
    const-string v13, "KeyAgreement.ECCDHWITHSHA256CKDF"

    .line 214
    .line 215
    const-string v15, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA384CKDF"

    .line 216
    .line 217
    move-object/from16 v16, v11

    .line 218
    .line 219
    const-string v11, "KeyAgreement.ECCDHWITHSHA384CKDF"

    .line 220
    .line 221
    move-object/from16 v17, v6

    .line 222
    .line 223
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA512CKDF"

    .line 224
    .line 225
    invoke-static {v8, v13, v12, v11, v15}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    const-string v12, "KeyAgreement.ECCDHWITHSHA512CKDF"

    .line 230
    .line 231
    invoke-interface {v8, v12, v6, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    .line 233
    .line 234
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA1CKDF"

    .line 235
    .line 236
    const-string v11, "KeyAgreement.ECCDHUWITHSHA1CKDF"

    .line 237
    .line 238
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA224CKDF"

    .line 239
    .line 240
    const-string v13, "KeyAgreement.ECCDHUWITHSHA224CKDF"

    .line 241
    .line 242
    const-string v15, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA256CKDF"

    .line 243
    .line 244
    invoke-static {v8, v11, v6, v13, v12}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    const-string v11, "KeyAgreement.ECCDHUWITHSHA256CKDF"

    .line 249
    .line 250
    invoke-interface {v8, v11, v15, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    .line 252
    .line 253
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA384CKDF"

    .line 254
    .line 255
    const-string v11, "KeyAgreement.ECCDHUWITHSHA384CKDF"

    .line 256
    .line 257
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA512CKDF"

    .line 258
    .line 259
    const-string v13, "KeyAgreement.ECCDHUWITHSHA512CKDF"

    .line 260
    .line 261
    const-string v15, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA1KDF"

    .line 262
    .line 263
    invoke-static {v8, v11, v6, v13, v12}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    const-string v11, "KeyAgreement.ECCDHUWITHSHA1KDF"

    .line 268
    .line 269
    invoke-interface {v8, v11, v15, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    .line 271
    .line 272
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA224KDF"

    .line 273
    .line 274
    const-string v11, "KeyAgreement.ECCDHUWITHSHA224KDF"

    .line 275
    .line 276
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA256KDF"

    .line 277
    .line 278
    const-string v13, "KeyAgreement.ECCDHUWITHSHA256KDF"

    .line 279
    .line 280
    const-string v15, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA384KDF"

    .line 281
    .line 282
    invoke-static {v8, v11, v6, v13, v12}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    const-string v11, "KeyAgreement.ECCDHUWITHSHA384KDF"

    .line 287
    .line 288
    invoke-interface {v8, v11, v15, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    .line 290
    .line 291
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA512KDF"

    .line 292
    .line 293
    const-string v11, "KeyAgreement.ECCDHUWITHSHA512KDF"

    .line 294
    .line 295
    const-string v12, "KeyAgreement.ECKAEGWITHSHA1KDF"

    .line 296
    .line 297
    const-string v13, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA1KDF"

    .line 298
    .line 299
    invoke-static {v8, v11, v6, v12, v13}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    const-string v11, "KeyAgreement.ECKAEGWITHSHA224KDF"

    .line 304
    .line 305
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA224KDF"

    .line 306
    .line 307
    invoke-interface {v8, v11, v12, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 308
    .line 309
    .line 310
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA256KDF"

    .line 311
    .line 312
    const-string v11, "KeyAgreement.ECKAEGWITHSHA256KDF"

    .line 313
    .line 314
    const-string v15, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA384KDF"

    .line 315
    .line 316
    move-object/from16 v18, v10

    .line 317
    .line 318
    const-string v10, "KeyAgreement.ECKAEGWITHSHA384KDF"

    .line 319
    .line 320
    move-object/from16 v19, v9

    .line 321
    .line 322
    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA512KDF"

    .line 323
    .line 324
    invoke-static {v8, v11, v6, v10, v15}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    const-string v10, "KeyAgreement.ECKAEGWITHSHA512KDF"

    .line 329
    .line 330
    invoke-interface {v8, v10, v9, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    .line 332
    .line 333
    sget-object v6, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 334
    .line 335
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-interface {v8, v14, v6, v13, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 340
    .line 341
    .line 342
    sget-object v6, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 343
    .line 344
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    invoke-interface {v8, v14, v6, v12, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    .line 350
    .line 351
    sget-object v6, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 352
    .line 353
    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA256KDF"

    .line 354
    .line 355
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    invoke-interface {v8, v14, v6, v9, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 360
    .line 361
    .line 362
    sget-object v6, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 363
    .line 364
    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA384KDF"

    .line 365
    .line 366
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    invoke-interface {v8, v14, v6, v9, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 371
    .line 372
    .line 373
    sget-object v6, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 374
    .line 375
    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA512KDF"

    .line 376
    .line 377
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    invoke-interface {v8, v14, v6, v9, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 382
    .line 383
    .line 384
    sget-object v6, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecka_eg_X963kdf_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 385
    .line 386
    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithRIPEMD160KDF"

    .line 387
    .line 388
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 389
    .line 390
    .line 391
    move-result-object v10

    .line 392
    invoke-interface {v8, v14, v6, v9, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V

    .line 393
    .line 394
    .line 395
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithRIPEMD160KDF"

    .line 396
    .line 397
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    const-string v10, "KeyAgreement.ECKAEGWITHRIPEMD160KDF"

    .line 402
    .line 403
    invoke-interface {v8, v10, v6, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    .line 405
    .line 406
    sget-object v6, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 407
    .line 408
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 409
    .line 410
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v10, "EC"

    .line 414
    .line 415
    invoke-virtual {v7, v8, v6, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 416
    .line 417
    .line 418
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 419
    .line 420
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7, v8, v0, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 424
    .line 425
    .line 426
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 427
    .line 428
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v7, v8, v2, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 432
    .line 433
    .line 434
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 435
    .line 436
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7, v8, v1, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 440
    .line 441
    .line 442
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 443
    .line 444
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7, v8, v4, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 448
    .line 449
    .line 450
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 451
    .line 452
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7, v8, v5, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 456
    .line 457
    .line 458
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 459
    .line 460
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v7, v8, v3, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 464
    .line 465
    .line 466
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 467
    .line 468
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 469
    .line 470
    .line 471
    move-object/from16 v11, v19

    .line 472
    .line 473
    invoke-virtual {v7, v8, v11, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 474
    .line 475
    .line 476
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 477
    .line 478
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 479
    .line 480
    .line 481
    move-object/from16 v12, v18

    .line 482
    .line 483
    invoke-virtual {v7, v8, v12, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 484
    .line 485
    .line 486
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 487
    .line 488
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 489
    .line 490
    .line 491
    move-object/from16 v13, v17

    .line 492
    .line 493
    invoke-virtual {v7, v8, v13, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 494
    .line 495
    .line 496
    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    .line 497
    .line 498
    invoke-direct {v9}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    .line 499
    .line 500
    .line 501
    move-object/from16 v14, v16

    .line 502
    .line 503
    invoke-virtual {v7, v8, v14, v10, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v7, v8, v6, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7, v8, v0, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v7, v8, v2, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v7, v8, v1, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v7, v8, v4, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v7, v8, v5, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v7, v8, v3, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v7, v8, v11, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v7, v8, v12, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v7, v8, v13, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v7, v8, v14, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const-string v0, "org.bouncycastle.ec.disable_mqv"

    .line 540
    .line 541
    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-nez v0, :cond_0

    .line 546
    .line 547
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQV"

    .line 548
    .line 549
    const-string v1, "KeyAgreement.ECMQV"

    .line 550
    .line 551
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1CKDF"

    .line 552
    .line 553
    const-string v3, "KeyAgreement.ECMQVWITHSHA1CKDF"

    .line 554
    .line 555
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224CKDF"

    .line 556
    .line 557
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    const-string v1, "KeyAgreement.ECMQVWITHSHA224CKDF"

    .line 562
    .line 563
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 564
    .line 565
    .line 566
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256CKDF"

    .line 567
    .line 568
    const-string v1, "KeyAgreement.ECMQVWITHSHA256CKDF"

    .line 569
    .line 570
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384CKDF"

    .line 571
    .line 572
    const-string v3, "KeyAgreement.ECMQVWITHSHA384CKDF"

    .line 573
    .line 574
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512CKDF"

    .line 575
    .line 576
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    const-string v1, "KeyAgreement.ECMQVWITHSHA512CKDF"

    .line 581
    .line 582
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 583
    .line 584
    .line 585
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1KDF"

    .line 586
    .line 587
    const-string v1, "KeyAgreement.ECMQVWITHSHA1KDF"

    .line 588
    .line 589
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224KDF"

    .line 590
    .line 591
    const-string v3, "KeyAgreement.ECMQVWITHSHA224KDF"

    .line 592
    .line 593
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256KDF"

    .line 594
    .line 595
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    const-string v1, "KeyAgreement.ECMQVWITHSHA256KDF"

    .line 600
    .line 601
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 602
    .line 603
    .line 604
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384KDF"

    .line 605
    .line 606
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    const-string v2, "KeyAgreement.ECMQVWITHSHA384KDF"

    .line 611
    .line 612
    invoke-interface {v8, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 613
    .line 614
    .line 615
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512KDF"

    .line 616
    .line 617
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    const-string v2, "KeyAgreement.ECMQVWITHSHA512KDF"

    .line 622
    .line 623
    invoke-interface {v8, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 624
    .line 625
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string v1, "KeyAgreement."

    .line 629
    .line 630
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 634
    .line 635
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1KDFAndSharedInfo"

    .line 643
    .line 644
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    invoke-interface {v8, v0, v3, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 649
    .line 650
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 657
    .line 658
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224KDFAndSharedInfo"

    .line 666
    .line 667
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    invoke-interface {v8, v0, v4, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 672
    .line 673
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    .line 675
    .line 676
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    sget-object v4, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 680
    .line 681
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256KDFAndSharedInfo"

    .line 689
    .line 690
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    invoke-interface {v8, v0, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 695
    .line 696
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    .line 698
    .line 699
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    sget-object v5, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 703
    .line 704
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384KDFAndSharedInfo"

    .line 712
    .line 713
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 714
    .line 715
    .line 716
    move-result-object v9

    .line 717
    invoke-interface {v8, v0, v6, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 718
    .line 719
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512KDFAndSharedInfo"

    .line 735
    .line 736
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 737
    .line 738
    .line 739
    move-result-object v9

    .line 740
    invoke-interface {v8, v0, v6, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 741
    .line 742
    .line 743
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    .line 744
    .line 745
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    .line 746
    .line 747
    .line 748
    const-string v6, "ECMQV"

    .line 749
    .line 750
    invoke-virtual {v7, v8, v2, v6, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v7, v8, v2, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    .line 757
    .line 758
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v7, v8, v3, v6, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v7, v8, v3, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    .line 768
    .line 769
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v7, v8, v4, v6, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v7, v8, v4, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    .line 779
    .line 780
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v7, v8, v5, v6, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v7, v8, v5, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;

    .line 790
    .line 791
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;-><init>()V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v7, v8, v1, v6, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v7, v8, v1, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    const-string v0, "KeyFactory.ECMQV"

    .line 801
    .line 802
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECMQV"

    .line 803
    .line 804
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    const-string v0, "KeyPairGenerator.ECMQV"

    .line 808
    .line 809
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECMQV"

    .line 810
    .line 811
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    :cond_0
    const-string v0, "KeyFactory.EC"

    .line 815
    .line 816
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$EC"

    .line 817
    .line 818
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    const-string v0, "KeyFactory.ECDSA"

    .line 822
    .line 823
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDSA"

    .line 824
    .line 825
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const-string v0, "KeyFactory.ECDH"

    .line 829
    .line 830
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDH"

    .line 831
    .line 832
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    const-string v0, "KeyFactory.ECDHC"

    .line 836
    .line 837
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDHC"

    .line 838
    .line 839
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    const-string v0, "KeyPairGenerator.EC"

    .line 843
    .line 844
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$EC"

    .line 845
    .line 846
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    const-string v0, "KeyPairGenerator.ECDSA"

    .line 850
    .line 851
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDSA"

    .line 852
    .line 853
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    const-string v0, "KeyPairGenerator.ECDH"

    .line 857
    .line 858
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDH"

    .line 859
    .line 860
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    const-string v0, "KeyPairGenerator.ECDHWITHSHA1KDF"

    .line 864
    .line 865
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    const-string v0, "KeyPairGenerator.ECDHC"

    .line 869
    .line 870
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDHC"

    .line 871
    .line 872
    invoke-interface {v8, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    const-string v0, "KeyPairGenerator.ECIES"

    .line 876
    .line 877
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    const-string v0, "Cipher.ECIES"

    .line 881
    .line 882
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIES"

    .line 887
    .line 888
    invoke-interface {v8, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 889
    .line 890
    .line 891
    const-string v0, "Cipher.ECIESwithSHA1"

    .line 892
    .line 893
    const-string v1, "Cipher.ECIESWITHSHA1"

    .line 894
    .line 895
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256"

    .line 896
    .line 897
    invoke-static {v8, v0, v2, v1, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    const-string v1, "Cipher.ECIESwithSHA256"

    .line 902
    .line 903
    invoke-interface {v8, v1, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 904
    .line 905
    .line 906
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256"

    .line 907
    .line 908
    const-string v1, "Cipher.ECIESWITHSHA256"

    .line 909
    .line 910
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384"

    .line 911
    .line 912
    const-string v3, "Cipher.ECIESwithSHA384"

    .line 913
    .line 914
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384"

    .line 915
    .line 916
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    const-string v1, "Cipher.ECIESWITHSHA384"

    .line 921
    .line 922
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 923
    .line 924
    .line 925
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512"

    .line 926
    .line 927
    const-string v1, "Cipher.ECIESwithSHA512"

    .line 928
    .line 929
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512"

    .line 930
    .line 931
    const-string v3, "Cipher.ECIESWITHSHA512"

    .line 932
    .line 933
    const-string v4, "Cipher.ECIESwithAES-CBC"

    .line 934
    .line 935
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithAESCBC"

    .line 940
    .line 941
    invoke-interface {v8, v4, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 942
    .line 943
    .line 944
    const-string v0, "Cipher.ECIESWITHAES-CBC"

    .line 945
    .line 946
    const-string v2, "Cipher.ECIESwithSHA1andAES-CBC"

    .line 947
    .line 948
    const-string v3, "Cipher.ECIESWITHSHA1ANDAES-CBC"

    .line 949
    .line 950
    invoke-static {v8, v0, v1, v2, v1}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-interface {v8, v3, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 955
    .line 956
    .line 957
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andAESCBC"

    .line 958
    .line 959
    const-string v1, "Cipher.ECIESwithSHA256andAES-CBC"

    .line 960
    .line 961
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andAESCBC"

    .line 962
    .line 963
    const-string v3, "Cipher.ECIESWITHSHA256ANDAES-CBC"

    .line 964
    .line 965
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andAESCBC"

    .line 966
    .line 967
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    const-string v1, "Cipher.ECIESwithSHA384andAES-CBC"

    .line 972
    .line 973
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 974
    .line 975
    .line 976
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andAESCBC"

    .line 977
    .line 978
    const-string v1, "Cipher.ECIESWITHSHA384ANDAES-CBC"

    .line 979
    .line 980
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andAESCBC"

    .line 981
    .line 982
    const-string v3, "Cipher.ECIESwithSHA512andAES-CBC"

    .line 983
    .line 984
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andAESCBC"

    .line 985
    .line 986
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    const-string v1, "Cipher.ECIESWITHSHA512ANDAES-CBC"

    .line 991
    .line 992
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 993
    .line 994
    .line 995
    const-string v0, "Cipher.ECIESwithDESEDE-CBC"

    .line 996
    .line 997
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithDESedeCBC"

    .line 998
    .line 999
    const-string v2, "Cipher.ECIESWITHDESEDE-CBC"

    .line 1000
    .line 1001
    const-string v3, "Cipher.ECIESwithSHA1andDESEDE-CBC"

    .line 1002
    .line 1003
    invoke-static {v8, v0, v1, v2, v1}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-interface {v8, v3, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1008
    .line 1009
    .line 1010
    const-string v0, "Cipher.ECIESWITHSHA1ANDDESEDE-CBC"

    .line 1011
    .line 1012
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andDESedeCBC"

    .line 1013
    .line 1014
    const-string v3, "Cipher.ECIESwithSHA256andDESEDE-CBC"

    .line 1015
    .line 1016
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andDESedeCBC"

    .line 1017
    .line 1018
    invoke-static {v8, v0, v1, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    const-string v1, "Cipher.ECIESWITHSHA256ANDDESEDE-CBC"

    .line 1023
    .line 1024
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1025
    .line 1026
    .line 1027
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andDESedeCBC"

    .line 1028
    .line 1029
    const-string v1, "Cipher.ECIESwithSHA384andDESEDE-CBC"

    .line 1030
    .line 1031
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andDESedeCBC"

    .line 1032
    .line 1033
    const-string v3, "Cipher.ECIESWITHSHA384ANDDESEDE-CBC"

    .line 1034
    .line 1035
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andDESedeCBC"

    .line 1036
    .line 1037
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    const-string v1, "Cipher.ECIESwithSHA512andDESEDE-CBC"

    .line 1042
    .line 1043
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1044
    .line 1045
    .line 1046
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andDESedeCBC"

    .line 1047
    .line 1048
    const-string v1, "Cipher.ECIESWITHSHA512ANDDESEDE-CBC"

    .line 1049
    .line 1050
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESKEMCipher$KEMwithSHA256"

    .line 1051
    .line 1052
    const-string v3, "Cipher.ETSIKEMWITHSHA256"

    .line 1053
    .line 1054
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA"

    .line 1055
    .line 1056
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    const-string v1, "Signature.ECDSA"

    .line 1061
    .line 1062
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1063
    .line 1064
    .line 1065
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAnone"

    .line 1066
    .line 1067
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    const-string v2, "Signature.NONEwithECDSA"

    .line 1072
    .line 1073
    invoke-interface {v8, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1074
    .line 1075
    .line 1076
    const-string v0, "Alg.Alias.Signature.SHA1withECDSA"

    .line 1077
    .line 1078
    const-string v1, "ECDSA"

    .line 1079
    .line 1080
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    const-string v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    .line 1084
    .line 1085
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    const-string v0, "Alg.Alias.Signature.SHA1WITHECDSA"

    .line 1089
    .line 1090
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    const-string v0, "Alg.Alias.Signature.ECDSAWITHSHA1"

    .line 1094
    .line 1095
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    const-string v0, "Alg.Alias.Signature.SHA1WithECDSA"

    .line 1099
    .line 1100
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    const-string v0, "Alg.Alias.Signature.ECDSAWithSHA1"

    .line 1104
    .line 1105
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    .line 1109
    .line 1110
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    const-string v2, "Alg.Alias.Signature."

    .line 1116
    .line 1117
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    sget-object v2, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithSha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1121
    .line 1122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA"

    .line 1133
    .line 1134
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    const-string v2, "Signature.ECDDSA"

    .line 1139
    .line 1140
    invoke-interface {v8, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1141
    .line 1142
    .line 1143
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA"

    .line 1144
    .line 1145
    const-string v1, "Signature.SHA1WITHECDDSA"

    .line 1146
    .line 1147
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA224"

    .line 1148
    .line 1149
    const-string v3, "Signature.SHA224WITHECDDSA"

    .line 1150
    .line 1151
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA256"

    .line 1152
    .line 1153
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    const-string v1, "Signature.SHA256WITHECDDSA"

    .line 1158
    .line 1159
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1160
    .line 1161
    .line 1162
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA384"

    .line 1163
    .line 1164
    const-string v1, "Signature.SHA384WITHECDDSA"

    .line 1165
    .line 1166
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA512"

    .line 1167
    .line 1168
    const-string v3, "Signature.SHA512WITHECDDSA"

    .line 1169
    .line 1170
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_224"

    .line 1171
    .line 1172
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    const-string v1, "Signature.SHA3-224WITHECDDSA"

    .line 1177
    .line 1178
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1179
    .line 1180
    .line 1181
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_256"

    .line 1182
    .line 1183
    const-string v1, "Signature.SHA3-256WITHECDDSA"

    .line 1184
    .line 1185
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_384"

    .line 1186
    .line 1187
    const-string v3, "Signature.SHA3-384WITHECDDSA"

    .line 1188
    .line 1189
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_512"

    .line 1190
    .line 1191
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    const-string v1, "Signature.SHA3-512WITHECDDSA"

    .line 1196
    .line 1197
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1198
    .line 1199
    .line 1200
    const-string v0, "Alg.Alias.Signature.DETECDSA"

    .line 1201
    .line 1202
    const-string v1, "ECDDSA"

    .line 1203
    .line 1204
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    const-string v0, "Alg.Alias.Signature.SHA1WITHDETECDSA"

    .line 1208
    .line 1209
    const-string v1, "SHA1WITHECDDSA"

    .line 1210
    .line 1211
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    const-string v0, "Alg.Alias.Signature.SHA224WITHDETECDSA"

    .line 1215
    .line 1216
    const-string v1, "SHA224WITHECDDSA"

    .line 1217
    .line 1218
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    const-string v0, "Alg.Alias.Signature.SHA256WITHDETECDSA"

    .line 1222
    .line 1223
    const-string v1, "SHA256WITHECDDSA"

    .line 1224
    .line 1225
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    const-string v0, "Alg.Alias.Signature.SHA384WITHDETECDSA"

    .line 1229
    .line 1230
    const-string v1, "SHA384WITHECDDSA"

    .line 1231
    .line 1232
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    const-string v0, "Alg.Alias.Signature.SHA512WITHDETECDSA"

    .line 1236
    .line 1237
    const-string v1, "SHA512WITHECDDSA"

    .line 1238
    .line 1239
    invoke-interface {v8, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    const-string v2, "SHA224"

    .line 1243
    .line 1244
    const-string v3, "ECDSA"

    .line 1245
    .line 1246
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA224"

    .line 1247
    .line 1248
    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1249
    .line 1250
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v6

    .line 1254
    move-object/from16 v0, p0

    .line 1255
    .line 1256
    move-object/from16 v1, p1

    .line 1257
    .line 1258
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1259
    .line 1260
    .line 1261
    const-string v2, "SHA256"

    .line 1262
    .line 1263
    const-string v3, "ECDSA"

    .line 1264
    .line 1265
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA256"

    .line 1266
    .line 1267
    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1268
    .line 1269
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v6

    .line 1273
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1274
    .line 1275
    .line 1276
    const-string v2, "SHA384"

    .line 1277
    .line 1278
    const-string v3, "ECDSA"

    .line 1279
    .line 1280
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA384"

    .line 1281
    .line 1282
    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1283
    .line 1284
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v6

    .line 1288
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1289
    .line 1290
    .line 1291
    const-string v2, "SHA512"

    .line 1292
    .line 1293
    const-string v3, "ECDSA"

    .line 1294
    .line 1295
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA512"

    .line 1296
    .line 1297
    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1298
    .line 1299
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v6

    .line 1303
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1304
    .line 1305
    .line 1306
    const-string v2, "SHA3-224"

    .line 1307
    .line 1308
    const-string v3, "ECDSA"

    .line 1309
    .line 1310
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_224"

    .line 1311
    .line 1312
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1313
    .line 1314
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v6

    .line 1318
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1319
    .line 1320
    .line 1321
    const-string v2, "SHA3-256"

    .line 1322
    .line 1323
    const-string v3, "ECDSA"

    .line 1324
    .line 1325
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_256"

    .line 1326
    .line 1327
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1328
    .line 1329
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v6

    .line 1333
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1334
    .line 1335
    .line 1336
    const-string v2, "SHA3-384"

    .line 1337
    .line 1338
    const-string v3, "ECDSA"

    .line 1339
    .line 1340
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_384"

    .line 1341
    .line 1342
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1343
    .line 1344
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v6

    .line 1348
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1349
    .line 1350
    .line 1351
    const-string v2, "SHA3-512"

    .line 1352
    .line 1353
    const-string v3, "ECDSA"

    .line 1354
    .line 1355
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_512"

    .line 1356
    .line 1357
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1358
    .line 1359
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v6

    .line 1363
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1364
    .line 1365
    .line 1366
    const-string v2, "SHAKE128"

    .line 1367
    .line 1368
    const-string v3, "ECDSA"

    .line 1369
    .line 1370
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAShake128"

    .line 1371
    .line 1372
    sget-object v5, Lorg/bouncycastle/internal/asn1/cms/CMSObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1373
    .line 1374
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v6

    .line 1378
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1379
    .line 1380
    .line 1381
    const-string v2, "SHAKE256"

    .line 1382
    .line 1383
    const-string v3, "ECDSA"

    .line 1384
    .line 1385
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAShake256"

    .line 1386
    .line 1387
    sget-object v5, Lorg/bouncycastle/internal/asn1/cms/CMSObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1388
    .line 1389
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v6

    .line 1393
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1394
    .line 1395
    .line 1396
    const-string v2, "RIPEMD160"

    .line 1397
    .line 1398
    const-string v3, "ECDSA"

    .line 1399
    .line 1400
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSARipeMD160"

    .line 1401
    .line 1402
    sget-object v5, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithRipemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1403
    .line 1404
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v6

    .line 1408
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1409
    .line 1410
    .line 1411
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR"

    .line 1412
    .line 1413
    const-string v1, "Signature.SHA1WITHECNR"

    .line 1414
    .line 1415
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR224"

    .line 1416
    .line 1417
    const-string v3, "Signature.SHA224WITHECNR"

    .line 1418
    .line 1419
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR256"

    .line 1420
    .line 1421
    invoke-static {v8, v1, v0, v3, v2}, Landroidx/browser/browseractions/b;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v0

    .line 1425
    const-string v1, "Signature.SHA256WITHECNR"

    .line 1426
    .line 1427
    invoke-interface {v8, v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1428
    .line 1429
    .line 1430
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR384"

    .line 1431
    .line 1432
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    const-string v2, "Signature.SHA384WITHECNR"

    .line 1437
    .line 1438
    invoke-interface {v8, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1439
    .line 1440
    .line 1441
    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR512"

    .line 1442
    .line 1443
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v1

    .line 1447
    const-string v2, "Signature.SHA512WITHECNR"

    .line 1448
    .line 1449
    invoke-interface {v8, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1450
    .line 1451
    .line 1452
    const-string v2, "SHA1"

    .line 1453
    .line 1454
    const-string v3, "CVC-ECDSA"

    .line 1455
    .line 1456
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA"

    .line 1457
    .line 1458
    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1459
    .line 1460
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v6

    .line 1464
    move-object/from16 v0, p0

    .line 1465
    .line 1466
    move-object/from16 v1, p1

    .line 1467
    .line 1468
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1469
    .line 1470
    .line 1471
    const-string v2, "SHA224"

    .line 1472
    .line 1473
    const-string v3, "CVC-ECDSA"

    .line 1474
    .line 1475
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224"

    .line 1476
    .line 1477
    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1478
    .line 1479
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v6

    .line 1483
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1484
    .line 1485
    .line 1486
    const-string v2, "SHA256"

    .line 1487
    .line 1488
    const-string v3, "CVC-ECDSA"

    .line 1489
    .line 1490
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256"

    .line 1491
    .line 1492
    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1493
    .line 1494
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v6

    .line 1498
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1499
    .line 1500
    .line 1501
    const-string v2, "SHA384"

    .line 1502
    .line 1503
    const-string v3, "CVC-ECDSA"

    .line 1504
    .line 1505
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384"

    .line 1506
    .line 1507
    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1508
    .line 1509
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v6

    .line 1513
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1514
    .line 1515
    .line 1516
    const-string v2, "SHA512"

    .line 1517
    .line 1518
    const-string v3, "CVC-ECDSA"

    .line 1519
    .line 1520
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512"

    .line 1521
    .line 1522
    sget-object v5, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1523
    .line 1524
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v6

    .line 1528
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1529
    .line 1530
    .line 1531
    const-string v2, "SHA1"

    .line 1532
    .line 1533
    const-string v3, "PLAIN-ECDSA"

    .line 1534
    .line 1535
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA"

    .line 1536
    .line 1537
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1538
    .line 1539
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v6

    .line 1543
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1544
    .line 1545
    .line 1546
    const-string v2, "SHA224"

    .line 1547
    .line 1548
    const-string v3, "PLAIN-ECDSA"

    .line 1549
    .line 1550
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224"

    .line 1551
    .line 1552
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1553
    .line 1554
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v6

    .line 1558
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1559
    .line 1560
    .line 1561
    const-string v2, "SHA256"

    .line 1562
    .line 1563
    const-string v3, "PLAIN-ECDSA"

    .line 1564
    .line 1565
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256"

    .line 1566
    .line 1567
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1568
    .line 1569
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v6

    .line 1573
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1574
    .line 1575
    .line 1576
    const-string v2, "SHA384"

    .line 1577
    .line 1578
    const-string v3, "PLAIN-ECDSA"

    .line 1579
    .line 1580
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384"

    .line 1581
    .line 1582
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1583
    .line 1584
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v6

    .line 1588
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1589
    .line 1590
    .line 1591
    const-string v2, "SHA512"

    .line 1592
    .line 1593
    const-string v3, "PLAIN-ECDSA"

    .line 1594
    .line 1595
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512"

    .line 1596
    .line 1597
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1598
    .line 1599
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v6

    .line 1603
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1604
    .line 1605
    .line 1606
    const-string v2, "RIPEMD160"

    .line 1607
    .line 1608
    const-string v3, "PLAIN-ECDSA"

    .line 1609
    .line 1610
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecPlainDSARP160"

    .line 1611
    .line 1612
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1613
    .line 1614
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v6

    .line 1618
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1619
    .line 1620
    .line 1621
    const-string v2, "SHA3-224"

    .line 1622
    .line 1623
    const-string v3, "PLAIN-ECDSA"

    .line 1624
    .line 1625
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_224"

    .line 1626
    .line 1627
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1628
    .line 1629
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v6

    .line 1633
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1634
    .line 1635
    .line 1636
    const-string v2, "SHA3-256"

    .line 1637
    .line 1638
    const-string v3, "PLAIN-ECDSA"

    .line 1639
    .line 1640
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_256"

    .line 1641
    .line 1642
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1643
    .line 1644
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v6

    .line 1648
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1649
    .line 1650
    .line 1651
    const-string v2, "SHA3-384"

    .line 1652
    .line 1653
    const-string v3, "PLAIN-ECDSA"

    .line 1654
    .line 1655
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_384"

    .line 1656
    .line 1657
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1658
    .line 1659
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v6

    .line 1663
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1664
    .line 1665
    .line 1666
    const-string v2, "SHA3-512"

    .line 1667
    .line 1668
    const-string v3, "PLAIN-ECDSA"

    .line 1669
    .line 1670
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_512"

    .line 1671
    .line 1672
    sget-object v5, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1673
    .line 1674
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->access$000()Ljava/util/Map;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v6

    .line 1678
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)V

    .line 1679
    .line 1680
    .line 1681
    return-void
.end method
