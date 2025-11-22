.class public final Lma/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lma/b0;Llb/b;)Lma/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lma/t;->b(Lma/b0;Llb/b;)Lma/g;

    move-result-object p0

    instance-of p1, p0, Lma/e;

    if-eqz p1, :cond_0

    check-cast p0, Lma/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lma/b0;Llb/b;)Lma/g;
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "classId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lob/w;->a:Lcom/airbnb/epoxy/a;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lma/b0;->G0(Lcom/airbnb/epoxy/a;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lob/v;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lob/v;->a()Lma/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    sget-object v2, Lua/c;->g:Lua/c;

    .line 29
    .line 30
    const-string v3, "name"

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    const-string v5, "segments.first()"

    .line 34
    .line 35
    const-string v6, "classId.packageFqName"

    .line 36
    .line 37
    if-nez v0, :cond_5

    .line 38
    .line 39
    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v0}, Lma/b0;->I0(Llb/c;)Lma/i0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1}, Llb/b;->i()Llb/c;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Llb/c;->a:Llb/d;

    .line 55
    .line 56
    invoke-virtual {p1}, Llb/d;->f()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p0}, Lma/i0;->o()Lvb/i;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p1}, Lm9/t;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v0, Llb/f;

    .line 72
    .line 73
    invoke-interface {p0, v0, v2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 78
    .line 79
    goto/16 :goto_8

    .line 80
    .line 81
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-interface {p1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Llb/f;

    .line 104
    .line 105
    instance-of v4, p0, Lma/e;

    .line 106
    .line 107
    if-nez v4, :cond_2

    .line 108
    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :cond_2
    check-cast p0, Lma/e;

    .line 112
    .line 113
    invoke-interface {p0}, Lma/e;->x0()Lvb/i;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, v0, v2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    instance-of v0, p0, Lma/e;

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    check-cast p0, Lma/e;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    move-object p0, v1

    .line 132
    :goto_2
    if-eqz p0, :cond_f

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move-object v1, p0

    .line 136
    goto/16 :goto_8

    .line 137
    .line 138
    :cond_5
    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-static {v7, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v7}, Lma/b0;->I0(Llb/c;)Lma/i0;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1}, Llb/b;->i()Llb/c;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    iget-object v7, v7, Llb/c;->a:Llb/d;

    .line 154
    .line 155
    invoke-virtual {v7}, Llb/d;->f()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-interface {v0}, Lma/i0;->o()Lvb/i;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v7}, Lm9/t;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-static {v8, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    check-cast v8, Llb/f;

    .line 171
    .line 172
    invoke-interface {v0, v8, v2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-nez v0, :cond_6

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    invoke-interface {v7, v4, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-eqz v8, :cond_a

    .line 196
    .line 197
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    check-cast v8, Llb/f;

    .line 202
    .line 203
    instance-of v9, v0, Lma/e;

    .line 204
    .line 205
    if-nez v9, :cond_7

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_7
    check-cast v0, Lma/e;

    .line 209
    .line 210
    invoke-interface {v0}, Lma/e;->x0()Lvb/i;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v8, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v0, v8, v2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    instance-of v8, v0, Lma/e;

    .line 222
    .line 223
    if-eqz v8, :cond_8

    .line 224
    .line 225
    check-cast v0, Lma/e;

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_8
    move-object v0, v1

    .line 229
    :goto_4
    if-eqz v0, :cond_9

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_9
    :goto_5
    move-object v0, v1

    .line 233
    :cond_a
    if-nez v0, :cond_e

    .line 234
    .line 235
    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-interface {p0, v0}, Lma/b0;->I0(Llb/c;)Lma/i0;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-virtual {p1}, Llb/b;->i()Llb/c;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object p1, p1, Llb/c;->a:Llb/d;

    .line 251
    .line 252
    invoke-virtual {p1}, Llb/d;->f()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-interface {p0}, Lma/i0;->o()Lvb/i;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-static {p1}, Lm9/t;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    check-cast v0, Llb/f;

    .line 268
    .line 269
    invoke-interface {p0, v0, v2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    if-nez p0, :cond_b

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-interface {p1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_4

    .line 293
    .line 294
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Llb/f;

    .line 299
    .line 300
    instance-of v4, p0, Lma/e;

    .line 301
    .line 302
    if-nez v4, :cond_c

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_c
    check-cast p0, Lma/e;

    .line 306
    .line 307
    invoke-interface {p0}, Lma/e;->x0()Lvb/i;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-interface {p0, v0, v2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    instance-of v0, p0, Lma/e;

    .line 319
    .line 320
    if-eqz v0, :cond_d

    .line 321
    .line 322
    check-cast p0, Lma/e;

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_d
    move-object p0, v1

    .line 326
    :goto_7
    if-eqz p0, :cond_f

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_e
    move-object v1, v0

    .line 330
    :cond_f
    :goto_8
    return-object v1
.end method

.method public static final c(Lma/b0;Llb/b;Lma/d0;)Lma/e;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "classId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "notFoundClasses"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lma/t;->a(Lma/b0;Llb/b;)Lma/e;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lma/t$a;->a:Lma/t$a;

    .line 24
    .line 25
    invoke-static {p0, p1}, Llc/q;->R0(Lx9/l;Ljava/lang/Object;)Llc/h;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object v0, Lma/t$b;->a:Lma/t$b;

    .line 30
    .line 31
    invoke-static {p0, v0}, Llc/w;->Z0(Llc/h;Lx9/l;)Llc/y;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lb8/f;->Z(Ljava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p2, p1, p0}, Lma/d0;->a(Llb/b;Ljava/util/List;)Lma/e;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
