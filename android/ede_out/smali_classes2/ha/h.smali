.class public final Lha/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lha/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Lha/f<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final a:Lha/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lha/f<",
            "TM;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Lha/h$a;


# direct methods
.method public constructor <init>(Lha/f;Lma/u;Z)V
    .locals 10

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lha/h;->a:Lha/f;

    .line 10
    .line 11
    iput-boolean p3, p0, Lha/h;->b:Z

    .line 12
    .line 13
    invoke-interface {p2}, Lma/a;->getReturnType()Lcc/e0;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lb8/f;->m0(Lcc/e0;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    :try_start_0
    const-string v3, "box-impl"

    .line 30
    .line 31
    new-array v4, v1, [Ljava/lang/Class;

    .line 32
    .line 33
    invoke-static {p3, p2}, Lb8/f;->N(Ljava/lang/Class;Lma/b;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    aput-object v5, v4, v2

    .line 42
    .line 43
    invoke-virtual {p3, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "{\n        getDeclaredMet\u2026riptor).returnType)\n    }"

    .line 48
    .line 49
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    new-instance p1, Ll9/f;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "No box method found in inline class: "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p3, " (calling "

    .line 66
    .line 67
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 p2, 0x29

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_0
    move-object v3, v0

    .line 87
    :goto_0
    invoke-static {p2}, Lob/k;->a(Lma/u;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    new-instance p1, Lha/h$a;

    .line 94
    .line 95
    sget-object p2, Lca/d;->d:Lca/d;

    .line 96
    .line 97
    new-array p3, v2, [Ljava/lang/reflect/Method;

    .line 98
    .line 99
    invoke-direct {p1, p2, p3, v3}, Lha/h$a;-><init>(Lca/d;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_d

    .line 103
    .line 104
    :cond_1
    instance-of p3, p1, Lha/g$g$c;

    .line 105
    .line 106
    const-string v4, "descriptor.containingDeclaration"

    .line 107
    .line 108
    if-eqz p3, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    instance-of p3, p2, Lma/i;

    .line 112
    .line 113
    if-eqz p3, :cond_3

    .line 114
    .line 115
    instance-of p1, p1, Lha/e;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    :goto_1
    const/4 p1, -0x1

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    invoke-interface {p2}, Lma/a;->a0()Lma/o0;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    if-eqz p3, :cond_5

    .line 126
    .line 127
    instance-of p1, p1, Lha/e;

    .line 128
    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    invoke-interface {p2}, Lma/k;->b()Lma/j;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lob/k;->b(Lma/j;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    const/4 p1, 0x1

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 148
    :goto_3
    new-instance p3, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-interface {p2}, Lma/a;->h0()Lma/o0;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    invoke-interface {v5}, Lma/z0;->getType()Lcc/e0;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    goto :goto_4

    .line 164
    :cond_6
    move-object v5, v0

    .line 165
    :goto_4
    if-eqz v5, :cond_7

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_7
    instance-of v5, p2, Lma/i;

    .line 169
    .line 170
    if-eqz v5, :cond_8

    .line 171
    .line 172
    move-object v4, p2

    .line 173
    check-cast v4, Lma/i;

    .line 174
    .line 175
    invoke-interface {v4}, Lma/i;->x()Lma/e;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const-string v5, "descriptor.constructedClass"

    .line 180
    .line 181
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v4}, Lma/h;->H()Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_9

    .line 189
    .line 190
    invoke-interface {v4}, Lma/e;->b()Lma/j;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 195
    .line 196
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    invoke-interface {p2}, Lma/k;->b()Lma/j;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v5, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    instance-of v4, v5, Lma/e;

    .line 208
    .line 209
    if-eqz v4, :cond_9

    .line 210
    .line 211
    invoke-static {v5}, Lob/k;->b(Lma/j;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_9

    .line 216
    .line 217
    move-object v4, v5

    .line 218
    :goto_5
    check-cast v4, Lma/e;

    .line 219
    .line 220
    invoke-interface {v4}, Lma/e;->q()Lcc/m0;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    :goto_6
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :cond_9
    invoke-interface {p2}, Lma/a;->g()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    const-string v5, "descriptor.valueParameters"

    .line 232
    .line 233
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    check-cast v4, Ljava/lang/Iterable;

    .line 237
    .line 238
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_a

    .line 247
    .line 248
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    check-cast v5, Lma/a1;

    .line 253
    .line 254
    invoke-interface {v5}, Lma/z0;->getType()Lcc/e0;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_a
    iget-boolean v4, p0, Lha/h;->b:Z

    .line 263
    .line 264
    if-eqz v4, :cond_b

    .line 265
    .line 266
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    add-int/lit8 v4, v4, 0x20

    .line 271
    .line 272
    sub-int/2addr v4, v1

    .line 273
    div-int/lit8 v4, v4, 0x20

    .line 274
    .line 275
    add-int/2addr v4, v1

    .line 276
    goto :goto_8

    .line 277
    :cond_b
    const/4 v4, 0x0

    .line 278
    :goto_8
    invoke-interface {p2}, Lma/u;->isSuspend()Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_c

    .line 283
    .line 284
    const/4 v5, 0x1

    .line 285
    goto :goto_9

    .line 286
    :cond_c
    const/4 v5, 0x0

    .line 287
    :goto_9
    add-int/2addr v4, v5

    .line 288
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    add-int/2addr v5, p1

    .line 293
    add-int/2addr v5, v4

    .line 294
    invoke-static {p0}, Lb8/f;->H(Lha/f;)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-ne v4, v5, :cond_10

    .line 299
    .line 300
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    add-int/2addr v6, p1

    .line 309
    invoke-static {v4, v6}, Lb8/f;->r0(II)Lca/d;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    new-array v6, v5, [Ljava/lang/reflect/Method;

    .line 314
    .line 315
    const/4 v7, 0x0

    .line 316
    :goto_a
    if-ge v7, v5, :cond_f

    .line 317
    .line 318
    iget v8, v4, Lca/b;->a:I

    .line 319
    .line 320
    iget v9, v4, Lca/b;->b:I

    .line 321
    .line 322
    if-gt v7, v9, :cond_d

    .line 323
    .line 324
    if-gt v8, v7, :cond_d

    .line 325
    .line 326
    const/4 v8, 0x1

    .line 327
    goto :goto_b

    .line 328
    :cond_d
    const/4 v8, 0x0

    .line 329
    :goto_b
    if-eqz v8, :cond_e

    .line 330
    .line 331
    sub-int v8, v7, p1

    .line 332
    .line 333
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    check-cast v8, Lcc/e0;

    .line 338
    .line 339
    invoke-static {v8}, Lb8/f;->m0(Lcc/e0;)Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    if-eqz v8, :cond_e

    .line 344
    .line 345
    invoke-static {v8, p2}, Lb8/f;->N(Ljava/lang/Class;Lma/b;)Ljava/lang/reflect/Method;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    goto :goto_c

    .line 350
    :cond_e
    move-object v8, v0

    .line 351
    :goto_c
    aput-object v8, v6, v7

    .line 352
    .line 353
    add-int/lit8 v7, v7, 0x1

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_f
    new-instance p1, Lha/h$a;

    .line 357
    .line 358
    invoke-direct {p1, v4, v6, v3}, Lha/h$a;-><init>(Lca/d;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 359
    .line 360
    .line 361
    :goto_d
    iput-object p1, p0, Lha/h;->c:Lha/h$a;

    .line 362
    .line 363
    return-void

    .line 364
    :cond_10
    new-instance p1, Ll9/f;

    .line 365
    .line 366
    new-instance p3, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v0, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    .line 369
    .line 370
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {p0}, Lb8/f;->H(Lha/f;)I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v0, " != "

    .line 381
    .line 382
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v0, "\nCalling: "

    .line 389
    .line 390
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string p2, "\nParameter types: "

    .line 397
    .line 398
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lha/h;->a()Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string p2, ")\nDefault: "

    .line 409
    .line 410
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    iget-boolean p2, p0, Lha/h;->b:Z

    .line 414
    .line 415
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p2

    .line 422
    invoke-direct {p1, p2, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 423
    .line 424
    .line 425
    throw p1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lha/h;->a:Lha/f;

    invoke-interface {v0}, Lha/f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Member;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    iget-object v0, p0, Lha/h;->a:Lha/f;

    invoke-interface {v0}, Lha/f;->b()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/h;->c:Lha/h$a;

    .line 7
    .line 8
    iget-object v1, v0, Lha/h$a;->a:Lca/d;

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "copyOf(this, size)"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v3, v1, Lca/b;->a:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    iget v1, v1, Lca/b;->b:I

    .line 24
    .line 25
    if-gt v3, v1, :cond_2

    .line 26
    .line 27
    :goto_0
    iget-object v5, v0, Lha/h$a;->b:[Ljava/lang/reflect/Method;

    .line 28
    .line 29
    aget-object v5, v5, v3

    .line 30
    .line 31
    aget-object v6, p1, v3

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    new-array v7, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v6, "method.returnType"

    .line 49
    .line 50
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v5}, Lga/z0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    :cond_1
    :goto_1
    aput-object v6, v2, v3

    .line 58
    .line 59
    if-eq v3, v1, :cond_2

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lha/h;->a:Lha/f;

    .line 65
    .line 66
    invoke-interface {p1, v2}, Lha/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, v0, Lha/h$a;->c:Ljava/lang/reflect/Method;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p1, v1, v4

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move-object p1, v0

    .line 88
    :cond_4
    :goto_2
    return-object p1
.end method

.method public final getReturnType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lha/h;->a:Lha/f;

    invoke-interface {v0}, Lha/f;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
