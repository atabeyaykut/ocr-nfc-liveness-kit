.class public final Lra/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;)Lqb/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "currentClass.componentType"

    .line 15
    .line 16
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance p0, Lqb/f;

    .line 35
    .line 36
    sget-object v1, Lja/o$a;->d:Llb/d;

    .line 37
    .line 38
    invoke-virtual {v1}, Llb/d;->h()Llb/c;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {p0, v1, v0}, Lqb/f;-><init>(Llb/b;I)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Ltb/c;->o(Ljava/lang/String;)Ltb/c;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ltb/c;->r()Lja/l;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v1, "get(currentClass.name).primitiveType"

    .line 63
    .line 64
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lqb/f;

    .line 68
    .line 69
    if-lez v0, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lja/l;->d:Ll9/e;

    .line 72
    .line 73
    invoke-interface {p0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Llb/c;

    .line 78
    .line 79
    invoke-static {p0}, Llb/b;->l(Llb/c;)Llb/b;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    invoke-direct {v1, p0, v0}, Lqb/f;-><init>(Llb/b;I)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_2
    iget-object p0, p0, Lja/l;->c:Ll9/e;

    .line 90
    .line 91
    invoke-interface {p0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Llb/c;

    .line 96
    .line 97
    invoke-static {p0}, Llb/b;->l(Llb/c;)Llb/b;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {v1, p0, v0}, Lqb/f;-><init>(Llb/b;I)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_3
    invoke-static {p0}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    sget-object v1, Lla/c;->a:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0}, Llb/b;->b()Llb/c;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "javaClassId.asSingleFqName()"

    .line 116
    .line 117
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lla/c;->f(Llb/c;)Llb/b;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    move-object p0, v1

    .line 128
    :goto_1
    new-instance v1, Lqb/f;

    .line 129
    .line 130
    invoke-direct {v1, p0, v0}, Lqb/f;-><init>(Llb/b;I)V

    .line 131
    .line 132
    .line 133
    return-object v1
.end method

.method public static b(Ljava/lang/Class;Leb/s$c;)V
    .locals 4

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const-string v0, "klass.declaredAnnotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const-string v3, "annotation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lra/c;->c(Leb/s$c;Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Leb/s$c;->a()V

    return-void
.end method

.method public static c(Leb/s$c;Ljava/lang/annotation/Annotation;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/d0;->p(Ljava/lang/annotation/Annotation;)Lda/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    move-result-object v1

    new-instance v2, Lra/b;

    invoke-direct {v2, p1}, Lra/b;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {p0, v1, v2}, Leb/s$c;->b(Llb/b;Lra/b;)Leb/s$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, v0}, Lra/c;->d(Leb/s$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static d(Leb/s$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "annotationType.declaredMethods"

    .line 6
    .line 7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    array-length v0, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_d

    .line 14
    .line 15
    aget-object v3, p2, v2

    .line 16
    .line 17
    :try_start_0
    new-array v4, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-class v6, Ljava/lang/Class;

    .line 39
    .line 40
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    check-cast v4, Ljava/lang/Class;

    .line 47
    .line 48
    invoke-static {v4}, Lra/c;->a(Ljava/lang/Class;)Lqb/f;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {p0, v3, v4}, Leb/s$a;->f(Llb/f;Lqb/f;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_0
    sget-object v7, Lra/g;->a:Ljava/util/Set;

    .line 58
    .line 59
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    invoke-interface {p0, v4, v3}, Leb/s$a;->e(Ljava/lang/Object;Llb/f;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_1
    sget-object v7, Lsa/d;->a:Ljava/util/List;

    .line 71
    .line 72
    const-class v7, Ljava/lang/Enum;

    .line 73
    .line 74
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_3

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :goto_1
    const-string v6, "if (clazz.isEnum) clazz else clazz.enclosingClass"

    .line 92
    .line 93
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v4, Ljava/lang/Enum;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {p0, v3, v5, v4}, Leb/s$a;->b(Llb/f;Llb/b;Llb/f;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_7

    .line 114
    .line 115
    :cond_3
    const-class v7, Ljava/lang/annotation/Annotation;

    .line 116
    .line 117
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_5

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const-string v6, "clazz.interfaces"

    .line 128
    .line 129
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v5}, Lm9/k;->y0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/Class;

    .line 137
    .line 138
    const-string v6, "annotationClass"

    .line 139
    .line 140
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v5}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-interface {p0, v6, v3}, Leb/s$a;->d(Llb/b;Llb/f;)Leb/s$a;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-nez v3, :cond_4

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_4
    check-cast v4, Ljava/lang/annotation/Annotation;

    .line 156
    .line 157
    invoke-static {v3, v4, v5}, Lra/c;->d(Leb/s$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_7

    .line 161
    .line 162
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_c

    .line 167
    .line 168
    invoke-interface {p0, v3}, Leb/s$a;->c(Llb/f;)Leb/s$b;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-nez v3, :cond_6

    .line 173
    .line 174
    goto/16 :goto_7

    .line 175
    .line 176
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_7

    .line 185
    .line 186
    invoke-static {v5}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v4, [Ljava/lang/Object;

    .line 191
    .line 192
    array-length v6, v4

    .line 193
    const/4 v7, 0x0

    .line 194
    :goto_2
    if-ge v7, v6, :cond_b

    .line 195
    .line 196
    aget-object v8, v4, v7

    .line 197
    .line 198
    const-string v9, "null cannot be cast to non-null type kotlin.Enum<*>"

    .line 199
    .line 200
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    check-cast v8, Ljava/lang/Enum;

    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-static {v8}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-interface {v3, v5, v8}, Leb/s$b;->d(Llb/b;Llb/f;)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v7, v7, 0x1

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_8

    .line 224
    .line 225
    check-cast v4, [Ljava/lang/Object;

    .line 226
    .line 227
    array-length v5, v4

    .line 228
    const/4 v6, 0x0

    .line 229
    :goto_3
    if-ge v6, v5, :cond_b

    .line 230
    .line 231
    aget-object v7, v4, v6

    .line 232
    .line 233
    const-string v8, "null cannot be cast to non-null type java.lang.Class<*>"

    .line 234
    .line 235
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    check-cast v7, Ljava/lang/Class;

    .line 239
    .line 240
    invoke-static {v7}, Lra/c;->a(Ljava/lang/Class;)Lqb/f;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-interface {v3, v7}, Leb/s$b;->c(Lqb/f;)V

    .line 245
    .line 246
    .line 247
    add-int/lit8 v6, v6, 0x1

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_8
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    check-cast v4, [Ljava/lang/Object;

    .line 255
    .line 256
    if-eqz v6, :cond_a

    .line 257
    .line 258
    array-length v6, v4

    .line 259
    const/4 v7, 0x0

    .line 260
    :goto_4
    if-ge v7, v6, :cond_b

    .line 261
    .line 262
    aget-object v8, v4, v7

    .line 263
    .line 264
    invoke-static {v5}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-interface {v3, v9}, Leb/s$b;->e(Llb/b;)Leb/s$a;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    if-nez v9, :cond_9

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_9
    const-string v10, "null cannot be cast to non-null type kotlin.Annotation"

    .line 276
    .line 277
    invoke-static {v8, v10}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    check-cast v8, Ljava/lang/annotation/Annotation;

    .line 281
    .line 282
    invoke-static {v9, v8, v5}, Lra/c;->d(Leb/s$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 283
    .line 284
    .line 285
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_a
    array-length v5, v4

    .line 289
    const/4 v6, 0x0

    .line 290
    :goto_6
    if-ge v6, v5, :cond_b

    .line 291
    .line 292
    aget-object v7, v4, v6

    .line 293
    .line 294
    invoke-interface {v3, v7}, Leb/s$b;->b(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    add-int/lit8 v6, v6, 0x1

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_b
    invoke-interface {v3}, Leb/s$b;->a()V

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 305
    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string p2, "Unsupported annotation argument value ("

    .line 309
    .line 310
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string p2, "): "

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw p0

    .line 332
    :catch_0
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 333
    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_d
    invoke-interface {p0}, Leb/s$a;->a()V

    .line 337
    .line 338
    .line 339
    return-void
.end method
