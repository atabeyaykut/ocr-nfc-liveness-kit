.class public Ls8/a;
.super Ls8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/a$b;,
        Ls8/a$a;
    }
.end annotation


# instance fields
.field public A:F

.field public B:I

.field public C:I

.field public D:J

.field public final r:Landroid/graphics/RectF;

.field public final s:Landroid/graphics/Matrix;

.field public t:F

.field public v:F

.field public w:Lo8/c;

.field public x:Ls8/a$a;

.field public y:Ls8/a$b;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ls8/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Ls8/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ls8/a;->r:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ls8/a;->s:Landroid/graphics/Matrix;

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Ls8/a;->v:F

    const/4 p1, 0x0

    iput-object p1, p0, Ls8/a;->y:Ls8/a$b;

    iput p3, p0, Ls8/a;->B:I

    iput p3, p0, Ls8/a;->C:I

    const-wide/16 p1, 0x1f4

    iput-wide p1, p0, Ls8/a;->D:J

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 9

    .line 1
    invoke-super {p0}, Ls8/c;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    iget v2, p0, Ls8/a;->t:F

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    cmpl-float v2, v2, v3

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    div-float v2, v1, v0

    .line 29
    .line 30
    iput v2, p0, Ls8/a;->t:F

    .line 31
    .line 32
    :cond_1
    iget v2, p0, Ls8/c;->e:I

    .line 33
    .line 34
    int-to-float v4, v2

    .line 35
    iget v5, p0, Ls8/a;->t:F

    .line 36
    .line 37
    div-float v6, v4, v5

    .line 38
    .line 39
    float-to-int v6, v6

    .line 40
    iget v7, p0, Ls8/c;->f:I

    .line 41
    .line 42
    iget-object v8, p0, Ls8/a;->r:Landroid/graphics/RectF;

    .line 43
    .line 44
    if-le v6, v7, :cond_2

    .line 45
    .line 46
    int-to-float v4, v7

    .line 47
    mul-float v5, v5, v4

    .line 48
    .line 49
    float-to-int v5, v5

    .line 50
    sub-int/2addr v2, v5

    .line 51
    div-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    int-to-float v6, v2

    .line 54
    add-int/2addr v5, v2

    .line 55
    int-to-float v2, v5

    .line 56
    invoke-virtual {v8, v6, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sub-int/2addr v7, v6

    .line 61
    div-int/lit8 v7, v7, 0x2

    .line 62
    .line 63
    int-to-float v2, v7

    .line 64
    add-int/2addr v6, v7

    .line 65
    int-to-float v5, v6

    .line 66
    invoke-virtual {v8, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0, v1, v0}, Ls8/a;->g(FF)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    div-float/2addr v4, v1

    .line 85
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    div-float/2addr v5, v0

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    mul-float v1, v1, v4

    .line 95
    .line 96
    sub-float/2addr v2, v1

    .line 97
    const/high16 v1, 0x40000000    # 2.0f

    .line 98
    .line 99
    div-float/2addr v2, v1

    .line 100
    iget v5, v8, Landroid/graphics/RectF;->left:F

    .line 101
    .line 102
    add-float/2addr v2, v5

    .line 103
    mul-float v0, v0, v4

    .line 104
    .line 105
    sub-float/2addr v3, v0

    .line 106
    div-float/2addr v3, v1

    .line 107
    iget v0, v8, Landroid/graphics/RectF;->top:F

    .line 108
    .line 109
    add-float/2addr v3, v0

    .line 110
    iget-object v0, p0, Ls8/c;->d:Landroid/graphics/Matrix;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ls8/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Ls8/a;->w:Lo8/c;

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    iget v1, p0, Ls8/a;->t:F

    .line 129
    .line 130
    check-cast v0, Ls8/d;

    .line 131
    .line 132
    iget-object v0, v0, Ls8/d;->a:Lcom/yalantis/ucrop/view/UCropView;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V

    .line 137
    .line 138
    .line 139
    :cond_3
    iget-object v0, p0, Ls8/c;->g:Ls8/c$a;

    .line 140
    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-virtual {p0}, Ls8/c;->getCurrentScale()F

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    check-cast v0, Lcom/yalantis/ucrop/UCropActivity$a;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropActivity$a;->b(F)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Ls8/c;->g:Ls8/c$a;

    .line 153
    .line 154
    invoke-virtual {p0}, Ls8/c;->getCurrentAngle()F

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    check-cast v0, Lcom/yalantis/ucrop/UCropActivity$a;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropActivity$a;->a(F)V

    .line 161
    .line 162
    .line 163
    :cond_4
    return-void
.end method

.method public final e(FFF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ls8/c;->getCurrentScale()F

    move-result v1

    mul-float v1, v1, p1

    invoke-virtual {p0}, Ls8/a;->getMaxScale()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Ls8/c;->e(FFF)V

    goto :goto_1

    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ls8/c;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, p1

    invoke-virtual {p0}, Ls8/a;->getMinScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final g(FF)V
    .locals 3

    iget-object v0, p0, Ls8/a;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Ls8/a;->A:F

    iget p2, p0, Ls8/a;->v:F

    mul-float p1, p1, p2

    iput p1, p0, Ls8/a;->z:F

    return-void
.end method

.method public getCropBoundsChangeListener()Lo8/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ls8/a;->w:Lo8/c;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    iget v0, p0, Ls8/a;->z:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    iget v0, p0, Ls8/a;->A:F

    return v0
.end method

.method public getTargetAspectRatio()F
    .locals 1

    iget v0, p0, Ls8/a;->t:F

    return v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Ls8/a;->x:Ls8/a$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ls8/a;->y:Ls8/a$b;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i([F)Z
    .locals 2

    iget-object v0, p0, Ls8/a;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Ls8/c;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Ls8/a;->r:Landroid/graphics/RectF;

    invoke-static {v1}, Lb8/f;->I(Landroid/graphics/RectF;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static {p1}, Lb8/f;->p0([F)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {v1}, Lb8/f;->p0([F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method public final j(FFF)V
    .locals 1

    invoke-virtual {p0}, Ls8/a;->getMaxScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ls8/c;->getCurrentScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Ls8/a;->e(FFF)V

    :cond_0
    return-void
.end method

.method public setCropBoundsChangeListener(Lo8/c;)V
    .locals 0
    .param p1    # Lo8/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Ls8/a;->w:Lo8/c;

    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-float/2addr v0, v1

    .line 10
    iput v0, p0, Ls8/a;->t:F

    .line 11
    .line 12
    iget-object v0, p0, Ls8/a;->r:Landroid/graphics/RectF;

    .line 13
    .line 14
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    sub-float/2addr v1, v2

    .line 22
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    sub-float/2addr v2, v3

    .line 30
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    int-to-float v4, v4

    .line 37
    sub-float/2addr v3, v4

    .line 38
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    int-to-float v4, v4

    .line 45
    sub-float/2addr p1, v4

    .line 46
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    int-to-float v0, v0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    int-to-float p1, p1

    .line 66
    invoke-virtual {p0, v0, p1}, Ls8/a;->g(FF)V

    .line 67
    .line 68
    .line 69
    :goto_0
    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
    .locals 20

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    iget-boolean v0, v11, Ls8/c;->l:Z

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v0, v11, Ls8/c;->a:[F

    .line 8
    .line 9
    invoke-virtual {v11, v0}, Ls8/a;->i([F)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_6

    .line 14
    .line 15
    iget-object v1, v11, Ls8/c;->b:[F

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget v4, v1, v2

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aget v5, v1, v3

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Ls8/c;->getCurrentScale()F

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    iget-object v1, v11, Ls8/a;->r:Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    sub-float/2addr v6, v4

    .line 34
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    sub-float/2addr v7, v5

    .line 39
    iget-object v9, v11, Ls8/a;->s:Landroid/graphics/Matrix;

    .line 40
    .line 41
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 45
    .line 46
    .line 47
    array-length v10, v0

    .line 48
    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, v10}, Ls8/a;->i([F)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const/4 v12, 0x4

    .line 60
    if-eqz v10, :cond_4

    .line 61
    .line 62
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Ls8/c;->getCurrentAngle()F

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    neg-float v6, v6

    .line 70
    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 71
    .line 72
    .line 73
    array-length v6, v0

    .line 74
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1}, Lb8/f;->I(Landroid/graphics/RectF;)[F

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lb8/f;->p0([F)Landroid/graphics/RectF;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v6}, Lb8/f;->p0([F)Landroid/graphics/RectF;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    iget v7, v0, Landroid/graphics/RectF;->left:F

    .line 97
    .line 98
    iget v15, v6, Landroid/graphics/RectF;->left:F

    .line 99
    .line 100
    sub-float/2addr v7, v15

    .line 101
    iget v15, v0, Landroid/graphics/RectF;->top:F

    .line 102
    .line 103
    iget v13, v6, Landroid/graphics/RectF;->top:F

    .line 104
    .line 105
    sub-float/2addr v15, v13

    .line 106
    iget v13, v0, Landroid/graphics/RectF;->right:F

    .line 107
    .line 108
    iget v14, v6, Landroid/graphics/RectF;->right:F

    .line 109
    .line 110
    sub-float/2addr v13, v14

    .line 111
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 112
    .line 113
    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 114
    .line 115
    sub-float/2addr v0, v6

    .line 116
    new-array v6, v12, [F

    .line 117
    .line 118
    const/4 v12, 0x0

    .line 119
    cmpl-float v14, v7, v12

    .line 120
    .line 121
    if-lez v14, :cond_0

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const/4 v7, 0x0

    .line 125
    :goto_0
    aput v7, v6, v2

    .line 126
    .line 127
    cmpl-float v7, v15, v12

    .line 128
    .line 129
    if-lez v7, :cond_1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    const/4 v15, 0x0

    .line 133
    :goto_1
    aput v15, v6, v3

    .line 134
    .line 135
    cmpg-float v7, v13, v12

    .line 136
    .line 137
    if-gez v7, :cond_2

    .line 138
    .line 139
    const/4 v7, 0x2

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    const/4 v7, 0x2

    .line 142
    const/4 v13, 0x0

    .line 143
    :goto_2
    aput v13, v6, v7

    .line 144
    .line 145
    cmpg-float v13, v0, v12

    .line 146
    .line 147
    if-gez v13, :cond_3

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_3
    const/4 v0, 0x0

    .line 151
    :goto_3
    const/4 v13, 0x3

    .line 152
    aput v0, v6, v13

    .line 153
    .line 154
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Ls8/c;->getCurrentAngle()F

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 165
    .line 166
    .line 167
    aget v0, v6, v2

    .line 168
    .line 169
    aget v2, v6, v7

    .line 170
    .line 171
    add-float/2addr v0, v2

    .line 172
    neg-float v0, v0

    .line 173
    aget v2, v6, v3

    .line 174
    .line 175
    aget v3, v6, v13

    .line 176
    .line 177
    add-float/2addr v2, v3

    .line 178
    neg-float v2, v2

    .line 179
    move v6, v0

    .line 180
    move v7, v2

    .line 181
    move v15, v10

    .line 182
    const/4 v9, 0x0

    .line 183
    goto :goto_4

    .line 184
    :cond_4
    new-instance v13, Landroid/graphics/RectF;

    .line 185
    .line 186
    invoke-direct {v13, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Ls8/c;->getCurrentAngle()F

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    invoke-virtual {v9, v14}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 200
    .line 201
    .line 202
    const/4 v9, 0x2

    .line 203
    new-array v14, v9, [F

    .line 204
    .line 205
    aget v15, v0, v2

    .line 206
    .line 207
    aget v17, v0, v9

    .line 208
    .line 209
    sub-float v15, v15, v17

    .line 210
    .line 211
    move-object/from16 v17, v13

    .line 212
    .line 213
    float-to-double v12, v15

    .line 214
    move v15, v10

    .line 215
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 216
    .line 217
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 218
    .line 219
    .line 220
    move-result-wide v12

    .line 221
    aget v18, v0, v3

    .line 222
    .line 223
    const/16 v16, 0x3

    .line 224
    .line 225
    aget v19, v0, v16

    .line 226
    .line 227
    sub-float v3, v18, v19

    .line 228
    .line 229
    float-to-double v2, v3

    .line 230
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    add-double/2addr v2, v12

    .line 235
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 236
    .line 237
    .line 238
    move-result-wide v2

    .line 239
    double-to-float v2, v2

    .line 240
    const/4 v3, 0x0

    .line 241
    aput v2, v14, v3

    .line 242
    .line 243
    const/4 v2, 0x2

    .line 244
    aget v2, v0, v2

    .line 245
    .line 246
    const/4 v3, 0x4

    .line 247
    aget v3, v0, v3

    .line 248
    .line 249
    sub-float/2addr v2, v3

    .line 250
    float-to-double v2, v2

    .line 251
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 252
    .line 253
    .line 254
    move-result-wide v2

    .line 255
    const/4 v12, 0x3

    .line 256
    aget v12, v0, v12

    .line 257
    .line 258
    const/4 v13, 0x5

    .line 259
    aget v0, v0, v13

    .line 260
    .line 261
    sub-float/2addr v12, v0

    .line 262
    float-to-double v12, v12

    .line 263
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 264
    .line 265
    .line 266
    move-result-wide v9

    .line 267
    add-double/2addr v9, v2

    .line 268
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v2

    .line 272
    double-to-float v0, v2

    .line 273
    const/4 v2, 0x1

    .line 274
    aput v0, v14, v2

    .line 275
    .line 276
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    const/4 v3, 0x0

    .line 281
    aget v3, v14, v3

    .line 282
    .line 283
    div-float/2addr v0, v3

    .line 284
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    aget v2, v14, v2

    .line 289
    .line 290
    div-float/2addr v3, v2

    .line 291
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    mul-float v0, v0, v8

    .line 296
    .line 297
    sub-float/2addr v0, v8

    .line 298
    move v9, v0

    .line 299
    :goto_4
    if-eqz p1, :cond_5

    .line 300
    .line 301
    new-instance v12, Ls8/a$a;

    .line 302
    .line 303
    iget-wide v2, v11, Ls8/a;->D:J

    .line 304
    .line 305
    move-object v0, v12

    .line 306
    move-object/from16 v1, p0

    .line 307
    .line 308
    move v10, v15

    .line 309
    invoke-direct/range {v0 .. v10}, Ls8/a$a;-><init>(Ls8/a;JFFFFFFZ)V

    .line 310
    .line 311
    .line 312
    iput-object v12, v11, Ls8/a;->x:Ls8/a$a;

    .line 313
    .line 314
    invoke-virtual {v11, v12}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_5
    invoke-virtual {v11, v6, v7}, Ls8/c;->f(FF)V

    .line 319
    .line 320
    .line 321
    if-nez v15, :cond_6

    .line 322
    .line 323
    add-float/2addr v8, v9

    .line 324
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    invoke-virtual {v11, v8, v0, v1}, Ls8/a;->j(FFF)V

    .line 333
    .line 334
    .line 335
    :cond_6
    :goto_5
    return-void
.end method

.method public setImageToWrapCropBoundsAnimDuration(J)V
    .locals 3
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Ls8/a;->D:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Animation duration cannot be negative value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxResultImageSizeX(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    iput p1, p0, Ls8/a;->B:I

    return-void
.end method

.method public setMaxResultImageSizeY(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    iput p1, p0, Ls8/a;->C:I

    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 0

    iput p1, p0, Ls8/a;->v:F

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ls8/a;->t:F

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    cmpl-float v1, p1, v1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    div-float/2addr p1, v0

    .line 26
    :cond_1
    iput p1, p0, Ls8/a;->t:F

    .line 27
    .line 28
    iget-object v0, p0, Ls8/a;->w:Lo8/c;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast v0, Ls8/d;

    .line 33
    .line 34
    iget-object v0, v0, Ls8/d;->a:Lcom/yalantis/ucrop/view/UCropView;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method
