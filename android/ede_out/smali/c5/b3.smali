.class public final Lc5/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lc5/e3;


# direct methods
.method public constructor <init>(Lc5/e3;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lc5/b3;->f:Lc5/e3;

    iput p2, p0, Lc5/b3;->a:I

    iput-object p3, p0, Lc5/b3;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/b3;->c:Ljava/lang/Object;

    iput-object p5, p0, Lc5/b3;->d:Ljava/lang/Object;

    iput-object p6, p0, Lc5/b3;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lc5/b3;->f:Lc5/e3;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, v0, Lc5/y4;->b:Z

    .line 13
    .line 14
    if-eqz v1, :cond_d

    .line 15
    .line 16
    iget-object v1, p0, Lc5/b3;->f:Lc5/e3;

    .line 17
    .line 18
    iget-char v2, v1, Lc5/e3;->c:C

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v2, :cond_5

    .line 23
    .line 24
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast v1, Lc5/i4;

    .line 27
    .line 28
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 29
    .line 30
    iget-object v2, v1, Lc5/e;->d:Ljava/lang/Boolean;

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, v1, Lc5/e;->d:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 40
    .line 41
    check-cast v2, Lc5/i4;

    .line 42
    .line 43
    iget-object v2, v2, Lc5/i4;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {}, Lw3/e;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 68
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iput-object v2, v1, Lc5/e;->d:Ljava/lang/Boolean;

    .line 73
    .line 74
    :cond_1
    iget-object v2, v1, Lc5/e;->d:Ljava/lang/Boolean;

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    iput-object v2, v1, Lc5/e;->d:Ljava/lang/Boolean;

    .line 81
    .line 82
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 83
    .line 84
    check-cast v2, Lc5/i4;

    .line 85
    .line 86
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 87
    .line 88
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 92
    .line 93
    const-string v5, "My process not in the list of running processes"

    .line 94
    .line 95
    invoke-virtual {v2, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    monitor-exit v1

    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw v0

    .line 103
    :cond_3
    :goto_1
    iget-object v1, v1, Lc5/e;->d:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    iget-object v1, p0, Lc5/b3;->f:Lc5/e3;

    .line 112
    .line 113
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 114
    .line 115
    check-cast v2, Lc5/i4;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const/16 v2, 0x43

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget-object v1, p0, Lc5/b3;->f:Lc5/e3;

    .line 124
    .line 125
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 126
    .line 127
    check-cast v2, Lc5/i4;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const/16 v2, 0x63

    .line 133
    .line 134
    :goto_2
    iput-char v2, v1, Lc5/e3;->c:C

    .line 135
    .line 136
    :cond_5
    iget-object v1, p0, Lc5/b3;->f:Lc5/e3;

    .line 137
    .line 138
    iget-wide v5, v1, Lc5/e3;->d:J

    .line 139
    .line 140
    const-wide/16 v7, 0x0

    .line 141
    .line 142
    cmp-long v2, v5, v7

    .line 143
    .line 144
    if-gez v2, :cond_6

    .line 145
    .line 146
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 147
    .line 148
    check-cast v2, Lc5/i4;

    .line 149
    .line 150
    iget-object v2, v2, Lc5/i4;->g:Lc5/e;

    .line 151
    .line 152
    invoke-virtual {v2}, Lc5/e;->g()V

    .line 153
    .line 154
    .line 155
    const-wide/32 v5, 0xb3b0

    .line 156
    .line 157
    .line 158
    iput-wide v5, v1, Lc5/e3;->d:J

    .line 159
    .line 160
    :cond_6
    iget v1, p0, Lc5/b3;->a:I

    .line 161
    .line 162
    const-string v2, "01VDIWEA?"

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    iget-object v2, p0, Lc5/b3;->f:Lc5/e3;

    .line 169
    .line 170
    iget-char v5, v2, Lc5/e3;->c:C

    .line 171
    .line 172
    iget-wide v9, v2, Lc5/e3;->d:J

    .line 173
    .line 174
    iget-object v2, p0, Lc5/b3;->b:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v6, p0, Lc5/b3;->c:Ljava/lang/Object;

    .line 177
    .line 178
    iget-object v11, p0, Lc5/b3;->d:Ljava/lang/Object;

    .line 179
    .line 180
    iget-object v12, p0, Lc5/b3;->e:Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {v4, v2, v6, v11, v12}, Lc5/e3;->r(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    add-int/lit8 v6, v6, 0x18

    .line 193
    .line 194
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .line 196
    .line 197
    const-string v6, "2"

    .line 198
    .line 199
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v1, ":"

    .line 212
    .line 213
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    const/16 v4, 0x400

    .line 228
    .line 229
    if-le v2, v4, :cond_7

    .line 230
    .line 231
    iget-object v1, p0, Lc5/b3;->b:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :cond_7
    iget-object v0, v0, Lc5/s3;->d:Lc5/p3;

    .line 238
    .line 239
    if-eqz v0, :cond_c

    .line 240
    .line 241
    iget-object v2, v0, Lc5/p3;->e:Lc5/s3;

    .line 242
    .line 243
    invoke-virtual {v2}, Lc5/x4;->b()V

    .line 244
    .line 245
    .line 246
    iget-object v3, v0, Lc5/p3;->e:Lc5/s3;

    .line 247
    .line 248
    invoke-virtual {v3}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    iget-object v4, v0, Lc5/p3;->a:Ljava/lang/String;

    .line 253
    .line 254
    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 255
    .line 256
    .line 257
    move-result-wide v3

    .line 258
    cmp-long v5, v3, v7

    .line 259
    .line 260
    if-nez v5, :cond_8

    .line 261
    .line 262
    invoke-virtual {v0}, Lc5/p3;->a()V

    .line 263
    .line 264
    .line 265
    :cond_8
    if-nez v1, :cond_9

    .line 266
    .line 267
    const-string v1, ""

    .line 268
    .line 269
    :cond_9
    invoke-virtual {v2}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iget-object v4, v0, Lc5/p3;->b:Ljava/lang/String;

    .line 274
    .line 275
    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 276
    .line 277
    .line 278
    move-result-wide v5

    .line 279
    iget-object v0, v0, Lc5/p3;->c:Ljava/lang/String;

    .line 280
    .line 281
    const-wide/16 v9, 0x1

    .line 282
    .line 283
    cmp-long v3, v5, v7

    .line 284
    .line 285
    if-gtz v3, :cond_a

    .line 286
    .line 287
    invoke-virtual {v2}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    .line 297
    .line 298
    invoke-interface {v2, v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_a
    iget-object v3, v2, Lc5/x4;->a:Lc5/z4;

    .line 303
    .line 304
    check-cast v3, Lc5/i4;

    .line 305
    .line 306
    iget-object v3, v3, Lc5/i4;->m:Lc5/v7;

    .line 307
    .line 308
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3}, Lc5/v7;->p()Ljava/security/SecureRandom;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    .line 316
    .line 317
    .line 318
    move-result-wide v7

    .line 319
    add-long/2addr v5, v9

    .line 320
    const-wide v9, 0x7fffffffffffffffL

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    div-long v11, v9, v5

    .line 326
    .line 327
    invoke-virtual {v2}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    and-long/2addr v7, v9

    .line 336
    cmp-long v3, v7, v11

    .line 337
    .line 338
    if-gez v3, :cond_b

    .line 339
    .line 340
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    .line 342
    .line 343
    :cond_b
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 344
    .line 345
    .line 346
    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    .line 348
    .line 349
    :cond_c
    return-void

    .line 350
    :cond_d
    iget-object v0, p0, Lc5/b3;->f:Lc5/e3;

    .line 351
    .line 352
    invoke-virtual {v0}, Lc5/e3;->t()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const-string v1, "Persisted config not initialized. Not logging error/warn"

    .line 357
    .line 358
    const/4 v2, 0x6

    .line 359
    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    return-void
.end method
