.class public final Lka/e;
.super Lpa/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lka/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lma/j;Lka/e;Lma/b$a;Z)V
    .locals 7

    .line 1
    sget-object v3, Lna/h$a;->a:Lna/h$a$a;

    .line 2
    .line 3
    sget-object v4, Lic/t;->g:Llb/f;

    .line 4
    .line 5
    sget-object v6, Lma/r0;->a:Lma/r0$a;

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lpa/p0;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lma/r0;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lpa/x;->n:Z

    .line 16
    .line 17
    iput-boolean p4, p0, Lpa/x;->y:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lpa/x;->z:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
    .locals 0

    .line 1
    const-string p4, "newOwner"

    .line 2
    .line 3
    invoke-static {p2, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "kind"

    .line 7
    .line 8
    invoke-static {p1, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p4, "annotations"

    .line 12
    .line 13
    invoke-static {p5, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p4, Lka/e;

    .line 17
    .line 18
    check-cast p3, Lka/e;

    .line 19
    .line 20
    iget-boolean p5, p0, Lpa/x;->y:Z

    .line 21
    .line 22
    invoke-direct {p4, p2, p3, p1, p5}, Lka/e;-><init>(Lma/j;Lka/e;Lma/b$a;Z)V

    .line 23
    .line 24
    .line 25
    return-object p4
.end method

.method public final L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final L0(Lpa/x$a;)Lpa/x;
    .locals 10

    .line 1
    const-string v0, "configuration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lpa/x;->L0(Lpa/x$a;)Lpa/x;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lka/e;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lpa/x;->g()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "substituted.valueParameters"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    .line 27
    instance-of v2, v0, Ljava/util/Collection;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    const-string v5, "it.type"

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move-object v2, v0

    .line 36
    check-cast v2, Ljava/util/Collection;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lma/a1;

    .line 60
    .line 61
    invoke-interface {v2}, Lma/z0;->getType()Lcc/e0;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lja/f;->c(Lcc/e0;)Llb/f;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v2, 0x0

    .line 77
    :goto_0
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 82
    :goto_2
    if-eqz v0, :cond_5

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_5
    invoke-virtual {p1}, Lpa/x;->g()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    check-cast v0, Ljava/lang/Iterable;

    .line 93
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_6

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lma/a1;

    .line 118
    .line 119
    invoke-interface {v2}, Lma/z0;->getType()Lcc/e0;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lja/f;->c(Lcc/e0;)Llb/f;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {p1}, Lpa/x;->g()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    sub-int/2addr v0, v2

    .line 147
    const-string v2, "valueParameters"

    .line 148
    .line 149
    if-nez v0, :cond_a

    .line 150
    .line 151
    invoke-virtual {p1}, Lpa/x;->g()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-static {v5, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    check-cast v5, Ljava/lang/Iterable;

    .line 159
    .line 160
    invoke-static {v1, v5}, Lm9/t;->A1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-eqz v6, :cond_7

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-eqz v6, :cond_9

    .line 180
    .line 181
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    check-cast v6, Ll9/g;

    .line 186
    .line 187
    iget-object v7, v6, Ll9/g;->a:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v7, Llb/f;

    .line 190
    .line 191
    iget-object v6, v6, Ll9/g;->b:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v6, Lma/a1;

    .line 194
    .line 195
    invoke-interface {v6}, Lma/j;->getName()Llb/f;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-nez v6, :cond_8

    .line 204
    .line 205
    const/4 v5, 0x0

    .line 206
    goto :goto_5

    .line 207
    :cond_9
    :goto_4
    const/4 v5, 0x1

    .line 208
    :goto_5
    if-eqz v5, :cond_a

    .line 209
    .line 210
    goto/16 :goto_a

    .line 211
    .line 212
    :cond_a
    invoke-virtual {p1}, Lpa/x;->g()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-static {v5, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    check-cast v5, Ljava/lang/Iterable;

    .line 220
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-static {v5}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_c

    .line 239
    .line 240
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    check-cast v6, Lma/a1;

    .line 245
    .line 246
    invoke-interface {v6}, Lma/j;->getName()Llb/f;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    const-string v8, "it.name"

    .line 251
    .line 252
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v6}, Lma/a1;->getIndex()I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    sub-int v9, v8, v0

    .line 260
    .line 261
    if-ltz v9, :cond_b

    .line 262
    .line 263
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    check-cast v9, Llb/f;

    .line 268
    .line 269
    if-eqz v9, :cond_b

    .line 270
    .line 271
    move-object v7, v9

    .line 272
    :cond_b
    invoke-interface {v6, p1, v7, v8}, Lma/a1;->q0(Lka/e;Llb/f;I)Lma/a1;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_c
    sget-object v0, Lcc/p1;->b:Lcc/p1;

    .line 281
    .line 282
    invoke-virtual {p1, v0}, Lpa/x;->O0(Lcc/p1;)Lpa/x$a;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_d

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_10

    .line 302
    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    check-cast v5, Llb/f;

    .line 308
    .line 309
    if-nez v5, :cond_f

    .line 310
    .line 311
    const/4 v5, 0x1

    .line 312
    goto :goto_7

    .line 313
    :cond_f
    const/4 v5, 0x0

    .line 314
    :goto_7
    if-eqz v5, :cond_e

    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_10
    :goto_8
    const/4 v3, 0x0

    .line 318
    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    iput-object v1, v0, Lpa/x$a;->v:Ljava/lang/Boolean;

    .line 323
    .line 324
    iput-object v2, v0, Lpa/x$a;->g:Ljava/util/List;

    .line 325
    .line 326
    invoke-virtual {p1}, Lpa/p0;->V0()Lma/q0;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    iput-object v1, v0, Lpa/x$a;->e:Lma/u;

    .line 331
    .line 332
    invoke-super {p1, v0}, Lpa/x;->L0(Lpa/x$a;)Lpa/x;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :goto_a
    return-object p1
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
