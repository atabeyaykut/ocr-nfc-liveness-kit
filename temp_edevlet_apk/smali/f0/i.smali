.class public final Lf0/i;
.super Lf0/a;
.source "SourceFile"


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/graphics/RectF;

.field public final t:I

.field public final u:I

.field public final v:Lg0/d;

.field public final w:Lg0/j;

.field public final x:Lg0/j;

.field public y:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Lk0/e;)V
    .locals 13

    .line 1
    move-object v10, p0

    .line 2
    move-object v11, p2

    .line 3
    move-object/from16 v12, p3

    .line 4
    .line 5
    iget v0, v12, Lk0/e;->h:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 24
    .line 25
    :goto_0
    move-object v3, v0

    .line 26
    iget v0, v12, Lk0/e;->i:I

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    if-eq v0, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    move-object v4, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 48
    .line 49
    :goto_1
    move-object v4, v0

    .line 50
    :goto_2
    iget v5, v12, Lk0/e;->j:F

    .line 51
    .line 52
    iget-object v6, v12, Lk0/e;->d:Lj0/d;

    .line 53
    .line 54
    iget-object v7, v12, Lk0/e;->g:Lj0/b;

    .line 55
    .line 56
    iget-object v8, v12, Lk0/e;->k:Ljava/util/List;

    .line 57
    .line 58
    iget-object v9, v12, Lk0/e;->l:Lj0/b;

    .line 59
    .line 60
    move-object v0, p0

    .line 61
    move-object v1, p1

    .line 62
    move-object v2, p2

    .line 63
    invoke-direct/range {v0 .. v9}, Lf0/a;-><init>(Ld0/l;Ll0/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLj0/d;Lj0/b;Ljava/util/List;Lj0/b;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 67
    .line 68
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, v10, Lf0/i;->q:Landroidx/collection/LongSparseArray;

    .line 72
    .line 73
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 74
    .line 75
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, v10, Lf0/i;->r:Landroidx/collection/LongSparseArray;

    .line 79
    .line 80
    new-instance v0, Landroid/graphics/RectF;

    .line 81
    .line 82
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, v10, Lf0/i;->s:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget-object v0, v12, Lk0/e;->a:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v0, v10, Lf0/i;->o:Ljava/lang/String;

    .line 90
    .line 91
    iget v0, v12, Lk0/e;->b:I

    .line 92
    .line 93
    iput v0, v10, Lf0/i;->t:I

    .line 94
    .line 95
    iget-boolean v0, v12, Lk0/e;->m:Z

    .line 96
    .line 97
    iput-boolean v0, v10, Lf0/i;->p:Z

    .line 98
    .line 99
    move-object v0, p1

    .line 100
    iget-object v0, v0, Ld0/l;->b:Ld0/f;

    .line 101
    .line 102
    invoke-virtual {v0}, Ld0/f;->b()F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/high16 v1, 0x42000000    # 32.0f

    .line 107
    .line 108
    div-float/2addr v0, v1

    .line 109
    float-to-int v0, v0

    .line 110
    iput v0, v10, Lf0/i;->u:I

    .line 111
    .line 112
    iget-object v0, v12, Lk0/e;->c:Lj0/c;

    .line 113
    .line 114
    invoke-virtual {v0}, Lj0/c;->c()Lg0/a;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    move-object v1, v0

    .line 119
    check-cast v1, Lg0/d;

    .line 120
    .line 121
    iput-object v1, v10, Lf0/i;->v:Lg0/d;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v0}, Ll0/b;->e(Lg0/a;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v12, Lk0/e;->e:Lj0/f;

    .line 130
    .line 131
    invoke-virtual {v0}, Lj0/f;->c()Lg0/a;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    move-object v1, v0

    .line 136
    check-cast v1, Lg0/j;

    .line 137
    .line 138
    iput-object v1, v10, Lf0/i;->w:Lg0/j;

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v0}, Ll0/b;->e(Lg0/a;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v12, Lk0/e;->f:Lj0/f;

    .line 147
    .line 148
    invoke-virtual {v0}, Lj0/f;->c()Lg0/a;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    move-object v1, v0

    .line 153
    check-cast v1, Lg0/j;

    .line 154
    .line 155
    iput-object v1, v10, Lf0/i;->x:Lg0/j;

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v0}, Ll0/b;->e(Lg0/a;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    throw v1

    .line 165
    :cond_6
    throw v1
.end method


# virtual methods
.method public final e([I)[I
    .locals 4

    iget-object v0, p0, Lf0/i;->y:Lg0/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg0/p;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lf0/a;->f(Lq0/c;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld0/q;->F:[Ljava/lang/Integer;

    .line 5
    .line 6
    if-ne p2, v0, :cond_2

    .line 7
    .line 8
    iget-object p2, p0, Lf0/i;->y:Lg0/p;

    .line 9
    .line 10
    iget-object v0, p0, Lf0/a;->f:Ll0/b;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iput-object p2, p0, Lf0/i;->y:Lg0/p;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Lg0/p;

    .line 24
    .line 25
    invoke-direct {v1, p1, p2}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lf0/i;->y:Lg0/p;

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lf0/i;->y:Lg0/p;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ll0/b;->e(Lg0/a;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Lf0/i;->p:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lf0/i;->s:Landroid/graphics/RectF;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Lf0/a;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 14
    .line 15
    .line 16
    iget v2, v0, Lf0/i;->t:I

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    iget-object v4, v0, Lf0/i;->v:Lg0/d;

    .line 20
    .line 21
    iget-object v5, v0, Lf0/i;->x:Lg0/j;

    .line 22
    .line 23
    iget-object v6, v0, Lf0/i;->w:Lg0/j;

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lf0/i;->h()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, v0, Lf0/i;->q:Landroidx/collection/LongSparseArray;

    .line 32
    .line 33
    int-to-long v7, v2

    .line 34
    invoke-virtual {v3, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/graphics/LinearGradient;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v6}, Lg0/a;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/graphics/PointF;

    .line 48
    .line 49
    invoke-virtual {v5}, Lg0/a;->f()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/graphics/PointF;

    .line 54
    .line 55
    invoke-virtual {v4}, Lg0/a;->f()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lk0/c;

    .line 60
    .line 61
    iget-object v6, v4, Lk0/c;->b:[I

    .line 62
    .line 63
    invoke-virtual {v0, v6}, Lf0/i;->e([I)[I

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    iget-object v15, v4, Lk0/c;->a:[F

    .line 68
    .line 69
    iget v10, v2, Landroid/graphics/PointF;->x:F

    .line 70
    .line 71
    iget v11, v2, Landroid/graphics/PointF;->y:F

    .line 72
    .line 73
    iget v12, v5, Landroid/graphics/PointF;->x:F

    .line 74
    .line 75
    iget v13, v5, Landroid/graphics/PointF;->y:F

    .line 76
    .line 77
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 78
    .line 79
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 80
    .line 81
    move-object v9, v2

    .line 82
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v7, v8, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lf0/i;->h()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iget-object v3, v0, Lf0/i;->r:Landroidx/collection/LongSparseArray;

    .line 94
    .line 95
    int-to-long v7, v2

    .line 96
    invoke-virtual {v3, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Landroid/graphics/RadialGradient;

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    :goto_0
    move-object v0, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v6}, Lg0/a;->f()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroid/graphics/PointF;

    .line 111
    .line 112
    invoke-virtual {v5}, Lg0/a;->f()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Landroid/graphics/PointF;

    .line 117
    .line 118
    invoke-virtual {v4}, Lg0/a;->f()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lk0/c;

    .line 123
    .line 124
    iget-object v6, v4, Lk0/c;->b:[I

    .line 125
    .line 126
    invoke-virtual {v0, v6}, Lf0/i;->e([I)[I

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    iget-object v14, v4, Lk0/c;->a:[F

    .line 131
    .line 132
    iget v10, v2, Landroid/graphics/PointF;->x:F

    .line 133
    .line 134
    iget v11, v2, Landroid/graphics/PointF;->y:F

    .line 135
    .line 136
    iget v2, v5, Landroid/graphics/PointF;->x:F

    .line 137
    .line 138
    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 139
    .line 140
    sub-float/2addr v2, v10

    .line 141
    float-to-double v5, v2

    .line 142
    sub-float/2addr v4, v11

    .line 143
    float-to-double v0, v4

    .line 144
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    double-to-float v12, v0

    .line 149
    new-instance v2, Landroid/graphics/RadialGradient;

    .line 150
    .line 151
    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 152
    .line 153
    move-object v9, v2

    .line 154
    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v7, v8, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v0, p2

    .line 161
    .line 162
    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 163
    .line 164
    .line 165
    move-object/from16 v1, p0

    .line 166
    .line 167
    iget-object v3, v1, Lf0/a;->i:Le0/a;

    .line 168
    .line 169
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 170
    .line 171
    .line 172
    invoke-super/range {p0 .. p3}, Lf0/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf0/i;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/i;->w:Lg0/j;

    .line 2
    .line 3
    iget v0, v0, Lg0/a;->d:F

    .line 4
    .line 5
    iget v1, p0, Lf0/i;->u:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    mul-float v0, v0, v1

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lf0/i;->x:Lg0/j;

    .line 15
    .line 16
    iget v2, v2, Lg0/a;->d:F

    .line 17
    .line 18
    mul-float v2, v2, v1

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Lf0/i;->v:Lg0/d;

    .line 25
    .line 26
    iget v3, v3, Lg0/a;->d:F

    .line 27
    .line 28
    mul-float v3, v3, v1

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    mul-int/lit16 v0, v0, 0x20f

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v0, 0x11

    .line 40
    .line 41
    :goto_0
    if-eqz v2, :cond_1

    .line 42
    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    mul-int v0, v0, v2

    .line 46
    .line 47
    :cond_1
    if-eqz v1, :cond_2

    .line 48
    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    mul-int v0, v0, v1

    .line 52
    .line 53
    :cond_2
    return v0
.end method
