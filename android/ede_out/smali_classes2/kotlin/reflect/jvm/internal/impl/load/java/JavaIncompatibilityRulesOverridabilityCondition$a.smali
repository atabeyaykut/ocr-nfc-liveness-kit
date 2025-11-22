.class public final Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lma/a;Lma/a;)Z
    .locals 5

    .line 1
    const-string v0, "superDescriptor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "subDescriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lxa/e;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    instance-of v0, p0, Lma/u;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, p1

    .line 21
    check-cast v0, Lxa/e;

    .line 22
    .line 23
    invoke-virtual {v0}, Lpa/x;->g()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    check-cast p0, Lma/u;

    .line 31
    .line 32
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lpa/p0;->V0()Lma/q0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "subDescriptor.original.valueParameters"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v0, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {p0}, Lma/u;->a()Lma/u;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Lma/a;->g()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "superDescriptor.original.valueParameters"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lm9/t;->A1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ll9/g;

    .line 88
    .line 89
    iget-object v2, v1, Ll9/g;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lma/a1;

    .line 92
    .line 93
    iget-object v1, v1, Ll9/g;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lma/a1;

    .line 96
    .line 97
    move-object v3, p1

    .line 98
    check-cast v3, Lma/u;

    .line 99
    .line 100
    const-string v4, "subParameter"

    .line 101
    .line 102
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;->b(Lma/u;Lma/a1;)Leb/o;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    instance-of v2, v2, Leb/o$c;

    .line 110
    .line 111
    const-string v3, "superParameter"

    .line 112
    .line 113
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;->b(Lma/u;Lma/a1;)Leb/o;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    instance-of v1, v1, Leb/o$c;

    .line 121
    .line 122
    if-eq v2, v1, :cond_1

    .line 123
    .line 124
    const/4 p0, 0x1

    .line 125
    return p0

    .line 126
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 127
    return p0
.end method

.method public static b(Lma/u;Lma/a1;)Leb/o;
    .locals 6

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "remove"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v0, :cond_7

    .line 24
    .line 25
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ne v0, v3, :cond_7

    .line 34
    .line 35
    invoke-static {p0}, Lsb/b;->k(Lma/b;)Lma/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lma/k;->b()Lma/j;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    instance-of v0, v0, Lxa/c;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-static {p0}, Lja/k;->z(Lma/j;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 57
    :goto_1
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_2
    invoke-interface {p0}, Lma/u;->a()Lma/u;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v4, "f.original.valueParameters"

    .line 70
    .line 71
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lma/a1;

    .line 79
    .line 80
    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v4, "f.original.valueParameters.single().type"

    .line 85
    .line 86
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Leb/w;->c(Lcc/e0;)Leb/o;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    instance-of v4, v0, Leb/o$c;

    .line 94
    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    check-cast v0, Leb/o$c;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move-object v0, v1

    .line 101
    :goto_2
    if-eqz v0, :cond_4

    .line 102
    .line 103
    iget-object v0, v0, Leb/o$c;->i:Ltb/c;

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    move-object v0, v1

    .line 107
    :goto_3
    sget-object v4, Ltb/c;->j:Ltb/c;

    .line 108
    .line 109
    if-eq v0, v4, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lma/u;)Lma/u;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    invoke-interface {v0}, Lma/u;->a()Lma/u;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {v4}, Lma/a;->g()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const-string v5, "overridden.original.valueParameters"

    .line 128
    .line 129
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lma/a1;

    .line 137
    .line 138
    invoke-interface {v4}, Lma/z0;->getType()Lcc/e0;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const-string v5, "overridden.original.valueParameters.single().type"

    .line 143
    .line 144
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v4}, Leb/w;->c(Lcc/e0;)Leb/o;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-interface {v0}, Lma/u;->b()Lma/j;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v5, "overridden.containingDeclaration"

    .line 156
    .line 157
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lsb/b;->h(Lma/j;)Llb/d;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sget-object v5, Lja/o$a;->J:Llb/c;

    .line 165
    .line 166
    invoke-virtual {v5}, Llb/c;->i()Llb/d;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    instance-of v0, v4, Leb/o$b;

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    check-cast v4, Leb/o$b;

    .line 181
    .line 182
    iget-object v0, v4, Leb/o$b;->i:Ljava/lang/String;

    .line 183
    .line 184
    const-string v4, "java/lang/Object"

    .line 185
    .line 186
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    const/4 v0, 0x1

    .line 193
    goto :goto_5

    .line 194
    :cond_7
    :goto_4
    const/4 v0, 0x0

    .line 195
    :goto_5
    const-string v4, "valueParameterDescriptor.type"

    .line 196
    .line 197
    if-nez v0, :cond_10

    .line 198
    .line 199
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eq v0, v3, :cond_8

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_8
    invoke-interface {p0}, Lma/u;->b()Lma/j;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    instance-of v5, v0, Lma/e;

    .line 215
    .line 216
    if-eqz v5, :cond_9

    .line 217
    .line 218
    check-cast v0, Lma/e;

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_9
    move-object v0, v1

    .line 222
    :goto_6
    if-nez v0, :cond_a

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_a
    invoke-interface {p0}, Lma/a;->g()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const-string v5, "f.valueParameters"

    .line 230
    .line 231
    invoke-static {p0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p0}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    check-cast p0, Lma/a1;

    .line 239
    .line 240
    invoke-interface {p0}, Lma/z0;->getType()Lcc/e0;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-interface {p0}, Lcc/c1;->n()Lma/g;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    instance-of v5, p0, Lma/e;

    .line 253
    .line 254
    if-eqz v5, :cond_b

    .line 255
    .line 256
    move-object v1, p0

    .line 257
    check-cast v1, Lma/e;

    .line 258
    .line 259
    :cond_b
    if-nez v1, :cond_c

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_c
    invoke-static {v0}, Lja/k;->t(Lma/j;)Lja/l;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    if-eqz p0, :cond_d

    .line 267
    .line 268
    const/4 p0, 0x1

    .line 269
    goto :goto_7

    .line 270
    :cond_d
    const/4 p0, 0x0

    .line 271
    :goto_7
    if-eqz p0, :cond_e

    .line 272
    .line 273
    invoke-static {v0}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {v1}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    if-eqz p0, :cond_e

    .line 286
    .line 287
    const/4 v2, 0x1

    .line 288
    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_f
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_10
    :goto_9
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-static {p0}, Lc5/y;->x(Lcc/e0;)Lcc/s1;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    :goto_a
    invoke-static {p0}, Leb/w;->c(Lcc/e0;)Leb/o;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    return-object p0
.end method
