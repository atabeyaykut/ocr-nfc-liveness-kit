.class public final Ll8/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll8/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Ll8/b0;)Ll8/p;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ll8/b0;",
            ")",
            "Ll8/p<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    sget-object p1, Ll8/c0;->b:Ll8/c0$c;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_1
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    if-ne p1, p2, :cond_2

    .line 19
    .line 20
    sget-object p1, Ll8/c0;->c:Ll8/c0$d;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_2
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    if-ne p1, p2, :cond_3

    .line 26
    .line 27
    sget-object p1, Ll8/c0;->d:Ll8/c0$e;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_3
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    if-ne p1, p2, :cond_4

    .line 33
    .line 34
    sget-object p1, Ll8/c0;->e:Ll8/c0$f;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_4
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    if-ne p1, p2, :cond_5

    .line 40
    .line 41
    sget-object p1, Ll8/c0;->f:Ll8/c0$g;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_5
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    if-ne p1, p2, :cond_6

    .line 47
    .line 48
    sget-object p1, Ll8/c0;->g:Ll8/c0$h;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_6
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    if-ne p1, p2, :cond_7

    .line 54
    .line 55
    sget-object p1, Ll8/c0;->h:Ll8/c0$i;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_7
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    if-ne p1, p2, :cond_8

    .line 61
    .line 62
    sget-object p1, Ll8/c0;->i:Ll8/c0$j;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_8
    const-class p2, Ljava/lang/Boolean;

    .line 66
    .line 67
    if-ne p1, p2, :cond_9

    .line 68
    .line 69
    sget-object p1, Ll8/c0;->b:Ll8/c0$c;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance p2, Ll8/m;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 77
    .line 78
    .line 79
    return-object p2

    .line 80
    :cond_9
    const-class p2, Ljava/lang/Byte;

    .line 81
    .line 82
    if-ne p1, p2, :cond_a

    .line 83
    .line 84
    sget-object p1, Ll8/c0;->c:Ll8/c0$d;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance p2, Ll8/m;

    .line 90
    .line 91
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 92
    .line 93
    .line 94
    return-object p2

    .line 95
    :cond_a
    const-class p2, Ljava/lang/Character;

    .line 96
    .line 97
    if-ne p1, p2, :cond_b

    .line 98
    .line 99
    sget-object p1, Ll8/c0;->d:Ll8/c0$e;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance p2, Ll8/m;

    .line 105
    .line 106
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 107
    .line 108
    .line 109
    return-object p2

    .line 110
    :cond_b
    const-class p2, Ljava/lang/Double;

    .line 111
    .line 112
    if-ne p1, p2, :cond_c

    .line 113
    .line 114
    sget-object p1, Ll8/c0;->e:Ll8/c0$f;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    new-instance p2, Ll8/m;

    .line 120
    .line 121
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 122
    .line 123
    .line 124
    return-object p2

    .line 125
    :cond_c
    const-class p2, Ljava/lang/Float;

    .line 126
    .line 127
    if-ne p1, p2, :cond_d

    .line 128
    .line 129
    sget-object p1, Ll8/c0;->f:Ll8/c0$g;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    new-instance p2, Ll8/m;

    .line 135
    .line 136
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 137
    .line 138
    .line 139
    return-object p2

    .line 140
    :cond_d
    const-class p2, Ljava/lang/Integer;

    .line 141
    .line 142
    if-ne p1, p2, :cond_e

    .line 143
    .line 144
    sget-object p1, Ll8/c0;->g:Ll8/c0$h;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance p2, Ll8/m;

    .line 150
    .line 151
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 152
    .line 153
    .line 154
    return-object p2

    .line 155
    :cond_e
    const-class p2, Ljava/lang/Long;

    .line 156
    .line 157
    if-ne p1, p2, :cond_f

    .line 158
    .line 159
    sget-object p1, Ll8/c0;->h:Ll8/c0$i;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    new-instance p2, Ll8/m;

    .line 165
    .line 166
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 167
    .line 168
    .line 169
    return-object p2

    .line 170
    :cond_f
    const-class p2, Ljava/lang/Short;

    .line 171
    .line 172
    if-ne p1, p2, :cond_10

    .line 173
    .line 174
    sget-object p1, Ll8/c0;->i:Ll8/c0$j;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    new-instance p2, Ll8/m;

    .line 180
    .line 181
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 182
    .line 183
    .line 184
    return-object p2

    .line 185
    :cond_10
    const-class p2, Ljava/lang/String;

    .line 186
    .line 187
    if-ne p1, p2, :cond_11

    .line 188
    .line 189
    sget-object p1, Ll8/c0;->j:Ll8/c0$a;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance p2, Ll8/m;

    .line 195
    .line 196
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 197
    .line 198
    .line 199
    return-object p2

    .line 200
    :cond_11
    const-class p2, Ljava/lang/Object;

    .line 201
    .line 202
    if-ne p1, p2, :cond_12

    .line 203
    .line 204
    new-instance p1, Ll8/c0$l;

    .line 205
    .line 206
    invoke-direct {p1, p3}, Ll8/c0$l;-><init>(Ll8/b0;)V

    .line 207
    .line 208
    .line 209
    new-instance p2, Ll8/m;

    .line 210
    .line 211
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 212
    .line 213
    .line 214
    return-object p2

    .line 215
    :cond_12
    invoke-static {p1}, Ll8/d0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    sget-object v1, Lm8/a;->a:Ljava/util/Set;

    .line 220
    .line 221
    const-class v1, Ll8/q;

    .line 222
    .line 223
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Ll8/q;

    .line 228
    .line 229
    if-eqz v1, :cond_15

    .line 230
    .line 231
    invoke-interface {v1}, Ll8/q;->generateAdapter()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_13

    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const-string v3, "$"

    .line 249
    .line 250
    const-string v4, "_"

    .line 251
    .line 252
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v2, "JsonAdapter"

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    const/4 v3, 0x1

    .line 273
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    const-class v4, Ll8/b0;

    .line 280
    .line 281
    const/4 v5, 0x0

    .line 282
    if-eqz v2, :cond_14

    .line 283
    .line 284
    const/4 v2, 0x2

    .line 285
    :try_start_1
    new-array v6, v2, [Ljava/lang/Class;

    .line 286
    .line 287
    aput-object v4, v6, v5

    .line 288
    .line 289
    const-class v4, [Ljava/lang/reflect/Type;

    .line 290
    .line 291
    aput-object v4, v6, v3

    .line 292
    .line 293
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 298
    .line 299
    .line 300
    new-array v2, v2, [Ljava/lang/Object;

    .line 301
    .line 302
    aput-object p3, v2, v5

    .line 303
    .line 304
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 305
    .line 306
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    aput-object p1, v2, v3

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    goto :goto_0

    .line 317
    :cond_14
    new-array p1, v3, [Ljava/lang/Class;

    .line 318
    .line 319
    aput-object v4, p1, v5

    .line 320
    .line 321
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 326
    .line 327
    .line 328
    new-array v1, v3, [Ljava/lang/Object;

    .line 329
    .line 330
    aput-object p3, v1, v5

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    :goto_0
    check-cast p1, Ll8/p;

    .line 337
    .line 338
    invoke-virtual {p1}, Ll8/p;->b()Ll8/m;

    .line 339
    .line 340
    .line 341
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    goto :goto_2

    .line 343
    :catch_0
    move-exception p1

    .line 344
    invoke-static {p1}, Lm8/a;->f(Ljava/lang/reflect/InvocationTargetException;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :catch_1
    move-exception p1

    .line 349
    new-instance p3, Ljava/lang/RuntimeException;

    .line 350
    .line 351
    const-string v0, "Failed to instantiate the generated JsonAdapter for "

    .line 352
    .line 353
    invoke-static {v0, p2}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    throw p3

    .line 361
    :catch_2
    move-exception p1

    .line 362
    new-instance p3, Ljava/lang/RuntimeException;

    .line 363
    .line 364
    const-string v0, "Failed to access the generated JsonAdapter for "

    .line 365
    .line 366
    invoke-static {v0, p2}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    throw p3

    .line 374
    :catch_3
    move-exception p1

    .line 375
    new-instance p3, Ljava/lang/RuntimeException;

    .line 376
    .line 377
    const-string v0, "Failed to find the generated JsonAdapter constructor for "

    .line 378
    .line 379
    invoke-static {v0, p2}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    .line 385
    .line 386
    throw p3

    .line 387
    :catch_4
    move-exception p1

    .line 388
    new-instance p3, Ljava/lang/RuntimeException;

    .line 389
    .line 390
    const-string v0, "Failed to find the generated JsonAdapter class for "

    .line 391
    .line 392
    invoke-static {v0, p2}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    .line 398
    .line 399
    throw p3

    .line 400
    :cond_15
    :goto_1
    move-object p1, v0

    .line 401
    :goto_2
    if-eqz p1, :cond_16

    .line 402
    .line 403
    return-object p1

    .line 404
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-eqz p1, :cond_17

    .line 409
    .line 410
    new-instance p1, Ll8/c0$k;

    .line 411
    .line 412
    invoke-direct {p1, p2}, Ll8/c0$k;-><init>(Ljava/lang/Class;)V

    .line 413
    .line 414
    .line 415
    new-instance p2, Ll8/m;

    .line 416
    .line 417
    invoke-direct {p2, p1}, Ll8/m;-><init>(Ll8/p;)V

    .line 418
    .line 419
    .line 420
    return-object p2

    .line 421
    :cond_17
    return-object v0
.end method
