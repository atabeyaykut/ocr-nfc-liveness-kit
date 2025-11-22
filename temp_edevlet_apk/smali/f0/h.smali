.class public final Lf0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/e;
.implements Lg0/a$a;
.implements Lf0/k;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Z

.field public final c:Ll0/b;

.field public final d:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/graphics/Path;

.field public final g:Le0/a;

.field public final h:Landroid/graphics/RectF;

.field public final i:Ljava/util/ArrayList;

.field public final j:I

.field public final k:Lg0/d;

.field public final l:Lg0/e;

.field public final m:Lg0/j;

.field public final n:Lg0/j;

.field public o:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:Lg0/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final q:Ld0/l;

.field public final r:I


# direct methods
.method public constructor <init>(Ld0/l;Ll0/b;Lk0/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf0/h;->d:Landroidx/collection/LongSparseArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf0/h;->e:Landroidx/collection/LongSparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf0/h;->f:Landroid/graphics/Path;

    .line 24
    .line 25
    new-instance v1, Le0/a;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2}, Le0/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lf0/h;->g:Le0/a;

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lf0/h;->h:Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lf0/h;->i:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput-object p2, p0, Lf0/h;->c:Ll0/b;

    .line 48
    .line 49
    iget-object v1, p3, Lk0/d;->g:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, p0, Lf0/h;->a:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean v1, p3, Lk0/d;->h:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lf0/h;->b:Z

    .line 56
    .line 57
    iput-object p1, p0, Lf0/h;->q:Ld0/l;

    .line 58
    .line 59
    iget v1, p3, Lk0/d;->a:I

    .line 60
    .line 61
    iput v1, p0, Lf0/h;->j:I

    .line 62
    .line 63
    iget-object v1, p3, Lk0/d;->b:Landroid/graphics/Path$FillType;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Ld0/l;->b:Ld0/f;

    .line 69
    .line 70
    invoke-virtual {p1}, Ld0/f;->b()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/high16 v0, 0x42000000    # 32.0f

    .line 75
    .line 76
    div-float/2addr p1, v0

    .line 77
    float-to-int p1, p1

    .line 78
    iput p1, p0, Lf0/h;->r:I

    .line 79
    .line 80
    iget-object p1, p3, Lk0/d;->c:Lj0/c;

    .line 81
    .line 82
    invoke-virtual {p1}, Lj0/c;->c()Lg0/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    move-object v0, p1

    .line 87
    check-cast v0, Lg0/d;

    .line 88
    .line 89
    iput-object v0, p0, Lf0/h;->k:Lg0/d;

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p3, Lk0/d;->d:Lj0/d;

    .line 98
    .line 99
    invoke-virtual {p1}, Lj0/d;->c()Lg0/a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    move-object v0, p1

    .line 104
    check-cast v0, Lg0/e;

    .line 105
    .line 106
    iput-object v0, p0, Lf0/h;->l:Lg0/e;

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p3, Lk0/d;->e:Lj0/f;

    .line 115
    .line 116
    invoke-virtual {p1}, Lj0/f;->c()Lg0/a;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    move-object v0, p1

    .line 121
    check-cast v0, Lg0/j;

    .line 122
    .line 123
    iput-object v0, p0, Lf0/h;->m:Lg0/j;

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p3, Lk0/d;->f:Lj0/f;

    .line 132
    .line 133
    invoke-virtual {p1}, Lj0/f;->c()Lg0/a;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    move-object p3, p1

    .line 138
    check-cast p3, Lg0/j;

    .line 139
    .line 140
    iput-object p3, p0, Lf0/h;->n:Lg0/j;

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lf0/h;->q:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/c;

    instance-of v1, v0, Lf0/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf0/h;->i:Ljava/util/ArrayList;

    check-cast v0, Lf0/m;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lp0/f;->d(Li0/e;ILjava/util/ArrayList;Li0/e;Lf0/k;)V

    return-void
.end method

.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object p3, p0, Lf0/h;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lf0/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf0/m;

    invoke-interface {v2}, Lf0/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final e([I)[I
    .locals 4

    iget-object v0, p0, Lf0/h;->p:Lg0/p;

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
    .locals 3
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ld0/q;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lf0/h;->l:Lg0/e;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lg0/a;->k(Lq0/c;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget-object v0, Ld0/q;->E:Landroid/graphics/ColorFilter;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iget-object v2, p0, Lf0/h;->c:Ll0/b;

    .line 15
    .line 16
    if-ne p2, v0, :cond_3

    .line 17
    .line 18
    iget-object p2, p0, Lf0/h;->o:Lg0/p;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ll0/b;->m(Lg0/a;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lf0/h;->o:Lg0/p;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    new-instance p2, Lg0/p;

    .line 31
    .line 32
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lf0/h;->o:Lg0/p;

    .line 36
    .line 37
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lf0/h;->o:Lg0/p;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Ld0/q;->F:[Ljava/lang/Integer;

    .line 44
    .line 45
    if-ne p2, v0, :cond_6

    .line 46
    .line 47
    iget-object p2, p0, Lf0/h;->p:Lg0/p;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v2, p2}, Ll0/b;->m(Lg0/a;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    if-nez p1, :cond_5

    .line 55
    .line 56
    iput-object v1, p0, Lf0/h;->p:Lg0/p;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    iget-object p2, p0, Lf0/h;->d:Landroidx/collection/LongSparseArray;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lf0/h;->e:Landroidx/collection/LongSparseArray;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->clear()V

    .line 67
    .line 68
    .line 69
    new-instance p2, Lg0/p;

    .line 70
    .line 71
    invoke-direct {p2, p1, v1}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lf0/h;->p:Lg0/p;

    .line 75
    .line 76
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lf0/h;->p:Lg0/p;

    .line 80
    .line 81
    :goto_0
    invoke-virtual {v2, p1}, Ll0/b;->e(Lg0/a;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_1
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Lf0/h;->b:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lf0/h;->f:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    iget-object v5, v0, Lf0/h;->i:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ge v4, v6, :cond_1

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lf0/m;

    .line 30
    .line 31
    invoke-interface {v5}, Lf0/m;->getPath()Landroid/graphics/Path;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v4, v0, Lf0/h;->h:Landroid/graphics/RectF;

    .line 42
    .line 43
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 44
    .line 45
    .line 46
    iget v4, v0, Lf0/h;->j:I

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    iget-object v6, v0, Lf0/h;->k:Lg0/d;

    .line 50
    .line 51
    iget-object v7, v0, Lf0/h;->n:Lg0/j;

    .line 52
    .line 53
    iget-object v8, v0, Lf0/h;->m:Lg0/j;

    .line 54
    .line 55
    if-ne v4, v5, :cond_3

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Lf0/h;->h()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget-object v5, v0, Lf0/h;->d:Landroidx/collection/LongSparseArray;

    .line 62
    .line 63
    int-to-long v9, v4

    .line 64
    invoke-virtual {v5, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Landroid/graphics/LinearGradient;

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/graphics/PointF;

    .line 79
    .line 80
    invoke-virtual {v7}, Lg0/a;->f()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Landroid/graphics/PointF;

    .line 85
    .line 86
    invoke-virtual {v6}, Lg0/a;->f()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lk0/c;

    .line 91
    .line 92
    iget-object v8, v6, Lk0/c;->b:[I

    .line 93
    .line 94
    invoke-virtual {v0, v8}, Lf0/h;->e([I)[I

    .line 95
    .line 96
    .line 97
    move-result-object v16

    .line 98
    iget-object v6, v6, Lk0/c;->a:[F

    .line 99
    .line 100
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 101
    .line 102
    iget v12, v4, Landroid/graphics/PointF;->x:F

    .line 103
    .line 104
    iget v13, v4, Landroid/graphics/PointF;->y:F

    .line 105
    .line 106
    iget v14, v7, Landroid/graphics/PointF;->x:F

    .line 107
    .line 108
    iget v15, v7, Landroid/graphics/PointF;->y:F

    .line 109
    .line 110
    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 111
    .line 112
    move-object v11, v8

    .line 113
    move-object/from16 v17, v6

    .line 114
    .line 115
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v9, v10, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    move-object v4, v8

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf0/h;->h()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    iget-object v5, v0, Lf0/h;->e:Landroidx/collection/LongSparseArray;

    .line 128
    .line 129
    int-to-long v9, v4

    .line 130
    invoke-virtual {v5, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Landroid/graphics/RadialGradient;

    .line 135
    .line 136
    if-eqz v4, :cond_4

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    invoke-virtual {v8}, Lg0/a;->f()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Landroid/graphics/PointF;

    .line 144
    .line 145
    invoke-virtual {v7}, Lg0/a;->f()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Landroid/graphics/PointF;

    .line 150
    .line 151
    invoke-virtual {v6}, Lg0/a;->f()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Lk0/c;

    .line 156
    .line 157
    iget-object v8, v6, Lk0/c;->b:[I

    .line 158
    .line 159
    invoke-virtual {v0, v8}, Lf0/h;->e([I)[I

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    iget-object v6, v6, Lk0/c;->a:[F

    .line 164
    .line 165
    iget v12, v4, Landroid/graphics/PointF;->x:F

    .line 166
    .line 167
    iget v13, v4, Landroid/graphics/PointF;->y:F

    .line 168
    .line 169
    iget v4, v7, Landroid/graphics/PointF;->x:F

    .line 170
    .line 171
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 172
    .line 173
    sub-float/2addr v4, v12

    .line 174
    float-to-double v3, v4

    .line 175
    sub-float/2addr v7, v13

    .line 176
    move-wide/from16 v18, v9

    .line 177
    .line 178
    float-to-double v8, v7

    .line 179
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    double-to-float v3, v3

    .line 184
    const/4 v4, 0x0

    .line 185
    cmpg-float v4, v3, v4

    .line 186
    .line 187
    if-gtz v4, :cond_5

    .line 188
    .line 189
    const v3, 0x3a83126f    # 0.001f

    .line 190
    .line 191
    .line 192
    const v14, 0x3a83126f    # 0.001f

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    move v14, v3

    .line 197
    :goto_1
    new-instance v4, Landroid/graphics/RadialGradient;

    .line 198
    .line 199
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 200
    .line 201
    move-object v11, v4

    .line 202
    move-object/from16 v16, v6

    .line 203
    .line 204
    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 205
    .line 206
    .line 207
    move-wide/from16 v6, v18

    .line 208
    .line 209
    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :goto_2
    invoke-virtual {v4, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lf0/h;->g:Le0/a;

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 218
    .line 219
    .line 220
    iget-object v3, v0, Lf0/h;->o:Lg0/p;

    .line 221
    .line 222
    if-eqz v3, :cond_6

    .line 223
    .line 224
    invoke-virtual {v3}, Lg0/p;->f()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Landroid/graphics/ColorFilter;

    .line 229
    .line 230
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 231
    .line 232
    .line 233
    :cond_6
    move/from16 v3, p3

    .line 234
    .line 235
    int-to-float v3, v3

    .line 236
    const/high16 v4, 0x437f0000    # 255.0f

    .line 237
    .line 238
    div-float/2addr v3, v4

    .line 239
    iget-object v5, v0, Lf0/h;->l:Lg0/e;

    .line 240
    .line 241
    invoke-virtual {v5}, Lg0/a;->f()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Ljava/lang/Integer;

    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    int-to-float v5, v5

    .line 252
    mul-float v3, v3, v5

    .line 253
    .line 254
    const/high16 v5, 0x42c80000    # 100.0f

    .line 255
    .line 256
    div-float/2addr v3, v5

    .line 257
    mul-float v3, v3, v4

    .line 258
    .line 259
    float-to-int v3, v3

    .line 260
    sget-object v4, Lp0/f;->a:Landroid/graphics/PointF;

    .line 261
    .line 262
    const/16 v4, 0xff

    .line 263
    .line 264
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    const/4 v4, 0x0

    .line 269
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    .line 275
    .line 276
    move-object/from16 v3, p1

    .line 277
    .line 278
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 279
    .line 280
    .line 281
    invoke-static {}, Ld0/c;->a()V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf0/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/h;->m:Lg0/j;

    .line 2
    .line 3
    iget v0, v0, Lg0/a;->d:F

    .line 4
    .line 5
    iget v1, p0, Lf0/h;->r:I

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
    iget-object v2, p0, Lf0/h;->n:Lg0/j;

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
    iget-object v3, p0, Lf0/h;->k:Lg0/d;

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
