.class public final Lnb/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lma/l<",
        "Ll9/m;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnb/d;


# direct methods
.method public constructor <init>(Lnb/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnb/d$a;->a:Lnb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lma/a1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1, p2, v1}, Lnb/d;->j0(Lma/a1;ZLjava/lang/StringBuilder;Z)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 20
    .line 21
    return-object p1
.end method

.method public final bridge synthetic b(Lma/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lnb/d$a;->n(Lma/u;Ljava/lang/StringBuilder;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method

.method public final c(Lma/n0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "setter"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lnb/d$a;->o(Lma/k0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    return-object p1
.end method

.method public final d(Lma/l0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Lnb/d;->w(Lnb/d;Lma/l0;Ljava/lang/StringBuilder;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    return-object p1
.end method

.method public final e(Lma/e0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lma/e0;->d()Llb/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "package-fragment"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p2}, Lnb/d;->Y(Llb/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lnb/d;->m()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v1, " in "

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lma/e0;->b()Lma/b0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, p1, p2, v1}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 47
    .line 48
    return-object p1
.end method

.method public final f(Lma/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v7, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lma/e;->h()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {v7}, Lnb/d;->A()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v5, "companion object"

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    if-nez v4, :cond_12

    .line 38
    .line 39
    invoke-virtual {v7, p2, p1, v6}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Lma/e;->F0()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v8, "klass.contextReceivers"

    .line 47
    .line 48
    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, p2, v4}, Lnb/d;->J(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Lma/e;->getVisibility()Lma/q;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v8, "klass.visibility"

    .line 61
    .line 62
    invoke-static {v4, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v4, p2}, Lnb/d;->l0(Lma/q;Ljava/lang/StringBuilder;)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-interface {p1}, Lma/e;->h()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v8, 0x2

    .line 73
    if-ne v4, v8, :cond_2

    .line 74
    .line 75
    invoke-interface {p1}, Lma/e;->j()Lma/a0;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sget-object v9, Lma/a0;->d:Lma/a0;

    .line 80
    .line 81
    if-eq v4, v9, :cond_4

    .line 82
    .line 83
    :cond_2
    invoke-interface {p1}, Lma/e;->h()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v4}, Landroidx/camera/core/impl/utils/f;->c(I)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    invoke-interface {p1}, Lma/e;->j()Lma/a0;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    sget-object v9, Lma/a0;->a:Lma/a0;

    .line 98
    .line 99
    if-eq v4, v9, :cond_4

    .line 100
    .line 101
    :cond_3
    invoke-interface {p1}, Lma/e;->j()Lma/a0;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const-string v9, "klass.modality"

    .line 106
    .line 107
    invoke-static {v4, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lnb/d;->E(Lma/z;)Lma/a0;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v7, v4, p2, v9}, Lnb/d;->R(Lma/a0;Ljava/lang/StringBuilder;Lma/a0;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-virtual {v7, p1, p2}, Lnb/d;->Q(Lma/z;Ljava/lang/StringBuilder;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Lnb/d;->z()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    sget-object v9, Lnb/i;->h:Lnb/i;

    .line 125
    .line 126
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    invoke-interface {p1}, Lma/h;->H()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_5

    .line 137
    .line 138
    const/4 v4, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_5
    const/4 v4, 0x0

    .line 141
    :goto_1
    const-string v9, "inner"

    .line 142
    .line 143
    invoke-virtual {v7, p2, v4, v9}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Lnb/d;->z()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    sget-object v9, Lnb/i;->k:Lnb/i;

    .line 151
    .line 152
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    invoke-interface {p1}, Lma/e;->H0()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_6

    .line 163
    .line 164
    const/4 v4, 0x1

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    const/4 v4, 0x0

    .line 167
    :goto_2
    const-string v9, "data"

    .line 168
    .line 169
    invoke-virtual {v7, p2, v4, v9}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Lnb/d;->z()Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    sget-object v9, Lnb/i;->l:Lnb/i;

    .line 177
    .line 178
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_7

    .line 183
    .line 184
    invoke-interface {p1}, Lma/e;->isInline()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_7

    .line 189
    .line 190
    const/4 v4, 0x1

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    const/4 v4, 0x0

    .line 193
    :goto_3
    const-string v9, "inline"

    .line 194
    .line 195
    invoke-virtual {v7, p2, v4, v9}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Lnb/d;->z()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    sget-object v9, Lnb/i;->s:Lnb/i;

    .line 203
    .line 204
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_8

    .line 209
    .line 210
    invoke-interface {p1}, Lma/e;->F()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_8

    .line 215
    .line 216
    const/4 v4, 0x1

    .line 217
    goto :goto_4

    .line 218
    :cond_8
    const/4 v4, 0x0

    .line 219
    :goto_4
    const-string v9, "value"

    .line 220
    .line 221
    invoke-virtual {v7, p2, v4, v9}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Lnb/d;->z()Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    sget-object v9, Lnb/i;->r:Lnb/i;

    .line 229
    .line 230
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_9

    .line 235
    .line 236
    invoke-interface {p1}, Lma/e;->y()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_9

    .line 241
    .line 242
    const/4 v4, 0x1

    .line 243
    goto :goto_5

    .line 244
    :cond_9
    const/4 v4, 0x0

    .line 245
    :goto_5
    const-string v9, "fun"

    .line 246
    .line 247
    invoke-virtual {v7, p2, v4, v9}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    instance-of v4, p1, Lma/v0;

    .line 251
    .line 252
    if-eqz v4, :cond_a

    .line 253
    .line 254
    const-string v1, "typealias"

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_a
    invoke-interface {p1}, Lma/e;->u()Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_b

    .line 262
    .line 263
    move-object v1, v5

    .line 264
    goto :goto_6

    .line 265
    :cond_b
    invoke-interface {p1}, Lma/e;->h()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    invoke-static {v4}, Lg/d;->c(I)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_11

    .line 274
    .line 275
    if-eq v4, v2, :cond_10

    .line 276
    .line 277
    if-eq v4, v8, :cond_f

    .line 278
    .line 279
    const/4 v8, 0x3

    .line 280
    if-eq v4, v8, :cond_e

    .line 281
    .line 282
    if-eq v4, v1, :cond_d

    .line 283
    .line 284
    const/4 v1, 0x5

    .line 285
    if-ne v4, v1, :cond_c

    .line 286
    .line 287
    const-string v1, "object"

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_c
    new-instance p1, Lj7/p;

    .line 291
    .line 292
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_d
    const-string v1, "annotation class"

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_e
    const-string v1, "enum entry"

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_f
    const-string v1, "enum class"

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_10
    const-string v1, "interface"

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_11
    const-string v1, "class"

    .line 309
    .line 310
    :goto_6
    invoke-virtual {v7, v1}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    :cond_12
    invoke-static {p1}, Lob/i;->l(Lma/j;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    iget-object v4, v7, Lnb/d;->c:Lnb/k;

    .line 322
    .line 323
    if-nez v1, :cond_14

    .line 324
    .line 325
    invoke-virtual {v7}, Lnb/d;->A()Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_13

    .line 330
    .line 331
    invoke-static {p2}, Lnb/d;->c0(Ljava/lang/StringBuilder;)V

    .line 332
    .line 333
    .line 334
    :cond_13
    invoke-virtual {v7, p1, p2, v2}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 335
    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_14
    iget-object v1, v4, Lnb/k;->F:Lnb/l;

    .line 339
    .line 340
    sget-object v8, Lnb/k;->W:[Lda/m;

    .line 341
    .line 342
    const/16 v9, 0x1e

    .line 343
    .line 344
    aget-object v8, v8, v9

    .line 345
    .line 346
    invoke-virtual {v1, v8}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Ljava/lang/Boolean;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_16

    .line 357
    .line 358
    invoke-virtual {v7}, Lnb/d;->A()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_15

    .line 363
    .line 364
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    :cond_15
    invoke-static {p2}, Lnb/d;->c0(Ljava/lang/StringBuilder;)V

    .line 368
    .line 369
    .line 370
    invoke-interface {p1}, Lma/j;->b()Lma/j;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    if-eqz v1, :cond_16

    .line 375
    .line 376
    const-string v5, "of "

    .line 377
    .line 378
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-interface {v1}, Lma/j;->getName()Llb/f;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const-string v5, "containingDeclaration.name"

    .line 386
    .line 387
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7, v1, v3}, Lnb/d;->t(Llb/f;Z)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    :cond_16
    invoke-virtual {v7}, Lnb/d;->D()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-nez v1, :cond_17

    .line 402
    .line 403
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    sget-object v5, Llb/h;->b:Llb/f;

    .line 408
    .line 409
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_19

    .line 414
    .line 415
    :cond_17
    invoke-virtual {v7}, Lnb/d;->A()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_18

    .line 420
    .line 421
    invoke-static {p2}, Lnb/d;->c0(Ljava/lang/StringBuilder;)V

    .line 422
    .line 423
    .line 424
    :cond_18
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    const-string v5, "descriptor.name"

    .line 429
    .line 430
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v1, v2}, Lnb/d;->t(Llb/f;Z)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    :cond_19
    :goto_7
    if-eqz v0, :cond_1a

    .line 441
    .line 442
    goto/16 :goto_9

    .line 443
    .line 444
    :cond_1a
    invoke-interface {p1}, Lma/e;->s()Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    const-string v0, "klass.declaredTypeParameters"

    .line 449
    .line 450
    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v7, v8, p2, v3}, Lnb/d;->h0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, p1, p2}, Lnb/d;->H(Lma/h;Ljava/lang/StringBuilder;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {p1}, Lma/e;->h()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    invoke-static {v0}, Landroidx/camera/core/impl/utils/f;->c(I)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-nez v0, :cond_1b

    .line 468
    .line 469
    iget-object v0, v4, Lnb/k;->i:Lnb/l;

    .line 470
    .line 471
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 472
    .line 473
    const/4 v3, 0x7

    .line 474
    aget-object v1, v1, v3

    .line 475
    .line 476
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Ljava/lang/Boolean;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_1b

    .line 487
    .line 488
    invoke-interface {p1}, Lma/e;->M()Lma/d;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-eqz v0, :cond_1b

    .line 493
    .line 494
    const-string v1, " "

    .line 495
    .line 496
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v7, p2, v0, v6}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 500
    .line 501
    .line 502
    invoke-interface {v0}, Lma/z;->getVisibility()Lma/q;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    const-string v3, "primaryConstructor.visibility"

    .line 507
    .line 508
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v7, v1, p2}, Lnb/d;->l0(Lma/q;Ljava/lang/StringBuilder;)Z

    .line 512
    .line 513
    .line 514
    const-string v1, "constructor"

    .line 515
    .line 516
    invoke-virtual {v7, v1}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    const-string v3, "primaryConstructor.valueParameters"

    .line 528
    .line 529
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    check-cast v1, Ljava/util/Collection;

    .line 533
    .line 534
    invoke-interface {v0}, Lma/a;->B()Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    invoke-virtual {v7, v1, v0, p2}, Lnb/d;->k0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 539
    .line 540
    .line 541
    :cond_1b
    iget-object v0, v4, Lnb/k;->w:Lnb/l;

    .line 542
    .line 543
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 544
    .line 545
    const/16 v3, 0x15

    .line 546
    .line 547
    aget-object v1, v1, v3

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Ljava/lang/Boolean;

    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_1c

    .line 560
    .line 561
    goto :goto_8

    .line 562
    :cond_1c
    invoke-interface {p1}, Lma/e;->q()Lcc/m0;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {v0}, Lja/k;->E(Lcc/e0;)Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-eqz v0, :cond_1d

    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_1d
    invoke-interface {p1}, Lma/g;->i()Lcc/c1;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    invoke-interface {p1}, Lcc/c1;->l()Ljava/util/Collection;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    const-string v0, "klass.typeConstructor.supertypes"

    .line 582
    .line 583
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-nez v0, :cond_1f

    .line 591
    .line 592
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-ne v0, v2, :cond_1e

    .line 597
    .line 598
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    check-cast v0, Lcc/e0;

    .line 607
    .line 608
    invoke-static {v0}, Lja/k;->x(Lcc/e0;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_1e

    .line 613
    .line 614
    goto :goto_8

    .line 615
    :cond_1e
    invoke-static {p2}, Lnb/d;->c0(Ljava/lang/StringBuilder;)V

    .line 616
    .line 617
    .line 618
    const-string v0, ": "

    .line 619
    .line 620
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    move-object v0, p1

    .line 624
    check-cast v0, Ljava/lang/Iterable;

    .line 625
    .line 626
    const-string v2, ", "

    .line 627
    .line 628
    const/4 v3, 0x0

    .line 629
    const/4 v4, 0x0

    .line 630
    new-instance v5, Lnb/h;

    .line 631
    .line 632
    invoke-direct {v5, v7}, Lnb/h;-><init>(Lnb/d;)V

    .line 633
    .line 634
    .line 635
    const/16 v6, 0x3c

    .line 636
    .line 637
    move-object v1, p2

    .line 638
    invoke-static/range {v0 .. v6}, Lm9/t;->f1(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)V

    .line 639
    .line 640
    .line 641
    :cond_1f
    :goto_8
    invoke-virtual {v7, p2, v8}, Lnb/d;->m0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 642
    .line 643
    .line 644
    :goto_9
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 645
    .line 646
    return-object p1
.end method

.method public final g(Lma/o0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 21
    .line 22
    return-object p1
.end method

.method public final h(Lma/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    check-cast v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "constructorDescriptor"

    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "builder"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move-object/from16 v3, p0

    .line 19
    .line 20
    iget-object v4, v3, Lnb/d$a;->a:Lnb/d;

    .line 21
    .line 22
    invoke-virtual {v4, v1, v0, v2}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v4, Lnb/d;->c:Lnb/k;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v5, Lnb/k;->W:[Lda/m;

    .line 31
    .line 32
    const/16 v6, 0xd

    .line 33
    .line 34
    aget-object v6, v5, v6

    .line 35
    .line 36
    iget-object v7, v2, Lnb/k;->o:Lnb/l;

    .line 37
    .line 38
    invoke-virtual {v7, v6}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x1

    .line 50
    if-nez v6, :cond_0

    .line 51
    .line 52
    invoke-interface/range {p1 .. p1}, Lma/i;->x()Lma/e;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6}, Lma/e;->j()Lma/a0;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v9, Lma/a0;->b:Lma/a0;

    .line 61
    .line 62
    if-eq v6, v9, :cond_1

    .line 63
    .line 64
    :cond_0
    invoke-interface/range {p1 .. p1}, Lma/z;->getVisibility()Lma/q;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string v9, "constructor.visibility"

    .line 69
    .line 70
    invoke-static {v6, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v6, v1}, Lnb/d;->l0(Lma/q;Ljava/lang/StringBuilder;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v6, 0x0

    .line 82
    :goto_0
    invoke-virtual {v4, v0, v1}, Lnb/d;->P(Lma/b;Ljava/lang/StringBuilder;)V

    .line 83
    .line 84
    .line 85
    const/16 v9, 0x27

    .line 86
    .line 87
    aget-object v9, v5, v9

    .line 88
    .line 89
    iget-object v10, v2, Lnb/k;->O:Lnb/l;

    .line 90
    .line 91
    invoke-virtual {v10, v9}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    check-cast v9, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_3

    .line 102
    .line 103
    invoke-interface/range {p1 .. p1}, Lma/i;->w()Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_3

    .line 108
    .line 109
    if-eqz v6, :cond_2

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 v6, 0x0

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 115
    :goto_2
    if-eqz v6, :cond_4

    .line 116
    .line 117
    const-string v9, "constructor"

    .line 118
    .line 119
    invoke-virtual {v4, v9}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-interface/range {p1 .. p1}, Lma/i;->b()Lma/h;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    const-string v10, "constructor.containingDeclaration"

    .line 131
    .line 132
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v10, v2, Lnb/k;->z:Lnb/l;

    .line 136
    .line 137
    const/16 v11, 0x18

    .line 138
    .line 139
    aget-object v12, v5, v11

    .line 140
    .line 141
    invoke-virtual {v10, v12}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    check-cast v10, Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    const-string v12, "constructor.typeParameters"

    .line 152
    .line 153
    if-eqz v10, :cond_6

    .line 154
    .line 155
    if-eqz v6, :cond_5

    .line 156
    .line 157
    const-string v6, " "

    .line 158
    .line 159
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual {v4, v9, v1, v8}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 163
    .line 164
    .line 165
    invoke-interface/range {p1 .. p1}, Lma/i;->getTypeParameters()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {v6, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v6, v1, v7}, Lnb/d;->h0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 173
    .line 174
    .line 175
    :cond_6
    invoke-interface/range {p1 .. p1}, Lma/a;->g()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    const-string v10, "constructor.valueParameters"

    .line 180
    .line 181
    invoke-static {v6, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    check-cast v6, Ljava/util/Collection;

    .line 185
    .line 186
    invoke-interface/range {p1 .. p1}, Lma/a;->B()Z

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    invoke-virtual {v4, v6, v10, v1}, Lnb/d;->k0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 191
    .line 192
    .line 193
    const/16 v6, 0xf

    .line 194
    .line 195
    aget-object v5, v5, v6

    .line 196
    .line 197
    iget-object v6, v2, Lnb/k;->q:Lnb/l;

    .line 198
    .line 199
    invoke-virtual {v6, v5}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    check-cast v5, Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_a

    .line 210
    .line 211
    invoke-interface/range {p1 .. p1}, Lma/i;->w()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_a

    .line 216
    .line 217
    instance-of v5, v9, Lma/e;

    .line 218
    .line 219
    if-eqz v5, :cond_a

    .line 220
    .line 221
    check-cast v9, Lma/e;

    .line 222
    .line 223
    invoke-interface {v9}, Lma/e;->M()Lma/d;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    if-eqz v5, :cond_a

    .line 228
    .line 229
    invoke-interface {v5}, Lma/a;->g()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    const-string v6, "primaryConstructor.valueParameters"

    .line 234
    .line 235
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    check-cast v5, Ljava/lang/Iterable;

    .line 239
    .line 240
    new-instance v13, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    if-eqz v6, :cond_9

    .line 254
    .line 255
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    move-object v9, v6

    .line 260
    check-cast v9, Lma/a1;

    .line 261
    .line 262
    invoke-interface {v9}, Lma/a1;->t0()Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    if-nez v10, :cond_8

    .line 267
    .line 268
    invoke-interface {v9}, Lma/a1;->g0()Lcc/e0;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    if-nez v9, :cond_8

    .line 273
    .line 274
    const/4 v9, 0x1

    .line 275
    goto :goto_4

    .line 276
    :cond_8
    const/4 v9, 0x0

    .line 277
    :goto_4
    if-eqz v9, :cond_7

    .line 278
    .line 279
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    xor-int/2addr v5, v8

    .line 288
    if-eqz v5, :cond_a

    .line 289
    .line 290
    const-string v5, " : "

    .line 291
    .line 292
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v5, "this"

    .line 296
    .line 297
    invoke-virtual {v4, v5}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v14, ", "

    .line 305
    .line 306
    const-string v15, "("

    .line 307
    .line 308
    const-string v16, ")"

    .line 309
    .line 310
    sget-object v17, Lnb/g;->a:Lnb/g;

    .line 311
    .line 312
    const/16 v18, 0x18

    .line 313
    .line 314
    invoke-static/range {v13 .. v18}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    :cond_a
    iget-object v2, v2, Lnb/k;->z:Lnb/l;

    .line 322
    .line 323
    sget-object v5, Lnb/k;->W:[Lda/m;

    .line 324
    .line 325
    aget-object v5, v5, v11

    .line 326
    .line 327
    invoke-virtual {v2, v5}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    check-cast v2, Ljava/lang/Boolean;

    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_b

    .line 338
    .line 339
    invoke-interface/range {p1 .. p1}, Lma/i;->getTypeParameters()Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v0, v12}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v1, v0}, Lnb/d;->m0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 347
    .line 348
    .line 349
    :cond_b
    sget-object v0, Ll9/m;->a:Ll9/m;

    .line 350
    .line 351
    return-object v0
.end method

.method public final i(Lma/w0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lnb/d;->f0(Lma/w0;Ljava/lang/StringBuilder;Z)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 20
    .line 21
    return-object p1
.end method

.method public final j(Lma/m0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "getter"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lnb/d$a;->o(Lma/k0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    return-object p1
.end method

.method public final k(Lma/v0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p2, p1, v1}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lma/z;->getVisibility()Lma/q;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "typeAlias.visibility"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p2}, Lnb/d;->l0(Lma/q;Ljava/lang/StringBuilder;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lnb/d;->Q(Lma/z;Ljava/lang/StringBuilder;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "typealias"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " "

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, p1, p2, v1}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lma/h;->s()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "typeAlias.declaredTypeParameters"

    .line 57
    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, p2, v2}, Lnb/d;->h0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1, p2}, Lnb/d;->H(Lma/h;Ljava/lang/StringBuilder;)V

    .line 66
    .line 67
    .line 68
    const-string v1, " = "

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Lma/v0;->c0()Lcc/m0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 85
    .line 86
    return-object p1
.end method

.method public final l(Lma/i0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lma/i0;->d()Llb/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "package"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p2}, Lnb/d;->Y(Llb/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lnb/d;->m()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v1, " in context of "

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lma/i0;->u0()Lpa/g0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, p1, p2, v1}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 47
    .line 48
    return-object p1
.end method

.method public final m(Lma/b0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "builder"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 20
    .line 21
    return-object p1
.end method

.method public final n(Lma/u;Ljava/lang/StringBuilder;)V
    .locals 10

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lnb/d;->A()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, v0, Lnb/d;->c:Lnb/k;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const-string v4, "function.typeParameters"

    .line 21
    .line 22
    if-nez v1, :cond_e

    .line 23
    .line 24
    iget-object v1, v2, Lnb/k;->g:Lnb/l;

    .line 25
    .line 26
    sget-object v5, Lnb/k;->W:[Lda/m;

    .line 27
    .line 28
    const/4 v6, 0x5

    .line 29
    aget-object v6, v5, v6

    .line 30
    .line 31
    invoke-virtual {v1, v6}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_d

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, p2, p1, v1}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lma/a;->p0()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v6, "function.contextReceiverParameters"

    .line 52
    .line 53
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2, v1}, Lnb/d;->J(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lma/z;->getVisibility()Lma/q;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v6, "function.visibility"

    .line 64
    .line 65
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, p2}, Lnb/d;->l0(Lma/q;Ljava/lang/StringBuilder;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, p2}, Lnb/d;->S(Lma/b;Ljava/lang/StringBuilder;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v2, Lnb/k;->R:Lnb/l;

    .line 75
    .line 76
    const/16 v6, 0x2a

    .line 77
    .line 78
    aget-object v7, v5, v6

    .line 79
    .line 80
    invoke-virtual {v1, v7}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    invoke-virtual {v0, p1, p2}, Lnb/d;->Q(Lma/z;Ljava/lang/StringBuilder;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {v0, p1, p2}, Lnb/d;->X(Lma/b;Ljava/lang/StringBuilder;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v2, Lnb/k;->R:Lnb/l;

    .line 99
    .line 100
    aget-object v5, v5, v6

    .line 101
    .line 102
    invoke-virtual {v1, v5}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const-string v5, "suspend"

    .line 113
    .line 114
    if-eqz v1, :cond_b

    .line 115
    .line 116
    invoke-interface {p1}, Lma/u;->isOperator()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    const/16 v6, 0x26

    .line 121
    .line 122
    const/4 v7, 0x0

    .line 123
    const-string v8, "functionDescriptor.overriddenDescriptors"

    .line 124
    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    invoke-interface {p1}, Lma/u;->e()Ljava/util/Collection;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v1, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    check-cast v1, Ljava/lang/Iterable;

    .line 135
    .line 136
    move-object v9, v1

    .line 137
    check-cast v9, Ljava/util/Collection;

    .line 138
    .line 139
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_3

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    check-cast v9, Lma/u;

    .line 161
    .line 162
    invoke-interface {v9}, Lma/u;->isOperator()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_2

    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 171
    :goto_1
    if-nez v1, :cond_4

    .line 172
    .line 173
    iget-object v1, v2, Lnb/k;->N:Lnb/l;

    .line 174
    .line 175
    sget-object v9, Lnb/k;->W:[Lda/m;

    .line 176
    .line 177
    aget-object v9, v9, v6

    .line 178
    .line 179
    invoke-virtual {v1, v9}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/Boolean;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_5

    .line 190
    .line 191
    :cond_4
    const/4 v1, 0x1

    .line 192
    goto :goto_2

    .line 193
    :cond_5
    const/4 v1, 0x0

    .line 194
    :goto_2
    invoke-interface {p1}, Lma/u;->isInfix()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_a

    .line 199
    .line 200
    invoke-interface {p1}, Lma/u;->e()Ljava/util/Collection;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-static {v9, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    check-cast v9, Ljava/lang/Iterable;

    .line 208
    .line 209
    move-object v8, v9

    .line 210
    check-cast v8, Ljava/util/Collection;

    .line 211
    .line 212
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v8, :cond_6

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_6
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_8

    .line 228
    .line 229
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    check-cast v9, Lma/u;

    .line 234
    .line 235
    invoke-interface {v9}, Lma/u;->isInfix()Z

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    if-eqz v9, :cond_7

    .line 240
    .line 241
    const/4 v8, 0x0

    .line 242
    goto :goto_4

    .line 243
    :cond_8
    :goto_3
    const/4 v8, 0x1

    .line 244
    :goto_4
    if-nez v8, :cond_9

    .line 245
    .line 246
    iget-object v8, v2, Lnb/k;->N:Lnb/l;

    .line 247
    .line 248
    sget-object v9, Lnb/k;->W:[Lda/m;

    .line 249
    .line 250
    aget-object v6, v9, v6

    .line 251
    .line 252
    invoke-virtual {v8, v6}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    check-cast v6, Ljava/lang/Boolean;

    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_a

    .line 263
    .line 264
    :cond_9
    const/4 v7, 0x1

    .line 265
    :cond_a
    invoke-interface {p1}, Lma/u;->L()Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    const-string v8, "tailrec"

    .line 270
    .line 271
    invoke-virtual {v0, p2, v6, v8}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {p1}, Lma/u;->isSuspend()Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    invoke-virtual {v0, p2, v6, v5}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-interface {p1}, Lma/u;->isInline()Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    const-string v6, "inline"

    .line 286
    .line 287
    invoke-virtual {v0, p2, v5, v6}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string v5, "infix"

    .line 291
    .line 292
    invoke-virtual {v0, p2, v7, v5}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string v5, "operator"

    .line 296
    .line 297
    invoke-virtual {v0, p2, v1, v5}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_b
    invoke-interface {p1}, Lma/u;->isSuspend()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {v0, p2, v1, v5}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_5
    invoke-virtual {v0, p1, p2}, Lnb/d;->P(Lma/b;Ljava/lang/StringBuilder;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Lnb/d;->D()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_d

    .line 316
    .line 317
    invoke-interface {p1}, Lma/u;->v0()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_c

    .line 322
    .line 323
    const-string v1, "/*isHiddenToOvercomeSignatureClash*/ "

    .line 324
    .line 325
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    :cond_c
    invoke-interface {p1}, Lma/u;->B0()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_d

    .line 333
    .line 334
    const-string v1, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    .line 335
    .line 336
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    :cond_d
    const-string v1, "fun"

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v1, " "

    .line 349
    .line 350
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-interface {p1}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1, p2, v3}, Lnb/d;->h0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, p2, p1}, Lnb/d;->a0(Ljava/lang/StringBuilder;Lma/a;)V

    .line 364
    .line 365
    .line 366
    :cond_e
    invoke-virtual {v0, p1, p2, v3}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 367
    .line 368
    .line 369
    invoke-interface {p1}, Lma/a;->g()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    const-string v3, "function.valueParameters"

    .line 374
    .line 375
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    check-cast v1, Ljava/util/Collection;

    .line 379
    .line 380
    invoke-interface {p1}, Lma/a;->B()Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    invoke-virtual {v0, v1, v3, p2}, Lnb/d;->k0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, p2, p1}, Lnb/d;->b0(Ljava/lang/StringBuilder;Lma/a;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {p1}, Lma/a;->getReturnType()Lcc/e0;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    iget-object v3, v2, Lnb/k;->l:Lnb/l;

    .line 395
    .line 396
    sget-object v5, Lnb/k;->W:[Lda/m;

    .line 397
    .line 398
    const/16 v6, 0xa

    .line 399
    .line 400
    aget-object v6, v5, v6

    .line 401
    .line 402
    invoke-virtual {v3, v6}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    check-cast v3, Ljava/lang/Boolean;

    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-nez v3, :cond_11

    .line 413
    .line 414
    const/16 v3, 0x9

    .line 415
    .line 416
    aget-object v3, v5, v3

    .line 417
    .line 418
    iget-object v2, v2, Lnb/k;->k:Lnb/l;

    .line 419
    .line 420
    invoke-virtual {v2, v3}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    check-cast v2, Ljava/lang/Boolean;

    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-nez v2, :cond_f

    .line 431
    .line 432
    if-eqz v1, :cond_f

    .line 433
    .line 434
    sget-object v2, Lja/k;->e:Llb/f;

    .line 435
    .line 436
    sget-object v2, Lja/o$a;->d:Llb/d;

    .line 437
    .line 438
    invoke-static {v1, v2}, Lja/k;->D(Lcc/e0;Llb/d;)Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-nez v2, :cond_11

    .line 443
    .line 444
    :cond_f
    const-string v2, ": "

    .line 445
    .line 446
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    if-nez v1, :cond_10

    .line 450
    .line 451
    const-string v1, "[NULL]"

    .line 452
    .line 453
    goto :goto_6

    .line 454
    :cond_10
    invoke-virtual {v0, v1}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    :goto_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    :cond_11
    invoke-interface {p1}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, p2, p1}, Lnb/d;->m0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 469
    .line 470
    .line 471
    return-void
.end method

.method public final o(Lma/k0;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnb/d$a;->a:Lnb/d;

    .line 2
    .line 3
    iget-object v1, v0, Lnb/d;->c:Lnb/k;

    .line 4
    .line 5
    iget-object v1, v1, Lnb/k;->G:Lnb/l;

    .line 6
    .line 7
    sget-object v2, Lnb/k;->W:[Lda/m;

    .line 8
    .line 9
    const/16 v3, 0x1f

    .line 10
    .line 11
    aget-object v2, v2, v3

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnb/q;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    if-eq v1, p3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnb/d$a;->n(Lma/u;Ljava/lang/StringBuilder;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, p1, p2}, Lnb/d;->Q(Lma/z;Ljava/lang/StringBuilder;)V

    .line 34
    .line 35
    .line 36
    const-string v1, " for "

    .line 37
    .line 38
    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lma/k0;->A0()Lma/l0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p3, "descriptor.correspondingProperty"

    .line 50
    .line 51
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1, p2}, Lnb/d;->w(Lnb/d;Lma/l0;Ljava/lang/StringBuilder;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
