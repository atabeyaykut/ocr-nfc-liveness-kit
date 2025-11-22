.class public abstract Lm1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lm1/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public a:I

.field public b:F

.field public c:Lx0/l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:Lcom/bumptech/glide/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:Lv0/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public n:Z

.field public p:Z

.field public q:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:I

.field public s:Lv0/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t:Lq1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public v:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lm1/a;->b:F

    sget-object v0, Lx0/l;->c:Lx0/l$e;

    iput-object v0, p0, Lm1/a;->c:Lx0/l;

    sget-object v0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/j;

    iput-object v0, p0, Lm1/a;->d:Lcom/bumptech/glide/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/a;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lm1/a;->k:I

    iput v1, p0, Lm1/a;->l:I

    sget-object v1, Lp1/a;->b:Lp1/a;

    iput-object v1, p0, Lm1/a;->m:Lv0/f;

    iput-boolean v0, p0, Lm1/a;->p:Z

    new-instance v1, Lv0/h;

    invoke-direct {v1}, Lv0/h;-><init>()V

    iput-object v1, p0, Lm1/a;->s:Lv0/h;

    new-instance v1, Lq1/b;

    invoke-direct {v1}, Lq1/b;-><init>()V

    iput-object v1, p0, Lm1/a;->t:Lq1/b;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lm1/a;->v:Ljava/lang/Class;

    iput-boolean v0, p0, Lm1/a;->B:Z

    return-void
.end method

.method public static g(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Lm1/a;)Lm1/a;
    .locals 4
    .param p1    # Lm1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm1/a;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lm1/a;->b(Lm1/a;)Lm1/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget v0, p1, Lm1/a;->a:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-static {v0, v1}, Lm1/a;->g(II)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p1, Lm1/a;->b:F

    .line 24
    .line 25
    iput v0, p0, Lm1/a;->b:F

    .line 26
    .line 27
    :cond_1
    iget v0, p1, Lm1/a;->a:I

    .line 28
    .line 29
    const/high16 v1, 0x40000

    .line 30
    .line 31
    invoke-static {v0, v1}, Lm1/a;->g(II)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-boolean v0, p1, Lm1/a;->z:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lm1/a;->z:Z

    .line 40
    .line 41
    :cond_2
    iget v0, p1, Lm1/a;->a:I

    .line 42
    .line 43
    const/high16 v1, 0x100000

    .line 44
    .line 45
    invoke-static {v0, v1}, Lm1/a;->g(II)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-boolean v0, p1, Lm1/a;->C:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lm1/a;->C:Z

    .line 54
    .line 55
    :cond_3
    iget v0, p1, Lm1/a;->a:I

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-static {v0, v1}, Lm1/a;->g(II)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p1, Lm1/a;->c:Lx0/l;

    .line 65
    .line 66
    iput-object v0, p0, Lm1/a;->c:Lx0/l;

    .line 67
    .line 68
    :cond_4
    iget v0, p1, Lm1/a;->a:I

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    invoke-static {v0, v1}, Lm1/a;->g(II)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p1, Lm1/a;->d:Lcom/bumptech/glide/j;

    .line 79
    .line 80
    iput-object v0, p0, Lm1/a;->d:Lcom/bumptech/glide/j;

    .line 81
    .line 82
    :cond_5
    iget v0, p1, Lm1/a;->a:I

    .line 83
    .line 84
    const/16 v1, 0x10

    .line 85
    .line 86
    invoke-static {v0, v1}, Lm1/a;->g(II)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    iget-object v0, p1, Lm1/a;->e:Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    iput-object v0, p0, Lm1/a;->e:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    iput v1, p0, Lm1/a;->f:I

    .line 98
    .line 99
    iget v0, p0, Lm1/a;->a:I

    .line 100
    .line 101
    and-int/lit8 v0, v0, -0x21

    .line 102
    .line 103
    iput v0, p0, Lm1/a;->a:I

    .line 104
    .line 105
    :cond_6
    iget v0, p1, Lm1/a;->a:I

    .line 106
    .line 107
    const/16 v2, 0x20

    .line 108
    .line 109
    invoke-static {v0, v2}, Lm1/a;->g(II)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v2, 0x0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    iget v0, p1, Lm1/a;->f:I

    .line 117
    .line 118
    iput v0, p0, Lm1/a;->f:I

    .line 119
    .line 120
    iput-object v2, p0, Lm1/a;->e:Landroid/graphics/drawable/Drawable;

    .line 121
    .line 122
    iget v0, p0, Lm1/a;->a:I

    .line 123
    .line 124
    and-int/lit8 v0, v0, -0x11

    .line 125
    .line 126
    iput v0, p0, Lm1/a;->a:I

    .line 127
    .line 128
    :cond_7
    iget v0, p1, Lm1/a;->a:I

    .line 129
    .line 130
    const/16 v3, 0x40

    .line 131
    .line 132
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    iget-object v0, p1, Lm1/a;->g:Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    iput-object v0, p0, Lm1/a;->g:Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    iput v1, p0, Lm1/a;->h:I

    .line 143
    .line 144
    iget v0, p0, Lm1/a;->a:I

    .line 145
    .line 146
    and-int/lit16 v0, v0, -0x81

    .line 147
    .line 148
    iput v0, p0, Lm1/a;->a:I

    .line 149
    .line 150
    :cond_8
    iget v0, p1, Lm1/a;->a:I

    .line 151
    .line 152
    const/16 v3, 0x80

    .line 153
    .line 154
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    iget v0, p1, Lm1/a;->h:I

    .line 161
    .line 162
    iput v0, p0, Lm1/a;->h:I

    .line 163
    .line 164
    iput-object v2, p0, Lm1/a;->g:Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    iget v0, p0, Lm1/a;->a:I

    .line 167
    .line 168
    and-int/lit8 v0, v0, -0x41

    .line 169
    .line 170
    iput v0, p0, Lm1/a;->a:I

    .line 171
    .line 172
    :cond_9
    iget v0, p1, Lm1/a;->a:I

    .line 173
    .line 174
    const/16 v3, 0x100

    .line 175
    .line 176
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_a

    .line 181
    .line 182
    iget-boolean v0, p1, Lm1/a;->j:Z

    .line 183
    .line 184
    iput-boolean v0, p0, Lm1/a;->j:Z

    .line 185
    .line 186
    :cond_a
    iget v0, p1, Lm1/a;->a:I

    .line 187
    .line 188
    const/16 v3, 0x200

    .line 189
    .line 190
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_b

    .line 195
    .line 196
    iget v0, p1, Lm1/a;->l:I

    .line 197
    .line 198
    iput v0, p0, Lm1/a;->l:I

    .line 199
    .line 200
    iget v0, p1, Lm1/a;->k:I

    .line 201
    .line 202
    iput v0, p0, Lm1/a;->k:I

    .line 203
    .line 204
    :cond_b
    iget v0, p1, Lm1/a;->a:I

    .line 205
    .line 206
    const/16 v3, 0x400

    .line 207
    .line 208
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    iget-object v0, p1, Lm1/a;->m:Lv0/f;

    .line 215
    .line 216
    iput-object v0, p0, Lm1/a;->m:Lv0/f;

    .line 217
    .line 218
    :cond_c
    iget v0, p1, Lm1/a;->a:I

    .line 219
    .line 220
    const/16 v3, 0x1000

    .line 221
    .line 222
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_d

    .line 227
    .line 228
    iget-object v0, p1, Lm1/a;->v:Ljava/lang/Class;

    .line 229
    .line 230
    iput-object v0, p0, Lm1/a;->v:Ljava/lang/Class;

    .line 231
    .line 232
    :cond_d
    iget v0, p1, Lm1/a;->a:I

    .line 233
    .line 234
    const/16 v3, 0x2000

    .line 235
    .line 236
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_e

    .line 241
    .line 242
    iget-object v0, p1, Lm1/a;->q:Landroid/graphics/drawable/Drawable;

    .line 243
    .line 244
    iput-object v0, p0, Lm1/a;->q:Landroid/graphics/drawable/Drawable;

    .line 245
    .line 246
    iput v1, p0, Lm1/a;->r:I

    .line 247
    .line 248
    iget v0, p0, Lm1/a;->a:I

    .line 249
    .line 250
    and-int/lit16 v0, v0, -0x4001

    .line 251
    .line 252
    iput v0, p0, Lm1/a;->a:I

    .line 253
    .line 254
    :cond_e
    iget v0, p1, Lm1/a;->a:I

    .line 255
    .line 256
    const/16 v3, 0x4000

    .line 257
    .line 258
    invoke-static {v0, v3}, Lm1/a;->g(II)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_f

    .line 263
    .line 264
    iget v0, p1, Lm1/a;->r:I

    .line 265
    .line 266
    iput v0, p0, Lm1/a;->r:I

    .line 267
    .line 268
    iput-object v2, p0, Lm1/a;->q:Landroid/graphics/drawable/Drawable;

    .line 269
    .line 270
    iget v0, p0, Lm1/a;->a:I

    .line 271
    .line 272
    and-int/lit16 v0, v0, -0x2001

    .line 273
    .line 274
    iput v0, p0, Lm1/a;->a:I

    .line 275
    .line 276
    :cond_f
    iget v0, p1, Lm1/a;->a:I

    .line 277
    .line 278
    const v2, 0x8000

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v2}, Lm1/a;->g(II)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    iget-object v0, p1, Lm1/a;->x:Landroid/content/res/Resources$Theme;

    .line 288
    .line 289
    iput-object v0, p0, Lm1/a;->x:Landroid/content/res/Resources$Theme;

    .line 290
    .line 291
    :cond_10
    iget v0, p1, Lm1/a;->a:I

    .line 292
    .line 293
    const/high16 v2, 0x10000

    .line 294
    .line 295
    invoke-static {v0, v2}, Lm1/a;->g(II)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_11

    .line 300
    .line 301
    iget-boolean v0, p1, Lm1/a;->p:Z

    .line 302
    .line 303
    iput-boolean v0, p0, Lm1/a;->p:Z

    .line 304
    .line 305
    :cond_11
    iget v0, p1, Lm1/a;->a:I

    .line 306
    .line 307
    const/high16 v2, 0x20000

    .line 308
    .line 309
    invoke-static {v0, v2}, Lm1/a;->g(II)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_12

    .line 314
    .line 315
    iget-boolean v0, p1, Lm1/a;->n:Z

    .line 316
    .line 317
    iput-boolean v0, p0, Lm1/a;->n:Z

    .line 318
    .line 319
    :cond_12
    iget v0, p1, Lm1/a;->a:I

    .line 320
    .line 321
    const/16 v2, 0x800

    .line 322
    .line 323
    invoke-static {v0, v2}, Lm1/a;->g(II)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_13

    .line 328
    .line 329
    iget-object v0, p0, Lm1/a;->t:Lq1/b;

    .line 330
    .line 331
    iget-object v2, p1, Lm1/a;->t:Lq1/b;

    .line 332
    .line 333
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 334
    .line 335
    .line 336
    iget-boolean v0, p1, Lm1/a;->B:Z

    .line 337
    .line 338
    iput-boolean v0, p0, Lm1/a;->B:Z

    .line 339
    .line 340
    :cond_13
    iget v0, p1, Lm1/a;->a:I

    .line 341
    .line 342
    const/high16 v2, 0x80000

    .line 343
    .line 344
    invoke-static {v0, v2}, Lm1/a;->g(II)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_14

    .line 349
    .line 350
    iget-boolean v0, p1, Lm1/a;->A:Z

    .line 351
    .line 352
    iput-boolean v0, p0, Lm1/a;->A:Z

    .line 353
    .line 354
    :cond_14
    iget-boolean v0, p0, Lm1/a;->p:Z

    .line 355
    .line 356
    if-nez v0, :cond_15

    .line 357
    .line 358
    iget-object v0, p0, Lm1/a;->t:Lq1/b;

    .line 359
    .line 360
    invoke-virtual {v0}, Lq1/b;->clear()V

    .line 361
    .line 362
    .line 363
    iget v0, p0, Lm1/a;->a:I

    .line 364
    .line 365
    and-int/lit16 v0, v0, -0x801

    .line 366
    .line 367
    iput-boolean v1, p0, Lm1/a;->n:Z

    .line 368
    .line 369
    const v1, -0x20001

    .line 370
    .line 371
    .line 372
    and-int/2addr v0, v1

    .line 373
    iput v0, p0, Lm1/a;->a:I

    .line 374
    .line 375
    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lm1/a;->B:Z

    .line 377
    .line 378
    :cond_15
    iget v0, p0, Lm1/a;->a:I

    .line 379
    .line 380
    iget v1, p1, Lm1/a;->a:I

    .line 381
    .line 382
    or-int/2addr v0, v1

    .line 383
    iput v0, p0, Lm1/a;->a:I

    .line 384
    .line 385
    iget-object v0, p0, Lm1/a;->s:Lv0/h;

    .line 386
    .line 387
    iget-object p1, p1, Lm1/a;->s:Lv0/h;

    .line 388
    .line 389
    iget-object v0, v0, Lv0/h;->b:Lq1/b;

    .line 390
    .line 391
    iget-object p1, p1, Lv0/h;->b:Lq1/b;

    .line 392
    .line 393
    invoke-virtual {v0, p1}, Lq1/b;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Lm1/a;->l()V

    .line 397
    .line 398
    .line 399
    return-object p0
.end method

.method public c()Lm1/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lm1/a;

    .line 6
    .line 7
    new-instance v1, Lv0/h;

    .line 8
    .line 9
    invoke-direct {v1}, Lv0/h;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lm1/a;->s:Lv0/h;

    .line 13
    .line 14
    iget-object v2, p0, Lm1/a;->s:Lv0/h;

    .line 15
    .line 16
    iget-object v1, v1, Lv0/h;->b:Lq1/b;

    .line 17
    .line 18
    iget-object v2, v2, Lv0/h;->b:Lq1/b;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lq1/b;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lq1/b;

    .line 24
    .line 25
    invoke-direct {v1}, Lq1/b;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lm1/a;->t:Lq1/b;

    .line 29
    .line 30
    iget-object v2, p0, Lm1/a;->t:Lq1/b;

    .line 31
    .line 32
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lm1/a;->w:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Lm1/a;->y:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Lm1/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm1/a;->d(Ljava/lang/Class;)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lm1/a;->v:Ljava/lang/Class;

    iget p1, p0, Lm1/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final e(Lx0/l;)Lm1/a;
    .locals 1
    .param p1    # Lx0/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/l;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm1/a;->e(Lx0/l;)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lm1/a;->c:Lx0/l;

    iget p1, p0, Lm1/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lm1/a;

    if-eqz v0, :cond_0

    check-cast p1, Lm1/a;

    iget v0, p1, Lm1/a;->b:F

    iget v1, p0, Lm1/a;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lm1/a;->f:I

    iget v1, p1, Lm1/a;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm1/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lm1/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lq1/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lm1/a;->h:I

    iget v1, p1, Lm1/a;->h:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm1/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lm1/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lq1/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lm1/a;->r:I

    iget v1, p1, Lm1/a;->r:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm1/a;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lm1/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lq1/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lm1/a;->j:Z

    iget-boolean v1, p1, Lm1/a;->j:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lm1/a;->k:I

    iget v1, p1, Lm1/a;->k:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lm1/a;->l:I

    iget v1, p1, Lm1/a;->l:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lm1/a;->n:Z

    iget-boolean v1, p1, Lm1/a;->n:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lm1/a;->p:Z

    iget-boolean v1, p1, Lm1/a;->p:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lm1/a;->z:Z

    iget-boolean v1, p1, Lm1/a;->z:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lm1/a;->A:Z

    iget-boolean v1, p1, Lm1/a;->A:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm1/a;->c:Lx0/l;

    iget-object v1, p1, Lm1/a;->c:Lx0/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm1/a;->d:Lcom/bumptech/glide/j;

    iget-object v1, p1, Lm1/a;->d:Lcom/bumptech/glide/j;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm1/a;->s:Lv0/h;

    iget-object v1, p1, Lm1/a;->s:Lv0/h;

    invoke-virtual {v0, v1}, Lv0/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm1/a;->t:Lq1/b;

    iget-object v1, p1, Lm1/a;->t:Lq1/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm1/a;->v:Ljava/lang/Class;

    iget-object v1, p1, Lm1/a;->v:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm1/a;->m:Lv0/f;

    iget-object v1, p1, Lm1/a;->m:Lv0/f;

    invoke-static {v0, v1}, Lq1/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm1/a;->x:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lm1/a;->x:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Lq1/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(I)Lm1/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm1/a;->f(I)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lm1/a;->f:I

    iget p1, p0, Lm1/a;->a:I

    or-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    iput-object v0, p0, Lm1/a;->e:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final h(Le1/l;Le1/f;)Lm1/a;
    .locals 1
    .param p1    # Le1/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le1/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm1/a;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lm1/a;->h(Le1/l;Le1/f;)Lm1/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object v0, Le1/l;->f:Lv0/g;

    .line 15
    .line 16
    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lm1/a;->n(Lv0/g;Ljava/lang/Object;)Lm1/a;

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p2, p1}, Lm1/a;->s(Lv0/l;Z)Lm1/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lm1/a;->b:F

    .line 2
    .line 3
    sget-object v1, Lq1/m;->a:[C

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit16 v0, v0, 0x20f

    .line 10
    .line 11
    iget v1, p0, Lm1/a;->f:I

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lm1/a;->e:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lm1/a;->h:I

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lm1/a;->g:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v1, p0, Lm1/a;->r:I

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    iget-object v1, p0, Lm1/a;->q:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-boolean v1, p0, Lm1/a;->j:Z

    .line 45
    .line 46
    invoke-static {v0, v1}, Lq1/m;->g(IZ)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v1, p0, Lm1/a;->k:I

    .line 51
    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    iget v1, p0, Lm1/a;->l:I

    .line 56
    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    iget-boolean v1, p0, Lm1/a;->n:Z

    .line 61
    .line 62
    invoke-static {v0, v1}, Lq1/m;->g(IZ)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-boolean v1, p0, Lm1/a;->p:Z

    .line 67
    .line 68
    invoke-static {v0, v1}, Lq1/m;->g(IZ)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-boolean v1, p0, Lm1/a;->z:Z

    .line 73
    .line 74
    invoke-static {v0, v1}, Lq1/m;->g(IZ)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-boolean v1, p0, Lm1/a;->A:Z

    .line 79
    .line 80
    invoke-static {v0, v1}, Lq1/m;->g(IZ)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v1, p0, Lm1/a;->c:Lx0/l;

    .line 85
    .line 86
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Lm1/a;->d:Lcom/bumptech/glide/j;

    .line 91
    .line 92
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object v1, p0, Lm1/a;->s:Lv0/h;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v1, p0, Lm1/a;->t:Lq1/b;

    .line 103
    .line 104
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iget-object v1, p0, Lm1/a;->v:Ljava/lang/Class;

    .line 109
    .line 110
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iget-object v1, p0, Lm1/a;->m:Lv0/f;

    .line 115
    .line 116
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget-object v1, p0, Lm1/a;->x:Landroid/content/res/Resources$Theme;

    .line 121
    .line 122
    invoke-static {v0, v1}, Lq1/m;->f(ILjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    return v0
.end method

.method public final i(II)Lm1/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lm1/a;->i(II)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lm1/a;->l:I

    iput p2, p0, Lm1/a;->k:I

    iget p1, p0, Lm1/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final j(I)Lm1/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm1/a;->j(I)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lm1/a;->h:I

    iget p1, p0, Lm1/a;->a:I

    or-int/lit16 p1, p1, 0x80

    const/4 v0, 0x0

    iput-object v0, p0, Lm1/a;->g:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final k()Lm1/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/j;

    iget-boolean v1, p0, Lm1/a;->y:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0}, Lm1/a;->k()Lm1/a;

    move-result-object v0

    return-object v0

    :cond_0
    iput-object v0, p0, Lm1/a;->d:Lcom/bumptech/glide/j;

    iget v0, p0, Lm1/a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final l()V
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lm1/a;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Lv0/g;Ljava/lang/Object;)Lm1/a;
    .locals 1
    .param p1    # Lv0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lv0/g<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm1/a;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lm1/a;->n(Lv0/g;Ljava/lang/Object;)Lm1/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lm1/a;->s:Lv0/h;

    .line 21
    .line 22
    iget-object v0, v0, Lv0/h;->b:Lq1/b;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lq1/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lm1/a;->l()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final p(Lp1/b;)Lm1/a;
    .locals 1
    .param p1    # Lp1/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm1/a;->p(Lp1/b;)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lm1/a;->m:Lv0/f;

    iget p1, p0, Lm1/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final q()Lm1/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0}, Lm1/a;->q()Lm1/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm1/a;->j:Z

    iget v0, p0, Lm1/a;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final r(Ljava/lang/Class;Lv0/l;Z)Lm1/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv0/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lv0/l<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lm1/a;->r(Ljava/lang/Class;Lv0/l;Z)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lq1/l;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lm1/a;->t:Lq1/b;

    invoke-virtual {v0, p1, p2}, Lq1/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lm1/a;->a:I

    or-int/lit16 p1, p1, 0x800

    const/4 p2, 0x1

    iput-boolean p2, p0, Lm1/a;->p:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lm1/a;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm1/a;->B:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lm1/a;->a:I

    iput-boolean p2, p0, Lm1/a;->n:Z

    :cond_1
    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final s(Lv0/l;Z)Lm1/a;
    .locals 2
    .param p1    # Lv0/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv0/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lm1/a;->s(Lv0/l;Z)Lm1/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Le1/o;

    invoke-direct {v0, p1, p2}, Le1/o;-><init>(Lv0/l;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lm1/a;->r(Ljava/lang/Class;Lv0/l;Z)Lm1/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lm1/a;->r(Ljava/lang/Class;Lv0/l;Z)Lm1/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lm1/a;->r(Ljava/lang/Class;Lv0/l;Z)Lm1/a;

    new-instance v0, Li1/f;

    invoke-direct {v0, p1}, Li1/f;-><init>(Lv0/l;)V

    const-class p1, Li1/c;

    invoke-virtual {p0, p1, v0, p2}, Lm1/a;->r(Ljava/lang/Class;Lv0/l;Z)Lm1/a;

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method

.method public final t()Lm1/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lm1/a;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm1/a;->c()Lm1/a;

    move-result-object v0

    invoke-virtual {v0}, Lm1/a;->t()Lm1/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/a;->C:Z

    iget v0, p0, Lm1/a;->a:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lm1/a;->a:I

    invoke-virtual {p0}, Lm1/a;->l()V

    return-object p0
.end method
