.class public final Lr0/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Lr0/z<",
        "TS;>;S::",
        "Lr0/p;",
        ">",
        "Ljava/lang/Object;",
        "Lr0/q<",
        "TVM;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lr0/f1;Lx9/l;)Lr0/p;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TVM;>;",
            "Ljava/lang/Class<",
            "+TS;>;",
            "Lr0/f1;",
            "Lx9/l<",
            "-TS;+TS;>;)TS;"
        }
    .end annotation

    .line 1
    const-string v0, "viewModelClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "stateClass"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "viewModelContext"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "stateRestorer"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-class v0, Lr0/f1;

    .line 22
    .line 23
    const-string v1, "initialState"

    .line 24
    .line 25
    invoke-static {p1}, Lc5/w;->o(Ljava/lang/Class;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    :try_start_0
    new-array v6, v4, [Ljava/lang/Class;

    .line 35
    .line 36
    aput-object v0, v6, v5

    .line 37
    .line 38
    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v2}, Lc5/w;->w(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-array v7, v4, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p3, v7, v5

    .line 49
    .line 50
    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lr0/p;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    new-array v2, v4, [Ljava/lang/Class;

    .line 58
    .line 59
    aput-object v0, v2, v5

    .line 60
    .line 61
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-array v1, v4, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object p3, v1, v5

    .line 68
    .line 69
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v2, v0

    .line 74
    check-cast v2, Lr0/p;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object v2, v3

    .line 78
    :goto_0
    if-eqz v2, :cond_1

    .line 79
    .line 80
    goto/16 :goto_d

    .line 81
    .line 82
    :cond_1
    invoke-virtual {p3}, Lr0/f1;->a()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    const-string v0, "stateClass.constructors"

    .line 87
    .line 88
    if-eqz p3, :cond_7

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    array-length v6, v2

    .line 102
    const/4 v7, 0x0

    .line 103
    :goto_1
    if-ge v7, v6, :cond_7

    .line 104
    .line 105
    aget-object v8, v2, v7

    .line 106
    .line 107
    const-string v9, "constructor"

    .line 108
    .line 109
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    array-length v9, v9

    .line 117
    if-ne v9, v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    aget-object v9, v9, v5

    .line 124
    .line 125
    const-string v10, "constructor.parameterTypes[0]"

    .line 126
    .line 127
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v10, Lr0/a1;->a:Ljava/util/Map;

    .line 131
    .line 132
    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_2

    .line 137
    .line 138
    const/4 v9, 0x1

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-eqz v10, :cond_3

    .line 145
    .line 146
    invoke-static {v9, v1}, Lr0/a1;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz v10, :cond_4

    .line 156
    .line 157
    invoke-static {v1, v9}, Lr0/a1;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    goto :goto_2

    .line 162
    :cond_4
    const/4 v9, 0x0

    .line 163
    :goto_2
    if-eqz v9, :cond_5

    .line 164
    .line 165
    const/4 v9, 0x1

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const/4 v9, 0x0

    .line 168
    :goto_3
    if-eqz v9, :cond_6

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    move-object v8, v3

    .line 175
    :goto_4
    if-eqz v8, :cond_8

    .line 176
    .line 177
    new-array v1, v4, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object p3, v1, v5

    .line 180
    .line 181
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    move-object v1, v3

    .line 187
    :goto_5
    instance-of v2, v1, Lr0/p;

    .line 188
    .line 189
    if-nez v2, :cond_9

    .line 190
    .line 191
    move-object v1, v3

    .line 192
    :cond_9
    check-cast v1, Lr0/p;

    .line 193
    .line 194
    if-eqz v1, :cond_a

    .line 195
    .line 196
    move-object v2, v1

    .line 197
    goto/16 :goto_c

    .line 198
    .line 199
    :cond_a
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_b

    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object v3, v0

    .line 214
    check-cast v3, Lr0/p;

    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    .line 219
    const/16 v2, 0x1a

    .line 220
    .line 221
    if-lt v1, v2, :cond_e

    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    array-length v0, v1

    .line 231
    const/4 v2, 0x0

    .line 232
    :goto_6
    if-ge v2, v0, :cond_10

    .line 233
    .line 234
    aget-object v6, v1, v2

    .line 235
    .line 236
    const-string v7, "it"

    .line 237
    .line 238
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v6}, Landroidx/appcompat/widget/l;->d(Ljava/lang/reflect/Constructor;)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-nez v7, :cond_c

    .line 246
    .line 247
    const/4 v7, 0x1

    .line 248
    goto :goto_7

    .line 249
    :cond_c
    const/4 v7, 0x0

    .line 250
    :goto_7
    if-eqz v7, :cond_d

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    array-length v0, v1

    .line 264
    if-nez v0, :cond_f

    .line 265
    .line 266
    const/4 v0, 0x1

    .line 267
    goto :goto_8

    .line 268
    :cond_f
    const/4 v0, 0x0

    .line 269
    :goto_8
    if-eqz v0, :cond_11

    .line 270
    .line 271
    :cond_10
    move-object v6, v3

    .line 272
    goto :goto_9

    .line 273
    :cond_11
    array-length v0, v1

    .line 274
    sub-int/2addr v0, v4

    .line 275
    aget-object v6, v1, v0

    .line 276
    .line 277
    :goto_9
    if-eqz v6, :cond_13

    .line 278
    .line 279
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 280
    .line 281
    .line 282
    new-array v0, v5, [Ljava/lang/Object;

    .line 283
    .line 284
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    instance-of v1, v0, Lr0/p;

    .line 289
    .line 290
    if-nez v1, :cond_12

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_12
    move-object v3, v0

    .line 294
    :goto_a
    check-cast v3, Lr0/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    .line 296
    :cond_13
    :goto_b
    move-object v2, v3

    .line 297
    :goto_c
    if-eqz v2, :cond_14

    .line 298
    .line 299
    :goto_d
    invoke-interface {p4, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lr0/p;

    .line 304
    .line 305
    return-object p1

    .line 306
    :cond_14
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 307
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v1, "Attempt to create the MvRx state class "

    .line 311
    .line 312
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string p2, " has failed. One of the following must be true:\n 1) The state class has default values for every constructor property.\n 2) The state class has a secondary constructor for "

    .line 323
    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    if-eqz p3, :cond_15

    .line 328
    .line 329
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    goto :goto_e

    .line 338
    :cond_15
    const-string p2, "a fragment argument"

    .line 339
    .line 340
    :goto_e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string p2, ".\n 3) "

    .line 344
    .line 345
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string p1, " must have a companion object implementing MvRxFactory with an initialState function that does not return null. "

    .line 356
    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw p4

    .line 368
    :catchall_0
    move-exception p1

    .line 369
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 370
    .line 371
    const-string p3, "Failed to create initial state!"

    .line 372
    .line 373
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .line 375
    .line 376
    throw p2
.end method
