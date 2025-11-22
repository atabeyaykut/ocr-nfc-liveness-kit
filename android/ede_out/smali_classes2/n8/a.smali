.class public final Ln8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Ln8/a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln8/a;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Landroid/view/ViewGroup;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget v4, v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    cmpl-float v4, v4, v5

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    iget v4, v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    .line 29
    .line 30
    iget v5, v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    .line 31
    .line 32
    iput v5, v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->f:F

    .line 33
    .line 34
    iput v4, v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->g:F

    .line 35
    .line 36
    div-float/2addr v5, v4

    .line 37
    iput v5, v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->b()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v2, v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->d:F

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ls8/a;->setTargetAspectRatio(F)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    iget-object v0, v0, Lcom/yalantis/ucrop/UCropActivity;->x:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/view/ViewGroup;

    .line 76
    .line 77
    if-ne v1, p1, :cond_2

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v4, 0x0

    .line 82
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-void
.end method
