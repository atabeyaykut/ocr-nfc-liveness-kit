.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "$AlgParamGen"

    .line 9
    .line 10
    const-string v3, "AlgorithmParameterGenerator.RC2"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "AlgorithmParameterGenerator.1.2.840.113549.3.2"

    .line 17
    .line 18
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "$KeyGenerator"

    .line 23
    .line 24
    const-string v3, "KeyGenerator.RC2"

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "KeyGenerator.1.2.840.113549.3.2"

    .line 31
    .line 32
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "$AlgParams"

    .line 37
    .line 38
    const-string v3, "AlgorithmParameters.RC2"

    .line 39
    .line 40
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "AlgorithmParameters.1.2.840.113549.3.2"

    .line 45
    .line 46
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "$ECB"

    .line 51
    .line 52
    const-string v3, "Cipher.RC2"

    .line 53
    .line 54
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "$Wrap"

    .line 59
    .line 60
    const-string v3, "Cipher.RC2WRAP"

    .line 61
    .line 62
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMSRC2wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    .line 67
    const-string v2, "RC2WRAP"

    .line 68
    .line 69
    const-string v3, "Alg.Alias.Cipher"

    .line 70
    .line 71
    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, "$CBC"

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v4, "Cipher"

    .line 94
    .line 95
    invoke-interface {p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "$CBCMAC"

    .line 104
    .line 105
    const-string v4, "Mac.RC2MAC"

    .line 106
    .line 107
    invoke-static {v0, v1, v2, p1, v4}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "Alg.Alias.Mac.RC2"

    .line 111
    .line 112
    const-string v2, "RC2MAC"

    .line 113
    .line 114
    const-string v4, "$CFB8MAC"

    .line 115
    .line 116
    invoke-static {p1, v0, v2, v1, v4}, Landroid/support/v4/media/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "Mac.RC2MAC/CFB8"

    .line 121
    .line 122
    invoke-interface {p1, v2, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "Alg.Alias.Mac.RC2/CFB8"

    .line 126
    .line 127
    const-string v2, "RC2MAC/CFB8"

    .line 128
    .line 129
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDRC2-CBC"

    .line 133
    .line 134
    const-string v2, "PBEWITHMD2ANDRC2"

    .line 135
    .line 136
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    .line 140
    .line 141
    const-string v4, "PBEWITHMD5ANDRC2"

    .line 142
    .line 143
    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    .line 147
    .line 148
    const-string v5, "PBEWITHSHA1ANDRC2"

    .line 149
    .line 150
    invoke-interface {p1, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    .line 155
    const-string v6, "Alg.Alias.SecretKeyFactory"

    .line 156
    .line 157
    invoke-interface {p1, v6, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 161
    .line 162
    invoke-interface {p1, v6, v7, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v8, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    .line 167
    invoke-interface {p1, v6, v8, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v6, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    .line 171
    .line 172
    const-string v9, "PBEWITHSHAAND128BITRC2-CBC"

    .line 173
    .line 174
    const-string v10, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    .line 175
    .line 176
    const-string v11, "PBEWITHSHAAND40BITRC2-CBC"

    .line 177
    .line 178
    invoke-static {p1, v6, v9, v10, v11}, Landroidx/fragment/app/a;->e(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const-string v10, "$PBEWithMD2KeyFactory"

    .line 183
    .line 184
    const-string v12, "SecretKeyFactory.PBEWITHMD2ANDRC2"

    .line 185
    .line 186
    invoke-static {v6, v1, v10, p1, v12}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    const-string v10, "$PBEWithMD5KeyFactory"

    .line 191
    .line 192
    const-string v12, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    .line 193
    .line 194
    invoke-static {v6, v1, v10, p1, v12}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    const-string v10, "$PBEWithSHA1KeyFactory"

    .line 199
    .line 200
    const-string v12, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    .line 201
    .line 202
    invoke-static {v6, v1, v10, p1, v12}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    const-string v10, "$PBEWithSHAAnd128BitKeyFactory"

    .line 207
    .line 208
    const-string v12, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    .line 209
    .line 210
    invoke-static {v6, v1, v10, p1, v12}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    const-string v10, "$PBEWithSHAAnd40BitKeyFactory"

    .line 215
    .line 216
    const-string v12, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    .line 217
    .line 218
    invoke-static {v6, v1, v10, p1, v12}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v3, v7, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {p1, v3, v8, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    .line 231
    .line 232
    const-string v2, "PKCS12PBE"

    .line 233
    .line 234
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    .line 238
    .line 239
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    .line 243
    .line 244
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 248
    .line 249
    invoke-interface {p1, v3, v0, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 253
    .line 254
    invoke-interface {p1, v3, v0, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    .line 258
    .line 259
    const-string v3, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    .line 260
    .line 261
    invoke-static {p1, v0, v9, v3, v11}, Landroidx/fragment/app/a;->e(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v3, "$PBEWithSHA1AndRC2"

    .line 266
    .line 267
    const-string v6, "Cipher.PBEWITHSHA1ANDRC2"

    .line 268
    .line 269
    invoke-static {v0, v1, v3, p1, v6}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC"

    .line 273
    .line 274
    const-string v3, "Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC"

    .line 275
    .line 276
    invoke-static {p1, v0, v5, v3, v5}, Landroidx/fragment/app/a;->e(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const-string v3, "$PBEWithSHAAnd128BitRC2"

    .line 281
    .line 282
    const-string v5, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    .line 283
    .line 284
    invoke-static {v0, v1, v3, p1, v5}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v3, "$PBEWithSHAAnd40BitRC2"

    .line 289
    .line 290
    const-string v5, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    .line 291
    .line 292
    invoke-static {v0, v1, v3, p1, v5}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string v3, "$PBEWithMD5AndRC2"

    .line 297
    .line 298
    const-string v5, "Cipher.PBEWITHMD5ANDRC2"

    .line 299
    .line 300
    invoke-static {v0, v1, v3, p1, v5}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v0, "Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC"

    .line 304
    .line 305
    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    .line 309
    .line 310
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    .line 314
    .line 315
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    .line 319
    .line 320
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    .line 324
    .line 325
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    .line 329
    .line 330
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-void
.end method
