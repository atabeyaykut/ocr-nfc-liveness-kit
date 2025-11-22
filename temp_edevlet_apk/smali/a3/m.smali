.class public final La3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lv2/e;

.field public final c:Lb3/d;

.field public final d:La3/p;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lc3/b;

.field public final g:Ld3/a;

.field public final h:Ld3/a;

.field public final i:Lb3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv2/e;Lb3/d;La3/p;Ljava/util/concurrent/Executor;Lc3/b;Ld3/a;Ld3/a;Lb3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/m;->a:Landroid/content/Context;

    iput-object p2, p0, La3/m;->b:Lv2/e;

    iput-object p3, p0, La3/m;->c:Lb3/d;

    iput-object p4, p0, La3/m;->d:La3/p;

    iput-object p5, p0, La3/m;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, La3/m;->f:Lc3/b;

    iput-object p7, p0, La3/m;->g:Ld3/a;

    iput-object p8, p0, La3/m;->h:Ld3/a;

    iput-object p9, p0, La3/m;->i:Lb3/c;

    return-void
.end method


# virtual methods
.method public final a(Lu2/s;I)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lu2/s;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v6, La3/m;->b:Lv2/e;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lv2/e;->get(Ljava/lang/String;)Lv2/m;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    move-wide v4, v1

    .line 18
    :cond_0
    :goto_0
    new-instance v1, La3/h;

    .line 19
    .line 20
    invoke-direct {v1, v6, v7}, La3/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v8, v6, La3/m;->f:Lc3/b;

    .line 24
    .line 25
    invoke-interface {v8, v1}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_a

    .line 36
    .line 37
    new-instance v1, Landroidx/camera/lifecycle/d;

    .line 38
    .line 39
    invoke-direct {v1, v6, v7}, Landroidx/camera/lifecycle/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v8, v1}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v2, v1

    .line 47
    check-cast v2, Ljava/lang/Iterable;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const/4 v1, 0x2

    .line 61
    const/4 v9, 0x1

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    const-string v3, "Uploader"

    .line 65
    .line 66
    const-string v10, "Unknown backend for %s, deleting event batch for it..."

    .line 67
    .line 68
    invoke-static {v7, v3, v10}, Lc5/w;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lv2/b;

    .line 72
    .line 73
    const/4 v10, 0x3

    .line 74
    const-wide/16 v11, -0x1

    .line 75
    .line 76
    invoke-direct {v3, v10, v11, v12}, Lv2/b;-><init>(IJ)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_3

    .line 95
    .line 96
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    check-cast v11, Lb3/j;

    .line 101
    .line 102
    invoke-virtual {v11}, Lb3/j;->a()Lu2/n;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lu2/s;->c()[B

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    if-eqz v10, :cond_4

    .line 115
    .line 116
    const/4 v10, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const/4 v10, 0x0

    .line 119
    :goto_2
    if-eqz v10, :cond_5

    .line 120
    .line 121
    iget-object v10, v6, La3/m;->i:Lb3/c;

    .line 122
    .line 123
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    new-instance v11, Landroidx/camera/camera2/interop/d;

    .line 127
    .line 128
    invoke-direct {v11, v1, v10}, Landroidx/camera/camera2/interop/d;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v8, v11}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    check-cast v10, Ly2/a;

    .line 136
    .line 137
    new-instance v11, Lu2/h$a;

    .line 138
    .line 139
    invoke-direct {v11}, Lu2/h$a;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v12, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v12, v11, Lu2/h$a;->f:Ljava/util/Map;

    .line 148
    .line 149
    iget-object v12, v6, La3/m;->g:Ld3/a;

    .line 150
    .line 151
    invoke-interface {v12}, Ld3/a;->a()J

    .line 152
    .line 153
    .line 154
    move-result-wide v12

    .line 155
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    iput-object v12, v11, Lu2/h$a;->d:Ljava/lang/Long;

    .line 160
    .line 161
    iget-object v12, v6, La3/m;->h:Ld3/a;

    .line 162
    .line 163
    invoke-interface {v12}, Ld3/a;->a()J

    .line 164
    .line 165
    .line 166
    move-result-wide v12

    .line 167
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    iput-object v12, v11, Lu2/h$a;->e:Ljava/lang/Long;

    .line 172
    .line 173
    const-string v12, "GDT_CLIENT_METRICS"

    .line 174
    .line 175
    invoke-virtual {v11, v12}, Lu2/h$a;->d(Ljava/lang/String;)Lu2/h$a;

    .line 176
    .line 177
    .line 178
    new-instance v12, Lu2/m;

    .line 179
    .line 180
    new-instance v13, Lr2/b;

    .line 181
    .line 182
    const-string v14, "proto"

    .line 183
    .line 184
    invoke-direct {v13, v14}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    sget-object v14, Lu2/p;->a:Lw6/h;

    .line 191
    .line 192
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    .line 196
    .line 197
    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .line 199
    .line 200
    :try_start_0
    invoke-virtual {v14, v15, v10}, Lw6/h;->a(Ljava/io/ByteArrayOutputStream;Ly2/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    :catch_0
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-direct {v12, v13, v10}, Lu2/m;-><init>(Lr2/b;[B)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v12}, Lu2/h$a;->c(Lu2/m;)Lu2/h$a;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11}, Lu2/h$a;->b()Lu2/h;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-interface {v0, v10}, Lv2/m;->b(Lu2/n;)Lu2/h;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lu2/s;->c()[B

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    new-instance v11, Lv2/a;

    .line 229
    .line 230
    invoke-direct {v11, v3, v10}, Lv2/a;-><init>(Ljava/lang/Iterable;[B)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v0, v11}, Lv2/m;->a(Lv2/a;)Lv2/b;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    :goto_3
    iget v10, v3, Lv2/b;->a:I

    .line 238
    .line 239
    if-ne v10, v1, :cond_6

    .line 240
    .line 241
    new-instance v10, La3/i;

    .line 242
    .line 243
    move-object v0, v10

    .line 244
    move-object/from16 v1, p0

    .line 245
    .line 246
    move-object/from16 v3, p1

    .line 247
    .line 248
    invoke-direct/range {v0 .. v5}, La3/i;-><init>(La3/m;Ljava/lang/Iterable;Lu2/s;J)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v8, v10}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    iget-object v0, v6, La3/m;->d:La3/p;

    .line 255
    .line 256
    add-int/lit8 v1, p2, 0x1

    .line 257
    .line 258
    invoke-interface {v0, v7, v1, v9}, La3/p;->a(Lu2/s;IZ)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_6
    new-instance v1, La3/j;

    .line 263
    .line 264
    invoke-direct {v1, v6, v2}, La3/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v8, v1}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    iget v1, v3, Lv2/b;->a:I

    .line 271
    .line 272
    if-ne v1, v9, :cond_7

    .line 273
    .line 274
    iget-wide v1, v3, Lv2/b;->b:J

    .line 275
    .line 276
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 277
    .line 278
    .line 279
    move-result-wide v4

    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_7
    const/4 v3, 0x4

    .line 283
    if-ne v1, v3, :cond_0

    .line 284
    .line 285
    new-instance v1, Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_9

    .line 299
    .line 300
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    check-cast v3, Lb3/j;

    .line 305
    .line 306
    invoke-virtual {v3}, Lb3/j;->a()Lu2/n;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v3}, Lu2/n;->g()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-nez v10, :cond_8

    .line 319
    .line 320
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    goto :goto_5

    .line 325
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    check-cast v10, Ljava/lang/Integer;

    .line 330
    .line 331
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v10

    .line 335
    add-int/2addr v10, v9

    .line 336
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    :goto_5
    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_9
    new-instance v2, La3/k;

    .line 345
    .line 346
    invoke-direct {v2, v6, v1}, La3/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v8, v2}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :cond_a
    new-instance v0, La3/l;

    .line 355
    .line 356
    invoke-direct {v0, v6, v7, v4, v5}, La3/l;-><init>(La3/m;Lu2/s;J)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v8, v0}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    return-void
.end method
