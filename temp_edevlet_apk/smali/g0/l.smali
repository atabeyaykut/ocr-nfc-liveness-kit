.class public final Lg0/l;
.super Lg0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/a<",
        "Lk0/k;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lk0/k;

.field public final j:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq0/a<",
            "Lk0/k;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lg0/a;-><init>(Ljava/util/List;)V

    new-instance p1, Lk0/k;

    invoke-direct {p1}, Lk0/k;-><init>()V

    iput-object p1, p0, Lg0/l;->i:Lk0/k;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lg0/l;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final g(Lq0/a;F)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lq0/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lk0/k;

    .line 10
    .line 11
    iget-object v1, v1, Lq0/a;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lk0/k;

    .line 14
    .line 15
    iget-object v4, v0, Lg0/l;->i:Lk0/k;

    .line 16
    .line 17
    iget-object v5, v4, Lk0/k;->b:Landroid/graphics/PointF;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    new-instance v5, Landroid/graphics/PointF;

    .line 22
    .line 23
    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v5, v4, Lk0/k;->b:Landroid/graphics/PointF;

    .line 27
    .line 28
    :cond_0
    iget-boolean v5, v3, Lk0/k;->c:Z

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    iget-boolean v5, v1, Lk0/k;->c:Z

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 41
    :goto_1
    iput-boolean v5, v4, Lk0/k;->c:Z

    .line 42
    .line 43
    iget-object v5, v3, Lk0/k;->a:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget-object v8, v1, Lk0/k;->a:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget-object v9, v1, Lk0/k;->a:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eq v7, v8, :cond_3

    .line 58
    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v8, "Curves must have the same number of control points. Shape 1: "

    .line 62
    .line 63
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v8, "\tShape 2: "

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v7}, Lp0/c;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    iget-object v8, v4, Lk0/k;->a:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-ge v10, v7, :cond_4

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    :goto_2
    if-ge v10, v7, :cond_5

    .line 117
    .line 118
    new-instance v11, Li0/a;

    .line 119
    .line 120
    invoke-direct {v11}, Li0/a;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    add-int/lit8 v10, v10, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-le v10, v7, :cond_5

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    add-int/lit8 v10, v10, -0x1

    .line 140
    .line 141
    :goto_3
    if-lt v10, v7, :cond_5

    .line 142
    .line 143
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    add-int/lit8 v11, v11, -0x1

    .line 148
    .line 149
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    add-int/lit8 v10, v10, -0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    iget-object v3, v3, Lk0/k;->b:Landroid/graphics/PointF;

    .line 156
    .line 157
    iget-object v1, v1, Lk0/k;->b:Landroid/graphics/PointF;

    .line 158
    .line 159
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 160
    .line 161
    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 162
    .line 163
    sget-object v11, Lp0/f;->a:Landroid/graphics/PointF;

    .line 164
    .line 165
    invoke-static {v10, v7, v2, v7}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 170
    .line 171
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 172
    .line 173
    invoke-static {v1, v3, v2, v3}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget-object v3, v4, Lk0/k;->b:Landroid/graphics/PointF;

    .line 178
    .line 179
    if-nez v3, :cond_6

    .line 180
    .line 181
    new-instance v3, Landroid/graphics/PointF;

    .line 182
    .line 183
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v3, v4, Lk0/k;->b:Landroid/graphics/PointF;

    .line 187
    .line 188
    :cond_6
    iget-object v3, v4, Lk0/k;->b:Landroid/graphics/PointF;

    .line 189
    .line 190
    invoke-virtual {v3, v7, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    add-int/lit8 v1, v1, -0x1

    .line 198
    .line 199
    :goto_4
    if-ltz v1, :cond_7

    .line 200
    .line 201
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Li0/a;

    .line 206
    .line 207
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Li0/a;

    .line 212
    .line 213
    iget-object v10, v3, Li0/a;->a:Landroid/graphics/PointF;

    .line 214
    .line 215
    iget-object v11, v7, Li0/a;->a:Landroid/graphics/PointF;

    .line 216
    .line 217
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    check-cast v12, Li0/a;

    .line 222
    .line 223
    iget v13, v10, Landroid/graphics/PointF;->x:F

    .line 224
    .line 225
    iget v14, v11, Landroid/graphics/PointF;->x:F

    .line 226
    .line 227
    invoke-static {v14, v13, v2, v13}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 232
    .line 233
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 234
    .line 235
    invoke-static {v11, v10, v2, v10}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    iget-object v11, v12, Li0/a;->a:Landroid/graphics/PointF;

    .line 240
    .line 241
    invoke-virtual {v11, v13, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    check-cast v10, Li0/a;

    .line 249
    .line 250
    iget-object v11, v3, Li0/a;->b:Landroid/graphics/PointF;

    .line 251
    .line 252
    iget v12, v11, Landroid/graphics/PointF;->x:F

    .line 253
    .line 254
    iget-object v13, v7, Li0/a;->b:Landroid/graphics/PointF;

    .line 255
    .line 256
    iget v14, v13, Landroid/graphics/PointF;->x:F

    .line 257
    .line 258
    invoke-static {v14, v12, v2, v12}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 263
    .line 264
    iget v13, v13, Landroid/graphics/PointF;->y:F

    .line 265
    .line 266
    invoke-static {v13, v11, v2, v11}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    iget-object v10, v10, Li0/a;->b:Landroid/graphics/PointF;

    .line 271
    .line 272
    invoke-virtual {v10, v12, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    check-cast v10, Li0/a;

    .line 280
    .line 281
    iget-object v3, v3, Li0/a;->c:Landroid/graphics/PointF;

    .line 282
    .line 283
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 284
    .line 285
    iget-object v7, v7, Li0/a;->c:Landroid/graphics/PointF;

    .line 286
    .line 287
    iget v12, v7, Landroid/graphics/PointF;->x:F

    .line 288
    .line 289
    invoke-static {v12, v11, v2, v11}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 294
    .line 295
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 296
    .line 297
    invoke-static {v7, v3, v2, v3}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    iget-object v7, v10, Li0/a;->c:Landroid/graphics/PointF;

    .line 302
    .line 303
    invoke-virtual {v7, v11, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 304
    .line 305
    .line 306
    add-int/lit8 v1, v1, -0x1

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_7
    iget-object v1, v0, Lg0/l;->j:Landroid/graphics/Path;

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 312
    .line 313
    .line 314
    iget-object v2, v4, Lk0/k;->b:Landroid/graphics/PointF;

    .line 315
    .line 316
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 317
    .line 318
    iget v5, v2, Landroid/graphics/PointF;->y:F

    .line 319
    .line 320
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 321
    .line 322
    .line 323
    sget-object v3, Lp0/f;->a:Landroid/graphics/PointF;

    .line 324
    .line 325
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 326
    .line 327
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 328
    .line 329
    invoke-virtual {v3, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 330
    .line 331
    .line 332
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-ge v6, v2, :cond_9

    .line 337
    .line 338
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Li0/a;

    .line 343
    .line 344
    iget-object v5, v2, Li0/a;->a:Landroid/graphics/PointF;

    .line 345
    .line 346
    invoke-virtual {v5, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    iget-object v9, v2, Li0/a;->b:Landroid/graphics/PointF;

    .line 351
    .line 352
    iget-object v2, v2, Li0/a;->c:Landroid/graphics/PointF;

    .line 353
    .line 354
    if-eqz v7, :cond_8

    .line 355
    .line 356
    invoke-virtual {v9, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    if-eqz v7, :cond_8

    .line 361
    .line 362
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 363
    .line 364
    iget v7, v2, Landroid/graphics/PointF;->y:F

    .line 365
    .line 366
    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_8
    iget v11, v5, Landroid/graphics/PointF;->x:F

    .line 371
    .line 372
    iget v12, v5, Landroid/graphics/PointF;->y:F

    .line 373
    .line 374
    iget v13, v9, Landroid/graphics/PointF;->x:F

    .line 375
    .line 376
    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 377
    .line 378
    iget v15, v2, Landroid/graphics/PointF;->x:F

    .line 379
    .line 380
    iget v5, v2, Landroid/graphics/PointF;->y:F

    .line 381
    .line 382
    move-object v10, v1

    .line 383
    move/from16 v16, v5

    .line 384
    .line 385
    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 386
    .line 387
    .line 388
    :goto_6
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 389
    .line 390
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 391
    .line 392
    invoke-virtual {v3, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 393
    .line 394
    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_9
    iget-boolean v2, v4, Lk0/k;->c:Z

    .line 399
    .line 400
    if-eqz v2, :cond_a

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 403
    .line 404
    .line 405
    :cond_a
    return-object v1
.end method
