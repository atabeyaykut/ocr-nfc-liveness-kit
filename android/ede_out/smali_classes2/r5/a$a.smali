.class public final Lr5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lr5/d;

.field public b:Lr5/e;

.field public c:Ljava/lang/String;

.field public d:Lr5/b;

.field public e:Ln5/e;

.field public f:Ln5/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr5/a$a;->a:Lr5/d;

    iput-object v0, p0, Lr5/a$a;->b:Lr5/e;

    iput-object v0, p0, Lr5/a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lr5/a$a;->d:Lr5/b;

    iput-object v0, p0, Lr5/a$a;->e:Ln5/e;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lr5/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr5/a$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr5/a$a;->c()Lr5/b;

    move-result-object v0

    iput-object v0, p0, Lr5/a$a;->d:Lr5/b;

    :cond_0
    invoke-virtual {p0}, Lr5/a$a;->b()Ln5/h;

    move-result-object v0

    iput-object v0, p0, Lr5/a$a;->f:Ln5/h;

    new-instance v0, Lr5/a;

    invoke-direct {v0, p0}, Lr5/a;-><init>(Lr5/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ln5/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lr5/a$a;->d:Lr5/b;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_1
    iget-object v1, p0, Lr5/a$a;->a:Lr5/d;

    .line 6
    .line 7
    invoke-static {v1, v0}, Ln5/g;->b(Lr5/d;Ln5/a;)Ln5/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ln5/h;

    .line 12
    .line 13
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/x$f;->e:Lcom/google/crypto/tink/shaded/protobuf/x$f;

    .line 14
    .line 15
    iget-object v0, v0, Ln5/g;->a:Lu5/i0;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lu5/i0;->l(Lcom/google/crypto/tink/shaded/protobuf/x$f;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 24
    .line 25
    .line 26
    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 27
    .line 28
    invoke-static {v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->l(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 29
    .line 30
    .line 31
    check-cast v2, Lu5/i0$a;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ln5/h;-><init>(Lu5/i0$a;)V
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-exception v0

    .line 40
    goto :goto_0

    .line 41
    :catch_2
    move-exception v0

    .line 42
    :goto_0
    :try_start_2
    sget v1, Lr5/a;->c:I

    .line 43
    .line 44
    const-string v1, "a"

    .line 45
    .line 46
    const-string v2, "cannot decrypt keyset: "

    .line 47
    .line 48
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lr5/a$a;->a:Lr5/d;

    .line 52
    .line 53
    invoke-virtual {v0}, Lr5/d;->a()[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lu5/i0;->A([BLcom/google/crypto/tink/shaded/protobuf/p;)Lu5/i0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lu5/i0;->w()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-lez v1, :cond_1

    .line 70
    .line 71
    new-instance v1, Ln5/h;

    .line 72
    .line 73
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/x$f;->e:Lcom/google/crypto/tink/shaded/protobuf/x$f;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lu5/i0;->l(Lcom/google/crypto/tink/shaded/protobuf/x$f;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 82
    .line 83
    .line 84
    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 85
    .line 86
    invoke-static {v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->l(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 87
    .line 88
    .line 89
    check-cast v2, Lu5/i0$a;

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ln5/h;-><init>(Lu5/i0$a;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-object v1

    .line 95
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 96
    .line 97
    const-string v1, "empty keyset"

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    :goto_2
    sget v1, Lr5/a;->c:I

    .line 104
    .line 105
    const-string v1, "a"

    .line 106
    .line 107
    const-string v2, "keyset not found, will generate a new one"

    .line 108
    .line 109
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lr5/a$a;->e:Ln5/e;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    new-instance v0, Ln5/h;

    .line 117
    .line 118
    invoke-static {}, Lu5/i0;->z()Lu5/i0$a;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Ln5/h;-><init>(Lu5/i0$a;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lr5/a$a;->e:Ln5/e;

    .line 126
    .line 127
    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, v1, Ln5/e;->a:Lu5/g0;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ln5/h;->a(Lu5/g0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    monitor-exit v0

    .line 134
    invoke-virtual {v0}, Ln5/h;->b()Ln5/g;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v1, v1, Ln5/g;->a:Lu5/i0;

    .line 139
    .line 140
    invoke-static {v1}, Ln5/r;->a(Lu5/i0;)Lu5/j0;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lu5/j0;->v()Lu5/j0$b;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lu5/j0$b;->x()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Ln5/h;->g(I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lr5/a$a;->d:Lr5/b;

    .line 156
    .line 157
    if-eqz v1, :cond_4

    .line 158
    .line 159
    invoke-virtual {v0}, Ln5/h;->b()Ln5/g;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v2, p0, Lr5/a$a;->b:Lr5/e;

    .line 164
    .line 165
    iget-object v3, p0, Lr5/a$a;->d:Lr5/b;

    .line 166
    .line 167
    iget-object v1, v1, Ln5/g;->a:Lu5/i0;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->toByteArray()[B

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    const/4 v5, 0x0

    .line 174
    new-array v6, v5, [B

    .line 175
    .line 176
    invoke-virtual {v3, v4, v6}, Lr5/b;->a([B[B)[B

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    :try_start_4
    new-array v6, v5, [B

    .line 181
    .line 182
    invoke-virtual {v3, v4, v6}, Lr5/b;->b([B[B)[B

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-static {v3, v6}, Lu5/i0;->A([BLcom/google/crypto/tink/shaded/protobuf/p;)Lu5/i0;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/x;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_4 .. :try_end_4} :catch_3

    .line 198
    if-eqz v3, :cond_3

    .line 199
    .line 200
    invoke-static {}, Lu5/z;->w()Lu5/z$a;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    array-length v6, v4

    .line 205
    invoke-static {v4, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 210
    .line 211
    .line 212
    iget-object v5, v3, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 213
    .line 214
    check-cast v5, Lu5/z;

    .line 215
    .line 216
    invoke-static {v5, v4}, Lu5/z;->t(Lu5/z;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v1}, Ln5/r;->a(Lu5/i0;)Lu5/j0;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 224
    .line 225
    .line 226
    iget-object v4, v3, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 227
    .line 228
    check-cast v4, Lu5/z;

    .line 229
    .line 230
    invoke-static {v4, v1}, Lu5/z;->u(Lu5/z;Lu5/j0;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Lu5/z;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->toByteArray()[B

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1}, Lb8/f;->B([B)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v3, v2, Lr5/e;->a:Landroid/content/SharedPreferences$Editor;

    .line 251
    .line 252
    iget-object v2, v2, Lr5/e;->b:Ljava/lang/String;

    .line 253
    .line 254
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_2

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 266
    .line 267
    const-string v1, "Failed to write to SharedPreferences"

    .line 268
    .line 269
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v0

    .line 273
    :cond_3
    :try_start_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 274
    .line 275
    const-string v1, "cannot encrypt keyset"

    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0
    :try_end_5
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0; {:try_start_5 .. :try_end_5} :catch_3

    .line 281
    :catch_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 282
    .line 283
    const-string v1, "invalid keyset, corrupted key material"

    .line 284
    .line 285
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_4
    invoke-virtual {v0}, Ln5/h;->b()Ln5/g;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    iget-object v2, p0, Lr5/a$a;->b:Lr5/e;

    .line 294
    .line 295
    iget-object v1, v1, Ln5/g;->a:Lu5/i0;

    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->toByteArray()[B

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-static {v1}, Lb8/f;->B([B)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iget-object v3, v2, Lr5/e;->a:Landroid/content/SharedPreferences$Editor;

    .line 309
    .line 310
    iget-object v2, v2, Lr5/e;->b:Ljava/lang/String;

    .line 311
    .line 312
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_5

    .line 321
    .line 322
    :goto_3
    return-object v0

    .line 323
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 324
    .line 325
    const-string v1, "Failed to write to SharedPreferences"

    .line 326
    .line 327
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :catchall_0
    move-exception v1

    .line 332
    monitor-exit v0

    .line 333
    throw v1

    .line 334
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 335
    .line 336
    const-string v1, "cannot read or generate keyset"

    .line 337
    .line 338
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v0
.end method

.method public final c()Lr5/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget v0, Lr5/a;->c:I

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    const-string v4, "a"

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "Android Keystore requires at least Android M"

    .line 20
    .line 21
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    new-instance v0, Lr5/c;

    .line 26
    .line 27
    invoke-direct {v0}, Lr5/c;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lr5/a$a;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lr5/c;->d(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const-string v6, "cannot use Android Keystore, it\'ll be disabled"

    .line 37
    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    :try_start_0
    iget-object v7, p0, Lr5/a$a;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v7}, Lr5/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v0

    .line 49
    :goto_1
    sget v2, Lr5/a;->c:I

    .line 50
    .line 51
    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_2
    :goto_2
    :try_start_1
    iget-object v7, p0, Lr5/a$a;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v7}, Lr5/c;->b(Ljava/lang/String;)Lr5/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    return-object v0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    goto :goto_3

    .line 64
    :catch_3
    move-exception v0

    .line 65
    :goto_3
    if-nez v5, :cond_3

    .line 66
    .line 67
    sget v2, Lr5/a;->c:I

    .line 68
    .line 69
    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_3
    new-instance v1, Ljava/security/KeyStoreException;

    .line 74
    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v4, p0, Lr5/a$a;->c:Ljava/lang/String;

    .line 78
    .line 79
    aput-object v4, v2, v3

    .line 80
    .line 81
    const-string v3, "the master key %s exists but is unusable"

    .line 82
    .line 83
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android-keystore://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lr5/a$a;->c:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key URI must start with android-keystore://"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lr5/d;

    invoke-direct {v0, p1, p2, p3}, Lr5/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lr5/a$a;->a:Lr5/d;

    new-instance v0, Lr5/e;

    invoke-direct {v0, p1, p2, p3}, Lr5/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lr5/a$a;->b:Lr5/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need a keyset name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need an Android context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
