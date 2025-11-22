.class public final Ll0/i;
.super Ll0/b;
.source "SourceFile"


# instance fields
.field public final A:Landroid/graphics/Matrix;

.field public final B:Ll0/i$a;

.field public final C:Ll0/i$b;

.field public final D:Ljava/util/HashMap;

.field public final E:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Lg0/n;

.field public final G:Ld0/l;

.field public final H:Ld0/f;

.field public final I:Lg0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public J:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final K:Lg0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public L:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final M:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public N:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final O:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public P:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Q:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public R:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final y:Ljava/lang/StringBuilder;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ld0/l;Ll0/e;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Ll0/b;-><init>(Ld0/l;Ll0/e;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll0/i;->y:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ll0/i;->z:Landroid/graphics/RectF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ll0/i;->A:Landroid/graphics/Matrix;

    .line 25
    .line 26
    new-instance v0, Ll0/i$a;

    .line 27
    .line 28
    invoke-direct {v0}, Ll0/i$a;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Ll0/i;->B:Ll0/i$a;

    .line 32
    .line 33
    new-instance v0, Ll0/i$b;

    .line 34
    .line 35
    invoke-direct {v0}, Ll0/i$b;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ll0/i;->C:Ll0/i$b;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Ll0/i;->D:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 48
    .line 49
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Ll0/i;->E:Landroidx/collection/LongSparseArray;

    .line 53
    .line 54
    iput-object p1, p0, Ll0/i;->G:Ld0/l;

    .line 55
    .line 56
    iget-object p1, p2, Ll0/e;->b:Ld0/f;

    .line 57
    .line 58
    iput-object p1, p0, Ll0/i;->H:Ld0/f;

    .line 59
    .line 60
    new-instance p1, Lg0/n;

    .line 61
    .line 62
    iget-object v0, p2, Ll0/e;->q:Lj0/j;

    .line 63
    .line 64
    iget-object v0, v0, Lj0/n;->b:Ljava/util/Collection;

    .line 65
    .line 66
    check-cast v0, Ljava/util/List;

    .line 67
    .line 68
    invoke-direct {p1, v0}, Lg0/n;-><init>(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Ll0/i;->F:Lg0/n;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ll0/b;->e(Lg0/a;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p2, Ll0/e;->r:Lj0/k;

    .line 80
    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    iget-object p2, p1, Lj0/k;->a:Lj0/a;

    .line 84
    .line 85
    if-eqz p2, :cond_0

    .line 86
    .line 87
    invoke-virtual {p2}, Lj0/a;->c()Lg0/a;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    move-object v0, p2

    .line 92
    check-cast v0, Lg0/b;

    .line 93
    .line 94
    iput-object v0, p0, Ll0/i;->I:Lg0/b;

    .line 95
    .line 96
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2}, Ll0/b;->e(Lg0/a;)V

    .line 100
    .line 101
    .line 102
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    .line 104
    iget-object p2, p1, Lj0/k;->b:Lj0/a;

    .line 105
    .line 106
    if-eqz p2, :cond_1

    .line 107
    .line 108
    invoke-virtual {p2}, Lj0/a;->c()Lg0/a;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    move-object v0, p2

    .line 113
    check-cast v0, Lg0/b;

    .line 114
    .line 115
    iput-object v0, p0, Ll0/i;->K:Lg0/b;

    .line 116
    .line 117
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2}, Ll0/b;->e(Lg0/a;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    if-eqz p1, :cond_2

    .line 124
    .line 125
    iget-object p2, p1, Lj0/k;->c:Lj0/b;

    .line 126
    .line 127
    if-eqz p2, :cond_2

    .line 128
    .line 129
    invoke-virtual {p2}, Lj0/b;->c()Lg0/a;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    move-object v0, p2

    .line 134
    check-cast v0, Lg0/c;

    .line 135
    .line 136
    iput-object v0, p0, Ll0/i;->M:Lg0/c;

    .line 137
    .line 138
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p2}, Ll0/b;->e(Lg0/a;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    if-eqz p1, :cond_3

    .line 145
    .line 146
    iget-object p1, p1, Lj0/k;->d:Lj0/b;

    .line 147
    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    invoke-virtual {p1}, Lj0/b;->c()Lg0/a;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    move-object p2, p1

    .line 155
    check-cast p2, Lg0/c;

    .line 156
    .line 157
    iput-object p2, p0, Ll0/i;->O:Lg0/c;

    .line 158
    .line 159
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Ll0/b;->e(Lg0/a;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    return-void
.end method

.method public static q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Ll0/b;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Ll0/i;->H:Ld0/f;

    .line 5
    .line 6
    iget-object p3, p2, Ld0/f;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    int-to-float p3, p3

    .line 13
    iget-object p2, p2, Ld0/f;->j:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    int-to-float p2, p2

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Ll0/b;->f(Lq0/c;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld0/q;->a:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_2

    .line 8
    .line 9
    iget-object p2, p0, Ll0/i;->J:Lg0/p;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Ll0/i;->J:Lg0/p;

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    new-instance p2, Lg0/p;

    .line 23
    .line 24
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Ll0/i;->J:Lg0/p;

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Ll0/i;->J:Lg0/p;

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_2
    sget-object v0, Ld0/q;->b:Ljava/lang/Integer;

    .line 37
    .line 38
    if-ne p2, v0, :cond_5

    .line 39
    .line 40
    iget-object p2, p0, Ll0/i;->L:Lg0/p;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    if-nez p1, :cond_4

    .line 48
    .line 49
    iput-object v1, p0, Ll0/i;->L:Lg0/p;

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_4
    new-instance p2, Lg0/p;

    .line 54
    .line 55
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Ll0/i;->L:Lg0/p;

    .line 59
    .line 60
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Ll0/i;->L:Lg0/p;

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_5
    sget-object v0, Ld0/q;->q:Ljava/lang/Float;

    .line 68
    .line 69
    if-ne p2, v0, :cond_8

    .line 70
    .line 71
    iget-object p2, p0, Ll0/i;->N:Lg0/p;

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 76
    .line 77
    .line 78
    :cond_6
    if-nez p1, :cond_7

    .line 79
    .line 80
    iput-object v1, p0, Ll0/i;->N:Lg0/p;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_7
    new-instance p2, Lg0/p;

    .line 84
    .line 85
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Ll0/i;->N:Lg0/p;

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Ll0/i;->N:Lg0/p;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_8
    sget-object v0, Ld0/q;->r:Ljava/lang/Float;

    .line 97
    .line 98
    if-ne p2, v0, :cond_b

    .line 99
    .line 100
    iget-object p2, p0, Ll0/i;->P:Lg0/p;

    .line 101
    .line 102
    if-eqz p2, :cond_9

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 105
    .line 106
    .line 107
    :cond_9
    if-nez p1, :cond_a

    .line 108
    .line 109
    iput-object v1, p0, Ll0/i;->P:Lg0/p;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_a
    new-instance p2, Lg0/p;

    .line 113
    .line 114
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-object p2, p0, Ll0/i;->P:Lg0/p;

    .line 118
    .line 119
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Ll0/i;->P:Lg0/p;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_b
    sget-object v0, Ld0/q;->D:Ljava/lang/Float;

    .line 126
    .line 127
    if-ne p2, v0, :cond_e

    .line 128
    .line 129
    iget-object p2, p0, Ll0/i;->Q:Lg0/p;

    .line 130
    .line 131
    if-eqz p2, :cond_c

    .line 132
    .line 133
    invoke-virtual {p0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 134
    .line 135
    .line 136
    :cond_c
    if-nez p1, :cond_d

    .line 137
    .line 138
    iput-object v1, p0, Ll0/i;->Q:Lg0/p;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_d
    new-instance p2, Lg0/p;

    .line 142
    .line 143
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iput-object p2, p0, Ll0/i;->Q:Lg0/p;

    .line 147
    .line 148
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Ll0/i;->Q:Lg0/p;

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_e
    sget-object v0, Ld0/q;->G:Landroid/graphics/Typeface;

    .line 155
    .line 156
    if-ne p2, v0, :cond_11

    .line 157
    .line 158
    iget-object p2, p0, Ll0/i;->R:Lg0/p;

    .line 159
    .line 160
    if-eqz p2, :cond_f

    .line 161
    .line 162
    invoke-virtual {p0, p2}, Ll0/b;->m(Lg0/a;)V

    .line 163
    .line 164
    .line 165
    :cond_f
    if-nez p1, :cond_10

    .line 166
    .line 167
    iput-object v1, p0, Ll0/i;->R:Lg0/p;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_10
    new-instance p2, Lg0/p;

    .line 171
    .line 172
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iput-object p2, p0, Ll0/i;->R:Lg0/p;

    .line 176
    .line 177
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Ll0/i;->R:Lg0/p;

    .line 181
    .line 182
    :goto_0
    invoke-virtual {p0, p1}, Ll0/b;->e(Lg0/a;)V

    .line 183
    .line 184
    .line 185
    :cond_11
    :goto_1
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1
    iget-object v2, v0, Ll0/i;->G:Ld0/l;

    iget-object v3, v2, Ld0/l;->b:Ld0/f;

    .line 2
    iget-object v3, v3, Ld0/f;->g:Landroidx/collection/SparseArrayCompat;

    .line 3
    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v3, v0, Ll0/i;->F:Lg0/n;

    invoke-virtual {v3}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/b;

    .line 5
    iget-object v6, v0, Ll0/i;->H:Ld0/f;

    iget-object v7, v6, Ld0/f;->e:Ljava/util/Map;

    .line 6
    iget-object v8, v3, Li0/b;->b:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li0/c;

    if-nez v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    iget-object v8, v0, Ll0/i;->J:Lg0/p;

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v8, v0, Ll0/i;->I:Lg0/b;

    if-eqz v8, :cond_4

    :goto_1
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_4
    iget v8, v3, Li0/b;->h:I

    :goto_2
    iget-object v9, v0, Ll0/i;->B:Ll0/i$a;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Ll0/i;->L:Lg0/p;

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v8, v0, Ll0/i;->K:Lg0/b;

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_4

    :cond_6
    iget v8, v3, Li0/b;->i:I

    :goto_4
    iget-object v10, v0, Ll0/i;->C:Ll0/i$b;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v8, v0, Ll0/b;->u:Lg0/o;

    iget-object v8, v8, Lg0/o;->j:Lg0/a;

    const/16 v11, 0x64

    if-nez v8, :cond_7

    const/16 v8, 0x64

    goto :goto_5

    .line 8
    :cond_7
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_5
    mul-int/lit16 v8, v8, 0xff

    div-int/2addr v8, v11

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, v0, Ll0/i;->N:Lg0/p;

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    iget-object v8, v0, Ll0/i;->M:Lg0/c;

    if-eqz v8, :cond_9

    :goto_6
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_7

    :cond_9
    invoke-static/range {p2 .. p2}, Lp0/g;->d(Landroid/graphics/Matrix;)F

    move-result v8

    iget v11, v3, Li0/b;->j:F

    invoke-static {}, Lp0/g;->c()F

    move-result v12

    mul-float v12, v12, v11

    mul-float v12, v12, v8

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    :goto_7
    iget-object v8, v2, Ld0/l;->b:Ld0/f;

    .line 10
    iget-object v8, v8, Ld0/f;->g:Landroidx/collection/SparseArrayCompat;

    .line 11
    invoke-virtual {v8}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v8

    if-lez v8, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    const-string v12, "\n"

    const-string v13, "\r"

    const-string v14, "\r\n"

    const/high16 v16, 0x40000000    # 2.0f

    const/16 v17, 0x0

    .line 12
    iget-object v5, v0, Ll0/i;->O:Lg0/c;

    iget-boolean v11, v3, Li0/b;->k:Z

    iget v4, v3, Li0/b;->d:I

    iget v15, v3, Li0/b;->e:I

    move-object/from16 v19, v5

    iget v5, v3, Li0/b;->f:F

    move/from16 v20, v15

    iget v15, v3, Li0/b;->c:F

    move/from16 v21, v15

    iget-object v15, v3, Li0/b;->a:Ljava/lang/String;

    move-object/from16 v22, v10

    iget-object v10, v7, Li0/c;->b:Ljava/lang/String;

    iget-object v7, v7, Li0/c;->a:Ljava/lang/String;

    if-eqz v8, :cond_1a

    .line 13
    iget-object v8, v0, Ll0/i;->Q:Lg0/p;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lg0/p;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_9

    :cond_b
    move/from16 v8, v21

    :goto_9
    const/high16 v18, 0x42c80000    # 100.0f

    div-float v8, v8, v18

    move-object/from16 v23, v9

    invoke-static/range {p2 .. p2}, Lp0/g;->d(Landroid/graphics/Matrix;)F

    move-result v9

    invoke-static {}, Lp0/g;->c()F

    move-result v18

    mul-float v18, v18, v5

    .line 14
    invoke-virtual {v15, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v12, :cond_19

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v21, v5

    move/from16 v24, v11

    const/4 v5, 0x0

    const/4 v15, 0x0

    .line 16
    :goto_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v15, v11, :cond_d

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11, v7, v10}, Li0/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object/from16 v25, v3

    .line 17
    iget-object v3, v6, Ld0/f;->g:Landroidx/collection/SparseArrayCompat;

    .line 18
    invoke-virtual {v3, v11}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/d;

    if-nez v3, :cond_c

    move-object/from16 v28, v2

    move-object/from16 v27, v6

    move-object/from16 v26, v10

    goto :goto_c

    :cond_c
    move-object v11, v6

    float-to-double v5, v5

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    float-to-double v10, v8

    move-object/from16 v28, v2

    iget-wide v2, v3, Li0/d;->c:D

    mul-double v2, v2, v10

    invoke-static {}, Lp0/g;->c()F

    move-result v10

    float-to-double v10, v10

    mul-double v2, v2, v10

    float-to-double v10, v9

    mul-double v2, v2, v10

    add-double/2addr v2, v5

    double-to-float v2, v2

    move v5, v2

    :goto_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v25

    move-object/from16 v10, v26

    move-object/from16 v6, v27

    move-object/from16 v2, v28

    goto :goto_b

    :cond_d
    move-object/from16 v28, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v6

    move-object/from16 v26, v10

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v4, :cond_18

    add-int/lit8 v2, v4, -0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    goto :goto_e

    :cond_e
    neg-float v2, v5

    div-float v2, v2, v16

    goto :goto_d

    :cond_f
    neg-float v2, v5

    :goto_d
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_e
    add-int/lit8 v2, v12, -0x1

    int-to-float v2, v2

    mul-float v2, v2, v18

    div-float v2, v2, v16

    int-to-float v3, v13

    mul-float v3, v3, v18

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 22
    :goto_f
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_17

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v6, v26

    invoke-static {v3, v7, v6}, Li0/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v5, v27

    .line 23
    iget-object v10, v5, Ld0/f;->g:Landroidx/collection/SparseArrayCompat;

    .line 24
    invoke-virtual {v10, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/d;

    if-nez v3, :cond_10

    move/from16 v31, v4

    move-object/from16 v27, v5

    move/from16 v26, v12

    move-object/from16 v29, v14

    move/from16 v3, v20

    move-object/from16 v10, v23

    move-object/from16 v15, v25

    move-object/from16 v4, v28

    goto/16 :goto_15

    .line 25
    :cond_10
    iget-object v10, v0, Ll0/i;->D:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move/from16 v31, v4

    move-object/from16 v27, v5

    move/from16 v26, v12

    move-object/from16 v29, v14

    move-object/from16 v4, v28

    goto :goto_11

    :cond_11
    iget-object v11, v3, Li0/d;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v27, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v26, v12

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v15, :cond_12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v11

    move-object/from16 v11, v29

    check-cast v11, Lk0/m;

    move-object/from16 v29, v14

    new-instance v14, Lf0/d;

    move/from16 v31, v4

    move-object/from16 v4, v28

    invoke-direct {v14, v4, v0, v11}, Lf0/d;-><init>(Ld0/l;Ll0/b;Lk0/m;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, v29

    move-object/from16 v11, v30

    move/from16 v4, v31

    goto :goto_10

    :cond_12
    move/from16 v31, v4

    move-object/from16 v29, v14

    move-object/from16 v4, v28

    invoke-virtual {v10, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v5

    :goto_11
    const/4 v5, 0x0

    .line 26
    :goto_12
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_14

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf0/d;

    invoke-virtual {v11}, Lf0/d;->getPath()Landroid/graphics/Path;

    move-result-object v11

    iget-object v12, v0, Ll0/i;->z:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v12, v0, Ll0/i;->A:Landroid/graphics/Matrix;

    move-object/from16 v14, p2

    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move-object/from16 v15, v25

    move-object/from16 v25, v10

    iget v10, v15, Li0/b;->g:F

    neg-float v10, v10

    invoke-static {}, Lp0/g;->c()F

    move-result v28

    mul-float v10, v10, v28

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v12, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v11, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    if-eqz v24, :cond_13

    move-object/from16 v10, v23

    invoke-static {v11, v10, v1}, Ll0/i;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    move-object/from16 v12, v22

    invoke-static {v11, v12, v1}, Ll0/i;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_13

    :cond_13
    move-object/from16 v12, v22

    move-object/from16 v10, v23

    invoke-static {v11, v12, v1}, Ll0/i;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v11, v10, v1}, Ll0/i;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_13
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v23, v10

    move-object/from16 v22, v12

    move-object/from16 v10, v25

    move-object/from16 v25, v15

    goto :goto_12

    :cond_14
    move-object/from16 v10, v23

    move-object/from16 v15, v25

    .line 27
    iget-wide v11, v3, Li0/d;->c:D

    double-to-float v3, v11

    mul-float v3, v3, v8

    invoke-static {}, Lp0/g;->c()F

    move-result v5

    mul-float v5, v5, v3

    mul-float v5, v5, v9

    move/from16 v3, v20

    int-to-float v11, v3

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v11, v12

    iget-object v12, v0, Ll0/i;->P:Lg0/p;

    if-eqz v12, :cond_15

    goto :goto_14

    :cond_15
    if-eqz v19, :cond_16

    move-object/from16 v12, v19

    :goto_14
    invoke-virtual {v12}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    :cond_16
    mul-float v11, v11, v9

    add-float/2addr v11, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_15
    add-int/lit8 v2, v2, 0x1

    move/from16 v20, v3

    move-object/from16 v28, v4

    move-object/from16 v23, v10

    move-object/from16 v25, v15

    move/from16 v12, v26

    move-object/from16 v14, v29

    move/from16 v4, v31

    move-object/from16 v26, v6

    goto/16 :goto_f

    :cond_17
    move/from16 v31, v4

    move/from16 v3, v20

    move-object/from16 v10, v23

    move-object/from16 v15, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v28

    move/from16 v26, v12

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v13, 0x1

    move-object v2, v4

    move-object v3, v15

    move-object/from16 v5, v21

    move/from16 v11, v24

    move/from16 v4, v31

    move-object v10, v6

    move-object/from16 v6, v27

    goto/16 :goto_a

    .line 29
    :cond_18
    throw v17

    :cond_19
    move-object v8, v1

    goto/16 :goto_29

    :cond_1a
    move/from16 v31, v4

    move-object v6, v10

    move/from16 v24, v11

    move/from16 v3, v20

    move-object v4, v2

    move-object v10, v9

    move-object/from16 v2, v22

    .line 30
    iget-object v8, v0, Ll0/i;->R:Lg0/p;

    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Lg0/p;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    if-eqz v8, :cond_1b

    move-object/from16 v20, v12

    goto/16 :goto_1b

    .line 31
    :cond_1b
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v8

    if-nez v8, :cond_1c

    move-object/from16 v4, v17

    goto :goto_16

    .line 32
    :cond_1c
    iget-object v8, v4, Ld0/l;->l:Lh0/a;

    if-nez v8, :cond_1d

    new-instance v8, Lh0/a;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v9

    invoke-direct {v8, v9}, Lh0/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v8, v4, Ld0/l;->l:Lh0/a;

    :cond_1d
    iget-object v4, v4, Ld0/l;->l:Lh0/a;

    :goto_16
    if-eqz v4, :cond_24

    .line 33
    iget-object v8, v4, Lh0/a;->a:Li0/i;

    iput-object v7, v8, Li0/i;->a:Ljava/lang/Object;

    .line 34
    iput-object v6, v8, Li0/i;->b:Ljava/lang/Object;

    .line 35
    iget-object v9, v4, Lh0/a;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Typeface;

    if-eqz v11, :cond_1e

    move-object v8, v11

    move-object/from16 v20, v12

    goto :goto_1a

    .line 36
    :cond_1e
    iget-object v11, v4, Lh0/a;->c:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Typeface;

    if-eqz v20, :cond_1f

    move-object/from16 v1, v20

    move-object/from16 v20, v12

    goto :goto_17

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v20, v12

    const-string v12, "fonts/"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lh0/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v4, Lh0/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v11, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    const-string v4, "Italic"

    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, "Bold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v4, :cond_20

    if-eqz v6, :cond_20

    const/4 v4, 0x3

    goto :goto_18

    :cond_20
    if-eqz v4, :cond_21

    const/4 v4, 0x2

    goto :goto_18

    :cond_21
    if-eqz v6, :cond_22

    const/4 v4, 0x1

    goto :goto_18

    :cond_22
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    if-ne v6, v4, :cond_23

    goto :goto_19

    :cond_23
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 38
    :goto_19
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v1

    goto :goto_1a

    :cond_24
    move-object/from16 v20, v12

    move-object/from16 v8, v17

    :goto_1a
    if-eqz v8, :cond_25

    goto :goto_1b

    :cond_25
    move-object/from16 v8, v17

    :goto_1b
    if-nez v8, :cond_27

    :cond_26
    move-object/from16 v8, p1

    goto/16 :goto_29

    .line 39
    :cond_27
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, v0, Ll0/i;->Q:Lg0/p;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lg0/p;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1c

    :cond_28
    move/from16 v1, v21

    :goto_1c
    invoke-static {}, Lp0/g;->c()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lp0/g;->c()F

    move-result v4

    mul-float v4, v4, v5

    int-to-float v3, v3

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v3, v5

    iget-object v5, v0, Ll0/i;->P:Lg0/p;

    if-eqz v5, :cond_29

    goto :goto_1d

    :cond_29
    if-eqz v19, :cond_2a

    move-object/from16 v5, v19

    :goto_1d
    invoke-virtual {v5}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    :cond_2a
    invoke-static {}, Lp0/g;->c()F

    move-result v5

    mul-float v5, v5, v3

    mul-float v5, v5, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v5, v1

    .line 40
    invoke-virtual {v15, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-virtual {v1, v3, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x0

    :goto_1e
    if-ge v14, v3, :cond_26

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v5

    add-float/2addr v8, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v31, :cond_35

    add-int/lit8 v7, v31, -0x1

    const/4 v11, 0x2

    if-eq v7, v9, :cond_2c

    if-eq v7, v11, :cond_2b

    move-object/from16 v8, p1

    goto :goto_20

    :cond_2b
    neg-float v7, v8

    div-float v7, v7, v16

    goto :goto_1f

    :cond_2c
    neg-float v7, v8

    :goto_1f
    move-object/from16 v8, p1

    const/4 v12, 0x0

    .line 42
    invoke-virtual {v8, v7, v12}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_20
    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    mul-float v7, v7, v4

    div-float v7, v7, v16

    int-to-float v12, v14

    mul-float v12, v12, v4

    sub-float/2addr v12, v7

    const/4 v7, 0x0

    .line 43
    invoke-virtual {v8, v7, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v7, 0x0

    .line 44
    :goto_21
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_34

    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v13, v7

    :goto_22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v13, v15, :cond_30

    invoke-virtual {v6, v13}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    .line 46
    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v9

    const/16 v11, 0x10

    if-eq v9, v11, :cond_2e

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v9

    const/16 v11, 0x1b

    if-eq v9, v11, :cond_2e

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v9

    const/4 v11, 0x6

    if-eq v9, v11, :cond_2e

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v9

    const/16 v11, 0x1c

    if-eq v9, v11, :cond_2e

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v9

    const/16 v11, 0x13

    if-ne v9, v11, :cond_2d

    goto :goto_23

    :cond_2d
    const/4 v9, 0x0

    goto :goto_24

    :cond_2e
    :goto_23
    const/4 v9, 0x1

    :goto_24
    if-nez v9, :cond_2f

    goto :goto_25

    .line 47
    :cond_2f
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v13, v9

    mul-int/lit8 v12, v12, 0x1f

    add-int/2addr v12, v15

    const/4 v9, 0x1

    const/4 v11, 0x2

    goto :goto_22

    :cond_30
    :goto_25
    iget-object v9, v0, Ll0/i;->E:Landroidx/collection/LongSparseArray;

    int-to-long v11, v12

    invoke-virtual {v9, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v15

    if-eqz v15, :cond_31

    invoke-virtual {v9, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 p2, v1

    goto :goto_27

    :cond_31
    iget-object v15, v0, Ll0/i;->y:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v7

    :goto_26
    move-object/from16 p2, v1

    if-ge v0, v13, :cond_32

    invoke-virtual {v6, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, p2

    goto :goto_26

    :cond_32
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v12, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v9, v0

    .line 48
    :goto_27
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v7, v0

    if-eqz v24, :cond_33

    .line 49
    invoke-static {v9, v10, v8}, Ll0/i;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v9, v2, v8}, Ll0/i;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_28

    :cond_33
    invoke-static {v9, v2, v8}, Ll0/i;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v9, v10, v8}, Ll0/i;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 50
    :goto_28
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v5

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v1, p2

    const/4 v9, 0x1

    const/4 v11, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_21

    :cond_34
    move-object/from16 p2, v1

    const/4 v1, 0x0

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_1e

    .line 52
    :cond_35
    throw v17

    .line 53
    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
