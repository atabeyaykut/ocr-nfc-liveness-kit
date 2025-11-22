.class public final Lva/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llb/c;",
            "Llb/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/LinkedHashMap;

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Ll9/g;

    .line 4
    .line 5
    sget-object v1, Lja/o$a;->j:Llb/d;

    .line 6
    .line 7
    const-string v2, "name"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lb8/f;->j(Llb/d;Ljava/lang/String;)Llb/c;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v4, Ll9/g;

    .line 18
    .line 19
    invoke-direct {v4, v3, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v4, v0, v2

    .line 24
    .line 25
    const-string v2, "ordinal"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lb8/f;->j(Llb/d;Ljava/lang/String;)Llb/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ll9/g;

    .line 36
    .line 37
    invoke-direct {v3, v1, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    aput-object v3, v0, v1

    .line 42
    .line 43
    sget-object v1, Lja/o$a;->B:Llb/c;

    .line 44
    .line 45
    const-string v2, "size"

    .line 46
    .line 47
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Llb/c;->c(Llb/f;)Llb/c;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Ll9/g;

    .line 60
    .line 61
    invoke-direct {v4, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    aput-object v4, v0, v1

    .line 66
    .line 67
    sget-object v1, Lja/o$a;->F:Llb/c;

    .line 68
    .line 69
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Llb/c;->c(Llb/f;)Llb/c;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v4, Ll9/g;

    .line 82
    .line 83
    invoke-direct {v4, v3, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x3

    .line 87
    aput-object v4, v0, v2

    .line 88
    .line 89
    sget-object v2, Lja/o$a;->e:Llb/d;

    .line 90
    .line 91
    const-string v3, "length"

    .line 92
    .line 93
    invoke-static {v2, v3}, Lb8/f;->j(Llb/d;Ljava/lang/String;)Llb/c;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v4, Ll9/g;

    .line 102
    .line 103
    invoke-direct {v4, v2, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    const/4 v2, 0x4

    .line 107
    aput-object v4, v0, v2

    .line 108
    .line 109
    const-string v2, "keys"

    .line 110
    .line 111
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Llb/c;->c(Llb/f;)Llb/c;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "keySet"

    .line 120
    .line 121
    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    new-instance v4, Ll9/g;

    .line 126
    .line 127
    invoke-direct {v4, v2, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x5

    .line 131
    aput-object v4, v0, v2

    .line 132
    .line 133
    const-string v2, "values"

    .line 134
    .line 135
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Llb/c;->c(Llb/f;)Llb/c;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    new-instance v4, Ll9/g;

    .line 148
    .line 149
    invoke-direct {v4, v3, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const/4 v2, 0x6

    .line 153
    aput-object v4, v0, v2

    .line 154
    .line 155
    const-string v2, "entries"

    .line 156
    .line 157
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v1, v2}, Llb/c;->c(Llb/f;)Llb/c;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v2, "entrySet"

    .line 166
    .line 167
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-instance v3, Ll9/g;

    .line 172
    .line 173
    invoke-direct {v3, v1, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    const/4 v1, 0x7

    .line 177
    aput-object v3, v0, v1

    .line 178
    .line 179
    invoke-static {v0}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lva/g;->a:Ljava/util/Map;

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_0

    .line 207
    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Ljava/util/Map$Entry;

    .line 213
    .line 214
    new-instance v3, Ll9/g;

    .line 215
    .line 216
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Llb/c;

    .line 221
    .line 222
    invoke-virtual {v4}, Llb/c;->f()Llb/f;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-direct {v3, v4, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_2

    .line 251
    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Ll9/g;

    .line 257
    .line 258
    iget-object v3, v2, Ll9/g;->b:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v3, Llb/f;

    .line 261
    .line 262
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-nez v4, :cond_1

    .line 267
    .line 268
    new-instance v4, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 277
    .line 278
    iget-object v2, v2, Ll9/g;->a:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v2, Llb/f;

    .line 281
    .line 282
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 287
    .line 288
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-static {v2}, Lb8/f;->V(I)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_3

    .line 312
    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Ljava/util/Map$Entry;

    .line 318
    .line 319
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Ljava/lang/Iterable;

    .line 328
    .line 329
    const-string v4, "<this>"

    .line 330
    .line 331
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-static {v2}, Lm9/t;->x1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-static {v2}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_3
    sput-object v1, Lva/g;->b:Ljava/util/LinkedHashMap;

    .line 347
    .line 348
    sget-object v0, Lva/g;->a:Ljava/util/Map;

    .line 349
    .line 350
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    sput-object v0, Lva/g;->c:Ljava/util/Set;

    .line 355
    .line 356
    new-instance v1, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_4

    .line 374
    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Llb/c;

    .line 380
    .line 381
    invoke-virtual {v2}, Llb/c;->f()Llb/f;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_4
    invoke-static {v1}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    sput-object v0, Lva/g;->d:Ljava/util/Set;

    .line 394
    .line 395
    return-void
.end method
