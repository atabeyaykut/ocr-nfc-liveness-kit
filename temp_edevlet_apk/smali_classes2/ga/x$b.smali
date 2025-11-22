.class public final Lga/x$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/x;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Lma/u;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lha/f<",
        "+",
        "Ljava/lang/reflect/Executable;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/x;


# direct methods
.method public constructor <init>(Lga/x;)V
    .locals 0

    iput-object p1, p0, Lga/x$b;->a:Lga/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lga/x0;->a:Llb/b;

    .line 2
    .line 3
    iget-object v0, p0, Lga/x$b;->a:Lga/x;

    .line 4
    .line 5
    invoke-virtual {v0}, Lga/x;->s()Lma/u;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lga/x0;->c(Lma/u;)Lga/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Lga/f$e;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    iget-object v5, v0, Lga/x;->e:Lga/s;

    .line 18
    .line 19
    const-string v6, "desc"

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    check-cast v1, Lga/f$e;

    .line 25
    .line 26
    iget-object v1, v1, Lga/f$e;->a:Lkb/d$b;

    .line 27
    .line 28
    iget-object v2, v1, Lkb/d$b;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Lga/x;->k()Lha/f;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-interface {v8}, Lha/f;->b()Ljava/lang/reflect/Member;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-static {v8}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v8}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    xor-int/2addr v8, v4

    .line 50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v9, "name"

    .line 54
    .line 55
    invoke-static {v2, v9}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Lkb/d$b;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v6, "<init>"

    .line 64
    .line 65
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    if-eqz v8, :cond_1

    .line 79
    .line 80
    invoke-interface {v5}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {v5, v1, v3, v6}, Lga/s;->k(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Lga/s;->r()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    const-string v10, "$default"

    .line 95
    .line 96
    invoke-virtual {v2, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-array v10, v3, [Ljava/lang/Class;

    .line 101
    .line 102
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, [Ljava/lang/Class;

    .line 107
    .line 108
    const/4 v10, 0x6

    .line 109
    const/16 v11, 0x29

    .line 110
    .line 111
    invoke-static {v1, v11, v3, v3, v10}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    add-int/2addr v3, v4

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    invoke-virtual {v5, v3, v10, v1}, Lga/s;->v(IILjava/lang/String;)Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v9, v2, v6, v1, v8}, Lga/s;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_2
    instance-of v2, v1, Lga/f$d;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    invoke-virtual {v0}, Lga/h;->p()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    invoke-interface {v5}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0}, Lga/h;->getParameters()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/Iterable;

    .line 149
    .line 150
    new-instance v2, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_3

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Lda/j;

    .line 174
    .line 175
    invoke-interface {v3}, Lda/j;->getName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_3
    new-instance v0, Lha/a;

    .line 187
    .line 188
    invoke-direct {v0, v1, v2, v4}, Lha/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;I)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_6

    .line 192
    .line 193
    :cond_4
    check-cast v1, Lga/f$d;

    .line 194
    .line 195
    iget-object v1, v1, Lga/f$d;->a:Lkb/d$b;

    .line 196
    .line 197
    iget-object v1, v1, Lkb/d$b;->b:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v5}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v1, v4, v6}, Lga/s;->k(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 215
    .line 216
    .line 217
    sget-object v1, Ll9/m;->a:Ll9/m;

    .line 218
    .line 219
    :try_start_0
    new-array v1, v3, [Ljava/lang/Class;

    .line 220
    .line 221
    invoke-interface {v6, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, [Ljava/lang/Class;

    .line 226
    .line 227
    array-length v3, v1

    .line 228
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, [Ljava/lang/Class;

    .line 233
    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 235
    .line 236
    .line 237
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_3

    .line 239
    :catch_0
    nop

    .line 240
    goto :goto_2

    .line 241
    :cond_5
    instance-of v2, v1, Lga/f$a;

    .line 242
    .line 243
    if-eqz v2, :cond_7

    .line 244
    .line 245
    check-cast v1, Lga/f$a;

    .line 246
    .line 247
    iget-object v11, v1, Lga/f$a;->a:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v5}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    move-object v0, v11

    .line 254
    check-cast v0, Ljava/lang/Iterable;

    .line 255
    .line 256
    new-instance v8, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_6

    .line 274
    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Ljava/lang/reflect/Method;

    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_6
    const/4 v10, 0x1

    .line 290
    new-instance v0, Lha/a;

    .line 291
    .line 292
    const/4 v9, 0x1

    .line 293
    move-object v6, v0

    .line 294
    invoke-direct/range {v6 .. v11}, Lha/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_6

    .line 298
    .line 299
    :cond_7
    :goto_2
    move-object v1, v7

    .line 300
    :goto_3
    instance-of v2, v1, Ljava/lang/reflect/Constructor;

    .line 301
    .line 302
    if-eqz v2, :cond_8

    .line 303
    .line 304
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 305
    .line 306
    invoke-virtual {v0}, Lga/x;->s()Lma/u;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-static {v0, v1, v2, v4}, Lga/x;->r(Lga/x;Ljava/lang/reflect/Constructor;Lma/u;Z)Lha/g;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    goto :goto_5

    .line 315
    :cond_8
    instance-of v2, v1, Ljava/lang/reflect/Method;

    .line 316
    .line 317
    if-eqz v2, :cond_c

    .line 318
    .line 319
    invoke-virtual {v0}, Lga/x;->s()Lma/u;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-interface {v2}, Lna/a;->getAnnotations()Lna/h;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    sget-object v3, Lga/z0;->a:Llb/c;

    .line 328
    .line 329
    invoke-interface {v2, v3}, Lna/h;->n(Llb/c;)Lna/c;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    if-eqz v2, :cond_a

    .line 334
    .line 335
    invoke-virtual {v0}, Lga/x;->s()Lma/u;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-interface {v2}, Lma/u;->b()Lma/j;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 344
    .line 345
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    check-cast v2, Lma/e;

    .line 349
    .line 350
    invoke-interface {v2}, Lma/e;->u()Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-nez v2, :cond_a

    .line 355
    .line 356
    check-cast v1, Ljava/lang/reflect/Method;

    .line 357
    .line 358
    invoke-virtual {v0}, Lga/x;->q()Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_9

    .line 363
    .line 364
    new-instance v2, Lha/g$g$b;

    .line 365
    .line 366
    invoke-direct {v2, v1}, Lha/g$g$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_9
    new-instance v2, Lha/g$g$e;

    .line 371
    .line 372
    invoke-direct {v2, v1}, Lha/g$g$e;-><init>(Ljava/lang/reflect/Method;)V

    .line 373
    .line 374
    .line 375
    :goto_4
    move-object v1, v2

    .line 376
    goto :goto_5

    .line 377
    :cond_a
    check-cast v1, Ljava/lang/reflect/Method;

    .line 378
    .line 379
    invoke-virtual {v0}, Lga/x;->q()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_b

    .line 384
    .line 385
    new-instance v2, Lha/g$g$c;

    .line 386
    .line 387
    invoke-virtual {v0}, Lga/x;->s()Lma/u;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    iget-object v5, v0, Lga/x;->g:Ljava/lang/Object;

    .line 392
    .line 393
    invoke-static {v5, v3}, Lb8/f;->p(Ljava/lang/Object;Lma/b;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-direct {v2, v1, v3}, Lha/g$g$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_b
    new-instance v2, Lha/g$g$f;

    .line 402
    .line 403
    invoke-direct {v2, v1}, Lha/g$g$f;-><init>(Ljava/lang/reflect/Method;)V

    .line 404
    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_c
    move-object v1, v7

    .line 408
    :goto_5
    if-eqz v1, :cond_d

    .line 409
    .line 410
    invoke-virtual {v0}, Lga/x;->s()Lma/u;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-static {v1, v0, v4}, Lb8/f;->v(Lha/f;Lma/u;Z)Lha/f;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    :cond_d
    move-object v0, v7

    .line 419
    :goto_6
    return-object v0
.end method
