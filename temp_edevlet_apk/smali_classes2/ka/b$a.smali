.class public final Lka/b$a;
.super Lcc/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lka/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic c:Lka/b;


# direct methods
.method public constructor <init>(Lka/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lka/b$a;->c:Lka/b;

    .line 2
    .line 3
    iget-object p1, p1, Lka/b;->e:Lbc/l;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcc/b;-><init>(Lbc/l;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lka/b$a;->c:Lka/b;

    .line 2
    .line 3
    iget-object v1, v0, Lka/b;->g:Lka/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v3, :cond_2

    .line 14
    .line 15
    iget v4, v0, Lka/b;->h:I

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    if-eq v1, v5, :cond_1

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    if-ne v1, v6, :cond_0

    .line 22
    .line 23
    new-array v1, v5, [Llb/b;

    .line 24
    .line 25
    sget-object v5, Lka/b;->n:Llb/b;

    .line 26
    .line 27
    aput-object v5, v1, v2

    .line 28
    .line 29
    new-instance v2, Llb/b;

    .line 30
    .line 31
    sget-object v5, Lja/o;->e:Llb/c;

    .line 32
    .line 33
    sget-object v6, Lka/c;->e:Lka/c;

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Lka/c;->n(I)Llb/f;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v2, v5, v4}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 40
    .line 41
    .line 42
    aput-object v2, v1, v3

    .line 43
    .line 44
    invoke-static {v1}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lj7/p;

    .line 50
    .line 51
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    new-array v1, v5, [Llb/b;

    .line 56
    .line 57
    sget-object v5, Lka/b;->n:Llb/b;

    .line 58
    .line 59
    aput-object v5, v1, v2

    .line 60
    .line 61
    new-instance v2, Llb/b;

    .line 62
    .line 63
    sget-object v5, Lja/o;->k:Llb/c;

    .line 64
    .line 65
    sget-object v6, Lka/c;->d:Lka/c;

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Lka/c;->n(I)Llb/f;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-direct {v2, v5, v4}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 72
    .line 73
    .line 74
    aput-object v2, v1, v3

    .line 75
    .line 76
    invoke-static {v1}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object v1, Lka/b;->m:Llb/b;

    .line 82
    .line 83
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :goto_0
    iget-object v2, v0, Lka/b;->f:Lma/e0;

    .line 88
    .line 89
    invoke-interface {v2}, Lma/e0;->b()Lma/b0;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v1, Ljava/lang/Iterable;

    .line 94
    .line 95
    new-instance v4, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_c

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Llb/b;

    .line 119
    .line 120
    invoke-static {v2, v5}, Lma/t;->a(Lma/b0;Llb/b;)Lma/e;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    if-eqz v6, :cond_b

    .line 125
    .line 126
    invoke-interface {v6}, Lma/g;->i()Lcc/c1;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-interface {v5}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    const-string v7, "<this>"

    .line 139
    .line 140
    iget-object v8, v0, Lka/b;->l:Ljava/util/List;

    .line 141
    .line 142
    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    if-ltz v5, :cond_3

    .line 146
    .line 147
    const/4 v7, 0x1

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    const/4 v7, 0x0

    .line 150
    :goto_2
    if-eqz v7, :cond_a

    .line 151
    .line 152
    if-nez v5, :cond_4

    .line 153
    .line 154
    sget-object v5, Lm9/v;->a:Lm9/v;

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-lt v5, v7, :cond_5

    .line 162
    .line 163
    check-cast v8, Ljava/lang/Iterable;

    .line 164
    .line 165
    invoke-static {v8}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    if-ne v5, v3, :cond_6

    .line 171
    .line 172
    invoke-static {v8}, Lm9/t;->i1(Ljava/util/List;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v5}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    goto :goto_5

    .line 181
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .line 185
    .line 186
    instance-of v10, v8, Ljava/util/RandomAccess;

    .line 187
    .line 188
    if-eqz v10, :cond_7

    .line 189
    .line 190
    sub-int v5, v7, v5

    .line 191
    .line 192
    :goto_3
    if-ge v5, v7, :cond_8

    .line 193
    .line 194
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    sub-int/2addr v7, v5

    .line 205
    invoke-interface {v8, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_8

    .line 214
    .line 215
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_8
    move-object v5, v9

    .line 224
    :goto_5
    check-cast v5, Ljava/lang/Iterable;

    .line 225
    .line 226
    new-instance v7, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-static {v5}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-eqz v8, :cond_9

    .line 244
    .line 245
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    check-cast v8, Lma/w0;

    .line 250
    .line 251
    new-instance v9, Lcc/k1;

    .line 252
    .line 253
    invoke-interface {v8}, Lma/g;->q()Lcc/m0;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-direct {v9, v8}, Lcc/k1;-><init>(Lcc/e0;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_9
    sget-object v5, Lcc/a1;->b:Lcc/a1$a;

    .line 265
    .line 266
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    sget-object v5, Lcc/a1;->c:Lcc/a1;

    .line 270
    .line 271
    invoke-static {v5, v6, v7}, Lcc/f0;->e(Lcc/a1;Lma/e;Ljava/util/List;)Lcc/m0;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_a
    const-string v0, "Requested element count "

    .line 281
    .line 282
    const-string v1, " is less than zero."

    .line 283
    .line 284
    invoke-static {v0, v5, v1}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v1

    .line 298
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v2, "Built-in class "

    .line 303
    .line 304
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v2, " not found"

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_c
    invoke-static {v4}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Ljava/util/Collection;

    .line 332
    .line 333
    return-object v0
.end method

.method public final g()Lma/u0;
    .locals 1

    sget-object v0, Lma/u0$a;->a:Lma/u0$a;

    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lka/b$a;->c:Lka/b;

    iget-object v0, v0, Lka/b;->l:Ljava/util/List;

    return-object v0
.end method

.method public final n()Lma/g;
    .locals 1

    iget-object v0, p0, Lka/b$a;->c:Lka/b;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()Lma/e;
    .locals 1

    iget-object v0, p0, Lka/b$a;->c:Lka/b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lka/b$a;->c:Lka/b;

    invoke-virtual {v0}, Lka/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
