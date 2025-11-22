.class public final Ld0/l;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/l$n;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public b:Ld0/f;

.field public final c:Lp0/d;

.field public d:F

.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld0/l$n;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lh0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Lh0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Z

.field public n:Ll0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public final t:Z

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ld0/l;->a:Landroid/graphics/Matrix;

    new-instance v0, Lp0/d;

    invoke-direct {v0}, Lp0/d;-><init>()V

    iput-object v0, p0, Ld0/l;->c:Lp0/d;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ld0/l;->d:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld0/l;->e:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Ld0/l;->f:Z

    iput-boolean v2, p0, Ld0/l;->g:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ld0/l;->h:Ljava/util/ArrayList;

    new-instance v3, Ld0/l$e;

    invoke-direct {v3, p0}, Ld0/l$e;-><init>(Ld0/l;)V

    const/16 v4, 0xff

    iput v4, p0, Ld0/l;->p:I

    iput-boolean v1, p0, Ld0/l;->t:Z

    iput-boolean v2, p0, Ld0/l;->v:Z

    invoke-virtual {v0, v3}, Lp0/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final a(Li0/e;Ljava/lang/Object;Lq0/c;)V
    .locals 6
    .param p3    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li0/e;",
            "TT;",
            "Lq0/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld0/l;->n:Ll0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$d;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2, p3}, Ld0/l$d;-><init>(Ld0/l;Li0/e;Ljava/lang/Object;Lq0/c;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v1, Li0/e;->c:Li0/e;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p3, p2}, Ll0/c;->f(Lq0/c;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p1, Li0/e;->b:Li0/f;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0, p3, p2}, Li0/f;->f(Lq0/c;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Ld0/l;->n:Ll0/c;

    .line 39
    .line 40
    new-instance v3, Li0/e;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    new-array v5, v4, [Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v3, v5}, Li0/e;-><init>([Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1, v4, v0, v3}, Ll0/b;->c(Li0/e;ILjava/util/ArrayList;Li0/e;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ge v4, p1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Li0/e;

    .line 62
    .line 63
    iget-object p1, p1, Li0/e;->b:Li0/f;

    .line 64
    .line 65
    invoke-interface {p1, p3, p2}, Li0/f;->f(Lq0/c;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    xor-int/2addr v2, p1

    .line 76
    :goto_1
    if-eqz v2, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Ld0/l;->invalidateSelf()V

    .line 79
    .line 80
    .line 81
    sget-object p1, Ld0/q;->C:Ljava/lang/Float;

    .line 82
    .line 83
    if-ne p2, p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Ld0/l;->c:Lp0/d;

    .line 86
    .line 87
    iget-object p2, p1, Lp0/d;->k:Ld0/f;

    .line 88
    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    iget p1, p1, Lp0/d;->f:F

    .line 94
    .line 95
    iget p3, p2, Ld0/f;->k:F

    .line 96
    .line 97
    sub-float/2addr p1, p3

    .line 98
    iget p2, p2, Ld0/f;->l:F

    .line 99
    .line 100
    sub-float/2addr p2, p3

    .line 101
    div-float/2addr p1, p2

    .line 102
    :goto_2
    invoke-virtual {p0, p1}, Ld0/l;->p(F)V

    .line 103
    .line 104
    .line 105
    :cond_5
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ld0/l;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ld0/l;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ll0/c;

    .line 4
    .line 5
    iget-object v2, v0, Ld0/l;->b:Ld0/f;

    .line 6
    .line 7
    move-object v4, v2

    .line 8
    sget-object v3, Ln0/s;->a:Lo0/c$a;

    .line 9
    .line 10
    iget-object v15, v2, Ld0/f;->j:Landroid/graphics/Rect;

    .line 11
    .line 12
    new-instance v14, Ll0/e;

    .line 13
    .line 14
    move-object v2, v14

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v5, "__container"

    .line 20
    .line 21
    const-wide/16 v6, -0x1

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    const-wide/16 v9, -0x1

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    new-instance v16, Lj0/l;

    .line 32
    .line 33
    move-object/from16 v13, v16

    .line 34
    .line 35
    invoke-direct/range {v16 .. v16}, Lj0/l;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    move-object/from16 v27, v14

    .line 41
    .line 42
    move/from16 v14, v16

    .line 43
    .line 44
    move-object/from16 v20, v15

    .line 45
    .line 46
    move/from16 v15, v16

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    move/from16 v18, v17

    .line 51
    .line 52
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result v19

    .line 56
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    .line 57
    .line 58
    .line 59
    move-result v20

    .line 60
    const/16 v21, 0x0

    .line 61
    .line 62
    const/16 v22, 0x0

    .line 63
    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v23

    .line 68
    const/16 v24, 0x1

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v26, 0x0

    .line 73
    .line 74
    invoke-direct/range {v2 .. v26}, Ll0/e;-><init>(Ljava/util/List;Ld0/f;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lj0/l;IIIFFIILj0/j;Lj0/k;Ljava/util/List;ILj0/b;Z)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Ld0/l;->b:Ld0/f;

    .line 78
    .line 79
    iget-object v3, v2, Ld0/f;->i:Ljava/util/List;

    .line 80
    .line 81
    move-object/from16 v4, v27

    .line 82
    .line 83
    invoke-direct {v1, v0, v4, v3, v2}, Ll0/c;-><init>(Ld0/l;Ll0/e;Ljava/util/List;Ld0/f;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Ld0/l;->n:Ll0/c;

    .line 87
    .line 88
    iget-boolean v2, v0, Ld0/l;->r:Z

    .line 89
    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Ll0/c;->o(Z)V

    .line 94
    .line 95
    .line 96
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/l;->c:Lp0/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lp0/d;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lp0/d;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Ld0/l;->b:Ld0/f;

    .line 12
    .line 13
    iput-object v1, p0, Ld0/l;->n:Ll0/c;

    .line 14
    .line 15
    iput-object v1, p0, Ld0/l;->j:Lh0/b;

    .line 16
    .line 17
    iput-object v1, v0, Lp0/d;->k:Ld0/f;

    .line 18
    .line 19
    const/high16 v1, -0x31000000

    .line 20
    .line 21
    iput v1, v0, Lp0/d;->h:F

    .line 22
    .line 23
    const/high16 v1, 0x4f000000

    .line 24
    .line 25
    iput v1, v0, Lp0/d;->j:F

    .line 26
    .line 27
    invoke-virtual {p0}, Ld0/l;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld0/l;->v:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Ld0/l;->g:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Ld0/l;->e(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    sget-object p1, Lp0/c;->a:Lp0/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Ld0/l;->e(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {}, Ld0/c;->a()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v2, v1

    .line 31
    iget-object v0, v0, Ld0/f;->j:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-float v0, v0

    .line 43
    div-float/2addr v1, v0

    .line 44
    cmpl-float v0, v2, v1

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    iget-object v1, p0, Ld0/l;->a:Landroid/graphics/Matrix;

    .line 53
    .line 54
    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const/high16 v3, 0x40000000    # 2.0f

    .line 57
    .line 58
    const/4 v4, -0x1

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    iget-object v0, p0, Ld0/l;->n:Ll0/c;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    int-to-float v5, v5

    .line 76
    iget-object v6, p0, Ld0/l;->b:Ld0/f;

    .line 77
    .line 78
    iget-object v6, v6, Ld0/f;->j:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    int-to-float v6, v6

    .line 85
    div-float/2addr v5, v6

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    int-to-float v6, v6

    .line 91
    iget-object v7, p0, Ld0/l;->b:Ld0/f;

    .line 92
    .line 93
    iget-object v7, v7, Ld0/f;->j:Landroid/graphics/Rect;

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    int-to-float v7, v7

    .line 100
    div-float/2addr v6, v7

    .line 101
    iget-boolean v7, p0, Ld0/l;->t:Z

    .line 102
    .line 103
    if-eqz v7, :cond_5

    .line 104
    .line 105
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    cmpg-float v8, v7, v2

    .line 110
    .line 111
    if-gez v8, :cond_4

    .line 112
    .line 113
    div-float v8, v2, v7

    .line 114
    .line 115
    div-float/2addr v5, v8

    .line 116
    div-float/2addr v6, v8

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    .line 119
    .line 120
    :goto_2
    cmpl-float v2, v8, v2

    .line 121
    .line 122
    if-lez v2, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    int-to-float v2, v2

    .line 133
    div-float/2addr v2, v3

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    int-to-float v0, v0

    .line 139
    div-float/2addr v0, v3

    .line 140
    mul-float v3, v2, v7

    .line 141
    .line 142
    mul-float v7, v7, v0

    .line 143
    .line 144
    sub-float/2addr v2, v3

    .line 145
    sub-float/2addr v0, v7

    .line 146
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v8, v8, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Ld0/l;->n:Ll0/c;

    .line 159
    .line 160
    iget v2, p0, Ld0/l;->p:I

    .line 161
    .line 162
    invoke-virtual {v0, p1, v1, v2}, Ll0/b;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 163
    .line 164
    .line 165
    if-lez v4, :cond_a

    .line 166
    .line 167
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_6
    iget-object v0, p0, Ld0/l;->n:Ll0/c;

    .line 173
    .line 174
    if-nez v0, :cond_7

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    iget v0, p0, Ld0/l;->d:F

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    int-to-float v5, v5

    .line 184
    iget-object v6, p0, Ld0/l;->b:Ld0/f;

    .line 185
    .line 186
    iget-object v6, v6, Ld0/f;->j:Landroid/graphics/Rect;

    .line 187
    .line 188
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    int-to-float v6, v6

    .line 193
    div-float/2addr v5, v6

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    int-to-float v6, v6

    .line 199
    iget-object v7, p0, Ld0/l;->b:Ld0/f;

    .line 200
    .line 201
    iget-object v7, v7, Ld0/f;->j:Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    int-to-float v7, v7

    .line 208
    div-float/2addr v6, v7

    .line 209
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    cmpl-float v6, v0, v5

    .line 214
    .line 215
    if-lez v6, :cond_8

    .line 216
    .line 217
    iget v0, p0, Ld0/l;->d:F

    .line 218
    .line 219
    div-float/2addr v0, v5

    .line 220
    goto :goto_3

    .line 221
    :cond_8
    move v5, v0

    .line 222
    const/high16 v0, 0x3f800000    # 1.0f

    .line 223
    .line 224
    :goto_3
    cmpl-float v2, v0, v2

    .line 225
    .line 226
    if-lez v2, :cond_9

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    iget-object v2, p0, Ld0/l;->b:Ld0/f;

    .line 233
    .line 234
    iget-object v2, v2, Ld0/f;->j:Landroid/graphics/Rect;

    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    int-to-float v2, v2

    .line 241
    div-float/2addr v2, v3

    .line 242
    iget-object v6, p0, Ld0/l;->b:Ld0/f;

    .line 243
    .line 244
    iget-object v6, v6, Ld0/f;->j:Landroid/graphics/Rect;

    .line 245
    .line 246
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    int-to-float v6, v6

    .line 251
    div-float/2addr v6, v3

    .line 252
    mul-float v3, v2, v5

    .line 253
    .line 254
    mul-float v7, v6, v5

    .line 255
    .line 256
    iget v8, p0, Ld0/l;->d:F

    .line 257
    .line 258
    mul-float v2, v2, v8

    .line 259
    .line 260
    sub-float/2addr v2, v3

    .line 261
    mul-float v8, v8, v6

    .line 262
    .line 263
    sub-float/2addr v8, v7

    .line 264
    invoke-virtual {p1, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0, v0, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 268
    .line 269
    .line 270
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Ld0/l;->n:Ll0/c;

    .line 277
    .line 278
    iget v2, p0, Ld0/l;->p:I

    .line 279
    .line 280
    invoke-virtual {v0, p1, v1, v2}, Ll0/b;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 281
    .line 282
    .line 283
    if-lez v4, :cond_a

    .line 284
    .line 285
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 286
    .line 287
    .line 288
    :cond_a
    :goto_4
    return-void
.end method

.method public final f()V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ld0/l;->n:Ll0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$f;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ld0/l$f;-><init>(Ld0/l;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Ld0/l;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    iget-object v2, p0, Ld0/l;->c:Lp0/d;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_5

    .line 30
    .line 31
    :cond_1
    iput-boolean v1, v2, Lp0/d;->l:Z

    .line 32
    .line 33
    invoke-virtual {v2}, Lp0/d;->f()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v3, v2, Lp0/a;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 54
    .line 55
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v6, 0x1a

    .line 58
    .line 59
    if-lt v5, v6, :cond_2

    .line 60
    .line 61
    invoke-static {v4, v2, v0}, Landroidx/camera/camera2/internal/compat/params/b;->i(Landroid/animation/Animator$AnimatorListener;Lp0/d;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v4, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v2}, Lp0/d;->f()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v2}, Lp0/d;->d()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v2}, Lp0/d;->e()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :goto_1
    float-to-int v0, v0

    .line 85
    int-to-float v0, v0

    .line 86
    invoke-virtual {v2, v0}, Lp0/d;->h(F)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v3, 0x0

    .line 90
    .line 91
    iput-wide v3, v2, Lp0/d;->e:J

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    iput v0, v2, Lp0/d;->g:I

    .line 95
    .line 96
    iget-boolean v3, v2, Lp0/d;->l:Z

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Lp0/d;->g(Z)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-virtual {p0}, Ld0/l;->b()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    iget v0, v2, Lp0/d;->c:F

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    cmpg-float v0, v0, v3

    .line 120
    .line 121
    if-gez v0, :cond_6

    .line 122
    .line 123
    invoke-virtual {v2}, Lp0/d;->e()F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    invoke-virtual {v2}, Lp0/d;->d()F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    :goto_2
    float-to-int v0, v0

    .line 133
    invoke-virtual {p0, v0}, Ld0/l;->h(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Lp0/d;->g(Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lp0/d;->f()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {v2, v0}, Lp0/a;->b(Z)V

    .line 144
    .line 145
    .line 146
    :cond_7
    return-void
.end method

.method public final g()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ld0/l;->n:Ll0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$g;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ld0/l$g;-><init>(Ld0/l;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Ld0/l;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    iget-object v2, p0, Ld0/l;->c:Lp0/d;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_1
    iput-boolean v1, v2, Lp0/d;->l:Z

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v2, v0}, Lp0/d;->g(Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    iput-wide v3, v2, Lp0/d;->e:J

    .line 47
    .line 48
    invoke-virtual {v2}, Lp0/d;->f()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget v0, v2, Lp0/d;->f:F

    .line 55
    .line 56
    invoke-virtual {v2}, Lp0/d;->e()F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    cmpl-float v0, v0, v3

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Lp0/d;->d()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2}, Lp0/d;->f()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget v0, v2, Lp0/d;->f:F

    .line 76
    .line 77
    invoke-virtual {v2}, Lp0/d;->d()F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    cmpl-float v0, v0, v3

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2}, Lp0/d;->e()F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    :goto_0
    iput v0, v2, Lp0/d;->f:F

    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Ld0/l;->b()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    iget v0, v2, Lp0/d;->c:F

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    cmpg-float v0, v0, v3

    .line 101
    .line 102
    if-gez v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v2}, Lp0/d;->e()F

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v2}, Lp0/d;->d()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    :goto_1
    float-to-int v0, v0

    .line 114
    invoke-virtual {p0, v0}, Ld0/l;->h(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lp0/d;->g(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Lp0/d;->f()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {v2, v0}, Lp0/a;->b(Z)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Ld0/l;->p:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Ld0/f;->j:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget v1, p0, Ld0/l;->d:F

    .line 15
    .line 16
    mul-float v0, v0, v1

    .line 17
    .line 18
    float-to-int v0, v0

    .line 19
    :goto_0
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Ld0/f;->j:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget v1, p0, Ld0/l;->d:F

    .line 15
    .line 16
    mul-float v0, v0, v1

    .line 17
    .line 18
    float-to-int v0, v0

    .line 19
    :goto_0
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    new-instance v1, Ld0/l$b;

    invoke-direct {v1, p0, p1}, Ld0/l$b;-><init>(Ld0/l;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Ld0/l;->c:Lp0/d;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lp0/d;->h(F)V

    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$j;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ld0/l$j;-><init>(Ld0/l;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    const v0, 0x3f7d70a4    # 0.99f

    .line 18
    .line 19
    .line 20
    add-float/2addr p1, v0

    .line 21
    iget-object v0, p0, Ld0/l;->c:Lp0/d;

    .line 22
    .line 23
    iget v1, v0, Lp0/d;->h:F

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lp0/d;->i(FF)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Ld0/l;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld0/l;->v:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/l;->c:Lp0/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, v0, Lp0/d;->l:Z

    .line 8
    .line 9
    :goto_0
    return v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$m;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ld0/l$m;-><init>(Ld0/l;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ld0/f;->c(Ljava/lang/String;)Li0/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget p1, v0, Li0/h;->b:F

    .line 23
    .line 24
    iget v0, v0, Li0/h;->c:F

    .line 25
    .line 26
    add-float/2addr p1, v0

    .line 27
    float-to-int p1, p1

    .line 28
    invoke-virtual {p0, p1}, Ld0/l;->i(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v1, "Cannot find marker with name "

    .line 35
    .line 36
    const-string v2, "."

    .line 37
    .line 38
    invoke-static {v1, p1, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final k(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$k;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ld0/l$k;-><init>(Ld0/l;F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Ld0/f;->k:F

    .line 17
    .line 18
    iget v0, v0, Ld0/f;->l:F

    .line 19
    .line 20
    sget-object v2, Lp0/f;->a:Landroid/graphics/PointF;

    .line 21
    .line 22
    invoke-static {v0, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {p0, p1}, Ld0/l;->i(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    iget-object v1, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ld0/l$a;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Ld0/l$a;-><init>(Ld0/l;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ld0/f;->c(Ljava/lang/String;)Li0/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget p1, v0, Li0/h;->b:F

    .line 23
    .line 24
    float-to-int p1, p1

    .line 25
    iget v0, v0, Li0/h;->c:F

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    add-int/2addr v0, p1

    .line 29
    iget-object v2, p0, Ld0/l;->b:Ld0/f;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Ld0/m;

    .line 34
    .line 35
    invoke-direct {v2, p0, p1, v0}, Ld0/m;-><init>(Ld0/l;II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    int-to-float p1, p1

    .line 43
    int-to-float v0, v0

    .line 44
    const v1, 0x3f7d70a4    # 0.99f

    .line 45
    .line 46
    .line 47
    add-float/2addr v0, v1

    .line 48
    iget-object v1, p0, Ld0/l;->c:Lp0/d;

    .line 49
    .line 50
    invoke-virtual {v1, p1, v0}, Lp0/d;->i(FF)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v1, "Cannot find marker with name "

    .line 57
    .line 58
    const-string v2, "."

    .line 59
    .line 60
    invoke-static {v1, p1, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$h;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ld0/l$h;-><init>(Ld0/l;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    iget-object v0, p0, Ld0/l;->c:Lp0/d;

    .line 18
    .line 19
    iget v1, v0, Lp0/d;->j:F

    .line 20
    .line 21
    float-to-int v1, v1

    .line 22
    int-to-float v1, v1

    .line 23
    invoke-virtual {v0, p1, v1}, Lp0/d;->i(FF)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$l;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ld0/l$l;-><init>(Ld0/l;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ld0/f;->c(Ljava/lang/String;)Li0/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget p1, v0, Li0/h;->b:F

    .line 23
    .line 24
    float-to-int p1, p1

    .line 25
    invoke-virtual {p0, p1}, Ld0/l;->m(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v1, "Cannot find marker with name "

    .line 32
    .line 33
    const-string v2, "."

    .line 34
    .line 35
    invoke-static {v1, p1, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public final o(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$i;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ld0/l$i;-><init>(Ld0/l;F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Ld0/f;->k:F

    .line 17
    .line 18
    iget v0, v0, Ld0/f;->l:F

    .line 19
    .line 20
    sget-object v2, Lp0/f;->a:Landroid/graphics/PointF;

    .line 21
    .line 22
    invoke-static {v0, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {p0, p1}, Ld0/l;->m(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final p(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ld0/l;->b:Ld0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ld0/l$c;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ld0/l$c;-><init>(Ld0/l;F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Ld0/f;->k:F

    .line 17
    .line 18
    iget v0, v0, Ld0/f;->l:F

    .line 19
    .line 20
    sget-object v2, Lp0/f;->a:Landroid/graphics/PointF;

    .line 21
    .line 22
    invoke-static {v0, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v0, p0, Ld0/l;->c:Lp0/d;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lp0/d;->h(F)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ld0/c;->a()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Ld0/l;->p:I

    invoke-virtual {p0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "Use addColorFilter instead."

    invoke-static {p1}, Lp0/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld0/l;->f()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Ld0/l;->c:Lp0/d;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lp0/d;->g(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lp0/d;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {v1, v0}, Lp0/a;->b(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
