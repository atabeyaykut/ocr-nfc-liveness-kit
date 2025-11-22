.class public final Lcom/yalantis/ucrop/view/GestureCropImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/view/GestureCropImageView;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$a;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$a;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 2
    .line 3
    invoke-virtual {v6}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getDoubleTapTargetScale()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    invoke-virtual {v6}, Ls8/a;->getMaxScale()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    cmpl-float v1, v0, v1

    .line 20
    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v6}, Ls8/a;->getMaxScale()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    invoke-virtual {v6}, Ls8/c;->getCurrentScale()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sub-float v3, v0, v2

    .line 32
    .line 33
    new-instance v7, Ls8/a$b;

    .line 34
    .line 35
    move-object v0, v7

    .line 36
    move-object v1, v6

    .line 37
    invoke-direct/range {v0 .. v5}, Ls8/a$b;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;FFFF)V

    .line 38
    .line 39
    .line 40
    iput-object v7, v6, Ls8/a;->y:Ls8/a$b;

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    neg-float p1, p3

    neg-float p2, p4

    iget-object p3, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$a;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p3, p1, p2}, Ls8/c;->f(FF)V

    const/4 p1, 0x1

    return p1
.end method
