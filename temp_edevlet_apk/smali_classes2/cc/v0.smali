.class public final Lcc/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcc/x0;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcc/x0$a;->a:Lcc/x0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcc/v0;->a:Lcc/x0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcc/v0;->b:Z

    return-void
.end method

.method public static b(Lcc/e0;Lcc/a1;)Lcc/a1;
    .locals 5

    .line 1
    invoke-static {p0}, Lc5/v;->y(Lcc/e0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcc/e0;->L0()Lcc/a1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, "other"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lic/a;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lic/a;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcc/a1;->b:Lcc/a1$a;

    .line 39
    .line 40
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "idPerType.values"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-object v3, p1, Lic/e;->a:Lic/c;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Lic/c;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcc/y0;

    .line 78
    .line 79
    iget-object v4, p0, Lic/e;->a:Lic/c;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Lic/c;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcc/y0;

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Lcc/y0;->a(Lcc/y0;)Lcc/k;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const/4 v2, 0x0

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v3, v2}, Lcc/y0;->a(Lcc/y0;)Lcc/k;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_1
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-static {v0}, Lcc/a1$a;->c(Ljava/util/List;)Lcc/a1;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_2
    return-object p1
.end method


# virtual methods
.method public final a(Lna/h;Lna/h;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lna/c;

    invoke-interface {v1}, Lna/c;->d()Llb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lna/c;

    invoke-interface {p2}, Lna/c;->d()Llb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcc/v0;->a:Lcc/x0;

    invoke-interface {v1, p2}, Lcc/x0;->c(Lna/c;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(Lcc/w0;Lcc/a1;ZIZ)Lcc/m0;
    .locals 4

    .line 1
    new-instance v0, Lcc/k1;

    .line 2
    .line 3
    sget-object v1, Lcc/t1;->c:Lcc/t1;

    .line 4
    .line 5
    iget-object v2, p1, Lcc/w0;->b:Lma/v0;

    .line 6
    .line 7
    invoke-interface {v2}, Lma/v0;->c0()Lcc/m0;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v3, v1}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, p1, v1, p4}, Lcc/v0;->d(Lcc/i1;Lcc/w0;Lma/w0;I)Lcc/i1;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-interface {p4}, Lcc/i1;->getType()Lcc/e0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v3, "expandedProjection.type"

    .line 24
    .line 25
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcc/n1;->a(Lcc/e0;)Lcc/m0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lc5/v;->y(Lcc/e0;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_0
    invoke-interface {p4}, Lcc/i1;->b()Lcc/t1;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcc/e0;->getAnnotations()Lna/h;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-static {p2}, Lcc/l;->a(Lcc/a1;)Lna/h;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, p4, v3}, Lcc/v0;->a(Lna/h;Lna/h;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lc5/v;->y(Lcc/e0;)Z

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    if-eqz p4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v0, p2}, Lcc/v0;->b(Lcc/e0;Lcc/a1;)Lcc/a1;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-static {v0, v1, p4, v3}, Lcc/n1;->d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    invoke-static {v0, p3}, Lcc/q1;->l(Lcc/m0;Z)Lcc/m0;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    const-string v0, "expandedType.combineAttr\u2026fNeeded(it, isNullable) }"

    .line 74
    .line 75
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    if-eqz p5, :cond_2

    .line 79
    .line 80
    invoke-interface {v2}, Lma/g;->i()Lcc/c1;

    .line 81
    .line 82
    .line 83
    move-result-object p5

    .line 84
    const-string v0, "descriptor.typeConstructor"

    .line 85
    .line 86
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lvb/i$b;->b:Lvb/i$b;

    .line 90
    .line 91
    iget-object p1, p1, Lcc/w0;->c:Ljava/util/List;

    .line 92
    .line 93
    invoke-static {p1, v0, p2, p5, p3}, Lcc/f0;->h(Ljava/util/List;Lvb/i;Lcc/a1;Lcc/c1;Z)Lcc/m0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p4, p1}, Lcc/q0;->c(Lcc/m0;Lcc/m0;)Lcc/m0;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    :cond_2
    return-object p4
.end method

.method public final d(Lcc/i1;Lcc/w0;Lma/w0;I)Lcc/i1;
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p2

    .line 3
    .line 4
    move/from16 v8, p4

    .line 5
    .line 6
    const/16 v0, 0x64

    .line 7
    .line 8
    iget-object v1, v7, Lcc/w0;->b:Lma/v0;

    .line 9
    .line 10
    if-gt v8, v0, :cond_1a

    .line 11
    .line 12
    invoke-interface {p1}, Lcc/i1;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_0
    invoke-interface {p1}, Lcc/i1;->getType()Lcc/e0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "underlyingProjection.type"

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "constructor"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Lcc/c1;->n()Lma/g;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    instance-of v3, v2, Lma/w0;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget-object v3, v7, Lcc/w0;->d:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcc/i1;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v2, v4

    .line 57
    :goto_0
    sget-object v3, Lcc/t1;->c:Lcc/t1;

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    iget-object v9, v6, Lcc/v0;->a:Lcc/x0;

    .line 61
    .line 62
    if-nez v2, :cond_e

    .line 63
    .line 64
    invoke-interface {p1}, Lcc/i1;->getType()Lcc/e0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcc/e0;->P0()Lcc/s1;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcc/w;->a(Lcc/e0;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_2
    invoke-static {v0}, Lcc/n1;->a(Lcc/e0;)Lcc/m0;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-static {v10}, Lc5/v;->y(Lcc/e0;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_d

    .line 89
    .line 90
    sget-object v0, Lgc/b;->a:Lgc/b;

    .line 91
    .line 92
    const-string v1, "predicate"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v10, v0}, Lcc/q1;->c(Lcc/e0;Lx9/l;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_3
    invoke-virtual {v10}, Lcc/e0;->M0()Lcc/c1;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v0}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Lcc/e0;->K0()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    instance-of v11, v2, Lma/w0;

    .line 128
    .line 129
    if-eqz v11, :cond_4

    .line 130
    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :cond_4
    instance-of v11, v2, Lma/v0;

    .line 134
    .line 135
    const/4 v12, 0x0

    .line 136
    if-eqz v11, :cond_9

    .line 137
    .line 138
    check-cast v2, Lma/v0;

    .line 139
    .line 140
    invoke-virtual {v7, v2}, Lcc/w0;->a(Lma/v0;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    invoke-interface {v9, v2}, Lcc/x0;->d(Lma/v0;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lcc/k1;

    .line 150
    .line 151
    sget-object v1, Lec/h;->f:Lec/h;

    .line 152
    .line 153
    new-array v4, v5, [Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v2, v2, Llb/f;->a:Ljava/lang/String;

    .line 160
    .line 161
    const-string v5, "typeDescriptor.name.toString()"

    .line 162
    .line 163
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    aput-object v2, v4, v12

    .line 167
    .line 168
    invoke-static {v1, v4}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-direct {v0, v1, v3}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 173
    .line 174
    .line 175
    move-object v1, v0

    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :cond_5
    invoke-virtual {v10}, Lcc/e0;->K0()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Iterable;

    .line 183
    .line 184
    new-instance v3, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_7

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    add-int/lit8 v9, v12, 0x1

    .line 208
    .line 209
    if-ltz v12, :cond_6

    .line 210
    .line 211
    check-cast v5, Lcc/i1;

    .line 212
    .line 213
    invoke-interface {v0}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    check-cast v11, Lma/w0;

    .line 222
    .line 223
    add-int/lit8 v12, v8, 0x1

    .line 224
    .line 225
    invoke-virtual {p0, v5, v7, v11, v12}, Lcc/v0;->d(Lcc/i1;Lcc/w0;Lma/w0;I)Lcc/i1;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move v12, v9

    .line 233
    goto :goto_1

    .line 234
    :cond_6
    invoke-static {}, Lb8/f;->k0()V

    .line 235
    .line 236
    .line 237
    throw v4

    .line 238
    :cond_7
    invoke-static {v7, v2, v3}, Lcc/w0$a;->a(Lcc/w0;Lma/v0;Ljava/util/List;)Lcc/w0;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v10}, Lcc/e0;->L0()Lcc/a1;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v10}, Lcc/e0;->N0()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    add-int/lit8 v4, v8, 0x1

    .line 251
    .line 252
    const/4 v5, 0x0

    .line 253
    move-object v0, p0

    .line 254
    invoke-virtual/range {v0 .. v5}, Lcc/v0;->c(Lcc/w0;Lcc/a1;ZIZ)Lcc/m0;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p0, v10, v7, v8}, Lcc/v0;->e(Lcc/m0;Lcc/w0;I)Lcc/m0;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v0}, Lcc/w;->a(Lcc/e0;)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_8

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_8
    invoke-static {v0, v1}, Lcc/q0;->c(Lcc/m0;Lcc/m0;)Lcc/m0;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    :goto_2
    new-instance v1, Lcc/k1;

    .line 274
    .line 275
    invoke-interface {p1}, Lcc/i1;->b()Lcc/t1;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-direct {v1, v0, v2}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_5

    .line 283
    .line 284
    :cond_9
    invoke-virtual {p0, v10, v7, v8}, Lcc/v0;->e(Lcc/m0;Lcc/w0;I)Lcc/m0;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v0}, Lcc/p1;->d(Lcc/e0;)Lcc/p1;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v0}, Lcc/e0;->K0()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    check-cast v3, Ljava/lang/Iterable;

    .line 297
    .line 298
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    if-eqz v5, :cond_c

    .line 307
    .line 308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    add-int/lit8 v7, v12, 0x1

    .line 313
    .line 314
    if-ltz v12, :cond_b

    .line 315
    .line 316
    check-cast v5, Lcc/i1;

    .line 317
    .line 318
    invoke-interface {v5}, Lcc/i1;->c()Z

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    if-nez v8, :cond_a

    .line 323
    .line 324
    invoke-interface {v5}, Lcc/i1;->getType()Lcc/e0;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    const-string v11, "substitutedArgument.type"

    .line 329
    .line 330
    invoke-static {v8, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    sget-object v13, Lgc/a;->a:Lgc/a;

    .line 334
    .line 335
    invoke-static {v13, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v8, v13}, Lcc/q1;->c(Lcc/e0;Lx9/l;)Z

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    if-nez v8, :cond_a

    .line 343
    .line 344
    invoke-virtual {v10}, Lcc/e0;->K0()Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    check-cast v8, Lcc/i1;

    .line 353
    .line 354
    invoke-virtual {v10}, Lcc/e0;->M0()Lcc/c1;

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    invoke-interface {v13}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v13

    .line 362
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v12

    .line 366
    check-cast v12, Lma/w0;

    .line 367
    .line 368
    iget-boolean v13, v6, Lcc/v0;->b:Z

    .line 369
    .line 370
    if-eqz v13, :cond_a

    .line 371
    .line 372
    invoke-interface {v8}, Lcc/i1;->getType()Lcc/e0;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    const-string v13, "unsubstitutedArgument.type"

    .line 377
    .line 378
    invoke-static {v8, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v5}, Lcc/i1;->getType()Lcc/e0;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-static {v5, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v11, "typeParameter"

    .line 389
    .line 390
    invoke-static {v12, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-interface {v9, v2, v8, v5, v12}, Lcc/x0;->a(Lcc/p1;Lcc/e0;Lcc/e0;Lma/w0;)V

    .line 394
    .line 395
    .line 396
    :cond_a
    move v12, v7

    .line 397
    goto :goto_3

    .line 398
    :cond_b
    invoke-static {}, Lb8/f;->k0()V

    .line 399
    .line 400
    .line 401
    throw v4

    .line 402
    :cond_c
    new-instance v1, Lcc/k1;

    .line 403
    .line 404
    invoke-interface {p1}, Lcc/i1;->b()Lcc/t1;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-direct {v1, v0, v2}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 409
    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_d
    :goto_4
    move-object v1, p1

    .line 413
    :goto_5
    return-object v1

    .line 414
    :cond_e
    invoke-interface {v2}, Lcc/i1;->c()Z

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    if-eqz v7, :cond_f

    .line 419
    .line 420
    :goto_6
    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    invoke-static/range {p3 .. p3}, Lcc/q1;->m(Lma/w0;)Lcc/s0;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    return-object v0

    .line 428
    :cond_f
    invoke-interface {v2}, Lcc/i1;->getType()Lcc/e0;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-virtual {v7}, Lcc/e0;->P0()Lcc/s1;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-interface {v2}, Lcc/i1;->b()Lcc/t1;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    const-string v8, "argument.projectionKind"

    .line 441
    .line 442
    invoke-static {v2, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-interface {p1}, Lcc/i1;->b()Lcc/t1;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    const-string v10, "underlyingProjection.projectionKind"

    .line 450
    .line 451
    invoke-static {v8, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    if-ne v8, v2, :cond_10

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_10
    if-ne v8, v3, :cond_11

    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_11
    if-ne v2, v3, :cond_12

    .line 461
    .line 462
    move-object v2, v8

    .line 463
    goto :goto_7

    .line 464
    :cond_12
    invoke-interface {v9, v1, v7}, Lcc/x0;->b(Lma/v0;Lcc/s1;)V

    .line 465
    .line 466
    .line 467
    :goto_7
    if-eqz p3, :cond_13

    .line 468
    .line 469
    invoke-interface/range {p3 .. p3}, Lma/w0;->I()Lcc/t1;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    if-nez v8, :cond_14

    .line 474
    .line 475
    :cond_13
    move-object v8, v3

    .line 476
    :cond_14
    if-ne v8, v2, :cond_15

    .line 477
    .line 478
    goto :goto_8

    .line 479
    :cond_15
    if-ne v8, v3, :cond_16

    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_16
    if-ne v2, v3, :cond_17

    .line 483
    .line 484
    goto :goto_9

    .line 485
    :cond_17
    invoke-interface {v9, v1, v7}, Lcc/x0;->b(Lma/v0;Lcc/s1;)V

    .line 486
    .line 487
    .line 488
    :goto_8
    move-object v3, v2

    .line 489
    :goto_9
    invoke-virtual {v0}, Lcc/e0;->getAnnotations()Lna/h;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {v7}, Lcc/e0;->getAnnotations()Lna/h;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {p0, v1, v2}, Lcc/v0;->a(Lna/h;Lna/h;)V

    .line 498
    .line 499
    .line 500
    instance-of v1, v7, Lcc/v;

    .line 501
    .line 502
    if-eqz v1, :cond_18

    .line 503
    .line 504
    check-cast v7, Lcc/v;

    .line 505
    .line 506
    invoke-virtual {v0}, Lcc/e0;->L0()Lcc/a1;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-static {v7, v0}, Lcc/v0;->b(Lcc/e0;Lcc/a1;)Lcc/a1;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    const-string v1, "newAttributes"

    .line 515
    .line 516
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v1, Lcc/v;

    .line 520
    .line 521
    iget-object v2, v7, Lcc/y;->c:Lcc/m0;

    .line 522
    .line 523
    invoke-static {v2}, Lc5/y;->o(Lcc/e0;)Lja/k;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-direct {v1, v2, v0}, Lcc/v;-><init>(Lja/k;Lcc/a1;)V

    .line 528
    .line 529
    .line 530
    goto :goto_a

    .line 531
    :cond_18
    invoke-static {v7}, Lcc/n1;->a(Lcc/e0;)Lcc/m0;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-virtual {v0}, Lcc/e0;->N0()Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    invoke-static {v1, v2}, Lcc/q1;->l(Lcc/m0;Z)Lcc/m0;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    const-string v2, "makeNullableIfNeeded(thi\u2026romType.isMarkedNullable)"

    .line 544
    .line 545
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Lcc/e0;->L0()Lcc/a1;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v1}, Lc5/v;->y(Lcc/e0;)Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_19

    .line 557
    .line 558
    goto :goto_a

    .line 559
    :cond_19
    invoke-static {v1, v0}, Lcc/v0;->b(Lcc/e0;Lcc/a1;)Lcc/a1;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v1, v4, v0, v5}, Lcc/n1;->d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    move-object v1, v0

    .line 568
    :goto_a
    new-instance v0, Lcc/k1;

    .line 569
    .line 570
    invoke-direct {v0, v1, v3}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    .line 571
    .line 572
    .line 573
    return-object v0

    .line 574
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    .line 575
    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    const-string v3, "Too deep recursion while expanding type alias "

    .line 579
    .line 580
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v1}, Lma/j;->getName()Llb/f;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    throw v0
.end method

.method public final e(Lcc/m0;Lcc/w0;I)Lcc/m0;
    .locals 8

    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    move-result-object v0

    invoke-virtual {p1}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, Lcc/i1;

    invoke-interface {v0}, Lcc/c1;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lma/w0;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v5}, Lcc/v0;->d(Lcc/i1;Lcc/w0;Lma/w0;I)Lcc/i1;

    move-result-object v3

    invoke-interface {v3}, Lcc/i1;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lcc/k1;

    invoke-interface {v3}, Lcc/i1;->b()Lcc/t1;

    move-result-object v7

    invoke-interface {v3}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v3

    invoke-interface {v4}, Lcc/i1;->getType()Lcc/e0;

    move-result-object v4

    invoke-virtual {v4}, Lcc/e0;->N0()Z

    move-result v4

    invoke-static {v3, v4}, Lcc/q1;->k(Lcc/e0;Z)Lcc/e0;

    move-result-object v3

    invoke-direct {v5, v3, v7}, Lcc/k1;-><init>(Lcc/e0;Lcc/t1;)V

    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lb8/f;->k0()V

    throw v5

    :cond_2
    const/4 p2, 0x2

    invoke-static {p1, v2, v5, p2}, Lcc/n1;->d(Lcc/m0;Ljava/util/List;Lcc/a1;I)Lcc/m0;

    move-result-object p1

    return-object p1
.end method
