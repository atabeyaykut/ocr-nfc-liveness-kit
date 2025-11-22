.class public final Lkotlin/reflect/jvm/internal/impl/load/java/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lma/b;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lja/k;->z(Lma/j;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lma/b;)Lma/b;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_4

    .line 15
    .line 16
    invoke-static {p0}, Lsb/b;->k(Lma/b;)Lma/b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    instance-of v0, p0, Lma/l0;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Lja/k;->z(Lma/j;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lsb/b;->k(Lma/b;)Lma/b;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object v0, Lva/h;->a:Lva/h;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lsb/b;->b(Lma/b;Lx9/l;)Lma/b;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    sget-object v0, Lva/g;->a:Ljava/util/Map;

    .line 41
    .line 42
    invoke-static {p0}, Lsb/b;->g(Lma/j;)Llb/c;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Llb/f;

    .line 51
    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Llb/f;->o()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    instance-of v0, p0, Lma/q0;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->m:I

    .line 64
    .line 65
    check-cast p0, Lma/q0;

    .line 66
    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->j:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-static {p0}, Leb/w;->b(Lma/a;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    move-object p0, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Llb/f;

    .line 82
    .line 83
    :goto_1
    if-eqz p0, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Llb/f;->o()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :cond_4
    :goto_2
    return-object v1
.end method

.method public static final b(Lma/b;)Lma/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lma/b;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lva/g;->d:Ljava/util/Set;

    .line 20
    .line 21
    invoke-static {p0}, Lsb/b;->k(Lma/b;)Lma/b;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    instance-of v0, p0, Lma/l0;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    instance-of v0, p0, Lma/k0;

    .line 43
    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    .line 46
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d$a;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    instance-of v0, p0, Lma/q0;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d$b;

    .line 54
    .line 55
    :goto_1
    invoke-static {p0, v0}, Lsb/b;->b(Lma/b;Lx9/l;)Lma/b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    return-object v1
.end method

.method public static final c(Lma/b;)Lma/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lma/b;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lma/b;)Lma/b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->m:I

    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b(Llb/f;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d$c;

    invoke-static {p0, v0}, Lsb/b;->b(Lma/b;Lx9/l;)Lma/b;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lma/e;Lma/b;)Z
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "specialCallableDescriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lma/k;->b()Lma/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lma/e;

    .line 21
    .line 22
    invoke-interface {p1}, Lma/e;->q()Lcc/m0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "specialCallableDescripto\u2026ssDescriptor).defaultType"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p0}, Lob/i;->j(Lma/e;)Lma/e;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_f

    .line 37
    .line 38
    instance-of v1, p0, Lxa/c;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    invoke-interface {p0}, Lma/e;->q()Lcc/m0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v1, :cond_e

    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v4, Ldc/q;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct {v4, v1, v5}, Ldc/q;-><init>(Lcc/e0;Ldc/q;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_c

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ldc/q;

    .line 78
    .line 79
    iget-object v6, v4, Ldc/q;->a:Lcc/e0;

    .line 80
    .line 81
    invoke-virtual {v6}, Lcc/e0;->M0()Lcc/c1;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-static {v7, v1}, Lnc/c0;->b(Lcc/c1;Lcc/c1;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_b

    .line 90
    .line 91
    invoke-virtual {v6}, Lcc/e0;->N0()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    :goto_0
    iget-object v4, v4, Ldc/q;->b:Ldc/q;

    .line 96
    .line 97
    if-eqz v4, :cond_9

    .line 98
    .line 99
    iget-object v5, v4, Ldc/q;->a:Lcc/e0;

    .line 100
    .line 101
    invoke-virtual {v5}, Lcc/e0;->K0()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Ljava/lang/Iterable;

    .line 106
    .line 107
    instance-of v8, v7, Ljava/util/Collection;

    .line 108
    .line 109
    sget-object v9, Lcc/t1;->c:Lcc/t1;

    .line 110
    .line 111
    if-eqz v8, :cond_2

    .line 112
    .line 113
    move-object v8, v7

    .line 114
    check-cast v8, Ljava/util/Collection;

    .line 115
    .line 116
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_2

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_5

    .line 132
    .line 133
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Lcc/i1;

    .line 138
    .line 139
    invoke-interface {v8}, Lcc/i1;->b()Lcc/t1;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    if-eq v8, v9, :cond_4

    .line 144
    .line 145
    const/4 v8, 0x1

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    const/4 v8, 0x0

    .line 148
    :goto_1
    if-eqz v8, :cond_3

    .line 149
    .line 150
    const/4 v7, 0x1

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    :goto_2
    const/4 v7, 0x0

    .line 153
    :goto_3
    if-eqz v7, :cond_6

    .line 154
    .line 155
    sget-object v7, Lcc/e1;->b:Lcc/e1$a;

    .line 156
    .line 157
    invoke-virtual {v7, v5}, Lcc/e1$a;->a(Lcc/e0;)Lcc/l1;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-static {v7}, Lpb/d;->b(Lcc/l1;)Lcc/l1;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-static {v7}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v7, v6, v9}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v6}, Lhc/d;->a(Lcc/e0;)Lhc/a;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    iget-object v6, v6, Lhc/a;->b:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v6, Lcc/e0;

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    sget-object v7, Lcc/e1;->b:Lcc/e1$a;

    .line 183
    .line 184
    invoke-virtual {v7, v5}, Lcc/e1$a;->a(Lcc/e0;)Lcc/l1;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v7}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v7, v6, v9}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    :goto_4
    if-nez v3, :cond_8

    .line 197
    .line 198
    invoke-virtual {v5}, Lcc/e0;->N0()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_7

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_7
    const/4 v3, 0x0

    .line 206
    goto :goto_0

    .line 207
    :cond_8
    :goto_5
    const/4 v3, 0x1

    .line 208
    goto :goto_0

    .line 209
    :cond_9
    invoke-virtual {v6}, Lcc/e0;->M0()Lcc/c1;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-static {v4, v1}, Lnc/c0;->b(Lcc/c1;Lcc/c1;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_a

    .line 218
    .line 219
    invoke-static {v6, v3}, Lcc/q1;->j(Lcc/e0;Z)Lcc/s1;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    goto :goto_7

    .line 224
    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    .line 225
    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v0, "Type constructors should be equals!\nsubstitutedSuperType: "

    .line 229
    .line 230
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v4}, Ldc/v;->a(Lcc/c1;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v0, ", \n\nsupertype: "

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-static {v1}, Ldc/v;->a(Lcc/c1;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v0, " \n"

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-static {v4, v1}, Lnc/c0;->b(Lcc/c1;Lcc/c1;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    throw p0

    .line 272
    :cond_b
    invoke-interface {v7}, Lcc/c1;->l()Ljava/util/Collection;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_1

    .line 285
    .line 286
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    check-cast v7, Lcc/e0;

    .line 291
    .line 292
    new-instance v8, Ldc/q;

    .line 293
    .line 294
    const-string v9, "immediateSupertype"

    .line 295
    .line 296
    invoke-static {v7, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-direct {v8, v7, v4}, Ldc/q;-><init>(Lcc/e0;Ldc/q;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_c
    :goto_7
    if-eqz v5, :cond_d

    .line 307
    .line 308
    const/4 v0, 0x1

    .line 309
    :cond_d
    if-eqz v0, :cond_0

    .line 310
    .line 311
    invoke-static {p0}, Lja/k;->z(Lma/j;)Z

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    xor-int/2addr p0, v2

    .line 316
    return p0

    .line 317
    :cond_e
    const/4 p0, 0x3

    .line 318
    new-array p0, p0, [Ljava/lang/Object;

    .line 319
    .line 320
    const-string p1, "subtype"

    .line 321
    .line 322
    aput-object p1, p0, v0

    .line 323
    .line 324
    const-string p1, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    .line 325
    .line 326
    aput-object p1, p0, v2

    .line 327
    .line 328
    const-string p1, "findCorrespondingSupertype"

    .line 329
    .line 330
    const/4 v0, 0x2

    .line 331
    aput-object p1, p0, v0

    .line 332
    .line 333
    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 334
    .line 335
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 340
    .line 341
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p1

    .line 345
    :cond_f
    return v0
.end method
