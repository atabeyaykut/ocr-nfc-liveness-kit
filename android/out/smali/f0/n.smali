.class public final Lf0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/m;
.implements Lg0/a$a;
.implements Lf0/k;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Ld0/l;

.field public final d:I

.field public final e:Z

.field public final f:Lg0/c;

.field public final g:Lg0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lg0/c;

.field public final i:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lg0/c;

.field public final k:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Lg0/c;

.field public final m:Lf0/b;

.field public n:Z


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Lk0/h;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf0/n;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Lf0/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lf0/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf0/n;->m:Lf0/b;

    .line 17
    .line 18
    iput-object p1, p0, Lf0/n;->c:Ld0/l;

    .line 19
    .line 20
    iget-object p1, p3, Lk0/h;->a:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lf0/n;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget p1, p3, Lk0/h;->b:I

    .line 25
    .line 26
    iput p1, p0, Lf0/n;->d:I

    .line 27
    .line 28
    iget-boolean v0, p3, Lk0/h;->j:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lf0/n;->e:Z

    .line 31
    .line 32
    iget-object v0, p3, Lk0/h;->c:Lj0/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Lj0/b;->c()Lg0/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Lg0/c;

    .line 40
    .line 41
    iput-object v1, p0, Lf0/n;->f:Lg0/c;

    .line 42
    .line 43
    iget-object v1, p3, Lk0/h;->d:Lj0/m;

    .line 44
    .line 45
    invoke-interface {v1}, Lj0/m;->c()Lg0/a;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lf0/n;->g:Lg0/a;

    .line 50
    .line 51
    iget-object v2, p3, Lk0/h;->e:Lj0/b;

    .line 52
    .line 53
    invoke-virtual {v2}, Lj0/b;->c()Lg0/a;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    move-object v3, v2

    .line 58
    check-cast v3, Lg0/c;

    .line 59
    .line 60
    iput-object v3, p0, Lf0/n;->h:Lg0/c;

    .line 61
    .line 62
    iget-object v3, p3, Lk0/h;->g:Lj0/b;

    .line 63
    .line 64
    invoke-virtual {v3}, Lj0/b;->c()Lg0/a;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    move-object v4, v3

    .line 69
    check-cast v4, Lg0/c;

    .line 70
    .line 71
    iput-object v4, p0, Lf0/n;->j:Lg0/c;

    .line 72
    .line 73
    iget-object v4, p3, Lk0/h;->i:Lj0/b;

    .line 74
    .line 75
    invoke-virtual {v4}, Lj0/b;->c()Lg0/a;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    move-object v5, v4

    .line 80
    check-cast v5, Lg0/c;

    .line 81
    .line 82
    iput-object v5, p0, Lf0/n;->l:Lg0/c;

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    if-ne p1, v5, :cond_0

    .line 86
    .line 87
    iget-object v6, p3, Lk0/h;->f:Lj0/b;

    .line 88
    .line 89
    invoke-virtual {v6}, Lj0/b;->c()Lg0/a;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Lg0/c;

    .line 94
    .line 95
    iput-object v6, p0, Lf0/n;->i:Lg0/c;

    .line 96
    .line 97
    iget-object p3, p3, Lk0/h;->h:Lj0/b;

    .line 98
    .line 99
    invoke-virtual {p3}, Lj0/b;->c()Lg0/a;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const/4 p3, 0x0

    .line 105
    iput-object p3, p0, Lf0/n;->i:Lg0/c;

    .line 106
    .line 107
    :goto_0
    check-cast p3, Lg0/c;

    .line 108
    .line 109
    iput-object p3, p0, Lf0/n;->k:Lg0/c;

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Ll0/b;->e(Lg0/a;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Ll0/b;->e(Lg0/a;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v2}, Ll0/b;->e(Lg0/a;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v3}, Ll0/b;->e(Lg0/a;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v4}, Ll0/b;->e(Lg0/a;)V

    .line 124
    .line 125
    .line 126
    if-ne p1, v5, :cond_1

    .line 127
    .line 128
    iget-object v6, p0, Lf0/n;->i:Lg0/c;

    .line 129
    .line 130
    invoke-virtual {p2, v6}, Ll0/b;->e(Lg0/a;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ll0/b;->e(Lg0/a;)V

    .line 134
    .line 135
    .line 136
    :cond_1
    invoke-virtual {v0, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 149
    .line 150
    .line 151
    if-ne p1, v5, :cond_2

    .line 152
    .line 153
    iget-object p1, p0, Lf0/n;->i:Lg0/c;

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf0/n;->n:Z

    iget-object v0, p0, Lf0/n;->c:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lf0/c;

    .line 16
    .line 17
    instance-of v1, v0, Lf0/s;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lf0/s;

    .line 22
    .line 23
    iget v1, v0, Lf0/s;->c:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lf0/n;->m:Lf0/b;

    .line 29
    .line 30
    iget-object v1, v1, Lf0/b;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lf0/s;->c(Lg0/a$a;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final c(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lp0/f;->d(Li0/e;ILjava/util/ArrayList;Li0/e;Lf0/k;)V

    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Ld0/q;->u:Ljava/lang/Float;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lf0/n;->f:Lg0/c;

    goto :goto_1

    :cond_0
    sget-object v0, Ld0/q;->v:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lf0/n;->h:Lg0/c;

    goto :goto_1

    :cond_1
    sget-object v0, Ld0/q;->l:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lf0/n;->g:Lg0/a;

    goto :goto_1

    :cond_2
    sget-object v0, Ld0/q;->w:Ljava/lang/Float;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lf0/n;->i:Lg0/c;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Ld0/q;->x:Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lf0/n;->j:Lg0/c;

    goto :goto_1

    :cond_4
    sget-object v0, Ld0/q;->y:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lf0/n;->k:Lg0/c;

    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {v0, p1}, Lg0/a;->k(Lq0/c;)V

    goto :goto_2

    :cond_5
    sget-object v0, Ld0/q;->z:Ljava/lang/Float;

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lf0/n;->l:Lg0/c;

    :goto_1
    invoke-virtual {p2, p1}, Lg0/a;->k(Lq0/c;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf0/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lf0/n;->n:Z

    .line 4
    .line 5
    iget-object v9, v0, Lf0/n;->a:Landroid/graphics/Path;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v9

    .line 10
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, Lf0/n;->e:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v2, v0, Lf0/n;->n:Z

    .line 19
    .line 20
    return-object v9

    .line 21
    :cond_1
    iget v1, v0, Lf0/n;->d:I

    .line 22
    .line 23
    invoke-static {v1}, Lg/d;->c(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v10, v0, Lf0/n;->g:Lg0/a;

    .line 28
    .line 29
    iget-object v3, v0, Lf0/n;->l:Lg0/c;

    .line 30
    .line 31
    const/high16 v4, 0x42c80000    # 100.0f

    .line 32
    .line 33
    iget-object v5, v0, Lf0/n;->j:Lg0/c;

    .line 34
    .line 35
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide v11, 0x4056800000000000L    # 90.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iget-object v8, v0, Lf0/n;->h:Lg0/c;

    .line 46
    .line 47
    iget-object v13, v0, Lf0/n;->f:Lg0/c;

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    if-eq v1, v2, :cond_2

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v13}, Lg0/a;->f()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Float;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    float-to-double v1, v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    double-to-int v1, v1

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    const-wide/16 v16, 0x0

    .line 74
    .line 75
    move-wide/from16 v14, v16

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/Float;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    float-to-double v14, v2

    .line 89
    :goto_0
    sub-double/2addr v14, v11

    .line 90
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 91
    .line 92
    .line 93
    move-result-wide v11

    .line 94
    int-to-double v1, v1

    .line 95
    div-double/2addr v6, v1

    .line 96
    double-to-float v6, v6

    .line 97
    invoke-virtual {v3}, Lg0/a;->f()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/Float;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    div-float v13, v3, v4

    .line 108
    .line 109
    invoke-virtual {v5}, Lg0/a;->f()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/Float;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    float-to-double v7, v14

    .line 120
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    mul-double v3, v3, v7

    .line 125
    .line 126
    double-to-float v3, v3

    .line 127
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    mul-double v4, v4, v7

    .line 132
    .line 133
    double-to-float v4, v4

    .line 134
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    .line 136
    .line 137
    float-to-double v5, v6

    .line 138
    add-double/2addr v11, v5

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v18

    .line 143
    const/4 v1, 0x0

    .line 144
    move-wide/from16 v20, v5

    .line 145
    .line 146
    :goto_1
    int-to-double v5, v1

    .line 147
    cmpg-double v2, v5, v18

    .line 148
    .line 149
    if-gez v2, :cond_5

    .line 150
    .line 151
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v5

    .line 155
    mul-double v5, v5, v7

    .line 156
    .line 157
    double-to-float v15, v5

    .line 158
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v5

    .line 162
    mul-double v5, v5, v7

    .line 163
    .line 164
    double-to-float v6, v5

    .line 165
    const/4 v2, 0x0

    .line 166
    cmpl-float v2, v13, v2

    .line 167
    .line 168
    if-eqz v2, :cond_4

    .line 169
    .line 170
    move-wide/from16 v22, v7

    .line 171
    .line 172
    float-to-double v7, v4

    .line 173
    move/from16 v24, v1

    .line 174
    .line 175
    float-to-double v0, v3

    .line 176
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 177
    .line 178
    .line 179
    move-result-wide v0

    .line 180
    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    sub-double/2addr v0, v7

    .line 186
    double-to-float v0, v0

    .line 187
    float-to-double v0, v0

    .line 188
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v7

    .line 192
    double-to-float v2, v7

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    double-to-float v0, v0

    .line 198
    float-to-double v7, v6

    .line 199
    move-object v1, v10

    .line 200
    move-wide/from16 v25, v11

    .line 201
    .line 202
    float-to-double v10, v15

    .line 203
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 204
    .line 205
    .line 206
    move-result-wide v7

    .line 207
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    sub-double/2addr v7, v10

    .line 213
    double-to-float v5, v7

    .line 214
    float-to-double v7, v5

    .line 215
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 216
    .line 217
    .line 218
    move-result-wide v10

    .line 219
    double-to-float v5, v10

    .line 220
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 221
    .line 222
    .line 223
    move-result-wide v7

    .line 224
    double-to-float v7, v7

    .line 225
    mul-float v8, v14, v13

    .line 226
    .line 227
    const/high16 v10, 0x3e800000    # 0.25f

    .line 228
    .line 229
    mul-float v8, v8, v10

    .line 230
    .line 231
    mul-float v2, v2, v8

    .line 232
    .line 233
    mul-float v0, v0, v8

    .line 234
    .line 235
    mul-float v5, v5, v8

    .line 236
    .line 237
    mul-float v8, v8, v7

    .line 238
    .line 239
    sub-float/2addr v3, v2

    .line 240
    sub-float/2addr v4, v0

    .line 241
    add-float/2addr v5, v15

    .line 242
    add-float v0, v8, v6

    .line 243
    .line 244
    move-object v2, v9

    .line 245
    move-wide/from16 v10, v20

    .line 246
    .line 247
    move v12, v6

    .line 248
    move v6, v0

    .line 249
    move-wide/from16 v20, v22

    .line 250
    .line 251
    move v7, v15

    .line 252
    move v8, v12

    .line 253
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_4
    move/from16 v24, v1

    .line 258
    .line 259
    move-object v1, v10

    .line 260
    move-wide/from16 v25, v11

    .line 261
    .line 262
    move-wide/from16 v10, v20

    .line 263
    .line 264
    move v12, v6

    .line 265
    move-wide/from16 v20, v7

    .line 266
    .line 267
    invoke-virtual {v9, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    .line 269
    .line 270
    :goto_2
    add-double v2, v25, v10

    .line 271
    .line 272
    add-int/lit8 v0, v24, 0x1

    .line 273
    .line 274
    move v4, v12

    .line 275
    move-wide/from16 v7, v20

    .line 276
    .line 277
    move-wide/from16 v20, v10

    .line 278
    .line 279
    move-object v10, v1

    .line 280
    move-wide v11, v2

    .line 281
    move v3, v15

    .line 282
    move v1, v0

    .line 283
    move-object/from16 v0, p0

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :cond_5
    move-object v1, v10

    .line 288
    invoke-virtual {v1}, Lg0/a;->f()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/graphics/PointF;

    .line 293
    .line 294
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 295
    .line 296
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 297
    .line 298
    invoke-virtual {v9, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 302
    .line 303
    .line 304
    :goto_3
    move-object/from16 v10, p0

    .line 305
    .line 306
    move-object v2, v9

    .line 307
    goto/16 :goto_12

    .line 308
    .line 309
    :cond_6
    move-object v1, v10

    .line 310
    invoke-virtual {v13}, Lg0/a;->f()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Ljava/lang/Float;

    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-nez v8, :cond_7

    .line 321
    .line 322
    const-wide/16 v13, 0x0

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_7
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Ljava/lang/Float;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    float-to-double v13, v2

    .line 336
    :goto_4
    sub-double/2addr v13, v11

    .line 337
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 338
    .line 339
    .line 340
    move-result-wide v10

    .line 341
    float-to-double v12, v0

    .line 342
    div-double/2addr v6, v12

    .line 343
    double-to-float v14, v6

    .line 344
    const/high16 v2, 0x40000000    # 2.0f

    .line 345
    .line 346
    div-float v15, v14, v2

    .line 347
    .line 348
    float-to-int v2, v0

    .line 349
    int-to-float v2, v2

    .line 350
    sub-float/2addr v0, v2

    .line 351
    const/4 v2, 0x0

    .line 352
    cmpl-float v18, v0, v2

    .line 353
    .line 354
    if-eqz v18, :cond_8

    .line 355
    .line 356
    const/high16 v2, 0x3f800000    # 1.0f

    .line 357
    .line 358
    sub-float/2addr v2, v0

    .line 359
    mul-float v2, v2, v15

    .line 360
    .line 361
    float-to-double v6, v2

    .line 362
    add-double/2addr v10, v6

    .line 363
    :cond_8
    invoke-virtual {v5}, Lg0/a;->f()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Ljava/lang/Float;

    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 370
    .line 371
    .line 372
    move-result v8

    .line 373
    move-object/from16 v7, p0

    .line 374
    .line 375
    iget-object v2, v7, Lf0/n;->i:Lg0/c;

    .line 376
    .line 377
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Ljava/lang/Float;

    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    iget-object v2, v7, Lf0/n;->k:Lg0/c;

    .line 388
    .line 389
    if-eqz v2, :cond_9

    .line 390
    .line 391
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    check-cast v2, Ljava/lang/Float;

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    div-float/2addr v2, v4

    .line 402
    move/from16 v19, v2

    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_9
    const/4 v2, 0x0

    .line 406
    const/16 v19, 0x0

    .line 407
    .line 408
    :goto_5
    if-eqz v3, :cond_a

    .line 409
    .line 410
    invoke-virtual {v3}, Lg0/a;->f()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Ljava/lang/Float;

    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    div-float/2addr v2, v4

    .line 421
    move/from16 v20, v2

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_a
    const/4 v2, 0x0

    .line 425
    const/16 v20, 0x0

    .line 426
    .line 427
    :goto_6
    if-eqz v18, :cond_b

    .line 428
    .line 429
    invoke-static {v8, v6, v0, v6}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    float-to-double v3, v2

    .line 434
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 435
    .line 436
    .line 437
    move-result-wide v21

    .line 438
    move/from16 v23, v6

    .line 439
    .line 440
    mul-double v5, v21, v3

    .line 441
    .line 442
    double-to-float v5, v5

    .line 443
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 444
    .line 445
    .line 446
    move-result-wide v21

    .line 447
    mul-double v3, v3, v21

    .line 448
    .line 449
    double-to-float v3, v3

    .line 450
    invoke-virtual {v9, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 451
    .line 452
    .line 453
    mul-float v4, v14, v0

    .line 454
    .line 455
    const/high16 v6, 0x40000000    # 2.0f

    .line 456
    .line 457
    div-float/2addr v4, v6

    .line 458
    move v6, v2

    .line 459
    move/from16 v21, v3

    .line 460
    .line 461
    float-to-double v2, v4

    .line 462
    add-double/2addr v10, v2

    .line 463
    move/from16 v3, v21

    .line 464
    .line 465
    move-wide/from16 v21, v10

    .line 466
    .line 467
    move v10, v6

    .line 468
    goto :goto_7

    .line 469
    :cond_b
    move/from16 v23, v6

    .line 470
    .line 471
    float-to-double v2, v8

    .line 472
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 473
    .line 474
    .line 475
    move-result-wide v4

    .line 476
    mul-double v4, v4, v2

    .line 477
    .line 478
    double-to-float v5, v4

    .line 479
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 480
    .line 481
    .line 482
    move-result-wide v21

    .line 483
    mul-double v2, v2, v21

    .line 484
    .line 485
    double-to-float v3, v2

    .line 486
    invoke-virtual {v9, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 487
    .line 488
    .line 489
    move v4, v3

    .line 490
    float-to-double v2, v15

    .line 491
    add-double/2addr v10, v2

    .line 492
    const/4 v2, 0x0

    .line 493
    move v3, v4

    .line 494
    move-wide/from16 v21, v10

    .line 495
    .line 496
    const/4 v10, 0x0

    .line 497
    :goto_7
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 498
    .line 499
    .line 500
    move-result-wide v11

    .line 501
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    .line 502
    .line 503
    mul-double v11, v11, v24

    .line 504
    .line 505
    const/4 v2, 0x0

    .line 506
    const/4 v4, 0x0

    .line 507
    move-wide/from16 v26, v24

    .line 508
    .line 509
    const/4 v13, 0x0

    .line 510
    move-wide/from16 v24, v21

    .line 511
    .line 512
    const/16 v21, 0x0

    .line 513
    .line 514
    :goto_8
    int-to-double v6, v13

    .line 515
    cmpg-double v2, v6, v11

    .line 516
    .line 517
    if-gez v2, :cond_16

    .line 518
    .line 519
    if-eqz v21, :cond_c

    .line 520
    .line 521
    move v2, v8

    .line 522
    goto :goto_9

    .line 523
    :cond_c
    move/from16 v2, v23

    .line 524
    .line 525
    :goto_9
    const/4 v4, 0x0

    .line 526
    cmpl-float v4, v10, v4

    .line 527
    .line 528
    if-eqz v4, :cond_d

    .line 529
    .line 530
    sub-double v26, v11, v26

    .line 531
    .line 532
    cmpl-double v22, v6, v26

    .line 533
    .line 534
    if-nez v22, :cond_d

    .line 535
    .line 536
    mul-float v22, v14, v0

    .line 537
    .line 538
    const/high16 v26, 0x40000000    # 2.0f

    .line 539
    .line 540
    div-float v22, v22, v26

    .line 541
    .line 542
    move/from16 v36, v22

    .line 543
    .line 544
    move/from16 v22, v10

    .line 545
    .line 546
    move/from16 v10, v36

    .line 547
    .line 548
    goto :goto_a

    .line 549
    :cond_d
    move/from16 v22, v10

    .line 550
    .line 551
    move v10, v15

    .line 552
    :goto_a
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 553
    .line 554
    if-eqz v4, :cond_e

    .line 555
    .line 556
    sub-double v28, v11, v26

    .line 557
    .line 558
    cmpl-double v4, v6, v28

    .line 559
    .line 560
    if-nez v4, :cond_e

    .line 561
    .line 562
    move/from16 v28, v14

    .line 563
    .line 564
    move/from16 v29, v15

    .line 565
    .line 566
    move/from16 v2, v22

    .line 567
    .line 568
    goto :goto_b

    .line 569
    :cond_e
    move/from16 v28, v14

    .line 570
    .line 571
    move/from16 v29, v15

    .line 572
    .line 573
    :goto_b
    float-to-double v14, v2

    .line 574
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    .line 575
    .line 576
    .line 577
    move-result-wide v30

    .line 578
    move-object/from16 v32, v1

    .line 579
    .line 580
    mul-double v1, v30, v14

    .line 581
    .line 582
    double-to-float v1, v1

    .line 583
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    .line 584
    .line 585
    .line 586
    move-result-wide v30

    .line 587
    mul-double v14, v14, v30

    .line 588
    .line 589
    double-to-float v14, v14

    .line 590
    const/4 v2, 0x0

    .line 591
    cmpl-float v4, v19, v2

    .line 592
    .line 593
    if-nez v4, :cond_f

    .line 594
    .line 595
    cmpl-float v2, v20, v2

    .line 596
    .line 597
    if-nez v2, :cond_f

    .line 598
    .line 599
    invoke-virtual {v9, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 600
    .line 601
    .line 602
    move-object/from16 v34, v9

    .line 603
    .line 604
    move v15, v10

    .line 605
    move/from16 v33, v14

    .line 606
    .line 607
    move/from16 v9, v23

    .line 608
    .line 609
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    move-object/from16 v10, p0

    .line 615
    .line 616
    move v14, v8

    .line 617
    goto/16 :goto_11

    .line 618
    .line 619
    :cond_f
    move/from16 v30, v8

    .line 620
    .line 621
    move-object v15, v9

    .line 622
    float-to-double v8, v3

    .line 623
    move v4, v3

    .line 624
    float-to-double v2, v5

    .line 625
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 626
    .line 627
    .line 628
    move-result-wide v2

    .line 629
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    sub-double v2, v2, v16

    .line 635
    .line 636
    double-to-float v2, v2

    .line 637
    float-to-double v2, v2

    .line 638
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 639
    .line 640
    .line 641
    move-result-wide v8

    .line 642
    double-to-float v8, v8

    .line 643
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 644
    .line 645
    .line 646
    move-result-wide v2

    .line 647
    double-to-float v2, v2

    .line 648
    move/from16 v31, v10

    .line 649
    .line 650
    float-to-double v9, v14

    .line 651
    move/from16 v33, v14

    .line 652
    .line 653
    move-object/from16 v34, v15

    .line 654
    .line 655
    float-to-double v14, v1

    .line 656
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 657
    .line 658
    .line 659
    move-result-wide v9

    .line 660
    sub-double v9, v9, v16

    .line 661
    .line 662
    double-to-float v3, v9

    .line 663
    float-to-double v9, v3

    .line 664
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 665
    .line 666
    .line 667
    move-result-wide v14

    .line 668
    double-to-float v3, v14

    .line 669
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 670
    .line 671
    .line 672
    move-result-wide v9

    .line 673
    double-to-float v9, v9

    .line 674
    if-eqz v21, :cond_10

    .line 675
    .line 676
    move/from16 v10, v19

    .line 677
    .line 678
    goto :goto_c

    .line 679
    :cond_10
    move/from16 v10, v20

    .line 680
    .line 681
    :goto_c
    if-eqz v21, :cond_11

    .line 682
    .line 683
    move/from16 v14, v20

    .line 684
    .line 685
    goto :goto_d

    .line 686
    :cond_11
    move/from16 v14, v19

    .line 687
    .line 688
    :goto_d
    if-eqz v21, :cond_12

    .line 689
    .line 690
    move/from16 v15, v23

    .line 691
    .line 692
    goto :goto_e

    .line 693
    :cond_12
    move/from16 v15, v30

    .line 694
    .line 695
    :goto_e
    if-eqz v21, :cond_13

    .line 696
    .line 697
    move/from16 v35, v30

    .line 698
    .line 699
    goto :goto_f

    .line 700
    :cond_13
    move/from16 v35, v23

    .line 701
    .line 702
    :goto_f
    mul-float v15, v15, v10

    .line 703
    .line 704
    const v10, 0x3ef4e26d    # 0.47829f

    .line 705
    .line 706
    .line 707
    mul-float v15, v15, v10

    .line 708
    .line 709
    mul-float v8, v8, v15

    .line 710
    .line 711
    mul-float v15, v15, v2

    .line 712
    .line 713
    mul-float v35, v35, v14

    .line 714
    .line 715
    mul-float v35, v35, v10

    .line 716
    .line 717
    mul-float v3, v3, v35

    .line 718
    .line 719
    mul-float v35, v35, v9

    .line 720
    .line 721
    if-eqz v18, :cond_15

    .line 722
    .line 723
    if-nez v13, :cond_14

    .line 724
    .line 725
    mul-float v8, v8, v0

    .line 726
    .line 727
    mul-float v15, v15, v0

    .line 728
    .line 729
    goto :goto_10

    .line 730
    :cond_14
    sub-double v9, v11, v26

    .line 731
    .line 732
    cmpl-double v2, v6, v9

    .line 733
    .line 734
    if-nez v2, :cond_15

    .line 735
    .line 736
    mul-float v3, v3, v0

    .line 737
    .line 738
    mul-float v35, v35, v0

    .line 739
    .line 740
    :cond_15
    :goto_10
    sub-float/2addr v5, v8

    .line 741
    sub-float/2addr v4, v15

    .line 742
    add-float v6, v1, v3

    .line 743
    .line 744
    add-float v7, v33, v35

    .line 745
    .line 746
    move-object/from16 v2, v34

    .line 747
    .line 748
    move v3, v5

    .line 749
    move v5, v6

    .line 750
    move/from16 v9, v23

    .line 751
    .line 752
    move v6, v7

    .line 753
    move-object/from16 v10, p0

    .line 754
    .line 755
    move v7, v1

    .line 756
    move/from16 v14, v30

    .line 757
    .line 758
    move/from16 v8, v33

    .line 759
    .line 760
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 761
    .line 762
    .line 763
    move/from16 v15, v31

    .line 764
    .line 765
    :goto_11
    float-to-double v2, v15

    .line 766
    add-double v24, v24, v2

    .line 767
    .line 768
    xor-int/lit8 v21, v21, 0x1

    .line 769
    .line 770
    add-int/lit8 v13, v13, 0x1

    .line 771
    .line 772
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .line 773
    .line 774
    move v5, v1

    .line 775
    move/from16 v23, v9

    .line 776
    .line 777
    move v8, v14

    .line 778
    move/from16 v10, v22

    .line 779
    .line 780
    move/from16 v14, v28

    .line 781
    .line 782
    move/from16 v15, v29

    .line 783
    .line 784
    move-object/from16 v1, v32

    .line 785
    .line 786
    move/from16 v3, v33

    .line 787
    .line 788
    move-object/from16 v9, v34

    .line 789
    .line 790
    goto/16 :goto_8

    .line 791
    .line 792
    :cond_16
    move-object/from16 v10, p0

    .line 793
    .line 794
    move-object/from16 v32, v1

    .line 795
    .line 796
    move-object/from16 v34, v9

    .line 797
    .line 798
    invoke-virtual/range {v32 .. v32}, Lg0/a;->f()Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    check-cast v0, Landroid/graphics/PointF;

    .line 803
    .line 804
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 805
    .line 806
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 807
    .line 808
    move-object/from16 v2, v34

    .line 809
    .line 810
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 814
    .line 815
    .line 816
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 817
    .line 818
    .line 819
    iget-object v0, v10, Lf0/n;->m:Lf0/b;

    .line 820
    .line 821
    invoke-virtual {v0, v2}, Lf0/b;->a(Landroid/graphics/Path;)V

    .line 822
    .line 823
    .line 824
    const/4 v0, 0x1

    .line 825
    iput-boolean v0, v10, Lf0/n;->n:Z

    .line 826
    .line 827
    return-object v2
.end method
