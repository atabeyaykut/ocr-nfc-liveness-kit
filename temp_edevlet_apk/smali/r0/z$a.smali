.class public final Lr0/z$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/z;-><init>(Lr0/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksViewModel$1"
    f = "MavericksViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lr0/z;

.field public final synthetic b:Lr0/p;


# direct methods
.method public constructor <init>(Lr0/z;Lr0/p;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/z$a;->a:Lr0/z;

    iput-object p2, p0, Lr0/z$a;->b:Lr0/p;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lr0/z$a;

    iget-object v0, p0, Lr0/z$a;->a:Lr0/z;

    iget-object v1, p0, Lr0/z$a;->b:Lr0/p;

    invoke-direct {p1, v0, v1, p2}, Lr0/z$a;-><init>(Lr0/z;Lr0/p;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/z$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/z$a;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/z$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lr0/z$a;->a:Lr0/z;

    .line 5
    .line 6
    iget-object v0, p1, Lr0/z;->d:Lr0/r;

    .line 7
    .line 8
    invoke-interface {v0}, Lr0/r;->c()Lr0/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "$this$assertImmutability"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "declaredMethods"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    array-length v4, v2

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    :goto_0
    const/4 v7, 0x1

    .line 42
    const-string v8, "it"

    .line 43
    .line 44
    if-ge v6, v4, :cond_2

    .line 45
    .line 46
    aget-object v9, v2, v6

    .line 47
    .line 48
    invoke-static {v9, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    const-string v11, "copy$default"

    .line 56
    .line 57
    invoke-static {v10, v11}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_0

    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->isSynthetic()Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_0

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    const/4 v9, 0x0

    .line 72
    :goto_1
    if-eqz v9, :cond_1

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x0

    .line 80
    :goto_2
    const/4 v4, 0x0

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    goto/16 :goto_9

    .line 84
    .line 85
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    array-length v6, v2

    .line 93
    const/4 v9, 0x0

    .line 94
    :goto_3
    if-ge v9, v6, :cond_5

    .line 95
    .line 96
    aget-object v10, v2, v9

    .line 97
    .line 98
    invoke-static {v10, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    const-string v12, "it.name"

    .line 106
    .line 107
    invoke-static {v11, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v12, "component1"

    .line 111
    .line 112
    invoke-static {v11, v12, v5}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_4

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    move-object v10, v4

    .line 123
    :goto_4
    if-eqz v10, :cond_a

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    array-length v6, v2

    .line 133
    const/4 v9, 0x0

    .line 134
    :goto_5
    if-ge v9, v6, :cond_7

    .line 135
    .line 136
    aget-object v10, v2, v9

    .line 137
    .line 138
    invoke-static {v10, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    const-string v12, "equals"

    .line 146
    .line 147
    invoke-static {v11, v12}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_6

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move-object v10, v4

    .line 158
    :goto_6
    if-eqz v10, :cond_a

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    array-length v2, v1

    .line 168
    const/4 v3, 0x0

    .line 169
    :goto_7
    if-ge v3, v2, :cond_9

    .line 170
    .line 171
    aget-object v6, v1, v3

    .line 172
    .line 173
    invoke-static {v6, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    const-string v10, "hashCode"

    .line 181
    .line 182
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-eqz v9, :cond_8

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_9
    move-object v6, v4

    .line 193
    :goto_8
    if-eqz v6, :cond_a

    .line 194
    .line 195
    const/4 v1, 0x1

    .line 196
    goto :goto_a

    .line 197
    :cond_a
    :goto_9
    const/4 v1, 0x0

    .line 198
    :goto_a
    if-eqz v1, :cond_18

    .line 199
    .line 200
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v2, "java.declaredFields"

    .line 209
    .line 210
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v2, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    array-length v3, v1

    .line 219
    const/4 v6, 0x0

    .line 220
    :goto_b
    if-ge v6, v3, :cond_c

    .line 221
    .line 222
    aget-object v9, v1, v6

    .line 223
    .line 224
    invoke-static {v9, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_b

    .line 236
    .line 237
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_17

    .line 252
    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    check-cast v2, Ljava/lang/reflect/Field;

    .line 258
    .line 259
    const-string v3, "prop"

    .line 260
    .line 261
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-nez v3, :cond_d

    .line 273
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v6, "State property "

    .line 277
    .line 278
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v2, " must be a val, not a var."

    .line 289
    .line 290
    goto/16 :goto_f

    .line 291
    .line 292
    :cond_d
    new-array v3, v7, [Lda/d;

    .line 293
    .line 294
    const-class v6, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    aput-object v6, v3, v5

    .line 301
    .line 302
    sget-object v6, Lr0/o;->a:Lr0/o;

    .line 303
    .line 304
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_e

    .line 312
    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v6, "You cannot use ArrayList for "

    .line 316
    .line 317
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_d

    .line 321
    :cond_e
    new-array v3, v7, [Lda/d;

    .line 322
    .line 323
    const-class v6, Landroid/util/SparseArray;

    .line 324
    .line 325
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    aput-object v6, v3, v5

    .line 330
    .line 331
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_f

    .line 336
    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v6, "You cannot use SparseArray for "

    .line 340
    .line 341
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_f
    new-array v3, v7, [Lda/d;

    .line 346
    .line 347
    const-class v6, Landroidx/collection/LongSparseArray;

    .line 348
    .line 349
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    aput-object v6, v3, v5

    .line 354
    .line 355
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-eqz v3, :cond_10

    .line 360
    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v6, "You cannot use LongSparseArray for "

    .line 364
    .line 365
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_d

    .line 369
    :cond_10
    new-array v3, v7, [Lda/d;

    .line 370
    .line 371
    const-class v6, Landroidx/collection/SparseArrayCompat;

    .line 372
    .line 373
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    aput-object v6, v3, v5

    .line 378
    .line 379
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_11

    .line 384
    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v6, "You cannot use SparseArrayCompat for "

    .line 388
    .line 389
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    :goto_d
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v2, ".\nUse the immutable listOf(...) method instead. You can append it with `val newList = listA + listB`"

    .line 400
    .line 401
    goto/16 :goto_f

    .line 402
    .line 403
    :cond_11
    new-array v3, v7, [Lda/d;

    .line 404
    .line 405
    const-class v6, Landroidx/collection/ArrayMap;

    .line 406
    .line 407
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    aput-object v6, v3, v5

    .line 412
    .line 413
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    const-string v6, "You cannot use ArrayMap for "

    .line 418
    .line 419
    if-eqz v3, :cond_12

    .line 420
    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_12
    new-array v3, v7, [Lda/d;

    .line 428
    .line 429
    const-class v8, Landroid/util/ArrayMap;

    .line 430
    .line 431
    invoke-static {v8}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    aput-object v8, v3, v5

    .line 436
    .line 437
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_13

    .line 442
    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_e

    .line 449
    :cond_13
    new-array v3, v7, [Lda/d;

    .line 450
    .line 451
    const-class v6, Ljava/util/HashMap;

    .line 452
    .line 453
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    aput-object v6, v3, v5

    .line 458
    .line 459
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_14

    .line 464
    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    const-string v6, "You cannot use HashMap for "

    .line 468
    .line 469
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :goto_e
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v2, ".\nUse the immutable mapOf(...) method instead. You can append it with `val newMap = mapA + mapB`"

    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_14
    const/4 v3, 0x2

    .line 483
    new-array v3, v3, [Lda/d;

    .line 484
    .line 485
    const-class v6, Ll9/a;

    .line 486
    .line 487
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    aput-object v6, v3, v5

    .line 492
    .line 493
    const-class v6, Lda/c;

    .line 494
    .line 495
    invoke-static {v6}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    aput-object v6, v3, v7

    .line 500
    .line 501
    invoke-static {v2, v3}, Lr0/o;->a(Ljava/lang/reflect/Field;[Lda/d;)Z

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-eqz v3, :cond_15

    .line 506
    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string v6, "You cannot use functions inside MvRx state. Only pure data should be represented: "

    .line 510
    .line 511
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    :goto_f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    goto :goto_10

    .line 526
    :cond_15
    move-object v2, v4

    .line 527
    :goto_10
    if-nez v2, :cond_16

    .line 528
    .line 529
    goto/16 :goto_c

    .line 530
    .line 531
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 532
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    const-string v3, "Invalid property in state "

    .line 536
    .line 537
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-interface {v0}, Lda/d;->d()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v0, ": "

    .line 556
    .line 557
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw p1

    .line 571
    :cond_17
    iget-object p1, p1, Lr0/z;->d:Lr0/r;

    .line 572
    .line 573
    invoke-interface {p1}, Lr0/r;->c()Lr0/p;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    invoke-static {p1, v7}, Lb8/f;->b0(Lr0/p;Z)Landroid/os/Bundle;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    iget-object v0, p0, Lr0/z$a;->b:Lr0/p;

    .line 582
    .line 583
    invoke-static {p1, v0, v7}, Lb8/f;->h0(Landroid/os/Bundle;Lr0/p;Z)Lr0/p;

    .line 584
    .line 585
    .line 586
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 587
    .line 588
    return-object p1

    .line 589
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v1, "MvRx state must be a data class! - "

    .line 592
    .line 593
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-interface {v0}, Lda/d;->d()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 616
    .line 617
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    throw v0
.end method
