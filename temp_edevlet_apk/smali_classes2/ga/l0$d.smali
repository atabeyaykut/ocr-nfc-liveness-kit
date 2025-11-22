.class public final Lga/l0$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/l0;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Lma/l0;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/l0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/l0<",
            "+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/l0$d;->a:Lga/l0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lga/l0$d;->a:Lga/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lga/l0;->e:Lga/s;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lga/l0;->f:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "name"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lga/l0;->g:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "signature"

    .line 18
    .line 19
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lga/s;->a:Lmc/d;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v3, v3, Lmc/d;->a:Ljava/util/regex/Pattern;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "nativePattern.matcher(input)"

    .line 34
    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v4, Lmc/c;

    .line 47
    .line 48
    invoke-direct {v4, v3, v0}, Lmc/c;-><init>(Ljava/util/regex/Matcher;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v3, v4

    .line 52
    :goto_0
    const/4 v4, 0x1

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3}, Lmc/c;->a()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lmc/c$a;

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Lmc/c$a;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Lga/s;->p(I)Lma/l0;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_1
    new-instance v2, Ll9/f;

    .line 80
    .line 81
    const-string v3, "Local property #"

    .line 82
    .line 83
    const-string v5, " not found in "

    .line 84
    .line 85
    invoke-static {v3, v0, v5}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v1}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v2, v0, v4}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    throw v2

    .line 104
    :cond_2
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v1, v3}, Lga/s;->s(Llb/f;)Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/lang/Iterable;

    .line 113
    .line 114
    new-instance v5, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    move-object v7, v6

    .line 134
    check-cast v7, Lma/l0;

    .line 135
    .line 136
    invoke-static {v7}, Lga/x0;->b(Lma/l0;)Lga/g;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v7}, Lga/g;->a()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_3

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const-string v6, ") not resolved in "

    .line 159
    .line 160
    const-string v7, "\' (JVM signature: "

    .line 161
    .line 162
    const-string v8, "Property \'"

    .line 163
    .line 164
    if-nez v3, :cond_b

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eq v3, v4, :cond_a

    .line 171
    .line 172
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-eqz v9, :cond_6

    .line 186
    .line 187
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    move-object v10, v9

    .line 192
    check-cast v10, Lma/l0;

    .line 193
    .line 194
    invoke-interface {v10}, Lma/z;->getVisibility()Lma/q;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    if-nez v11, :cond_5

    .line 203
    .line 204
    new-instance v11, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_5
    check-cast v11, Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_6
    new-instance v5, Lga/r;

    .line 219
    .line 220
    sget-object v9, Lga/v;->a:Lga/v;

    .line 221
    .line 222
    invoke-direct {v5, v9}, Lga/r;-><init>(Lga/v;)V

    .line 223
    .line 224
    .line 225
    new-instance v9, Ljava/util/TreeMap;

    .line 226
    .line 227
    invoke-direct {v9, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    const-string v5, "properties\n             \u2026\n                }.values"

    .line 238
    .line 239
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    check-cast v3, Ljava/lang/Iterable;

    .line 243
    .line 244
    invoke-static {v3}, Lm9/t;->h1(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-ne v5, v4, :cond_7

    .line 255
    .line 256
    invoke-static {v3}, Lm9/t;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    goto :goto_5

    .line 261
    :cond_7
    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v1, v3}, Lga/s;->s(Llb/f;)Ljava/util/Collection;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    move-object v9, v3

    .line 270
    check-cast v9, Ljava/lang/Iterable;

    .line 271
    .line 272
    const-string v10, "\n"

    .line 273
    .line 274
    const/4 v11, 0x0

    .line 275
    const/4 v12, 0x0

    .line 276
    sget-object v13, Lga/u;->a:Lga/u;

    .line 277
    .line 278
    const/16 v14, 0x1e

    .line 279
    .line 280
    invoke-static/range {v9 .. v14}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    new-instance v5, Ll9/f;

    .line 285
    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const/16 v0, 0x3a

    .line 307
    .line 308
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_8

    .line 316
    .line 317
    const/4 v0, 0x1

    .line 318
    goto :goto_3

    .line 319
    :cond_8
    const/4 v0, 0x0

    .line 320
    :goto_3
    if-eqz v0, :cond_9

    .line 321
    .line 322
    const-string v0, " no members found"

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_9
    const-string v0, "\n"

    .line 326
    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    :goto_4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-direct {v5, v0, v4}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    throw v5

    .line 342
    :cond_a
    invoke-static {v5}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :goto_5
    move-object v2, v0

    .line 347
    check-cast v2, Lma/l0;

    .line 348
    .line 349
    :goto_6
    return-object v2

    .line 350
    :cond_b
    new-instance v3, Ll9/f;

    .line 351
    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-direct {v3, v0, v4}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 377
    .line 378
    .line 379
    throw v3
.end method
