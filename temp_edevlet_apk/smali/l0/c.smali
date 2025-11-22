.class public final Ll0/c;
.super Ll0/b;
.source "SourceFile"


# instance fields
.field public final A:Landroid/graphics/RectF;

.field public final B:Landroid/graphics/RectF;

.field public final C:Landroid/graphics/Paint;

.field public y:Lg0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ld0/l;Ll0/e;Ljava/util/List;Ld0/f;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/l;",
            "Ll0/e;",
            "Ljava/util/List<",
            "Ll0/e;",
            ">;",
            "Ld0/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ll0/b;-><init>(Ld0/l;Ll0/e;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll0/c;->z:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ll0/c;->A:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ll0/c;->B:Landroid/graphics/RectF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ll0/c;->C:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iget-object p2, p2, Ll0/e;->s:Lj0/b;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, Lj0/b;->c()Lg0/a;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Ll0/c;->y:Lg0/a;

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ll0/b;->e(Lg0/a;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Ll0/c;->y:Lg0/a;

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-object v0, p0, Ll0/c;->y:Lg0/a;

    .line 53
    .line 54
    :goto_0
    new-instance p2, Landroidx/collection/LongSparseArray;

    .line 55
    .line 56
    iget-object v1, p4, Ld0/f;->i:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-direct {p2, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x1

    .line 70
    sub-int/2addr v1, v2

    .line 71
    move-object v3, v0

    .line 72
    :goto_1
    const/4 v4, 0x0

    .line 73
    if-ltz v1, :cond_a

    .line 74
    .line 75
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ll0/e;

    .line 80
    .line 81
    iget v6, v5, Ll0/e;->e:I

    .line 82
    .line 83
    invoke-static {v6}, Lg/d;->c(I)I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    const/4 v7, 0x2

    .line 88
    if-eqz v6, :cond_6

    .line 89
    .line 90
    if-eq v6, v2, :cond_5

    .line 91
    .line 92
    if-eq v6, v7, :cond_4

    .line 93
    .line 94
    const/4 v8, 0x3

    .line 95
    if-eq v6, v8, :cond_3

    .line 96
    .line 97
    const/4 v8, 0x4

    .line 98
    if-eq v6, v8, :cond_2

    .line 99
    .line 100
    const/4 v8, 0x5

    .line 101
    if-eq v6, v8, :cond_1

    .line 102
    .line 103
    iget v6, v5, Ll0/e;->e:I

    .line 104
    .line 105
    invoke-static {v6}, Landroidx/browser/browseractions/b;->o(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const-string v8, "Unknown layer type "

    .line 110
    .line 111
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v6}, Lp0/c;->b(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move-object v6, v0

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    new-instance v6, Ll0/i;

    .line 121
    .line 122
    invoke-direct {v6, p1, v5}, Ll0/i;-><init>(Ld0/l;Ll0/e;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v6, Ll0/g;

    .line 127
    .line 128
    invoke-direct {v6, p1, v5}, Ll0/g;-><init>(Ld0/l;Ll0/e;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    new-instance v6, Ll0/f;

    .line 133
    .line 134
    invoke-direct {v6, p1, v5}, Ll0/f;-><init>(Ld0/l;Ll0/e;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    new-instance v6, Ll0/d;

    .line 139
    .line 140
    invoke-direct {v6, p1, v5}, Ll0/d;-><init>(Ld0/l;Ll0/e;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    new-instance v6, Ll0/h;

    .line 145
    .line 146
    invoke-direct {v6, p1, v5}, Ll0/h;-><init>(Ld0/l;Ll0/e;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    new-instance v6, Ll0/c;

    .line 151
    .line 152
    iget-object v8, p4, Ld0/f;->c:Ljava/util/Map;

    .line 153
    .line 154
    iget-object v9, v5, Ll0/e;->g:Ljava/lang/String;

    .line 155
    .line 156
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, Ljava/util/List;

    .line 161
    .line 162
    invoke-direct {v6, p1, v5, v8, p4}, Ll0/c;-><init>(Ld0/l;Ll0/e;Ljava/util/List;Ld0/f;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    if-nez v6, :cond_7

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    iget-object v8, v6, Ll0/b;->n:Ll0/e;

    .line 169
    .line 170
    iget-wide v8, v8, Ll0/e;->d:J

    .line 171
    .line 172
    invoke-virtual {p2, v8, v9, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    if-eqz v3, :cond_8

    .line 176
    .line 177
    iput-object v6, v3, Ll0/b;->q:Ll0/b;

    .line 178
    .line 179
    move-object v3, v0

    .line 180
    goto :goto_3

    .line 181
    :cond_8
    iget-object v8, p0, Ll0/c;->z:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget v4, v5, Ll0/e;->u:I

    .line 187
    .line 188
    invoke-static {v4}, Lg/d;->c(I)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eq v4, v2, :cond_9

    .line 193
    .line 194
    if-eq v4, v7, :cond_9

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_9
    move-object v3, v6

    .line 198
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_a
    :goto_4
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-ge v4, p1, :cond_d

    .line 207
    .line 208
    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 209
    .line 210
    .line 211
    move-result-wide p3

    .line 212
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Ll0/b;

    .line 217
    .line 218
    if-nez p1, :cond_b

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    iget-object p3, p1, Ll0/b;->n:Ll0/e;

    .line 222
    .line 223
    iget-wide p3, p3, Ll0/e;->f:J

    .line 224
    .line 225
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    check-cast p3, Ll0/b;

    .line 230
    .line 231
    if-eqz p3, :cond_c

    .line 232
    .line 233
    iput-object p3, p1, Ll0/b;->r:Ll0/b;

    .line 234
    .line 235
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_d
    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Ll0/b;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ll0/c;->z:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_0

    iget-object v1, p0, Ll0/c;->A:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/b;

    iget-object v3, p0, Ll0/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3, v0}, Ll0/b;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Ll0/b;->f(Lq0/c;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld0/q;->C:Ljava/lang/Float;

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Ll0/c;->y:Lg0/a;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lg0/a;->k(Lq0/c;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lg0/p;

    .line 20
    .line 21
    invoke-direct {v0, p1, p2}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ll0/c;->y:Lg0/a;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Ll0/c;->y:Lg0/a;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ll0/b;->e(Lg0/a;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll0/c;->B:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Ll0/b;->n:Ll0/e;

    .line 4
    .line 5
    iget v2, v1, Ll0/e;->o:I

    .line 6
    .line 7
    int-to-float v2, v2

    .line 8
    iget v1, v1, Ll0/e;->p:I

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ll0/b;->m:Ld0/l;

    .line 19
    .line 20
    iget-boolean v1, v1, Ld0/l;->s:Z

    .line 21
    .line 22
    iget-object v2, p0, Ll0/c;->z:Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v3, 0xff

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-le v1, v4, :cond_0

    .line 34
    .line 35
    if-eq p3, v3, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v5, p0, Ll0/c;->C:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    .line 46
    .line 47
    const/16 v6, 0x1f

    .line 48
    .line 49
    invoke-static {p1, v0, v5, v6}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    .line 55
    .line 56
    :goto_1
    if-eqz v1, :cond_2

    .line 57
    .line 58
    const/16 p3, 0xff

    .line 59
    .line 60
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-int/2addr v1, v4

    .line 65
    :goto_2
    if-ltz v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/4 v3, 0x1

    .line 79
    :goto_3
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ll0/b;

    .line 86
    .line 87
    invoke-virtual {v3, p1, p2, p3}, Ll0/b;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 88
    .line 89
    .line 90
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ld0/c;->a()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final n(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ll0/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/b;

    invoke-virtual {v1, p1, p2, p3, p4}, Ll0/b;->c(Li0/e;ILjava/util/ArrayList;Li0/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Z)V
    .locals 2

    invoke-super {p0, p1}, Ll0/b;->o(Z)V

    iget-object v0, p0, Ll0/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/b;

    invoke-virtual {v1, p1}, Ll0/b;->o(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ll0/b;->p(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/c;->y:Lg0/a;

    .line 5
    .line 6
    iget-object v1, p0, Ll0/b;->n:Ll0/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Ll0/b;->m:Ld0/l;

    .line 11
    .line 12
    iget-object p1, p1, Ld0/l;->b:Ld0/f;

    .line 13
    .line 14
    iget v2, p1, Ld0/f;->l:F

    .line 15
    .line 16
    iget p1, p1, Ld0/f;->k:F

    .line 17
    .line 18
    sub-float/2addr v2, p1

    .line 19
    const p1, 0x3c23d70a    # 0.01f

    .line 20
    .line 21
    .line 22
    add-float/2addr v2, p1

    .line 23
    iget-object p1, v1, Ll0/e;->b:Ld0/f;

    .line 24
    .line 25
    iget p1, p1, Ld0/f;->k:F

    .line 26
    .line 27
    invoke-virtual {v0}, Lg0/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v3, v1, Ll0/e;->b:Ld0/f;

    .line 38
    .line 39
    iget v3, v3, Ld0/f;->m:F

    .line 40
    .line 41
    mul-float v0, v0, v3

    .line 42
    .line 43
    sub-float/2addr v0, p1

    .line 44
    div-float p1, v0, v2

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Ll0/c;->y:Lg0/a;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v1, Ll0/e;->b:Ld0/f;

    .line 51
    .line 52
    iget v2, v0, Ld0/f;->l:F

    .line 53
    .line 54
    iget v0, v0, Ld0/f;->k:F

    .line 55
    .line 56
    sub-float/2addr v2, v0

    .line 57
    iget v0, v1, Ll0/e;->n:F

    .line 58
    .line 59
    div-float/2addr v0, v2

    .line 60
    sub-float/2addr p1, v0

    .line 61
    :cond_1
    iget v0, v1, Ll0/e;->m:F

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    cmpl-float v0, v0, v2

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v1, Ll0/e;->c:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "__container"

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    iget v0, v1, Ll0/e;->m:F

    .line 79
    .line 80
    div-float/2addr p1, v0

    .line 81
    :cond_2
    iget-object v0, p0, Ll0/c;->z:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 88
    .line 89
    if-ltz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ll0/b;

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ll0/b;->p(F)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    return-void
.end method
