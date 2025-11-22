.class public final Lnb/d;
.super Lnb/c;
.source "SourceFile"

# interfaces
.implements Lnb/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb/d$a;
    }
.end annotation


# instance fields
.field public final c:Lnb/k;

.field public final d:Ll9/j;


# direct methods
.method public constructor <init>(Lnb/k;)V
    .locals 0

    invoke-direct {p0}, Lnb/c;-><init>()V

    iput-object p1, p0, Lnb/d;->c:Lnb/k;

    new-instance p1, Lnb/d$b;

    invoke-direct {p1, p0}, Lnb/d$b;-><init>(Lnb/d;)V

    invoke-static {p1}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object p1

    iput-object p1, p0, Lnb/d;->d:Ll9/j;

    return-void
.end method

.method public static E(Lma/z;)Lma/a0;
    .locals 6

    instance-of v0, p0, Lma/e;

    sget-object v1, Lma/a0;->d:Lma/a0;

    sget-object v2, Lma/a0;->a:Lma/a0;

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    check-cast p0, Lma/e;

    invoke-interface {p0}, Lma/e;->h()I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p0}, Lma/k;->b()Lma/j;

    move-result-object v0

    instance-of v4, v0, Lma/e;

    if-eqz v4, :cond_2

    check-cast v0, Lma/e;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-object v2

    :cond_3
    instance-of v4, p0, Lma/b;

    if-nez v4, :cond_4

    return-object v2

    :cond_4
    check-cast p0, Lma/b;

    invoke-interface {p0}, Lma/b;->e()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "this.overriddenDescriptors"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    sget-object v5, Lma/a0;->c:Lma/a0;

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lma/e;->j()Lma/a0;

    move-result-object v4

    if-eq v4, v2, :cond_5

    return-object v5

    :cond_5
    invoke-interface {v0}, Lma/e;->h()I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-interface {p0}, Lma/z;->getVisibility()Lma/q;

    move-result-object v0

    sget-object v3, Lma/p;->a:Lma/p$d;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p0}, Lma/z;->j()Lma/a0;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v5

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method public static c0(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static n0(Lcc/e0;)Z
    .locals 3

    invoke-static {p0}, Lja/f;->h(Lcc/e0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcc/e0;->K0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/i1;

    invoke-interface {v0}, Lcc/i1;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static final w(Lnb/d;Lma/l0;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lnb/d;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "property.typeParameters"

    .line 7
    .line 8
    if-nez v0, :cond_8

    .line 9
    .line 10
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 11
    .line 12
    iget-object v3, v0, Lnb/k;->g:Lnb/l;

    .line 13
    .line 14
    sget-object v4, Lnb/k;->W:[Lda/m;

    .line 15
    .line 16
    const/4 v5, 0x5

    .line 17
    aget-object v5, v4, v5

    .line 18
    .line 19
    invoke-virtual {v3, v5}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v3, :cond_7

    .line 31
    .line 32
    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v6, Lnb/i;->g:Lnb/i;

    .line 37
    .line 38
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0, p2, p1, v3}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lma/l0;->n0()Lma/s;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    sget-object v6, Lna/e;->b:Lna/e;

    .line 56
    .line 57
    invoke-virtual {p0, p2, v3, v6}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-interface {p1}, Lma/l0;->j0()Lma/s;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    sget-object v6, Lna/e;->k:Lna/e;

    .line 67
    .line 68
    invoke-virtual {p0, p2, v3, v6}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, v0, Lnb/k;->G:Lnb/l;

    .line 72
    .line 73
    const/16 v3, 0x1f

    .line 74
    .line 75
    aget-object v3, v4, v3

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lnb/q;

    .line 82
    .line 83
    sget-object v3, Lnb/q;->b:Lnb/q;

    .line 84
    .line 85
    if-ne v0, v3, :cond_4

    .line 86
    .line 87
    invoke-interface {p1}, Lma/l0;->l()Lpa/m0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    sget-object v3, Lna/e;->e:Lna/e;

    .line 94
    .line 95
    invoke-virtual {p0, p2, v0, v3}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-interface {p1}, Lma/l0;->f()Lma/n0;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    sget-object v3, Lna/e;->f:Lna/e;

    .line 105
    .line 106
    invoke-virtual {p0, p2, v0, v3}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Lma/a;->g()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v3, "setter.valueParameters"

    .line 114
    .line 115
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lma/a1;

    .line 123
    .line 124
    const-string v3, "it"

    .line 125
    .line 126
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget-object v3, Lna/e;->j:Lna/e;

    .line 130
    .line 131
    invoke-virtual {p0, p2, v0, v3}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_0
    invoke-interface {p1}, Lma/a;->p0()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v3, "property.contextReceiverParameters"

    .line 139
    .line 140
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p2, v0}, Lnb/d;->J(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p1}, Lma/z;->getVisibility()Lma/q;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v3, "property.visibility"

    .line 151
    .line 152
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0, p2}, Lnb/d;->l0(Lma/q;Ljava/lang/StringBuilder;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v3, Lnb/i;->p:Lnb/i;

    .line 163
    .line 164
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-interface {p1}, Lma/b1;->v()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    const/4 v0, 0x1

    .line 177
    goto :goto_1

    .line 178
    :cond_5
    const/4 v0, 0x0

    .line 179
    :goto_1
    const-string v3, "const"

    .line 180
    .line 181
    invoke-virtual {p0, p2, v0, v3}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1, p2}, Lnb/d;->Q(Lma/z;Ljava/lang/StringBuilder;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1, p2}, Lnb/d;->S(Lma/b;Ljava/lang/StringBuilder;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Lnb/d;->X(Lma/b;Ljava/lang/StringBuilder;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    sget-object v3, Lnb/i;->q:Lnb/i;

    .line 198
    .line 199
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_6

    .line 204
    .line 205
    invoke-interface {p1}, Lma/b1;->r0()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_6

    .line 210
    .line 211
    const/4 v0, 0x1

    .line 212
    goto :goto_2

    .line 213
    :cond_6
    const/4 v0, 0x0

    .line 214
    :goto_2
    const-string v3, "lateinit"

    .line 215
    .line 216
    invoke-virtual {p0, p2, v0, v3}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1, p2}, Lnb/d;->P(Lma/b;Ljava/lang/StringBuilder;)V

    .line 220
    .line 221
    .line 222
    :cond_7
    invoke-virtual {p0, p1, p2, v5}, Lnb/d;->i0(Lma/b1;Ljava/lang/StringBuilder;Z)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p1}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0, p2, v1}, Lnb/d;->h0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p2, p1}, Lnb/d;->a0(Ljava/lang/StringBuilder;Lma/a;)V

    .line 236
    .line 237
    .line 238
    :cond_8
    invoke-virtual {p0, p1, p2, v1}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 239
    .line 240
    .line 241
    const-string v0, ": "

    .line 242
    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const-string v1, "property.type"

    .line 251
    .line 252
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v0}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p2, p1}, Lnb/d;->b0(Ljava/lang/StringBuilder;Lma/a;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, p1, p2}, Lnb/d;->N(Lma/b1;Ljava/lang/StringBuilder;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Lma/a;->getTypeParameters()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p2, p1}, Lnb/d;->m0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->f:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final B()Lnb/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->C:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x1b

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lnb/r;

    .line 16
    .line 17
    return-object v0
.end method

.method public final C()Lnb/c$l;
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->B:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x1a

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lnb/c$l;

    .line 16
    .line 17
    return-object v0
.end method

.method public final D()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->j:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public final F(Lma/j;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "declarationDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lnb/d$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lnb/d$a;-><init>(Lnb/d;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1, v0}, Lma/j;->o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lnb/d;->c:Lnb/k;

    .line 20
    .line 21
    iget-object v2, v1, Lnb/k;->c:Lnb/l;

    .line 22
    .line 23
    sget-object v3, Lnb/k;->W:[Lda/m;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aget-object v5, v3, v4

    .line 27
    .line 28
    invoke-virtual {v2, v5}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    instance-of v2, p1, Lma/e0;

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    instance-of v2, p1, Lma/i0;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    invoke-interface {p1}, Lma/j;->b()Lma/j;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    instance-of v5, v2, Lma/b0;

    .line 56
    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    const-string v5, " "

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lnb/d;->B()Lnb/r;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    if-ne v6, v4, :cond_1

    .line 75
    .line 76
    const-string v4, "<i>defined in</i>"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance p1, Lj7/p;

    .line 80
    .line 81
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_2
    const-string v4, "defined in"

    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lob/i;->g(Lma/j;)Llb/d;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "getFqName(containingDeclaration)"

    .line 98
    .line 99
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Llb/d;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    const-string v4, "root package"

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p0, v4}, Lnb/d;->s(Llb/d;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    aget-object v3, v3, v4

    .line 120
    .line 121
    iget-object v1, v1, Lnb/k;->d:Lnb/l;

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    instance-of v1, v2, Lma/e0;

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    instance-of v1, p1, Lma/m;

    .line 140
    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    check-cast p1, Lma/m;

    .line 144
    .line 145
    invoke-interface {p1}, Lma/m;->getSource()Lma/r0;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-interface {p1}, Lma/r0;->a()V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 157
    .line 158
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object p1
.end method

.method public final G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lnb/i;->g:Lnb/i;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    instance-of v0, p2, Lcc/e0;

    .line 15
    .line 16
    iget-object v1, p0, Lnb/d;->c:Lnb/k;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lnb/d;->l()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, v1, Lnb/k;->J:Lnb/l;

    .line 26
    .line 27
    sget-object v2, Lnb/k;->W:[Lda/m;

    .line 28
    .line 29
    const/16 v3, 0x22

    .line 30
    .line 31
    aget-object v2, v2, v3

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Set;

    .line 38
    .line 39
    :goto_0
    iget-object v2, v1, Lnb/k;->L:Lnb/l;

    .line 40
    .line 41
    sget-object v3, Lnb/k;->W:[Lda/m;

    .line 42
    .line 43
    const/16 v4, 0x24

    .line 44
    .line 45
    aget-object v3, v3, v4

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lx9/l;

    .line 52
    .line 53
    invoke-interface {p2}, Lna/a;->getAnnotations()Lna/h;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lna/c;

    .line 72
    .line 73
    invoke-interface {v3}, Lna/c;->d()Llb/c;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v0, v4}, Lm9/t;->V0(Ljava/util/Set;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    invoke-interface {v3}, Lna/c;->d()Llb/c;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    sget-object v5, Lja/o$a;->r:Llb/c;

    .line 88
    .line 89
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    invoke-interface {v2, v3}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    :cond_3
    invoke-virtual {p0, v3, p3}, Lnb/d;->p(Lna/c;Lna/e;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    sget-object v3, Lnb/k;->W:[Lda/m;

    .line 117
    .line 118
    const/16 v4, 0x21

    .line 119
    .line 120
    aget-object v3, v3, v4

    .line 121
    .line 122
    iget-object v4, v1, Lnb/k;->I:Lnb/l;

    .line 123
    .line 124
    invoke-virtual {v4, v3}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    const/16 v3, 0xa

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    const-string v3, " "

    .line 143
    .line 144
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    return-void
.end method

.method public final H(Lma/h;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-interface {p1}, Lma/h;->s()Ljava/util/List;

    move-result-object v0

    const-string v1, "classifier.declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lma/g;->i()Lcc/c1;

    move-result-object v1

    invoke-interface {v1}, Lcc/c1;->getParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "classifier.typeConstructor.parameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnb/d;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lma/h;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string p1, " /*captured type parameters: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnb/d;->g0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p1, "*/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final I(Lqb/g;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqb/g<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lqb/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lqb/b;

    .line 6
    .line 7
    iget-object p1, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Ljava/lang/Iterable;

    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    const-string v2, "{"

    .line 15
    .line 16
    const-string v3, "}"

    .line 17
    .line 18
    new-instance v4, Lnb/d$c;

    .line 19
    .line 20
    invoke-direct {v4, p0}, Lnb/d$c;-><init>(Lnb/d;)V

    .line 21
    .line 22
    .line 23
    const/16 v5, 0x18

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    instance-of v0, p1, Lqb/a;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p1, Lqb/a;

    .line 36
    .line 37
    iget-object p1, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lna/c;

    .line 40
    .line 41
    invoke-static {p0, p1}, Lnb/c;->q(Lnb/c;Lna/c;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "@"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lmc/n;->U(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    instance-of v0, p1, Lqb/s;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    check-cast p1, Lqb/s;

    .line 57
    .line 58
    iget-object p1, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lqb/s$a;

    .line 61
    .line 62
    instance-of v0, p1, Lqb/s$a$a;

    .line 63
    .line 64
    const-string v1, "::class"

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    check-cast p1, Lqb/s$a$a;

    .line 74
    .line 75
    iget-object p1, p1, Lqb/s$a$a;->a:Lcc/e0;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    instance-of v0, p1, Lqb/s$a$b;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    check-cast p1, Lqb/s$a$b;

    .line 93
    .line 94
    iget-object v0, p1, Lqb/s$a$b;->a:Lqb/f;

    .line 95
    .line 96
    iget-object v0, v0, Lqb/f;->a:Llb/b;

    .line 97
    .line 98
    invoke-virtual {v0}, Llb/b;->b()Llb/c;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Llb/c;->b()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object p1, p1, Lqb/s$a$b;->a:Lqb/f;

    .line 107
    .line 108
    iget p1, p1, Lqb/f;->b:I

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    :goto_0
    if-ge v2, p1, :cond_3

    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v4, "kotlin.Array<"

    .line 116
    .line 117
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 v0, 0x3e

    .line 124
    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    new-instance p1, Lj7/p;

    .line 141
    .line 142
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_5
    invoke-virtual {p1}, Lqb/g;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_1
    return-object p1
.end method

.method public final J(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "context("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lma/o0;

    sget-object v4, Lna/e;->g:Lna/e;

    invoke-virtual {p0, p1, v3, v4}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    invoke-interface {v3}, Lma/z0;->getType()Lcc/e0;

    move-result-object v3

    const-string v4, "contextReceiver.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnb/d;->M(Lcc/e0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lb8/f;->M(Ljava/util/List;)I

    move-result v3

    if-ne v1, v3, :cond_0

    const-string v1, ") "

    goto :goto_1

    :cond_0
    const-string v1, ", "

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final K(Ljava/lang/StringBuilder;Lcc/m0;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 3
    .line 4
    .line 5
    instance-of v1, p2, Lcc/q;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p2

    .line 10
    check-cast v1, Lcc/q;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v1, Lcc/q;->b:Lcc/m0;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v1, v0

    .line 20
    :goto_1
    invoke-static {p2}, Lc5/v;->y(Lcc/e0;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_7

    .line 26
    .line 27
    instance-of v0, p2, Lec/f;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    move-object v1, p2

    .line 32
    check-cast v1, Lec/f;

    .line 33
    .line 34
    iget-object v1, v1, Lec/f;->d:Lec/h;

    .line 35
    .line 36
    iget-boolean v1, v1, Lec/h;->b:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    :goto_2
    iget-object v2, p0, Lnb/d;->c:Lnb/k;

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    iget-object v1, v2, Lnb/k;->T:Lnb/l;

    .line 48
    .line 49
    sget-object v4, Lnb/k;->W:[Lda/m;

    .line 50
    .line 51
    const/16 v5, 0x2d

    .line 52
    .line 53
    aget-object v4, v4, v5

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    sget-object v1, Lec/i;->a:Lec/i;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    move-object v0, p2

    .line 72
    check-cast v0, Lec/f;

    .line 73
    .line 74
    iget-object v0, v0, Lec/f;->d:Lec/h;

    .line 75
    .line 76
    iget-boolean v0, v0, Lec/h;->b:Z

    .line 77
    .line 78
    :cond_3
    invoke-virtual {p2}, Lcc/e0;->M0()Lcc/c1;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    check-cast v0, Lec/g;

    .line 85
    .line 86
    iget-object v0, v0, Lec/g;->b:[Ljava/lang/String;

    .line 87
    .line 88
    aget-object v0, v0, v3

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lnb/d;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_5

    .line 95
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 96
    .line 97
    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_5
    if-eqz v0, :cond_6

    .line 104
    .line 105
    iget-object v0, v2, Lnb/k;->V:Lnb/l;

    .line 106
    .line 107
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 108
    .line 109
    const/16 v2, 0x2f

    .line 110
    .line 111
    aget-object v1, v1, v2

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    move-object v0, p2

    .line 126
    check-cast v0, Lec/f;

    .line 127
    .line 128
    iget-object v0, v0, Lec/f;->h:Ljava/lang/String;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    invoke-virtual {p2}, Lcc/e0;->M0()Lcc/c1;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Lcc/e0;->K0()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lnb/d;->d0(Ljava/util/List;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    instance-of v2, p2, Lcc/u0;

    .line 152
    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    move-object v0, p2

    .line 156
    check-cast v0, Lcc/u0;

    .line 157
    .line 158
    iget-object v0, v0, Lcc/d;->b:Ldc/n;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    instance-of v2, v1, Lcc/u0;

    .line 162
    .line 163
    if-eqz v2, :cond_9

    .line 164
    .line 165
    check-cast v1, Lcc/u0;

    .line 166
    .line 167
    iget-object v0, v1, Lcc/d;->b:Ldc/n;

    .line 168
    .line 169
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_9
    invoke-virtual {p2}, Lcc/e0;->M0()Lcc/c1;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p2}, Lcc/e0;->M0()Lcc/c1;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v2}, Lcc/c1;->n()Lma/g;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    instance-of v4, v2, Lma/h;

    .line 190
    .line 191
    if-eqz v4, :cond_a

    .line 192
    .line 193
    move-object v0, v2

    .line 194
    check-cast v0, Lma/h;

    .line 195
    .line 196
    :cond_a
    invoke-static {p2, v0, v3}, Lma/x0;->a(Lcc/m0;Lma/h;I)Lp4/m9;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-nez v0, :cond_b

    .line 201
    .line 202
    invoke-virtual {p0, v1}, Lnb/d;->e0(Lcc/c1;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Lcc/e0;->K0()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lnb/d;->d0(Ljava/util/List;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_b
    invoke-virtual {p0, p1, v0}, Lnb/d;->Z(Ljava/lang/StringBuilder;Lp4/m9;)V

    .line 222
    .line 223
    .line 224
    :goto_6
    invoke-virtual {p2}, Lcc/e0;->N0()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_c

    .line 229
    .line 230
    const-string v0, "?"

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    :cond_c
    instance-of p2, p2, Lcc/q;

    .line 236
    .line 237
    if-eqz p2, :cond_d

    .line 238
    .line 239
    const-string p2, " & Any"

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    :cond_d
    return-void
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnb/d;->B()Lnb/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "<font color=red><b>"

    .line 15
    .line 16
    const-string v1, "</b></font>"

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lj7/p;

    .line 24
    .line 25
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final M(Lcc/e0;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lnb/d;->n0(Lcc/e0;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcc/q1;->g(Lcc/e0;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final N(Lma/b1;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->u:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x13

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lma/b1;->S()Lqb/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string v0, " = "

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lnb/d;->I(Lqb/g;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final O(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnb/d;->B()Lnb/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 15
    .line 16
    iget-object v0, v0, Lnb/k;->U:Lnb/l;

    .line 17
    .line 18
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 19
    .line 20
    const/16 v2, 0x2e

    .line 21
    .line 22
    aget-object v1, v1, v2

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "<b>"

    .line 38
    .line 39
    const-string v1, "</b>"

    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Lj7/p;

    .line 47
    .line 48
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_0
    return-object p1
.end method

.method public final P(Lma/b;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lnb/i;->j:Lnb/i;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnb/d;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lma/b;->k0()Lma/b$a;

    move-result-object v0

    sget-object v1, Lma/b$a;->a:Lma/b$a;

    if-eq v0, v1, :cond_1

    const-string v0, "/*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lma/b;->k0()Lma/b$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La6/a;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*/ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final Q(Lma/z;Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-interface {p1}, Lma/z;->isExternal()Z

    move-result v0

    const-string v1, "external"

    invoke-virtual {p0, p2, v0, v1}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lnb/i;->m:Lnb/i;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lma/z;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "expect"

    invoke-virtual {p0, p2, v0, v3}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lnb/i;->n:Lnb/i;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lma/z;->D0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string p1, "actual"

    invoke-virtual {p0, p2, v1, p1}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final R(Lma/a0;Ljava/lang/StringBuilder;Lma/a0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->p:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0xe

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    sget-object v0, Lnb/i;->e:Lnb/i;

    .line 31
    .line 32
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, La6/a;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p2, p3, p1}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final S(Lma/b;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lob/i;->t(Lma/j;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lma/z;->j()Lma/a0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lma/a0;->a:Lma/a0;

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 16
    .line 17
    iget-object v0, v0, Lnb/k;->A:Lnb/l;

    .line 18
    .line 19
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 20
    .line 21
    const/16 v2, 0x19

    .line 22
    .line 23
    aget-object v1, v1, v2

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lnb/o;

    .line 30
    .line 31
    sget-object v1, Lnb/o;->a:Lnb/o;

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Lma/z;->j()Lma/a0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lma/a0;->c:Lma/a0;

    .line 40
    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lma/b;->e()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    xor-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-interface {p1}, Lma/z;->j()Lma/a0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "callable.modality"

    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lnb/d;->E(Lma/z;)Lma/a0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, v0, p2, p1}, Lnb/d;->R(Lma/a0;Ljava/lang/StringBuilder;Lma/a0;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final U(Lma/j;Ljava/lang/StringBuilder;Z)V
    .locals 1

    invoke-interface {p1}, Lma/j;->getName()Llb/f;

    move-result-object p1

    const-string v0, "descriptor.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lnb/d;->t(Llb/f;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final V(Ljava/lang/StringBuilder;Lcc/e0;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcc/e0;->P0()Lcc/s1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcc/a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcc/a;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object p2, p0, Lnb/d;->c:Lnb/k;

    .line 16
    .line 17
    iget-object v1, p2, Lnb/k;->Q:Lnb/l;

    .line 18
    .line 19
    sget-object v2, Lnb/k;->W:[Lda/m;

    .line 20
    .line 21
    const/16 v3, 0x29

    .line 22
    .line 23
    aget-object v3, v2, v3

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v3, v0, Lcc/a;->b:Lcc/m0;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1, v3}, Lnb/d;->W(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, v0, Lcc/a;->c:Lcc/m0;

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lnb/d;->W(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 46
    .line 47
    .line 48
    const/16 v0, 0x28

    .line 49
    .line 50
    aget-object v0, v2, v0

    .line 51
    .line 52
    iget-object p2, p2, Lnb/k;->P:Lnb/l;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lnb/d;->B()Lnb/r;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    sget-object v0, Lnb/r;->b:Lnb/r$a;

    .line 71
    .line 72
    if-ne p2, v0, :cond_2

    .line 73
    .line 74
    const-string p2, "<font color=\"808080\"><i>"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_2
    const-string p2, " /* = "

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, v3}, Lnb/d;->W(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 85
    .line 86
    .line 87
    const-string p2, " */"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lnb/d;->B()Lnb/r;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-ne p2, v0, :cond_3

    .line 97
    .line 98
    const-string p2, "</i></font>"

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    return-void

    .line 104
    :cond_4
    invoke-virtual {p0, p1, p2}, Lnb/d;->W(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final W(Ljava/lang/StringBuilder;Lcc/e0;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lcc/u1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lnb/d;->m()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move-object v3, v2

    .line 18
    check-cast v3, Lcc/u1;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcc/u1;->R0()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v2, "<Not computed yet>"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcc/e0;->P0()Lcc/s1;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    instance-of v3, v2, Lcc/y;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v2, Lcc/y;

    .line 41
    .line 42
    invoke-virtual {v2, v0, v0}, Lcc/y;->U0(Lnb/c;Lnb/j;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto/16 :goto_15

    .line 50
    .line 51
    :cond_1
    instance-of v3, v2, Lcc/m0;

    .line 52
    .line 53
    if-eqz v3, :cond_26

    .line 54
    .line 55
    check-cast v2, Lcc/m0;

    .line 56
    .line 57
    sget-object v3, Lcc/q1;->b:Lec/f;

    .line 58
    .line 59
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const-string v4, "???"

    .line 64
    .line 65
    if-nez v3, :cond_25

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    const/4 v5, 0x0

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2}, Lcc/e0;->M0()Lcc/c1;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    sget-object v7, Lcc/q1;->a:Lec/f;

    .line 76
    .line 77
    iget-object v7, v7, Lec/f;->b:Lcc/c1;

    .line 78
    .line 79
    if-ne v6, v7, :cond_2

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 v6, 0x0

    .line 84
    :goto_0
    if-eqz v6, :cond_3

    .line 85
    .line 86
    goto/16 :goto_14

    .line 87
    .line 88
    :cond_3
    if-nez v2, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {v2}, Lcc/e0;->M0()Lcc/c1;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    instance-of v7, v6, Lec/g;

    .line 96
    .line 97
    if-eqz v7, :cond_5

    .line 98
    .line 99
    check-cast v6, Lec/g;

    .line 100
    .line 101
    iget-object v6, v6, Lec/g;->a:Lec/h;

    .line 102
    .line 103
    sget-object v7, Lec/h;->k:Lec/h;

    .line 104
    .line 105
    if-ne v6, v7, :cond_5

    .line 106
    .line 107
    const/4 v6, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 110
    :goto_2
    iget-object v7, v0, Lnb/d;->c:Lnb/k;

    .line 111
    .line 112
    if-eqz v6, :cond_6

    .line 113
    .line 114
    iget-object v3, v7, Lnb/k;->t:Lnb/l;

    .line 115
    .line 116
    sget-object v6, Lnb/k;->W:[Lda/m;

    .line 117
    .line 118
    const/16 v7, 0x12

    .line 119
    .line 120
    aget-object v6, v6, v7

    .line 121
    .line 122
    invoke-virtual {v3, v6}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_25

    .line 133
    .line 134
    invoke-virtual {v2}, Lcc/e0;->M0()Lcc/c1;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor"

    .line 139
    .line 140
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    check-cast v2, Lec/g;

    .line 144
    .line 145
    iget-object v2, v2, Lec/g;->b:[Ljava/lang/String;

    .line 146
    .line 147
    aget-object v2, v2, v5

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Lnb/d;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_15

    .line 157
    .line 158
    :cond_6
    invoke-static {v2}, Lc5/v;->y(Lcc/e0;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    goto/16 :goto_13

    .line 165
    .line 166
    :cond_7
    invoke-static {v2}, Lnb/d;->n0(Lcc/e0;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_24

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    iget-object v8, v0, Lnb/d;->d:Ll9/j;

    .line 177
    .line 178
    invoke-virtual {v8}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    check-cast v8, Lnb/d;

    .line 183
    .line 184
    const/4 v9, 0x0

    .line 185
    invoke-virtual {v8, v1, v2, v9}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eq v8, v6, :cond_8

    .line 193
    .line 194
    const/4 v8, 0x1

    .line 195
    goto :goto_3

    .line 196
    :cond_8
    const/4 v8, 0x0

    .line 197
    :goto_3
    invoke-static {v2}, Lja/f;->f(Lcc/e0;)Lcc/e0;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v2}, Lja/f;->d(Lcc/e0;)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    move-object v12, v11

    .line 206
    check-cast v12, Ljava/util/Collection;

    .line 207
    .line 208
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    xor-int/2addr v12, v3

    .line 213
    const-string v13, ", "

    .line 214
    .line 215
    const-string v14, ") "

    .line 216
    .line 217
    if-eqz v12, :cond_a

    .line 218
    .line 219
    const-string v12, "context("

    .line 220
    .line 221
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-static {v11}, Lb8/f;->M(Ljava/util/List;)I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    invoke-interface {v11, v5, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v15

    .line 240
    if-eqz v15, :cond_9

    .line 241
    .line 242
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v15

    .line 246
    check-cast v15, Lcc/e0;

    .line 247
    .line 248
    invoke-virtual {v0, v1, v15}, Lnb/d;->V(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_9
    invoke-static {v11}, Lm9/t;->i1(Ljava/util/List;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    check-cast v11, Lcc/e0;

    .line 260
    .line 261
    invoke-virtual {v0, v1, v11}, Lnb/d;->V(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    :cond_a
    invoke-static {v2}, Lja/f;->i(Lcc/e0;)Z

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    invoke-virtual {v2}, Lcc/e0;->N0()Z

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-nez v12, :cond_c

    .line 276
    .line 277
    if-eqz v8, :cond_b

    .line 278
    .line 279
    if-eqz v10, :cond_b

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_b
    const/4 v15, 0x0

    .line 283
    goto :goto_6

    .line 284
    :cond_c
    :goto_5
    const/4 v15, 0x1

    .line 285
    :goto_6
    const-string v9, "("

    .line 286
    .line 287
    if-eqz v15, :cond_11

    .line 288
    .line 289
    if-eqz v11, :cond_d

    .line 290
    .line 291
    const/16 v8, 0x28

    .line 292
    .line 293
    invoke-virtual {v1, v6, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_d
    if-eqz v8, :cond_10

    .line 298
    .line 299
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-nez v6, :cond_e

    .line 304
    .line 305
    const/4 v6, 0x1

    .line 306
    goto :goto_7

    .line 307
    :cond_e
    const/4 v6, 0x0

    .line 308
    :goto_7
    if-nez v6, :cond_f

    .line 309
    .line 310
    invoke-static/range {p1 .. p1}, Lmc/n;->J(Ljava/lang/CharSequence;)I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    invoke-static {v6}, La6/a;->t(C)Z

    .line 319
    .line 320
    .line 321
    invoke-static/range {p1 .. p1}, Lmc/n;->J(Ljava/lang/CharSequence;)I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    sub-int/2addr v6, v3

    .line 326
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    const/16 v8, 0x29

    .line 331
    .line 332
    if-eq v6, v8, :cond_10

    .line 333
    .line 334
    invoke-static/range {p1 .. p1}, Lmc/n;->J(Ljava/lang/CharSequence;)I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    const-string v8, "()"

    .line 339
    .line 340
    invoke-virtual {v1, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_f
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 345
    .line 346
    const-string v2, "Char sequence is empty."

    .line 347
    .line 348
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v1

    .line 352
    :cond_10
    :goto_8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    :cond_11
    :goto_9
    const-string v6, "suspend"

    .line 356
    .line 357
    invoke-virtual {v0, v1, v11, v6}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const-string v6, ")"

    .line 361
    .line 362
    if-eqz v10, :cond_19

    .line 363
    .line 364
    invoke-static {v10}, Lnb/d;->n0(Lcc/e0;)Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-eqz v8, :cond_12

    .line 369
    .line 370
    invoke-virtual {v10}, Lcc/e0;->N0()Z

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-eqz v8, :cond_15

    .line 375
    .line 376
    :cond_12
    invoke-static {v10}, Lja/f;->i(Lcc/e0;)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-nez v8, :cond_14

    .line 381
    .line 382
    invoke-virtual {v10}, Lcc/e0;->getAnnotations()Lna/h;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    invoke-interface {v8}, Lna/h;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    if-nez v8, :cond_13

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_13
    const/4 v8, 0x0

    .line 394
    goto :goto_b

    .line 395
    :cond_14
    :goto_a
    const/4 v8, 0x1

    .line 396
    :goto_b
    if-eqz v8, :cond_16

    .line 397
    .line 398
    :cond_15
    const/4 v8, 0x1

    .line 399
    goto :goto_c

    .line 400
    :cond_16
    const/4 v8, 0x0

    .line 401
    :goto_c
    if-eqz v8, :cond_17

    .line 402
    .line 403
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    :cond_17
    invoke-virtual {v0, v1, v10}, Lnb/d;->V(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 407
    .line 408
    .line 409
    if-eqz v8, :cond_18

    .line 410
    .line 411
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    :cond_18
    const-string v8, "."

    .line 415
    .line 416
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    :cond_19
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-static {v2}, Lja/f;->h(Lcc/e0;)Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_1b

    .line 427
    .line 428
    invoke-virtual {v2}, Lcc/e0;->getAnnotations()Lna/h;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    sget-object v9, Lja/o$a;->p:Llb/c;

    .line 433
    .line 434
    invoke-interface {v8, v9}, Lna/h;->n(Llb/c;)Lna/c;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    if-eqz v8, :cond_1a

    .line 439
    .line 440
    const/4 v8, 0x1

    .line 441
    goto :goto_d

    .line 442
    :cond_1a
    const/4 v8, 0x0

    .line 443
    :goto_d
    if-eqz v8, :cond_1b

    .line 444
    .line 445
    const/4 v8, 0x1

    .line 446
    goto :goto_e

    .line 447
    :cond_1b
    const/4 v8, 0x0

    .line 448
    :goto_e
    if-eqz v8, :cond_1c

    .line 449
    .line 450
    invoke-virtual {v2}, Lcc/e0;->K0()Ljava/util/List;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 455
    .line 456
    .line 457
    move-result v8

    .line 458
    if-gt v8, v3, :cond_1c

    .line 459
    .line 460
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    goto :goto_11

    .line 464
    :cond_1c
    invoke-static {v2}, Lja/f;->g(Lcc/e0;)Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    const/4 v8, 0x0

    .line 473
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 474
    .line 475
    .line 476
    move-result v9

    .line 477
    if-eqz v9, :cond_20

    .line 478
    .line 479
    add-int/lit8 v9, v8, 0x1

    .line 480
    .line 481
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    check-cast v10, Lcc/i1;

    .line 486
    .line 487
    if-lez v8, :cond_1d

    .line 488
    .line 489
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    :cond_1d
    iget-object v8, v7, Lnb/k;->S:Lnb/l;

    .line 493
    .line 494
    sget-object v11, Lnb/k;->W:[Lda/m;

    .line 495
    .line 496
    const/16 v16, 0x2b

    .line 497
    .line 498
    aget-object v11, v11, v16

    .line 499
    .line 500
    invoke-virtual {v8, v11}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    check-cast v8, Ljava/lang/Boolean;

    .line 505
    .line 506
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    if-eqz v8, :cond_1e

    .line 511
    .line 512
    invoke-interface {v10}, Lcc/i1;->getType()Lcc/e0;

    .line 513
    .line 514
    .line 515
    move-result-object v8

    .line 516
    const-string v11, "typeProjection.type"

    .line 517
    .line 518
    invoke-static {v8, v11}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v8}, Lja/f;->c(Lcc/e0;)Llb/f;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    goto :goto_10

    .line 526
    :cond_1e
    const/4 v8, 0x0

    .line 527
    :goto_10
    if-eqz v8, :cond_1f

    .line 528
    .line 529
    invoke-virtual {v0, v8, v5}, Lnb/d;->t(Llb/f;Z)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v8, ": "

    .line 537
    .line 538
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    :cond_1f
    invoke-virtual {v0, v10}, Lnb/d;->v(Lcc/i1;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    move v8, v9

    .line 549
    goto :goto_f

    .line 550
    :cond_20
    :goto_11
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {p0 .. p0}, Lnb/d;->B()Lnb/r;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    if-eqz v4, :cond_22

    .line 562
    .line 563
    if-ne v4, v3, :cond_21

    .line 564
    .line 565
    const-string v3, "&rarr;"

    .line 566
    .line 567
    goto :goto_12

    .line 568
    :cond_21
    new-instance v1, Lj7/p;

    .line 569
    .line 570
    invoke-direct {v1}, Lj7/p;-><init>()V

    .line 571
    .line 572
    .line 573
    throw v1

    .line 574
    :cond_22
    const-string v3, "->"

    .line 575
    .line 576
    invoke-virtual {v0, v3}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    :goto_12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v3, " "

    .line 584
    .line 585
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-static {v2}, Lja/f;->h(Lcc/e0;)Z

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2}, Lcc/e0;->K0()Ljava/util/List;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-static {v2}, Lm9/t;->i1(Ljava/util/List;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    check-cast v2, Lcc/i1;

    .line 600
    .line 601
    invoke-interface {v2}, Lcc/i1;->getType()Lcc/e0;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    const-string v3, "arguments.last().type"

    .line 606
    .line 607
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, v1, v2}, Lnb/d;->V(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 611
    .line 612
    .line 613
    if-eqz v15, :cond_23

    .line 614
    .line 615
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    :cond_23
    if-eqz v12, :cond_26

    .line 619
    .line 620
    const-string v2, "?"

    .line 621
    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    goto :goto_15

    .line 626
    :cond_24
    :goto_13
    invoke-virtual {v0, v1, v2}, Lnb/d;->K(Ljava/lang/StringBuilder;Lcc/m0;)V

    .line 627
    .line 628
    .line 629
    goto :goto_15

    .line 630
    :cond_25
    :goto_14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    :cond_26
    :goto_15
    return-void
.end method

.method public final X(Lma/b;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lnb/i;->f:Lnb/i;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Lma/b;->e()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    xor-int/2addr v0, v1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 27
    .line 28
    iget-object v0, v0, Lnb/k;->A:Lnb/l;

    .line 29
    .line 30
    sget-object v2, Lnb/k;->W:[Lda/m;

    .line 31
    .line 32
    const/16 v3, 0x19

    .line 33
    .line 34
    aget-object v2, v2, v3

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lnb/o;

    .line 41
    .line 42
    sget-object v2, Lnb/o;->b:Lnb/o;

    .line 43
    .line 44
    if-eq v0, v2, :cond_1

    .line 45
    .line 46
    const-string v0, "override"

    .line 47
    .line 48
    invoke-virtual {p0, p2, v1, v0}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lnb/d;->D()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const-string v0, "/*"

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lma/b;->e()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, "*/ "

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final Y(Llb/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p2}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Llb/c;->i()Llb/d;

    move-result-object p1

    const-string p2, "fqName.toUnsafe()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnb/d;->s(Llb/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final Z(Ljava/lang/StringBuilder;Lp4/m9;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lp4/m9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/m9;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lnb/d;->Z(Ljava/lang/StringBuilder;Lp4/m9;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x2e

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p2, Lp4/m9;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lma/h;

    .line 18
    .line 19
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "possiblyInnerType.classifierDescriptor.name"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Lnb/d;->t(Llb/f;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p2, Lp4/m9;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lma/h;

    .line 37
    .line 38
    invoke-interface {v0}, Lma/g;->i()Lcc/c1;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "possiblyInnerType.classi\u2026escriptor.typeConstructor"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lnb/d;->e0(Lcc/c1;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object p2, p2, Lp4/m9;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Lnb/d;->d0(Ljava/util/List;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->a()V

    return-void
.end method

.method public final a0(Ljava/lang/StringBuilder;Lma/a;)V
    .locals 1

    invoke-interface {p2}, Lma/a;->h0()Lma/o0;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lna/e;->g:Lna/e;

    invoke-virtual {p0, p1, p2, v0}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    invoke-interface {p2}, Lma/z0;->getType()Lcc/e0;

    move-result-object p2

    const-string v0, "receiver.type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnb/d;->M(Lcc/e0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->b()V

    return-void
.end method

.method public final b0(Ljava/lang/StringBuilder;Lma/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->E:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x1d

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-interface {p2}, Lma/a;->h0()Lma/o0;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    const-string v0, " on "

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Lma/z0;->getType()Lcc/e0;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v0, "receiver.type"

    .line 40
    .line 41
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->c()V

    return-void
.end method

.method public final d(Lnb/b;)V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0, p1}, Lnb/k;->d(Lnb/b;)V

    return-void
.end method

.method public final d0(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcc/i1;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "typeArguments"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "<"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-object v0, p1

    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    const-string v2, ", "

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    new-instance v5, Lnb/e;

    .line 37
    .line 38
    invoke-direct {v5, p0}, Lnb/e;-><init>(Lnb/d;)V

    .line 39
    .line 40
    .line 41
    const/16 v6, 0x3c

    .line 42
    .line 43
    move-object v1, v7

    .line 44
    invoke-static/range {v0 .. v6}, Lm9/t;->f1(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)V

    .line 45
    .line 46
    .line 47
    const-string p1, ">"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object p1
.end method

.method public final e(Lnb/p;)V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0, p1}, Lnb/k;->e(Lnb/p;)V

    return-void
.end method

.method public final e0(Lcc/c1;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "typeConstructor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcc/c1;->n()Lma/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lma/w0;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, v0, Lma/e;

    .line 18
    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    instance-of v2, v0, Lma/v0;

    .line 23
    .line 24
    :goto_1
    if-eqz v2, :cond_3

    .line 25
    .line 26
    const-string p1, "klass"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lec/i;->f(Lma/j;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Lma/g;->i()Lcc/c1;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p0}, Lnb/d;->y()Lnb/b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1, v0, p0}, Lnb/b;->a(Lma/g;Lnb/c;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    if-nez v0, :cond_5

    .line 56
    .line 57
    instance-of v0, p1, Lcc/c0;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    check-cast p1, Lcc/c0;

    .line 62
    .line 63
    sget-object v0, Lnb/d$d;->a:Lnb/d$d;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcc/c0;->d(Lx9/l;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_2
    return-object p1

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "Unexpected classifier: "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public final f(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lnb/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0, p1}, Lnb/k;->f(Ljava/util/Set;)V

    return-void
.end method

.method public final f0(Lma/w0;Ljava/lang/StringBuilder;Z)V
    .locals 8

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const-string v0, "<"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lnb/d;->D()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "/*"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lma/w0;->getIndex()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "*/ "

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {p1}, Lma/w0;->A()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v1, "reified"

    .line 40
    .line 41
    invoke-virtual {p0, p2, v0, v1}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lma/w0;->I()Lcc/t1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lcc/t1;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x1

    .line 56
    if-lez v1, :cond_2

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0, p2, v1, v0}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p2, p1, v0}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/16 v4, 0x8d

    .line 80
    .line 81
    const-string v5, " : "

    .line 82
    .line 83
    if-le v1, v3, :cond_3

    .line 84
    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    :cond_3
    if-ne v1, v3, :cond_7

    .line 88
    .line 89
    :cond_4
    invoke-interface {p1}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcc/e0;

    .line 102
    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-static {p1}, Lja/k;->x(Lcc/e0;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1}, Lcc/e0;->N0()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    :cond_5
    if-nez v2, :cond_c

    .line 119
    .line 120
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    invoke-static {v4}, Lja/k;->a(I)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_7
    if-eqz p3, :cond_c

    .line 136
    .line 137
    invoke-interface {p1}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const/4 v1, 0x1

    .line 146
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_c

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    check-cast v6, Lcc/e0;

    .line 157
    .line 158
    if-eqz v6, :cond_b

    .line 159
    .line 160
    invoke-static {v6}, Lja/k;->x(Lcc/e0;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_8

    .line 165
    .line 166
    invoke-virtual {v6}, Lcc/e0;->N0()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_8

    .line 171
    .line 172
    const/4 v7, 0x1

    .line 173
    goto :goto_2

    .line 174
    :cond_8
    const/4 v7, 0x0

    .line 175
    :goto_2
    if-eqz v7, :cond_9

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_9
    if-eqz v1, :cond_a

    .line 179
    .line 180
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_a
    const-string v1, " & "

    .line 185
    .line 186
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    :goto_3
    invoke-virtual {p0, v6}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const/4 v1, 0x0

    .line 197
    goto :goto_1

    .line 198
    :cond_b
    invoke-static {v4}, Lja/k;->a(I)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :cond_c
    :goto_4
    if-eqz p3, :cond_d

    .line 203
    .line 204
    const-string p1, ">"

    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :cond_d
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->g()Z

    move-result v0

    return v0
.end method

.method public final g0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Lma/w0;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma/w0;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnb/d;->f0(Lma/w0;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(Ljava/util/LinkedHashSet;)V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0, p1}, Lnb/k;->h(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public final h0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lma/w0;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->v:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    move-object v0, p1

    .line 25
    check-cast v0, Ljava/util/Collection;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    xor-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "<"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2, p1}, Lnb/d;->g0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    const-string p1, ">"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    const-string p1, " "

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->i()V

    return-void
.end method

.method public final i0(Lma/b1;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-nez p3, :cond_0

    instance-of p3, p1, Lma/a1;

    if-nez p3, :cond_2

    :cond_0
    invoke-interface {p1}, Lma/b1;->f0()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "var"

    goto :goto_0

    :cond_1
    const-string p1, "val"

    :goto_0
    invoke-virtual {p0, p1}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->j()V

    return-void
.end method

.method public final j0(Lma/a1;ZLjava/lang/StringBuilder;Z)V
    .locals 10

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const-string v0, "value-parameter"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, " "

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lnb/d;->D()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "/*"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lma/a1;->getIndex()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "*/ "

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p3, p1, v0}, Lnb/d;->G(Ljava/lang/StringBuilder;Lna/a;Lna/e;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lma/a1;->W()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v2, "crossinline"

    .line 49
    .line 50
    invoke-virtual {p0, p3, v1, v2}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lma/a1;->T()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const-string v2, "noinline"

    .line 58
    .line 59
    invoke-virtual {p0, p3, v1, v2}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lnb/d;->c:Lnb/k;

    .line 63
    .line 64
    iget-object v2, v1, Lnb/k;->r:Lnb/l;

    .line 65
    .line 66
    sget-object v3, Lnb/k;->W:[Lda/m;

    .line 67
    .line 68
    const/16 v4, 0x10

    .line 69
    .line 70
    aget-object v4, v3, v4

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x1

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-interface {p1}, Lma/a1;->b()Lma/a;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    instance-of v6, v2, Lma/d;

    .line 91
    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    move-object v0, v2

    .line 95
    check-cast v0, Lma/d;

    .line 96
    .line 97
    :cond_2
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-interface {v0}, Lma/i;->w()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ne v0, v5, :cond_3

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x0

    .line 108
    :goto_0
    if-eqz v0, :cond_4

    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    const/4 v0, 0x0

    .line 113
    :goto_1
    if-eqz v0, :cond_5

    .line 114
    .line 115
    const/16 v2, 0x11

    .line 116
    .line 117
    aget-object v2, v3, v2

    .line 118
    .line 119
    iget-object v6, v1, Lnb/k;->s:Lnb/l;

    .line 120
    .line 121
    invoke-virtual {v6, v2}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const-string v6, "actual"

    .line 132
    .line 133
    invoke-virtual {p0, p3, v2, v6}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v6, "variable.type"

    .line 141
    .line 142
    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p1}, Lma/a1;->g0()Lcc/e0;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    if-nez v6, :cond_6

    .line 150
    .line 151
    move-object v7, v2

    .line 152
    goto :goto_2

    .line 153
    :cond_6
    move-object v7, v6

    .line 154
    :goto_2
    if-eqz v6, :cond_7

    .line 155
    .line 156
    const/4 v8, 0x1

    .line 157
    goto :goto_3

    .line 158
    :cond_7
    const/4 v8, 0x0

    .line 159
    :goto_3
    const-string v9, "vararg"

    .line 160
    .line 161
    invoke-virtual {p0, p3, v8, v9}, Lnb/d;->T(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    if-nez v0, :cond_8

    .line 165
    .line 166
    if-eqz p4, :cond_9

    .line 167
    .line 168
    invoke-virtual {p0}, Lnb/d;->A()Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-nez v8, :cond_9

    .line 173
    .line 174
    :cond_8
    invoke-virtual {p0, p1, p3, v0}, Lnb/d;->i0(Lma/b1;Ljava/lang/StringBuilder;Z)V

    .line 175
    .line 176
    .line 177
    :cond_9
    if-eqz p2, :cond_a

    .line 178
    .line 179
    invoke-virtual {p0, p1, p3, p4}, Lnb/d;->U(Lma/j;Ljava/lang/StringBuilder;Z)V

    .line 180
    .line 181
    .line 182
    const-string p2, ": "

    .line 183
    .line 184
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_a
    invoke-virtual {p0, v7}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1, p3}, Lnb/d;->N(Lma/b1;Ljava/lang/StringBuilder;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lnb/d;->D()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_b

    .line 202
    .line 203
    if-eqz v6, :cond_b

    .line 204
    .line 205
    const-string p2, " /*"

    .line 206
    .line 207
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v2}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p2, "*/"

    .line 218
    .line 219
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    :cond_b
    iget-object p2, v1, Lnb/k;->y:Lnb/l;

    .line 223
    .line 224
    const/16 p4, 0x17

    .line 225
    .line 226
    aget-object v0, v3, p4

    .line 227
    .line 228
    invoke-virtual {p2, v0}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    check-cast p2, Lx9/l;

    .line 233
    .line 234
    if-eqz p2, :cond_d

    .line 235
    .line 236
    invoke-virtual {p0}, Lnb/d;->m()Z

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    if-eqz p2, :cond_c

    .line 241
    .line 242
    invoke-interface {p1}, Lma/a1;->t0()Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    goto :goto_4

    .line 247
    :cond_c
    invoke-static {p1}, Lsb/b;->a(Lma/a1;)Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    :goto_4
    if-eqz p2, :cond_d

    .line 252
    .line 253
    const/4 v4, 0x1

    .line 254
    :cond_d
    if-eqz v4, :cond_e

    .line 255
    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v0, " = "

    .line 259
    .line 260
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v1, Lnb/k;->y:Lnb/l;

    .line 264
    .line 265
    aget-object p4, v3, p4

    .line 266
    .line 267
    invoke-virtual {v0, p4}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p4

    .line 271
    check-cast p4, Lx9/l;

    .line 272
    .line 273
    invoke-static {p4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p4, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    :cond_e
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->k()V

    return-void
.end method

.method public final k0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lma/a1;",
            ">;Z",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->D:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lnb/p;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/4 p2, 0x2

    .line 28
    if-ne v0, p2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lj7/p;

    .line 32
    .line 33
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 41
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0}, Lnb/d;->C()Lnb/c$l;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, p3}, Lnb/c$l;->b(Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    add-int/lit8 v3, v0, 0x1

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lma/a1;

    .line 70
    .line 71
    invoke-virtual {p0}, Lnb/d;->C()Lnb/c$l;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v5, v4, p3}, Lnb/c$l;->c(Lma/a1;Ljava/lang/StringBuilder;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v4, v1, p3, v2}, Lnb/d;->j0(Lma/a1;ZLjava/lang/StringBuilder;Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lnb/d;->C()Lnb/c$l;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-interface {v5, v4, v0, p2, p3}, Lnb/c$l;->a(Lma/a1;IILjava/lang/StringBuilder;)V

    .line 86
    .line 87
    .line 88
    move v0, v3

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {p0}, Lnb/d;->C()Lnb/c$l;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1, p3}, Lnb/c$l;->d(Ljava/lang/StringBuilder;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->l()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final l0(Lma/q;Ljava/lang/StringBuilder;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnb/d;->z()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lnb/i;->d:Lnb/i;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 16
    .line 17
    iget-object v2, v0, Lnb/k;->n:Lnb/l;

    .line 18
    .line 19
    sget-object v3, Lnb/k;->W:[Lda/m;

    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    aget-object v4, v3, v4

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lma/q;->d()Lma/q;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_1
    const/16 v2, 0xd

    .line 42
    .line 43
    aget-object v2, v3, v2

    .line 44
    .line 45
    iget-object v0, v0, Lnb/k;->o:Lnb/l;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    sget-object v0, Lma/p;->k:Lma/p$h;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    return v1

    .line 68
    :cond_2
    invoke-virtual {p1}, Lma/q;->b()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " "

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    return p1
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->m()Z

    move-result v0

    return v0
.end method

.method public final m0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->v:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lma/w0;

    .line 45
    .line 46
    invoke-interface {v2}, Lma/w0;->getUpperBounds()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "typeParameter.upperBounds"

    .line 51
    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v3, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-static {v3}, Lm9/t;->W0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Iterable;

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcc/e0;

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Lma/j;->getName()Llb/f;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const-string v7, "typeParameter.name"

    .line 89
    .line 90
    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v6, v0}, Lnb/d;->t(Llb/f;Z)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v6, " : "

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v6, "it"

    .line 106
    .line 107
    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    xor-int/lit8 p2, p2, 0x1

    .line 130
    .line 131
    if-eqz p2, :cond_3

    .line 132
    .line 133
    const-string p2, " "

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, "where"

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lnb/d;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, ", "

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    const/4 v5, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    const/16 v7, 0x7c

    .line 156
    .line 157
    move-object v2, p1

    .line 158
    invoke-static/range {v1 .. v7}, Lm9/t;->f1(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)V

    .line 159
    .line 160
    .line 161
    :cond_3
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->n()V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    invoke-virtual {v0}, Lnb/k;->o()V

    return-void
.end method

.method public final p(Lna/c;Lna/e;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "annotation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x40

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p2, Lna/e;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 p2, 0x3a

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p1}, Lna/c;->getType()Lcc/e0;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p2}, Lnb/d;->u(Lcc/e0;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lnb/d;->c:Lnb/k;

    .line 52
    .line 53
    invoke-virtual {v1}, Lnb/k;->p()Lnb/a;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-boolean v2, v2, Lnb/a;->a:Z

    .line 58
    .line 59
    if-eqz v2, :cond_e

    .line 60
    .line 61
    invoke-interface {p1}, Lna/c;->a()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v3, Lnb/k;->W:[Lda/m;

    .line 66
    .line 67
    const/16 v4, 0x20

    .line 68
    .line 69
    aget-object v3, v3, v4

    .line 70
    .line 71
    iget-object v4, v1, Lnb/k;->H:Lnb/l;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v4, 0x0

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-static {p1}, Lsb/b;->d(Lna/c;)Lma/e;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move-object p1, v4

    .line 92
    :goto_0
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-interface {p1}, Lma/e;->M()Lma/d;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    invoke-interface {p1}, Lma/a;->g()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    check-cast p1, Ljava/lang/Iterable;

    .line 107
    .line 108
    new-instance v3, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_3

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object v5, v4

    .line 128
    check-cast v5, Lma/a1;

    .line 129
    .line 130
    invoke-interface {v5}, Lma/a1;->t0()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_2

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_4

    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Lma/a1;

    .line 164
    .line 165
    invoke-interface {v3}, Lma/j;->getName()Llb/f;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_4
    if-nez v4, :cond_5

    .line 174
    .line 175
    sget-object v4, Lm9/v;->a:Lm9/v;

    .line 176
    .line 177
    :cond_5
    move-object p1, v4

    .line 178
    check-cast p1, Ljava/lang/Iterable;

    .line 179
    .line 180
    new-instance v3, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    const/4 v6, 0x1

    .line 194
    if-eqz v5, :cond_7

    .line 195
    .line 196
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    move-object v7, v5

    .line 201
    check-cast v7, Llb/f;

    .line 202
    .line 203
    const-string v8, "it"

    .line 204
    .line 205
    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    xor-int/2addr v6, v7

    .line 213
    if-eqz v6, :cond_6

    .line 214
    .line 215
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_8

    .line 237
    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Llb/f;

    .line 243
    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Llb/f;->o()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v5, " = ..."

    .line 257
    .line 258
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_8
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_a

    .line 291
    .line 292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Ljava/util/Map$Entry;

    .line 297
    .line 298
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    check-cast v7, Llb/f;

    .line 303
    .line 304
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    check-cast v5, Lqb/g;

    .line 309
    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7}, Llb/f;->o()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v9, " = "

    .line 323
    .line 324
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-nez v7, :cond_9

    .line 332
    .line 333
    invoke-virtual {p0, v5}, Lnb/d;->I(Lqb/g;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    goto :goto_6

    .line 338
    :cond_9
    const-string v5, "..."

    .line 339
    .line 340
    :goto_6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_a
    invoke-static {v3, p1}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-gt v2, v6, :cond_b

    .line 360
    .line 361
    invoke-static {p1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    goto :goto_7

    .line 366
    :cond_b
    const/4 v2, 0x0

    .line 367
    new-array v2, v2, [Ljava/lang/Comparable;

    .line 368
    .line 369
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    move-object v2, p1

    .line 374
    check-cast v2, [Ljava/lang/Comparable;

    .line 375
    .line 376
    const-string v3, "<this>"

    .line 377
    .line 378
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    array-length v3, v2

    .line 382
    if-le v3, v6, :cond_c

    .line 383
    .line 384
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_c
    invoke-static {p1}, Lm9/i;->g0([Ljava/lang/Object;)Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    :goto_7
    invoke-virtual {v1}, Lnb/k;->p()Lnb/a;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iget-boolean v1, v1, Lnb/a;->b:Z

    .line 396
    .line 397
    if-nez v1, :cond_d

    .line 398
    .line 399
    move-object v1, p1

    .line 400
    check-cast v1, Ljava/util/Collection;

    .line 401
    .line 402
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    xor-int/2addr v1, v6

    .line 407
    if-eqz v1, :cond_e

    .line 408
    .line 409
    :cond_d
    move-object v1, p1

    .line 410
    check-cast v1, Ljava/lang/Iterable;

    .line 411
    .line 412
    const-string v3, ", "

    .line 413
    .line 414
    const-string v4, "("

    .line 415
    .line 416
    const-string v5, ")"

    .line 417
    .line 418
    const/4 v6, 0x0

    .line 419
    const/16 v7, 0x70

    .line 420
    .line 421
    move-object v2, v0

    .line 422
    invoke-static/range {v1 .. v7}, Lm9/t;->f1(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)V

    .line 423
    .line 424
    .line 425
    :cond_e
    invoke-virtual {p0}, Lnb/d;->D()Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-eqz p1, :cond_10

    .line 430
    .line 431
    invoke-static {p2}, Lc5/v;->y(Lcc/e0;)Z

    .line 432
    .line 433
    .line 434
    move-result p1

    .line 435
    if-nez p1, :cond_f

    .line 436
    .line 437
    invoke-virtual {p2}, Lcc/e0;->M0()Lcc/c1;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-interface {p1}, Lcc/c1;->n()Lma/g;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    instance-of p1, p1, Lma/d0$b;

    .line 446
    .line 447
    if-eqz p1, :cond_10

    .line 448
    .line 449
    :cond_f
    const-string p1, " /* annotation class not found */"

    .line 450
    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    const-string p2, "StringBuilder().apply(builderAction).toString()"

    .line 459
    .line 460
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    return-object p1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Lja/k;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "lowerRendered"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "upperRendered"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lb8/f;->q0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "("

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-static {p2, v1, p3}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const-string p2, ")!"

    .line 27
    .line 28
    invoke-static {v1, p1, p2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    const-string p2, "!"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lnb/d;->y()Lnb/b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v2, Lja/o$a;->B:Llb/c;

    .line 45
    .line 46
    invoke-virtual {p3, v2}, Lja/k;->j(Llb/c;)Lma/e;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v0, v2, p0}, Lnb/b;->a(Lma/g;Lnb/c;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v2, "Collection"

    .line 55
    .line 56
    invoke-static {v0, v2}, Lmc/n;->f0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "Mutable"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "(Mutable)"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {p1, v2, p2, v0, v3}, Lb8/f;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_2
    const-string v2, "MutableMap.MutableEntry"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "Map.Entry"

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v4, "(Mutable)Map.(Mutable)Entry"

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {p1, v2, p2, v3, v0}, Lb8/f;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lnb/d;->y()Lnb/b;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v2, "Array"

    .line 109
    .line 110
    invoke-virtual {p3, v2}, Lja/k;->k(Ljava/lang/String;)Lma/e;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    const-string v3, "builtIns.array"

    .line 115
    .line 116
    invoke-static {p3, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, p3, p0}, Lnb/b;->a(Lma/g;Lnb/c;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-static {p3, v2}, Lmc/n;->f0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-static {p3}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v2, "Array<"

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {p3}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string v3, "Array<out "

    .line 149
    .line 150
    invoke-virtual {p0, v3}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {p3}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    const-string v3, "Array<(out) "

    .line 166
    .line 167
    invoke-virtual {p0, v3}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    invoke-static {p1, v0, p2, v2, p3}, Lb8/f;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    if-eqz p3, :cond_4

    .line 183
    .line 184
    return-object p3

    .line 185
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p1, ".."

    .line 194
    .line 195
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const/16 p1, 0x29

    .line 202
    .line 203
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    return-object p1
.end method

.method public final s(Llb/d;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Llb/d;->f()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lb8/f;->f0(Ljava/util/List;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final t(Llb/f;Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lb8/f;->e0(Llb/f;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lnb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 10
    .line 11
    iget-object v0, v0, Lnb/k;->U:Lnb/l;

    .line 12
    .line 13
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 14
    .line 15
    const/16 v2, 0x2e

    .line 16
    .line 17
    aget-object v1, v1, v2

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lnb/d;->B()Lnb/r;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lnb/r;->b:Lnb/r$a;

    .line 36
    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    const-string p2, "<b>"

    .line 42
    .line 43
    const-string v0, "</b>"

    .line 44
    .line 45
    invoke-static {p2, p1, v0}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_0
    return-object p1
.end method

.method public final u(Lcc/e0;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lnb/d;->c:Lnb/k;

    .line 12
    .line 13
    iget-object v1, v1, Lnb/k;->x:Lnb/l;

    .line 14
    .line 15
    sget-object v2, Lnb/k;->W:[Lda/m;

    .line 16
    .line 17
    const/16 v3, 0x16

    .line 18
    .line 19
    aget-object v2, v2, v3

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lx9/l;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcc/e0;

    .line 32
    .line 33
    invoke-virtual {p0, v0, p1}, Lnb/d;->V(Ljava/lang/StringBuilder;Lcc/e0;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public final v(Lcc/i1;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "typeProjection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    move-object v1, p1

    .line 16
    check-cast v1, Ljava/lang/Iterable;

    .line 17
    .line 18
    const-string v3, ", "

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    new-instance v6, Lnb/e;

    .line 23
    .line 24
    invoke-direct {v6, p0}, Lnb/e;-><init>(Lnb/d;)V

    .line 25
    .line 26
    .line 27
    const/16 v7, 0x3c

    .line 28
    .line 29
    move-object v2, v0

    .line 30
    invoke-static/range {v1 .. v7}, Lm9/t;->f1(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public final x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnb/d;->B()Lnb/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnb/r;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final y()Lnb/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->b:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lnb/b;

    .line 15
    .line 16
    return-object v0
.end method

.method public final z()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnb/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnb/d;->c:Lnb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lnb/k;->e:Lnb/l;

    .line 4
    .line 5
    sget-object v1, Lnb/k;->W:[Lda/m;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lz9/a;->b(Lda/m;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Set;

    .line 15
    .line 16
    return-object v0
.end method
