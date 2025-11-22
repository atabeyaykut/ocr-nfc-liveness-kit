.class public final Ln8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Ln8/d;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ln8/d;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 4
    .line 5
    const/16 v1, 0x5a

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    iget-object v2, v0, Ls8/a;->r:Landroid/graphics/RectF;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v4, 0x0

    .line 19
    cmpl-float v4, v1, v4

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v4, v0, Ls8/c;->d:Landroid/graphics/Matrix;

    .line 24
    .line 25
    invoke-virtual {v4, v1, v3, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ls8/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Ls8/c;->g:Ls8/c$a;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ls8/c;->a(Landroid/graphics/Matrix;)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    check-cast v1, Lcom/yalantis/ucrop/UCropActivity$a;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/UCropActivity$a;->a(F)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p1, Lcom/yalantis/ucrop/UCropActivity;->n:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
