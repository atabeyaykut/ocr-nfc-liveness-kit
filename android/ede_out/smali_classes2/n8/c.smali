.class public final Ln8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Ln8/c;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ln8/c;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Ls8/c;->getCurrentAngle()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    neg-float v1, v1

    .line 10
    iget-object v2, v0, Ls8/a;->r:Landroid/graphics/RectF;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, 0x0

    .line 21
    cmpl-float v4, v1, v4

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget-object v4, v0, Ls8/c;->d:Landroid/graphics/Matrix;

    .line 26
    .line 27
    invoke-virtual {v4, v1, v3, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ls8/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Ls8/c;->g:Ls8/c$a;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ls8/c;->a(Landroid/graphics/Matrix;)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    check-cast v1, Lcom/yalantis/ucrop/UCropActivity$a;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/UCropActivity$a;->a(F)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
