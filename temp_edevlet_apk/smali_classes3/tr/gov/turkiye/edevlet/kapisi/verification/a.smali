.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity$ReadCard$doInBackground$2"
    f = "CardReadActivity.kt"
    l = {
        0x1d0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;",
            "Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/verification/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/verification/a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    invoke-direct {p1, v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 2
    .line 3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

    .line 4
    .line 5
    sget-object v2, Lq9/a;->a:Lq9/a;

    .line 6
    .line 7
    iget v3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->a:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    :try_start_0
    iget-object v3, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->a:Landroid/nfc/tech/IsoDep;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 32
    .line 33
    iget-object v5, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->b:Lorg/jmrtd/BACKeySpec;

    .line 34
    .line 35
    :try_start_1
    invoke-static {v3}, Lnet/sf/scuba/smartcards/CardService;->getInstance(Ljava/lang/Object;)Lnet/sf/scuba/smartcards/CardService;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v7}, Lnet/sf/scuba/smartcards/CardService;->open()V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lorg/jmrtd/PassportService;

    .line 43
    .line 44
    const/16 v8, 0x100

    .line 45
    .line 46
    const/16 v9, 0xdf

    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    const/4 v11, 0x1

    .line 50
    move-object v6, v3

    .line 51
    invoke-direct/range {v6 .. v11}, Lorg/jmrtd/PassportService;-><init>(Lnet/sf/scuba/smartcards/CardService;IIZZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lorg/jmrtd/PassportService;->open()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 55
    .line 56
    .line 57
    const/16 v6, 0x11d

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/16 v8, 0x100

    .line 61
    .line 62
    :try_start_2
    new-instance v9, Lorg/jmrtd/lds/CardSecurityFile;

    .line 63
    .line 64
    invoke-virtual {v3, v6, v8}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-direct {v9, v10}, Lorg/jmrtd/lds/CardSecurityFile;-><init>(Ljava/io/InputStream;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Lorg/jmrtd/lds/CardSecurityFile;->getSecurityInfos()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    const/4 v10, 0x0

    .line 80
    :cond_2
    :goto_0
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_3

    .line 85
    .line 86
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    check-cast v11, Lorg/jmrtd/lds/SecurityInfo;

    .line 91
    .line 92
    instance-of v12, v11, Lorg/jmrtd/lds/PACEInfo;

    .line 93
    .line 94
    if-eqz v12, :cond_2

    .line 95
    .line 96
    move-object v12, v11

    .line 97
    check-cast v12, Lorg/jmrtd/lds/PACEInfo;

    .line 98
    .line 99
    invoke-virtual {v12}, Lorg/jmrtd/lds/PACEInfo;->getObjectIdentifier()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v11, Lorg/jmrtd/lds/PACEInfo;

    .line 104
    .line 105
    invoke-virtual {v11}, Lorg/jmrtd/lds/PACEInfo;->getParameterId()Ljava/math/BigInteger;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-static {v11}, Lorg/jmrtd/lds/PACEInfo;->toParameterSpec(Ljava/math/BigInteger;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    invoke-virtual {v3, v5, v12, v11, v7}, Lorg/jmrtd/PassportService;->doPACE(Lorg/jmrtd/AccessKeySpec;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/math/BigInteger;)Lorg/jmrtd/protocol/PACEResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 114
    .line 115
    .line 116
    const/4 v10, 0x1

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception v9

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    move-exception v9

    .line 121
    const/4 v10, 0x0

    .line 122
    :goto_1
    :try_start_4
    sget-object v11, Lyd/a;->a:Lyd/a$a;

    .line 123
    .line 124
    invoke-virtual {v11, v9}, Lyd/a$a;->b(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 125
    .line 126
    .line 127
    :cond_3
    const/16 v9, 0xdf

    .line 128
    .line 129
    if-nez v10, :cond_5

    .line 130
    .line 131
    :try_start_5
    new-instance v11, Lorg/jmrtd/lds/CardSecurityFile;

    .line 132
    .line 133
    const/16 v12, 0x11c

    .line 134
    .line 135
    invoke-virtual {v3, v12, v9}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    invoke-direct {v11, v12}, Lorg/jmrtd/lds/CardSecurityFile;-><init>(Ljava/io/InputStream;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11}, Lorg/jmrtd/lds/CardSecurityFile;->getSecurityInfos()Ljava/util/Collection;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    if-eqz v12, :cond_5

    .line 155
    .line 156
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    check-cast v12, Lorg/jmrtd/lds/SecurityInfo;

    .line 161
    .line 162
    instance-of v13, v12, Lorg/jmrtd/lds/PACEInfo;

    .line 163
    .line 164
    if-eqz v13, :cond_4

    .line 165
    .line 166
    move-object v13, v12

    .line 167
    check-cast v13, Lorg/jmrtd/lds/PACEInfo;

    .line 168
    .line 169
    invoke-virtual {v13}, Lorg/jmrtd/lds/PACEInfo;->getObjectIdentifier()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    check-cast v12, Lorg/jmrtd/lds/PACEInfo;

    .line 174
    .line 175
    invoke-virtual {v12}, Lorg/jmrtd/lds/PACEInfo;->getParameterId()Ljava/math/BigInteger;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    invoke-static {v12}, Lorg/jmrtd/lds/PACEInfo;->toParameterSpec(Ljava/math/BigInteger;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    invoke-virtual {v3, v5, v13, v12, v7}, Lorg/jmrtd/PassportService;->doPACE(Lorg/jmrtd/AccessKeySpec;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/math/BigInteger;)Lorg/jmrtd/protocol/PACEResult;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 184
    .line 185
    .line 186
    const/4 v10, 0x1

    .line 187
    goto :goto_2

    .line 188
    :catch_2
    move-exception v11

    .line 189
    :try_start_6
    sget-object v12, Lyd/a;->a:Lyd/a$a;

    .line 190
    .line 191
    invoke-virtual {v12, v11}, Lyd/a$a;->b(Ljava/lang/Exception;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    if-eqz v10, :cond_6

    .line 195
    .line 196
    const/4 v11, 0x1

    .line 197
    goto :goto_3

    .line 198
    :cond_6
    const/4 v11, 0x0

    .line 199
    :goto_3
    invoke-virtual {v3, v11}, Lorg/jmrtd/PassportService;->sendSelectApplet(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 200
    .line 201
    .line 202
    if-nez v10, :cond_7

    .line 203
    .line 204
    const/16 v10, 0x11e

    .line 205
    .line 206
    :try_start_7
    invoke-virtual {v3, v10, v8}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-virtual {v10}, Lnet/sf/scuba/smartcards/CardFileInputStream;->read()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catch_3
    :try_start_8
    invoke-virtual {v3, v5}, Lorg/jmrtd/PassportService;->doBAC(Lorg/jmrtd/AccessKeySpec;)Lorg/jmrtd/protocol/BACResult;

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_4
    invoke-virtual {v3, v6, v9}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v3, v6, v8}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 222
    .line 223
    .line 224
    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 225
    const/4 v9, 0x2

    .line 226
    :try_start_9
    new-instance v10, Lorg/jmrtd/lds/SODFile;

    .line 227
    .line 228
    invoke-direct {v10, v5}, Lorg/jmrtd/lds/SODFile;-><init>(Ljava/io/InputStream;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10}, Lorg/jmrtd/lds/AbstractTaggedLDSFile;->getEncoded()[B

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-static {v5, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 239
    goto :goto_5

    .line 240
    :catch_4
    :try_start_a
    new-instance v5, Lorg/jmrtd/lds/SODFile;

    .line 241
    .line 242
    invoke-direct {v5, v6}, Lorg/jmrtd/lds/SODFile;-><init>(Ljava/io/InputStream;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Lorg/jmrtd/lds/AbstractTaggedLDSFile;->getEncoded()[B

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v5, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    :goto_5
    iput-object v5, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->f:Ljava/lang/String;

    .line 254
    .line 255
    const/16 v5, 0x101

    .line 256
    .line 257
    invoke-virtual {v3, v5, v8}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v6}, Lnet/sf/scuba/smartcards/CardFileInputStream;->getLength()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-lez v6, :cond_8

    .line 266
    .line 267
    new-array v6, v6, [B

    .line 268
    .line 269
    invoke-virtual {v3, v5, v8}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    new-instance v10, Ljava/io/DataInputStream;

    .line 274
    .line 275
    invoke-direct {v10, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_8
    move-object v6, v7

    .line 283
    :goto_6
    const/16 v5, 0x10f

    .line 284
    .line 285
    invoke-virtual {v3, v5, v8}, Lorg/jmrtd/PassportService;->getInputStream(SI)Lnet/sf/scuba/smartcards/CardFileInputStream;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {v5}, Lnet/sf/scuba/smartcards/CardFileInputStream;->getLength()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-lez v8, :cond_9

    .line 294
    .line 295
    new-array v7, v8, [B

    .line 296
    .line 297
    new-instance v8, Ljava/io/DataInputStream;

    .line 298
    .line 299
    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 303
    .line 304
    .line 305
    :cond_9
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 306
    .line 307
    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 308
    .line 309
    .line 310
    new-instance v8, Lorg/jmrtd/lds/icao/DG15File;

    .line 311
    .line 312
    invoke-direct {v8, v5}, Lorg/jmrtd/lds/icao/DG15File;-><init>(Ljava/io/InputStream;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8}, Lorg/jmrtd/lds/icao/DG15File;->getPublicKey()Ljava/security/PublicKey;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    iput-object v6, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->g:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v7, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    iput-object v6, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->h:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 330
    .line 331
    :try_start_b
    iget-object v6, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->e:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v6, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    iget-object v7, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->k:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v8, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->l:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v3, v5, v7, v8, v6}, Lorg/jmrtd/PassportService;->doAA(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B)Lorg/jmrtd/protocol/AAResult;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v3}, Lorg/jmrtd/protocol/AAResult;->getResponse()[B

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 353
    :try_start_c
    iput-object v3, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->j:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 354
    .line 355
    iput v4, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/a;->a:I

    .line 356
    .line 357
    const-wide/16 v0, 0x3e8

    .line 358
    .line 359
    invoke-static {v0, v1, p0}, La6/a;->k(JLp9/d;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    if-ne p1, v2, :cond_a

    .line 364
    .line 365
    return-object v2

    .line 366
    :cond_a
    :goto_7
    const-string p1, "OK"

    .line 367
    .line 368
    return-object p1

    .line 369
    :catch_5
    move-exception v1

    .line 370
    :try_start_d
    sget-object v2, Lyd/a;->a:Lyd/a$a;

    .line 371
    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v4, "error0 "

    .line 378
    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    new-array v4, p1, [Ljava/lang/Object;

    .line 390
    .line 391
    invoke-virtual {v2, v3, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    sget v2, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->r:I

    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 407
    return-object p1

    .line 408
    :catch_6
    move-exception v1

    .line 409
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    .line 411
    .line 412
    sget-object v2, Lyd/a;->a:Lyd/a$a;

    .line 413
    .line 414
    const-string v3, "error1 "

    .line 415
    .line 416
    invoke-static {v3, v1}, Landroid/support/v4/media/a;->e(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    new-array p1, p1, [Ljava/lang/Object;

    .line 421
    .line 422
    invoke-virtual {v2, v3, p1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->r:I

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    return-object p1
.end method
