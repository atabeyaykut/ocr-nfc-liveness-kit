.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final wrongAES128:Ljava/lang/String; = "2.16.840.1.101.3.4.2"

.field private static final wrongAES192:Ljava/lang/String; = "2.16.840.1.101.3.4.22"

.field private static final wrongAES256:Ljava/lang/String; = "2.16.840.1.101.3.4.42"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lorg/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, "$AlgParams"

    .line 13
    .line 14
    const-string v5, "AlgorithmParameters.AES"

    .line 15
    .line 16
    invoke-static {v2, v3, v4, v1, v5}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2"

    .line 20
    .line 21
    const-string v4, "AES"

    .line 22
    .line 23
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22"

    .line 27
    .line 28
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42"

    .line 32
    .line 33
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "Alg.Alias.AlgorithmParameters."

    .line 39
    .line 40
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    .line 45
    invoke-static {v2, v6, v1, v4, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    .line 51
    invoke-static {v2, v7, v1, v4, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    invoke-static {v2, v8, v1, v4, v3}, Landroidx/appcompat/graphics/drawable/a;->h(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v9, "$AlgParamsGCM"

    .line 62
    .line 63
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v9, "AlgorithmParameters.GCM"

    .line 71
    .line 72
    invoke-interface {v1, v9, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    .line 82
    const-string v10, "GCM"

    .line 83
    .line 84
    invoke-static {v2, v9, v1, v10, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    .line 90
    invoke-static {v2, v11, v1, v10, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    .line 96
    invoke-static {v2, v12, v1, v10, v3}, Landroidx/appcompat/graphics/drawable/a;->h(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v13, "$AlgParamsCCM"

    .line 101
    .line 102
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v13, "AlgorithmParameters.CCM"

    .line 110
    .line 111
    invoke-interface {v1, v13, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .line 121
    const-string v14, "CCM"

    .line 122
    .line 123
    invoke-static {v2, v13, v1, v14, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget-object v15, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    .line 129
    invoke-static {v2, v15, v1, v14, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 134
    .line 135
    invoke-static {v2, v0, v1, v14, v3}, Landroidx/appcompat/graphics/drawable/a;->h(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object/from16 v16, v5

    .line 140
    .line 141
    const-string v5, "$AlgParamGen"

    .line 142
    .line 143
    move-object/from16 v17, v12

    .line 144
    .line 145
    const-string v12, "AlgorithmParameterGenerator.AES"

    .line 146
    .line 147
    invoke-static {v2, v5, v1, v12}, Lab/b;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v2, "Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2"

    .line 151
    .line 152
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v2, "Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22"

    .line 156
    .line 157
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v2, "Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42"

    .line 161
    .line 162
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v5, "Alg.Alias.AlgorithmParameterGenerator."

    .line 168
    .line 169
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v7, v1, v4, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v2, "Cipher.AES"

    .line 202
    .line 203
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$100()Ljava/util/Map;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    invoke-interface {v1, v2, v12}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v12, "$ECB"

    .line 216
    .line 217
    move-object/from16 v18, v11

    .line 218
    .line 219
    const-string v11, "Cipher.AES"

    .line 220
    .line 221
    invoke-static {v2, v3, v12, v1, v11}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.2"

    .line 225
    .line 226
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.22"

    .line 230
    .line 231
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.42"

    .line 235
    .line 236
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 240
    .line 241
    const-string v11, "Cipher"

    .line 242
    .line 243
    invoke-static {v3, v12, v1, v11, v2}, Landroidx/appcompat/widget/v;->g(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v19, v4

    .line 247
    .line 248
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 249
    .line 250
    invoke-static {v3, v12, v1, v11, v4}, Landroidx/appcompat/widget/v;->g(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 251
    .line 252
    .line 253
    move-object/from16 v20, v4

    .line 254
    .line 255
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    .line 257
    move-object/from16 v21, v2

    .line 258
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-interface {v1, v11, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v12, "$CBC"

    .line 283
    .line 284
    invoke-static {v2, v3, v12}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v1, v11, v6, v2, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    const-string v12, "$CBC"

    .line 293
    .line 294
    invoke-static {v2, v12, v1, v11, v7}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    const-string v12, "$CBC"

    .line 299
    .line 300
    invoke-static {v2, v3, v12}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-interface {v1, v11, v8, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 308
    .line 309
    const-string v12, "$OFB"

    .line 310
    .line 311
    invoke-static {v3, v12, v1, v11, v2}, Landroidx/appcompat/widget/v;->g(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 312
    .line 313
    .line 314
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 315
    .line 316
    move-object/from16 v22, v8

    .line 317
    .line 318
    const-string v8, "$OFB"

    .line 319
    .line 320
    invoke-static {v3, v8, v1, v11, v12}, Landroidx/appcompat/widget/v;->g(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 321
    .line 322
    .line 323
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 324
    .line 325
    move-object/from16 v23, v4

    .line 326
    .line 327
    const-string v4, "$OFB"

    .line 328
    .line 329
    invoke-static {v3, v4, v1, v11, v8}, Landroidx/appcompat/widget/v;->g(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 330
    .line 331
    .line 332
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 333
    .line 334
    move-object/from16 v24, v8

    .line 335
    .line 336
    const-string v8, "$CFB"

    .line 337
    .line 338
    invoke-static {v3, v8, v1, v11, v4}, Landroidx/appcompat/widget/v;->g(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 339
    .line 340
    .line 341
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 342
    .line 343
    move-object/from16 v25, v12

    .line 344
    .line 345
    const-string v12, "$CFB"

    .line 346
    .line 347
    invoke-static {v3, v12, v1, v11, v8}, Landroidx/appcompat/widget/v;->g(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 348
    .line 349
    .line 350
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 351
    .line 352
    move-object/from16 v26, v8

    .line 353
    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    move-object/from16 v27, v7

    .line 363
    .line 364
    const-string v7, "$CFB"

    .line 365
    .line 366
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    invoke-interface {v1, v11, v12, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string v7, "Cipher.AESWRAP"

    .line 377
    .line 378
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$100()Ljava/util/Map;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    invoke-interface {v1, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 383
    .line 384
    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v8, "$Wrap"

    .line 394
    .line 395
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    const-string v8, "Cipher.AESWRAP"

    .line 403
    .line 404
    invoke-interface {v1, v8, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 408
    .line 409
    const-string v8, "Alg.Alias.Cipher"

    .line 410
    .line 411
    const-string v11, "AESWRAP"

    .line 412
    .line 413
    invoke-interface {v1, v8, v7, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v28, v7

    .line 417
    .line 418
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 419
    .line 420
    invoke-interface {v1, v8, v7, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    move-object/from16 v29, v7

    .line 424
    .line 425
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 426
    .line 427
    invoke-interface {v1, v8, v7, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    move-object/from16 v30, v7

    .line 431
    .line 432
    const-string v7, "Alg.Alias.Cipher.AESKW"

    .line 433
    .line 434
    invoke-interface {v1, v7, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const-string v7, "Cipher.AESWRAPPAD"

    .line 438
    .line 439
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$100()Ljava/util/Map;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    invoke-interface {v1, v7, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 444
    .line 445
    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v11, "$WrapPad"

    .line 455
    .line 456
    move-object/from16 v31, v12

    .line 457
    .line 458
    const-string v12, "Cipher.AESWRAPPAD"

    .line 459
    .line 460
    invoke-static {v7, v11, v1, v12}, Lab/b;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap_pad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 464
    .line 465
    const-string v11, "AESWRAPPAD"

    .line 466
    .line 467
    invoke-interface {v1, v8, v7, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap_pad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 471
    .line 472
    invoke-interface {v1, v8, v12, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    move-object/from16 v32, v12

    .line 476
    .line 477
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 478
    .line 479
    invoke-interface {v1, v8, v12, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v33, v12

    .line 483
    .line 484
    const-string v12, "Alg.Alias.Cipher.AESKWP"

    .line 485
    .line 486
    move-object/from16 v34, v7

    .line 487
    .line 488
    const-string v7, "$RFC3211Wrap"

    .line 489
    .line 490
    invoke-static {v1, v12, v11, v3, v7}, Landroid/support/v4/media/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    const-string v11, "Cipher.AESRFC3211WRAP"

    .line 495
    .line 496
    const-string v12, "$RFC5649Wrap"

    .line 497
    .line 498
    invoke-static {v1, v11, v7, v3, v12}, Landroid/support/v4/media/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    const-string v11, "Cipher.AESRFC5649WRAP"

    .line 503
    .line 504
    const-string v12, "$AlgParamGenCCM"

    .line 505
    .line 506
    invoke-static {v1, v11, v7, v3, v12}, Landroid/support/v4/media/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    const-string v11, "AlgorithmParameterGenerator.CCM"

    .line 511
    .line 512
    invoke-static {v1, v11, v7, v5, v13}, Landroidx/camera/core/impl/a;->h(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    invoke-static {v1, v7, v14, v5, v15}, Landroidx/camera/core/impl/a;->h(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    invoke-static {v1, v7, v14, v5, v0}, Landroidx/camera/core/impl/a;->h(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v7

    .line 524
    invoke-interface {v1, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const-string v7, "Cipher.CCM"

    .line 528
    .line 529
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$100()Ljava/util/Map;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    invoke-interface {v1, v7, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 534
    .line 535
    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v11, "$CCM"

    .line 545
    .line 546
    const-string v12, "Cipher.CCM"

    .line 547
    .line 548
    invoke-static {v7, v11, v1, v12}, Lab/b;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v1, v8, v13, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-interface {v1, v8, v15, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v1, v8, v0, v14, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    const-string v11, "$AlgParamGenGCM"

    .line 562
    .line 563
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    const-string v11, "AlgorithmParameterGenerator.GCM"

    .line 571
    .line 572
    invoke-interface {v1, v11, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-static {v7, v9, v1, v10, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    move-object/from16 v11, v18

    .line 585
    .line 586
    invoke-static {v7, v11, v1, v10, v5}, Landroidx/room/util/a;->e(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    move-object/from16 v7, v17

    .line 591
    .line 592
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    invoke-interface {v1, v5, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    const-string v5, "Cipher.GCM"

    .line 603
    .line 604
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$100()Ljava/util/Map;

    .line 605
    .line 606
    .line 607
    move-result-object v12

    .line 608
    invoke-interface {v1, v5, v12}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 609
    .line 610
    .line 611
    new-instance v5, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    const-string v12, "$GCM"

    .line 617
    .line 618
    const-string v14, "Cipher.GCM"

    .line 619
    .line 620
    invoke-static {v5, v3, v12, v1, v14}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-interface {v1, v8, v9, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-interface {v1, v8, v11, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-static {v1, v8, v7, v10, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    const-string v10, "$KeyGen"

    .line 634
    .line 635
    const-string v12, "KeyGenerator.AES"

    .line 636
    .line 637
    invoke-static {v5, v10, v1, v12, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    const-string v10, "$KeyGen128"

    .line 642
    .line 643
    const-string v12, "KeyGenerator.2.16.840.1.101.3.4.2"

    .line 644
    .line 645
    invoke-static {v5, v10, v1, v12, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    const-string v12, "$KeyGen192"

    .line 650
    .line 651
    const-string v14, "KeyGenerator.2.16.840.1.101.3.4.22"

    .line 652
    .line 653
    invoke-static {v5, v12, v1, v14, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    const-string v14, "$KeyGen256"

    .line 658
    .line 659
    move-object/from16 v17, v8

    .line 660
    .line 661
    const-string v8, "KeyGenerator.2.16.840.1.101.3.4.42"

    .line 662
    .line 663
    invoke-static {v5, v14, v1, v8, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    const-string v8, "KeyGenerator"

    .line 668
    .line 669
    move-object/from16 v18, v0

    .line 670
    .line 671
    move-object/from16 v0, v21

    .line 672
    .line 673
    invoke-static {v5, v10, v1, v8, v0}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-static {v0, v3, v10}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-static {v1, v8, v6, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-static {v0, v10, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v0, v3, v10}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-static {v1, v8, v4, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    move-object/from16 v2, v20

    .line 698
    .line 699
    invoke-static {v0, v12, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-static {v0, v3, v12}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    move-object/from16 v2, v27

    .line 708
    .line 709
    invoke-static {v1, v8, v2, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    move-object/from16 v2, v25

    .line 714
    .line 715
    invoke-static {v0, v12, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-static {v0, v3, v12}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    move-object/from16 v2, v26

    .line 724
    .line 725
    invoke-static {v1, v8, v2, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    move-object/from16 v2, v23

    .line 730
    .line 731
    invoke-static {v0, v14, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-static {v0, v3, v14}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    move-object/from16 v2, v22

    .line 740
    .line 741
    invoke-static {v1, v8, v2, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    move-object/from16 v2, v24

    .line 746
    .line 747
    invoke-static {v0, v14, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-static {v0, v3, v14}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    move-object/from16 v2, v31

    .line 756
    .line 757
    invoke-static {v1, v8, v2, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    const-string v2, "$KeyGen"

    .line 762
    .line 763
    const-string v4, "KeyGenerator.AESWRAP"

    .line 764
    .line 765
    invoke-static {v0, v2, v1, v4, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    move-object/from16 v2, v28

    .line 770
    .line 771
    invoke-static {v0, v10, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-static {v0, v3, v12}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    move-object/from16 v2, v29

    .line 780
    .line 781
    invoke-static {v1, v8, v2, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    move-object/from16 v2, v30

    .line 786
    .line 787
    invoke-static {v0, v14, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-static {v0, v3, v10}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-static {v1, v8, v9, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-static {v0, v12, v1, v8, v11}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-static {v0, v3, v14}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-static {v1, v8, v7, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-static {v0, v10, v1, v8, v13}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-static {v0, v3, v12}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-static {v1, v8, v15, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    move-object/from16 v2, v18

    .line 824
    .line 825
    invoke-static {v0, v14, v1, v8, v2}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    const-string v4, "$KeyGen"

    .line 830
    .line 831
    const-string v5, "KeyGenerator.AESWRAPPAD"

    .line 832
    .line 833
    invoke-static {v0, v3, v4, v1, v5}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-static {v0, v3, v10}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    move-object/from16 v4, v34

    .line 842
    .line 843
    invoke-static {v1, v8, v4, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    move-object/from16 v4, v32

    .line 848
    .line 849
    invoke-static {v0, v12, v1, v8, v4}, Landroidx/browser/browseractions/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-static {v0, v3, v14}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    move-object/from16 v4, v33

    .line 858
    .line 859
    invoke-static {v1, v8, v4, v0, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    const-string v4, "$AESCMAC"

    .line 864
    .line 865
    const-string v5, "Mac.AESCMAC"

    .line 866
    .line 867
    invoke-static {v0, v4, v1, v5, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    const-string v4, "$AESCCMMAC"

    .line 872
    .line 873
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    const-string v4, "Mac.AESCCMMAC"

    .line 881
    .line 882
    invoke-interface {v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    .line 886
    .line 887
    const-string v4, "Alg.Alias.Mac."

    .line 888
    .line 889
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    const-string v4, "AESCCMMAC"

    .line 904
    .line 905
    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    .line 909
    .line 910
    const-string v4, "Alg.Alias.Mac."

    .line 911
    .line 912
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    const-string v4, "AESCCMMAC"

    .line 927
    .line 928
    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    const-string v4, "Alg.Alias.Mac."

    .line 934
    .line 935
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    const-string v2, "AESCCMMAC"

    .line 950
    .line 951
    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 955
    .line 956
    const-string v2, "PBEWITHSHAAND128BITAES-CBC-BC"

    .line 957
    .line 958
    move-object/from16 v4, v17

    .line 959
    .line 960
    invoke-interface {v1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 964
    .line 965
    const-string v6, "PBEWITHSHAAND192BITAES-CBC-BC"

    .line 966
    .line 967
    invoke-interface {v1, v4, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 971
    .line 972
    const-string v8, "PBEWITHSHAAND256BITAES-CBC-BC"

    .line 973
    .line 974
    invoke-interface {v1, v4, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 978
    .line 979
    const-string v11, "PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 980
    .line 981
    invoke-interface {v1, v4, v9, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 985
    .line 986
    const-string v13, "PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 987
    .line 988
    invoke-interface {v1, v4, v12, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    sget-object v14, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 992
    .line 993
    const-string v15, "PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 994
    .line 995
    invoke-static {v1, v4, v14, v15, v3}, Landroidx/browser/browseractions/b;->j(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    move-result-object v4

    .line 999
    move-object/from16 v17, v10

    .line 1000
    .line 1001
    const-string v10, "$PBEWithSHA1AESCBC128"

    .line 1002
    .line 1003
    move-object/from16 v18, v14

    .line 1004
    .line 1005
    const-string v14, "Cipher.PBEWITHSHAAND128BITAES-CBC-BC"

    .line 1006
    .line 1007
    invoke-static {v4, v10, v1, v14, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v4

    .line 1011
    const-string v10, "$PBEWithSHA1AESCBC192"

    .line 1012
    .line 1013
    const-string v14, "Cipher.PBEWITHSHAAND192BITAES-CBC-BC"

    .line 1014
    .line 1015
    invoke-static {v4, v10, v1, v14, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v4

    .line 1019
    const-string v10, "$PBEWithSHA1AESCBC256"

    .line 1020
    .line 1021
    const-string v14, "Cipher.PBEWITHSHAAND256BITAES-CBC-BC"

    .line 1022
    .line 1023
    invoke-static {v4, v10, v1, v14, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v4

    .line 1027
    const-string v10, "$PBEWithSHA256AESCBC128"

    .line 1028
    .line 1029
    const-string v14, "Cipher.PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 1030
    .line 1031
    invoke-static {v4, v10, v1, v14, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    const-string v10, "$PBEWithSHA256AESCBC192"

    .line 1036
    .line 1037
    const-string v14, "Cipher.PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 1038
    .line 1039
    invoke-static {v4, v10, v1, v14, v3}, Landroidx/room/util/a;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v4

    .line 1043
    const-string v10, "$PBEWithSHA256AESCBC256"

    .line 1044
    .line 1045
    const-string v14, "Cipher.PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 1046
    .line 1047
    invoke-static {v4, v10, v1, v14}, Lab/b;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC"

    .line 1051
    .line 1052
    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC"

    .line 1056
    .line 1057
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC"

    .line 1061
    .line 1062
    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC"

    .line 1066
    .line 1067
    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC"

    .line 1071
    .line 1072
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC"

    .line 1076
    .line 1077
    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHAAND128BITAES-BC"

    .line 1081
    .line 1082
    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHAAND192BITAES-BC"

    .line 1086
    .line 1087
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHAAND256BITAES-BC"

    .line 1091
    .line 1092
    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-BC"

    .line 1096
    .line 1097
    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-BC"

    .line 1101
    .line 1102
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-BC"

    .line 1106
    .line 1107
    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-BC"

    .line 1111
    .line 1112
    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-BC"

    .line 1116
    .line 1117
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-BC"

    .line 1121
    .line 1122
    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC"

    .line 1126
    .line 1127
    invoke-interface {v1, v4, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC"

    .line 1131
    .line 1132
    invoke-interface {v1, v4, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC"

    .line 1136
    .line 1137
    invoke-interface {v1, v4, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA256AND128BITAES-BC"

    .line 1141
    .line 1142
    invoke-interface {v1, v4, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA256AND192BITAES-BC"

    .line 1146
    .line 1147
    invoke-interface {v1, v4, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA256AND256BITAES-BC"

    .line 1151
    .line 1152
    invoke-interface {v1, v4, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-BC"

    .line 1156
    .line 1157
    invoke-interface {v1, v4, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-BC"

    .line 1161
    .line 1162
    const-string v10, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-BC"

    .line 1163
    .line 1164
    invoke-static {v1, v4, v13, v10, v15}, Landroidx/fragment/app/a;->e(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v4

    .line 1168
    const-string v10, "$PBEWithAESCBC"

    .line 1169
    .line 1170
    const-string v14, "Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    .line 1171
    .line 1172
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v4

    .line 1176
    const-string v10, "$PBEWithAESCBC"

    .line 1177
    .line 1178
    const-string v14, "Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    .line 1179
    .line 1180
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v4

    .line 1184
    const-string v10, "$PBEWithAESCBC"

    .line 1185
    .line 1186
    const-string v14, "Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    .line 1187
    .line 1188
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v4

    .line 1192
    const-string v10, "$KeyFactory"

    .line 1193
    .line 1194
    const-string v14, "SecretKeyFactory.AES"

    .line 1195
    .line 1196
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1200
    .line 1201
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    const-string v14, "$KeyFactory"

    .line 1210
    .line 1211
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v10

    .line 1218
    const-string v14, "SecretKeyFactory"

    .line 1219
    .line 1220
    invoke-interface {v1, v14, v4, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    .line 1227
    .line 1228
    const-string v10, "$PBEWithMD5And128BitAESCBCOpenSSL"

    .line 1229
    .line 1230
    const-string v14, "SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    .line 1231
    .line 1232
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v4

    .line 1236
    const-string v10, "$PBEWithMD5And192BitAESCBCOpenSSL"

    .line 1237
    .line 1238
    const-string v14, "SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    .line 1239
    .line 1240
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v4

    .line 1244
    const-string v10, "$PBEWithMD5And256BitAESCBCOpenSSL"

    .line 1245
    .line 1246
    const-string v14, "SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    .line 1247
    .line 1248
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    const-string v10, "$PBEWithSHAAnd128BitAESBC"

    .line 1253
    .line 1254
    const-string v14, "SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC"

    .line 1255
    .line 1256
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v4

    .line 1260
    const-string v10, "$PBEWithSHAAnd192BitAESBC"

    .line 1261
    .line 1262
    const-string v14, "SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC"

    .line 1263
    .line 1264
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v4

    .line 1268
    const-string v10, "$PBEWithSHAAnd256BitAESBC"

    .line 1269
    .line 1270
    const-string v14, "SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC"

    .line 1271
    .line 1272
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v4

    .line 1276
    const-string v10, "$PBEWithSHA256And128BitAESBC"

    .line 1277
    .line 1278
    const-string v14, "SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 1279
    .line 1280
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v4

    .line 1284
    const-string v10, "$PBEWithSHA256And192BitAESBC"

    .line 1285
    .line 1286
    const-string v14, "SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 1287
    .line 1288
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/camera/camera2/internal/c;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v4

    .line 1292
    const-string v10, "$PBEWithSHA256And256BitAESBC"

    .line 1293
    .line 1294
    const-string v14, "SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 1295
    .line 1296
    invoke-static {v4, v3, v10, v1, v14}, Landroidx/constraintlayout/core/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC"

    .line 1300
    .line 1301
    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC"

    .line 1305
    .line 1306
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC"

    .line 1310
    .line 1311
    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC"

    .line 1315
    .line 1316
    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC"

    .line 1320
    .line 1321
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC"

    .line 1325
    .line 1326
    invoke-interface {v1, v4, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC"

    .line 1330
    .line 1331
    invoke-interface {v1, v4, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC"

    .line 1335
    .line 1336
    invoke-interface {v1, v4, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC"

    .line 1340
    .line 1341
    invoke-interface {v1, v4, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-BC"

    .line 1345
    .line 1346
    invoke-interface {v1, v4, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-BC"

    .line 1350
    .line 1351
    invoke-interface {v1, v4, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    const-string v4, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-BC"

    .line 1355
    .line 1356
    invoke-interface {v1, v4, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    const-string v4, "Alg.Alias.SecretKeyFactory"

    .line 1360
    .line 1361
    invoke-interface {v1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1362
    .line 1363
    .line 1364
    invoke-interface {v1, v4, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1365
    .line 1366
    .line 1367
    invoke-interface {v1, v4, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1368
    .line 1369
    .line 1370
    invoke-interface {v1, v4, v9, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    invoke-interface {v1, v4, v12, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1374
    .line 1375
    .line 1376
    move-object/from16 v2, v18

    .line 1377
    .line 1378
    invoke-interface {v1, v4, v2, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC"

    .line 1382
    .line 1383
    const-string v6, "PKCS12PBE"

    .line 1384
    .line 1385
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC"

    .line 1389
    .line 1390
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC"

    .line 1394
    .line 1395
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    .line 1397
    .line 1398
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 1399
    .line 1400
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 1404
    .line 1405
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 1409
    .line 1410
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC"

    .line 1414
    .line 1415
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC"

    .line 1419
    .line 1420
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    .line 1422
    .line 1423
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC"

    .line 1424
    .line 1425
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    .line 1427
    .line 1428
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC"

    .line 1429
    .line 1430
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC"

    .line 1434
    .line 1435
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC"

    .line 1439
    .line 1440
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC"

    .line 1444
    .line 1445
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC"

    .line 1449
    .line 1450
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    const-string v4, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC"

    .line 1454
    .line 1455
    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    move-object/from16 v8, v16

    .line 1461
    .line 1462
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v0

    .line 1469
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v4

    .line 1488
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v4

    .line 1507
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v4

    .line 1526
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v0

    .line 1533
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v4

    .line 1545
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1556
    .line 1557
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v2

    .line 1564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v0

    .line 1571
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    .line 1573
    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    .line 1581
    .line 1582
    const-string v2, "$AESGMAC"

    .line 1583
    .line 1584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v0

    .line 1591
    move-object/from16 v2, v17

    .line 1592
    .line 1593
    invoke-static {v3, v2}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v2

    .line 1597
    move-object/from16 v4, p0

    .line 1598
    .line 1599
    move-object/from16 v5, v19

    .line 1600
    .line 1601
    invoke-virtual {v4, v1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addGMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    .line 1603
    .line 1604
    const-string v0, "$Poly1305"

    .line 1605
    .line 1606
    invoke-static {v3, v0}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v0

    .line 1610
    const-string v2, "$Poly1305KeyGen"

    .line 1611
    .line 1612
    invoke-static {v3, v2}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v2

    .line 1616
    invoke-virtual {v4, v1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addPoly1305Algorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    .line 1618
    .line 1619
    return-void
.end method
