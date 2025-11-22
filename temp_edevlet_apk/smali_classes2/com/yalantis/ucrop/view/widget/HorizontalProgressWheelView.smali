.class public Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

.field public c:F

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:I

.field public g:I

.field public h:I

.field public j:Z

.field public k:F

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x7f060151

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->l:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const p2, 0x7f070215

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const p2, 0x7f070209

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const p2, 0x7f07020c

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->h:I

    .line 75
    .line 76
    new-instance p1, Landroid/graphics/Paint;

    .line 77
    .line 78
    const/4 p2, 0x1

    .line 79
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    .line 83
    .line 84
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    .line 90
    .line 91
    iget p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    .line 92
    .line 93
    int-to-float p2, p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const v0, 0x7f060148

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Landroid/graphics/Paint;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:Landroid/graphics/Paint;

    .line 121
    .line 122
    iget p2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->l:I

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:Landroid/graphics/Paint;

    .line 128
    .line 129
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    const v0, 0x7f070216

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    int-to-float p2, p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    .line 154
    .line 155
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    iget v3, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->h:I

    add-int v4, v2, v3

    div-int/2addr v1, v4

    iget v4, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->k:F

    add-int/2addr v3, v2

    int-to-float v2, v3

    rem-float/2addr v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    div-int/lit8 v3, v1, 0x4

    const/high16 v5, 0x437f0000    # 255.0f

    if-ge v2, v3, :cond_0

    iget-object v6, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    int-to-float v7, v2

    :goto_1
    int-to-float v3, v3

    div-float/2addr v7, v3

    mul-float v7, v7, v5

    float-to-int v3, v7

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_0
    mul-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x4

    if-le v2, v6, :cond_1

    iget-object v6, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    sub-int v7, v1, v2

    int-to-float v7, v7

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_2
    neg-float v3, v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    iget v6, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    iget v7, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->h:I

    add-int/2addr v6, v7

    mul-int v6, v6, v2

    int-to-float v6, v6

    add-float v8, v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    int-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    sub-float v9, v5, v6

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget v5, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->f:I

    iget v6, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->h:I

    add-int/2addr v5, v6

    mul-int v5, v5, v2

    int-to-float v5, v5

    add-float v10, v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    add-float v11, v5, v3

    iget-object v12, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->d:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float v6, v2, v0

    iget-object v7, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->c:F

    .line 19
    .line 20
    sub-float/2addr v0, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    cmpl-float v2, v0, v2

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->j:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->j:Z

    .line 31
    .line 32
    iget-object v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;->c()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->k:F

    .line 40
    .line 41
    sub-float/2addr v2, v0

    .line 42
    iput v2, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->k:F

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->c:F

    .line 52
    .line 53
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    neg-float v0, v0

    .line 58
    invoke-interface {p1, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;->b(F)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->j:Z

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;->a()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->c:F

    .line 78
    .line 79
    :cond_4
    :goto_0
    return v1
.end method

.method public setMiddleLineColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->l:I

    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->b:Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;

    return-void
.end method
