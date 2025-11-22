.class public final Lac/m;
.super Lpa/f;
.source "SourceFile"

# interfaces
.implements Lac/h;


# instance fields
.field public final h:Lbc/l;

.field public final j:Lgb/q;

.field public final k:Lib/c;

.field public final l:Lib/g;

.field public final m:Lib/h;

.field public final n:Lac/g;

.field public p:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lpa/r0;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcc/m0;

.field public r:Lcc/m0;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lma/w0;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcc/m0;


# direct methods
.method public constructor <init>(Lbc/l;Lma/j;Lna/h;Llb/f;Lma/q;Lgb/q;Lib/c;Lib/g;Lib/h;Lac/g;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lpa/f;-><init>(Lma/j;Lna/h;Llb/f;Lma/q;)V

    iput-object p1, p0, Lac/m;->h:Lbc/l;

    iput-object p6, p0, Lac/m;->j:Lgb/q;

    iput-object p7, p0, Lac/m;->k:Lib/c;

    iput-object p8, p0, Lac/m;->l:Lib/g;

    iput-object p9, p0, Lac/m;->m:Lib/h;

    iput-object p10, p0, Lac/m;->n:Lac/g;

    return-void
.end method


# virtual methods
.method public final E0(Ljava/util/List;Lcc/m0;Lcc/m0;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lma/w0;",
            ">;",
            "Lcc/m0;",
            "Lcc/m0;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    const-string v2, "underlyingType"

    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "expandedType"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    iput-object v2, v8, Lpa/f;->f:Ljava/util/List;

    .line 20
    .line 21
    iput-object v0, v8, Lac/m;->q:Lcc/m0;

    .line 22
    .line 23
    iput-object v1, v8, Lac/m;->r:Lcc/m0;

    .line 24
    .line 25
    invoke-static/range {p0 .. p0}, Lma/x0;->b(Lma/h;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, v8, Lac/m;->s:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lac/m;->p()Lma/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Lma/e;->C0()Lvb/i;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    :cond_0
    sget-object v0, Lvb/i$b;->b:Lvb/i$b;

    .line 44
    .line 45
    :cond_1
    new-instance v1, Lpa/e;

    .line 46
    .line 47
    invoke-direct {v1, v8}, Lpa/e;-><init>(Lpa/f;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v8, v0, v1}, Lcc/q1;->p(Lma/g;Lvb/i;Lx9/l;)Lcc/m0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, v8, Lac/m;->t:Lcc/m0;

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lac/m;->p()Lma/e;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v9, Lm9/v;->a:Lm9/v;

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_2
    invoke-interface {v0}, Lma/e;->k()Ljava/util/Collection;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "classDescriptor.constructors"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v0, Ljava/lang/Iterable;

    .line 76
    .line 77
    new-instance v10, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_c

    .line 91
    .line 92
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v12, v0

    .line 97
    check-cast v12, Lma/d;

    .line 98
    .line 99
    sget-object v0, Lpa/s0;->M:Lpa/s0$a;

    .line 100
    .line 101
    const-string v1, "it"

    .line 102
    .line 103
    invoke-static {v12, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const-string v0, "storageManager"

    .line 110
    .line 111
    iget-object v1, v8, Lac/m;->h:Lbc/l;

    .line 112
    .line 113
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lac/m;->p()Lma/e;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/4 v13, 0x0

    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    move-object v14, v13

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lac/m;->R()Lcc/m0;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lcc/p1;->d(Lcc/e0;)Lcc/p1;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    move-object v14, v0

    .line 134
    :goto_1
    if-nez v14, :cond_5

    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_5
    invoke-interface {v12, v14}, Lma/d;->c(Lcc/p1;)Lma/d;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    if-nez v15, :cond_6

    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_6
    new-instance v7, Lpa/s0;

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-interface {v12}, Lna/a;->getAnnotations()Lna/h;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-interface {v12}, Lma/b;->k0()Lma/b$a;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const-string v0, "constructor.kind"

    .line 158
    .line 159
    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p0 .. p0}, Lpa/q;->getSource()Lma/r0;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const-string v0, "typeAliasDescriptor.source"

    .line 167
    .line 168
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object v0, v7

    .line 172
    move-object/from16 v2, p0

    .line 173
    .line 174
    move-object/from16 v16, v3

    .line 175
    .line 176
    move-object v3, v15

    .line 177
    move-object/from16 p1, v7

    .line 178
    .line 179
    move-object/from16 v7, v16

    .line 180
    .line 181
    invoke-direct/range {v0 .. v7}, Lpa/s0;-><init>(Lbc/l;Lma/v0;Lma/d;Lpa/r0;Lna/h;Lma/b$a;Lma/r0;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v12}, Lma/a;->g()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_b

    .line 189
    .line 190
    const/4 v5, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x0

    .line 193
    move-object/from16 v2, p1

    .line 194
    .line 195
    move-object v4, v14

    .line 196
    invoke-static/range {v2 .. v7}, Lpa/x;->M0(Lma/u;Ljava/util/List;Lcc/p1;ZZ[Z)Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object v21

    .line 200
    if-nez v21, :cond_7

    .line 201
    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :cond_7
    invoke-interface {v15}, Lma/i;->getReturnType()Lcc/e0;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcc/e0;->P0()Lcc/s1;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v0}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual/range {p0 .. p0}, Lac/m;->q()Lcc/m0;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lcc/q0;->c(Lcc/m0;Lcc/m0;)Lcc/m0;

    .line 221
    .line 222
    .line 223
    move-result-object v22

    .line 224
    invoke-interface {v12}, Lma/a;->a0()Lma/o0;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    sget-object v1, Lna/h$a;->a:Lna/h$a$a;

    .line 229
    .line 230
    sget-object v2, Lcc/t1;->c:Lcc/t1;

    .line 231
    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v14, v0, v2}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    move-object/from16 v3, p1

    .line 243
    .line 244
    invoke-static {v3, v0, v1}, Lob/h;->h(Lma/a;Lcc/e0;Lna/h;)Lpa/o0;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    goto :goto_2

    .line 249
    :cond_8
    move-object/from16 v3, p1

    .line 250
    .line 251
    :goto_2
    move-object/from16 v17, v13

    .line 252
    .line 253
    invoke-virtual/range {p0 .. p0}, Lac/m;->p()Lma/e;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-eqz v0, :cond_a

    .line 258
    .line 259
    invoke-interface {v12}, Lma/a;->p0()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    const-string v5, "constructor.contextReceiverParameters"

    .line 264
    .line 265
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    check-cast v4, Ljava/lang/Iterable;

    .line 269
    .line 270
    new-instance v5, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-static {v4}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-eqz v6, :cond_9

    .line 288
    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    check-cast v6, Lma/o0;

    .line 294
    .line 295
    invoke-interface {v6}, Lma/z0;->getType()Lcc/e0;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v14, v7, v2}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-interface {v6}, Lma/o0;->getValue()Lwb/g;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    const-string v12, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver"

    .line 308
    .line 309
    invoke-static {v6, v12}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    check-cast v6, Lwb/f;

    .line 313
    .line 314
    invoke-interface {v6}, Lwb/f;->a()Llb/f;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    new-instance v12, Lpa/o0;

    .line 319
    .line 320
    new-instance v13, Lwb/b;

    .line 321
    .line 322
    invoke-direct {v13, v0, v7, v6}, Lwb/b;-><init>(Lma/e;Lcc/e0;Llb/f;)V

    .line 323
    .line 324
    .line 325
    invoke-direct {v12, v0, v13, v1}, Lpa/o0;-><init>(Lma/j;Lwb/a;Lna/h;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_9
    move-object/from16 v19, v5

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_a
    move-object/from16 v19, v9

    .line 336
    .line 337
    :goto_4
    const/16 v18, 0x0

    .line 338
    .line 339
    invoke-virtual/range {p0 .. p0}, Lpa/f;->s()Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v20

    .line 343
    sget-object v23, Lma/a0;->a:Lma/a0;

    .line 344
    .line 345
    iget-object v0, v8, Lpa/f;->e:Lma/q;

    .line 346
    .line 347
    move-object/from16 v16, v3

    .line 348
    .line 349
    move-object/from16 v24, v0

    .line 350
    .line 351
    invoke-virtual/range {v16 .. v24}, Lpa/x;->N0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;)V

    .line 352
    .line 353
    .line 354
    move-object v13, v3

    .line 355
    :goto_5
    if-eqz v13, :cond_3

    .line 356
    .line 357
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_b
    const/16 v0, 0x1c

    .line 363
    .line 364
    invoke-static {v0}, Lpa/x;->C(I)V

    .line 365
    .line 366
    .line 367
    throw v13

    .line 368
    :cond_c
    move-object v9, v10

    .line 369
    :goto_6
    iput-object v9, v8, Lac/m;->p:Ljava/util/Collection;

    .line 370
    .line 371
    return-void
.end method

.method public final O()Lib/g;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final R()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lac/m;->r:Lcc/m0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "expandedType"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final U()Lib/c;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final X()Lac/g;
    .locals 1

    iget-object v0, p0, Lac/m;->n:Lac/g;

    return-object v0
.end method

.method public final c(Lcc/p1;)Lma/k;
    .locals 12

    .line 1
    const-string v0, "substitutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcc/p1;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lac/m;

    .line 15
    .line 16
    iget-object v2, p0, Lac/m;->h:Lbc/l;

    .line 17
    .line 18
    invoke-virtual {p0}, Lpa/q;->b()Lma/j;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v1, "containingDeclaration"

    .line 23
    .line 24
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lna/b;->getAnnotations()Lna/h;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v1, "annotations"

    .line 32
    .line 33
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lpa/p;->getName()Llb/f;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v1, "name"

    .line 41
    .line 42
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v6, p0, Lpa/f;->e:Lma/q;

    .line 46
    .line 47
    iget-object v7, p0, Lac/m;->j:Lgb/q;

    .line 48
    .line 49
    iget-object v8, p0, Lac/m;->k:Lib/c;

    .line 50
    .line 51
    iget-object v9, p0, Lac/m;->l:Lib/g;

    .line 52
    .line 53
    iget-object v10, p0, Lac/m;->m:Lib/h;

    .line 54
    .line 55
    iget-object v11, p0, Lac/m;->n:Lac/g;

    .line 56
    .line 57
    move-object v1, v0

    .line 58
    invoke-direct/range {v1 .. v11}, Lac/m;-><init>(Lbc/l;Lma/j;Lna/h;Llb/f;Lma/q;Lgb/q;Lib/c;Lib/g;Lib/h;Lac/g;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lpa/f;->s()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lac/m;->c0()Lcc/m0;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object v3, Lcc/t1;->c:Lcc/t1;

    .line 70
    .line 71
    invoke-virtual {p1, v2, v3}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2}, Lcc/n1;->a(Lcc/e0;)Lcc/m0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lac/m;->R()Lcc/m0;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {p1, v4, v3}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lcc/n1;->a(Lcc/e0;)Lcc/m0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, v1, v2, p1}, Lac/m;->E0(Ljava/util/List;Lcc/m0;Lcc/m0;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-object v0
.end method

.method public final c0()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lac/m;->q:Lcc/m0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "underlyingType"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final p()Lma/e;
    .locals 3

    invoke-virtual {p0}, Lac/m;->R()Lcc/m0;

    move-result-object v0

    invoke-static {v0}, Lc5/v;->y(Lcc/e0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lac/m;->R()Lcc/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    move-result-object v0

    instance-of v2, v0, Lma/e;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lma/e;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final q()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lac/m;->t:Lcc/m0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "defaultTypeImpl"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
