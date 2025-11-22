.class public abstract Lsa/z;
.super Lsa/v;
.source "SourceFile"

# interfaces
.implements Lcb/d;
.implements Lcb/r;
.implements Lcb/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsa/v;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract O()Ljava/lang/reflect/Member;
.end method

.method public final P([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lsa/c;->a:Lsa/c;

    .line 8
    .line 9
    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "member"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v3, Lsa/c;->b:Lsa/c$a;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v3, Lsa/c;->b:Lsa/c$a;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-static {v2}, Lsa/c;->a(Ljava/lang/reflect/Member;)Lsa/c$a;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sput-object v3, Lsa/c;->b:Lsa/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    :cond_0
    monitor-exit v1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v1

    .line 37
    throw p1

    .line 38
    :cond_1
    :goto_0
    iget-object v1, v3, Lsa/c$a;->a:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v3, v3, Lsa/c$a;->b:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    :goto_1
    move-object v2, v5

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    new-array v6, v4, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "null cannot be cast to non-null type kotlin.Array<*>"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v1, [Ljava/lang/Object;

    .line 63
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    array-length v6, v1

    .line 67
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .line 69
    .line 70
    array-length v6, v1

    .line 71
    const/4 v7, 0x0

    .line 72
    :goto_2
    if-ge v7, v6, :cond_4

    .line 73
    .line 74
    aget-object v8, v1, v7

    .line 75
    .line 76
    new-array v9, v4, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const-string v9, "null cannot be cast to non-null type kotlin.String"

    .line 83
    .line 84
    invoke-static {v8, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    check-cast v8, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    array-length v3, p1

    .line 102
    sub-int/2addr v1, v3

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const/4 v1, 0x0

    .line 105
    :goto_4
    array-length v3, p1

    .line 106
    const/4 v6, 0x0

    .line 107
    :goto_5
    if-ge v6, v3, :cond_d

    .line 108
    .line 109
    aget-object v7, p1, v6

    .line 110
    .line 111
    const-string v8, "type"

    .line 112
    .line 113
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    instance-of v8, v7, Ljava/lang/Class;

    .line 117
    .line 118
    if-eqz v8, :cond_6

    .line 119
    .line 120
    move-object v9, v7

    .line 121
    check-cast v9, Ljava/lang/Class;

    .line 122
    .line 123
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-eqz v10, :cond_6

    .line 128
    .line 129
    new-instance v7, Lsa/c0;

    .line 130
    .line 131
    invoke-direct {v7, v9}, Lsa/c0;-><init>(Ljava/lang/Class;)V

    .line 132
    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_6
    instance-of v9, v7, Ljava/lang/reflect/GenericArrayType;

    .line 136
    .line 137
    if-nez v9, :cond_9

    .line 138
    .line 139
    if-eqz v8, :cond_7

    .line 140
    .line 141
    move-object v8, v7

    .line 142
    check-cast v8, Ljava/lang/Class;

    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_7

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_7
    instance-of v8, v7, Ljava/lang/reflect/WildcardType;

    .line 152
    .line 153
    if-eqz v8, :cond_8

    .line 154
    .line 155
    new-instance v8, Lsa/h0;

    .line 156
    .line 157
    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 158
    .line 159
    invoke-direct {v8, v7}, Lsa/h0;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_8
    new-instance v8, Lsa/t;

    .line 164
    .line 165
    invoke-direct {v8, v7}, Lsa/t;-><init>(Ljava/lang/reflect/Type;)V

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_9
    :goto_6
    new-instance v8, Lsa/i;

    .line 170
    .line 171
    invoke-direct {v8, v7}, Lsa/i;-><init>(Ljava/lang/reflect/Type;)V

    .line 172
    .line 173
    .line 174
    :goto_7
    move-object v7, v8

    .line 175
    :goto_8
    if-eqz v2, :cond_b

    .line 176
    .line 177
    add-int v8, v6, v1

    .line 178
    .line 179
    invoke-static {v8, v2}, Lm9/t;->d1(ILjava/util/List;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    check-cast v8, Ljava/lang/String;

    .line 184
    .line 185
    if-eqz v8, :cond_a

    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string p3, "No parameter with index "

    .line 193
    .line 194
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const/16 p3, 0x2b

    .line 201
    .line 202
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string p3, " (name="

    .line 209
    .line 210
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lsa/z;->getName()Llb/f;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p3, " type="

    .line 221
    .line 222
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p3, ") in "

    .line 229
    .line 230
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1

    .line 248
    :cond_b
    move-object v8, v5

    .line 249
    :goto_9
    if-eqz p3, :cond_c

    .line 250
    .line 251
    array-length v9, p1

    .line 252
    add-int/lit8 v9, v9, -0x1

    .line 253
    .line 254
    if-ne v6, v9, :cond_c

    .line 255
    .line 256
    const/4 v9, 0x1

    .line 257
    goto :goto_a

    .line 258
    :cond_c
    const/4 v9, 0x0

    .line 259
    :goto_a
    new-instance v10, Lsa/g0;

    .line 260
    .line 261
    aget-object v11, p2, v6

    .line 262
    .line 263
    invoke-direct {v10, v7, v11, v8, v9}, Lsa/g0;-><init>(Lsa/e0;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    add-int/lit8 v6, v6, 0x1

    .line 270
    .line 271
    goto/16 :goto_5

    .line 272
    .line 273
    :cond_d
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lsa/z;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast p1, Lsa/z;

    invoke-virtual {p1}, Lsa/z;->O()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getAnnotations()Ljava/util/Collection;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lb8/f;->G([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 24
    .line 25
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 26
    .line 27
    return-object v0
.end method

.method public final getName()Llb/f;
    .locals 1

    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Llb/h;->a:Llb/f;

    :cond_1
    return-object v0
.end method

.method public final getVisibility()Lma/e1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v0, Lma/d1$h;->c:Lma/d1$h;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget-object v0, Lma/d1$e;->c:Lma/d1$e;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lqa/c;->c:Lqa/c;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lqa/b;->c:Lqa/b;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    sget-object v0, Lqa/a;->c:Lqa/a;

    .line 46
    .line 47
    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lsa/r;
    .locals 3

    new-instance v0, Lsa/r;

    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "member.declaringClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsa/r;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public final isAbstract()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isFinal()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final n(Llb/c;)Lcb/a;
    .locals 2

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v0, p1}, Lb8/f;->E([Ljava/lang/annotation/Annotation;Llb/c;)Lsa/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return-object p1
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsa/z;->O()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
