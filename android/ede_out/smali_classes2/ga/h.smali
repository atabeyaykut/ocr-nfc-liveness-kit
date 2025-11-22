.class public abstract Lga/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/c;
.implements Lga/r0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lda/c<",
        "TR;>;",
        "Lga/r0;"
    }
.end annotation


# instance fields
.field public final a:Lga/t0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$a<",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lga/t0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$a<",
            "Ljava/util/ArrayList<",
            "Lda/j;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lga/t0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$a<",
            "Lga/p0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lga/t0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$a<",
            "Ljava/util/List<",
            "Lga/q0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lga/h$a;

    invoke-direct {v0, p0}, Lga/h$a;-><init>(Lga/h;)V

    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    move-result-object v0

    iput-object v0, p0, Lga/h;->a:Lga/t0$a;

    new-instance v0, Lga/h$b;

    invoke-direct {v0, p0}, Lga/h$b;-><init>(Lga/h;)V

    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    move-result-object v0

    iput-object v0, p0, Lga/h;->b:Lga/t0$a;

    new-instance v0, Lga/h$c;

    invoke-direct {v0, p0}, Lga/h$c;-><init>(Lga/h;)V

    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    move-result-object v0

    iput-object v0, p0, Lga/h;->c:Lga/t0$a;

    new-instance v0, Lga/h$d;

    invoke-direct {v0, p0}, Lga/h$d;-><init>(Lga/h;)V

    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    move-result-object v0

    iput-object v0, p0, Lga/h;->d:Lga/t0$a;

    return-void
.end method

.method public static g(Lda/n;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lb8/f;->L(Lda/n;)Lda/d;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "type.jvmErasure.java.run\u2026\"\n            )\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Ll9/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate the default empty array of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", because it is not an array type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public final varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lga/h;->k()Lha/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lha/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lea/a;

    invoke-direct {v0, p1}, Lea/a;-><init>(Ljava/lang/IllegalAccessException;)V

    throw v0
.end method

.method public final callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lda/j;",
            "+",
            "Ljava/lang/Object;",
            ">;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lga/h;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "No argument provided for a required parameter: "

    .line 11
    .line 12
    const-string v2, "This callable does not support a default call: "

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    invoke-virtual {p0}, Lga/h;->getParameters()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    .line 25
    new-instance v6, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_4

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lda/j;

    .line 49
    .line 50
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_1

    .line 55
    .line 56
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    if-eqz v8, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Annotation argument value cannot be null ("

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x29

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_1
    invoke-interface {v7}, Lda/j;->j()Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_2

    .line 93
    .line 94
    move-object v8, v3

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-interface {v7}, Lda/j;->a()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_3

    .line 101
    .line 102
    invoke-interface {v7}, Lda/j;->getType()Lga/p0;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v7}, Lga/h;->g(Lda/n;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    :goto_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_4
    invoke-virtual {p0}, Lga/h;->n()Lha/f;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    :try_start_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {p1, v0}, Lha/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto/16 :goto_8

    .line 149
    .line 150
    :catch_0
    move-exception p1

    .line 151
    new-instance v0, Lea/a;

    .line 152
    .line 153
    invoke-direct {v0, p1}, Lea/a;-><init>(Ljava/lang/IllegalAccessException;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_5
    new-instance p1, Ll9/f;

    .line 158
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lga/h;->o()Lma/b;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {p1, v0, v4}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_6
    invoke-virtual {p0}, Lga/h;->getParameters()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v6, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .line 191
    .line 192
    new-instance v7, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const/4 v8, 0x0

    .line 202
    const/4 v9, 0x0

    .line 203
    const/4 v10, 0x0

    .line 204
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    if-eqz v11, :cond_10

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    check-cast v11, Lda/j;

    .line 215
    .line 216
    if-eqz v9, :cond_8

    .line 217
    .line 218
    rem-int/lit8 v12, v9, 0x20

    .line 219
    .line 220
    if-nez v12, :cond_8

    .line 221
    .line 222
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    const/4 v10, 0x0

    .line 230
    :cond_8
    invoke-interface {p1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    if-eqz v12, :cond_9

    .line 235
    .line 236
    invoke-interface {p1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    goto :goto_6

    .line 241
    :cond_9
    invoke-interface {v11}, Lda/j;->j()Z

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    if-eqz v12, :cond_e

    .line 246
    .line 247
    invoke-interface {v11}, Lda/j;->getType()Lga/p0;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    sget-object v12, Lga/z0;->a:Llb/c;

    .line 252
    .line 253
    const-string v12, "<this>"

    .line 254
    .line 255
    invoke-static {v8, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v8, v8, Lga/p0;->a:Lcc/e0;

    .line 259
    .line 260
    if-eqz v8, :cond_a

    .line 261
    .line 262
    invoke-static {v8}, Lob/k;->c(Lcc/e0;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-ne v8, v4, :cond_a

    .line 267
    .line 268
    const/4 v8, 0x1

    .line 269
    goto :goto_3

    .line 270
    :cond_a
    const/4 v8, 0x0

    .line 271
    :goto_3
    if-eqz v8, :cond_b

    .line 272
    .line 273
    move-object v8, v3

    .line 274
    goto :goto_5

    .line 275
    :cond_b
    invoke-interface {v11}, Lda/j;->getType()Lga/p0;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-static {v8, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8}, Lga/p0;->e()Ljava/lang/reflect/Type;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    if-nez v12, :cond_d

    .line 287
    .line 288
    invoke-interface {v8}, Lkotlin/jvm/internal/i;->e()Ljava/lang/reflect/Type;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    if-eqz v12, :cond_c

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_c
    invoke-static {v8, v5}, Lda/t;->b(Lda/n;Z)Ljava/lang/reflect/Type;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    :cond_d
    :goto_4
    invoke-static {v12}, Lga/z0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    :goto_5
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    rem-int/lit8 v8, v9, 0x20

    .line 307
    .line 308
    shl-int v8, v4, v8

    .line 309
    .line 310
    or-int/2addr v8, v10

    .line 311
    move v10, v8

    .line 312
    const/4 v8, 0x1

    .line 313
    goto :goto_7

    .line 314
    :cond_e
    invoke-interface {v11}, Lda/j;->a()Z

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    if-eqz v12, :cond_f

    .line 319
    .line 320
    invoke-interface {v11}, Lda/j;->getType()Lga/p0;

    .line 321
    .line 322
    .line 323
    move-result-object v12

    .line 324
    invoke-static {v12}, Lga/h;->g(Lda/n;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    :goto_6
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    :goto_7
    invoke-interface {v11}, Lda/j;->h()I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    const/4 v12, 0x3

    .line 336
    if-ne v11, v12, :cond_7

    .line 337
    .line 338
    add-int/lit8 v9, v9, 0x1

    .line 339
    .line 340
    goto/16 :goto_2

    .line 341
    .line 342
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw p1

    .line 360
    :cond_10
    if-nez v8, :cond_11

    .line 361
    .line 362
    new-array p1, v5, [Ljava/lang/Object;

    .line 363
    .line 364
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    array-length v0, p1

    .line 369
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-virtual {p0, p1}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    goto :goto_8

    .line 378
    :cond_11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0}, Lga/h;->n()Lha/f;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    if-eqz p1, :cond_12

    .line 390
    .line 391
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    :try_start_1
    new-array v0, v5, [Ljava/lang/Object;

    .line 398
    .line 399
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-interface {p1, v0}, Lha/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 407
    :goto_8
    return-object p1

    .line 408
    :catch_1
    move-exception p1

    .line 409
    new-instance v0, Lea/a;

    .line 410
    .line 411
    invoke-direct {v0, p1}, Lea/a;-><init>(Ljava/lang/IllegalAccessException;)V

    .line 412
    .line 413
    .line 414
    throw v0

    .line 415
    :cond_12
    new-instance p1, Ll9/f;

    .line 416
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Lga/h;->o()Lma/b;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-direct {p1, v0, v4}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 434
    .line 435
    .line 436
    throw p1
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lga/h;->a:Lga/t0$a;

    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_annotations()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lda/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lga/h;->b:Lga/t0$a;

    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_parameters()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getReturnType()Lda/n;
    .locals 2

    iget-object v0, p0, Lga/h;->c:Lga/t0$a;

    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_returnType()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lda/n;

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lda/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lga/h;->d:Lga/t0$a;

    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_typeParameters()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getVisibility()Lda/q;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lga/h;->o()Lma/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lma/z;->getVisibility()Lma/q;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "descriptor.visibility"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lga/z0;->a:Llb/c;

    .line 15
    .line 16
    sget-object v1, Lma/p;->e:Lma/p$h;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v0, Lda/q;->a:Lda/q;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-object v1, Lma/p;->c:Lma/p$f;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    sget-object v0, Lda/q;->b:Lda/q;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v1, Lma/p;->d:Lma/p$g;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    sget-object v0, Lda/q;->c:Lda/q;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget-object v1, Lma/p;->a:Lma/p$d;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object v1, Lma/p;->b:Lma/p$e;

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_0
    if-eqz v0, :cond_4

    .line 66
    .line 67
    sget-object v0, Lda/q;->d:Lda/q;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    :goto_1
    return-object v0
.end method

.method public final isAbstract()Z
    .locals 2

    invoke-virtual {p0}, Lga/h;->o()Lma/b;

    move-result-object v0

    invoke-interface {v0}, Lma/z;->j()Lma/a0;

    move-result-object v0

    sget-object v1, Lma/a0;->d:Lma/a0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFinal()Z
    .locals 2

    invoke-virtual {p0}, Lga/h;->o()Lma/b;

    move-result-object v0

    invoke-interface {v0}, Lma/z;->j()Lma/a0;

    move-result-object v0

    sget-object v1, Lma/a0;->a:Lma/a0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOpen()Z
    .locals 2

    invoke-virtual {p0}, Lga/h;->o()Lma/b;

    move-result-object v0

    invoke-interface {v0}, Lma/z;->j()Lma/a0;

    move-result-object v0

    sget-object v1, Lma/a0;->c:Lma/a0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract k()Lha/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lha/f<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract m()Lga/s;
.end method

.method public abstract n()Lha/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lha/f<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract o()Lma/b;
.end method

.method public final p()Z
    .locals 2

    invoke-interface {p0}, Lda/c;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lga/h;->m()Lga/s;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract q()Z
.end method
