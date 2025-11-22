.class public final Ln8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Ln8/e;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln8/e;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x466a6000    # 15000.0f

    .line 3
    .line 4
    .line 5
    iget-object v2, p0, Ln8/e;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 6
    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v2, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 12
    .line 13
    invoke-virtual {v0}, Ls8/c;->getCurrentScale()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, v2, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 18
    .line 19
    invoke-virtual {v4}, Ls8/a;->getMaxScale()F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-object v2, v2, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 24
    .line 25
    invoke-virtual {v2}, Ls8/a;->getMinScale()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sub-float/2addr v4, v2

    .line 30
    div-float/2addr v4, v1

    .line 31
    mul-float v4, v4, p1

    .line 32
    .line 33
    add-float/2addr v4, v3

    .line 34
    iget-object p1, v0, Ls8/a;->r:Landroid/graphics/RectF;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, v4, v1, p1}, Ls8/a;->j(FFF)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, v2, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 49
    .line 50
    invoke-virtual {v0}, Ls8/c;->getCurrentScale()F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget-object v4, v2, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 55
    .line 56
    invoke-virtual {v4}, Ls8/a;->getMaxScale()F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v2, v2, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 61
    .line 62
    invoke-virtual {v2}, Ls8/a;->getMinScale()F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sub-float/2addr v4, v2

    .line 67
    div-float/2addr v4, v1

    .line 68
    mul-float v4, v4, p1

    .line 69
    .line 70
    add-float/2addr v4, v3

    .line 71
    iget-object p1, v0, Ls8/a;->r:Landroid/graphics/RectF;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v0}, Ls8/a;->getMinScale()F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    cmpl-float v2, v4, v2

    .line 86
    .line 87
    if-ltz v2, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Ls8/c;->getCurrentScale()F

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    div-float/2addr v4, v2

    .line 94
    invoke-virtual {v0, v4, v1, p1}, Ls8/a;->e(FFF)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln8/e;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Ls8/a;->h()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
