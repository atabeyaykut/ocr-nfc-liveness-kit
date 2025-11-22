.class public final Lh2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Lcom/github/barteksc/pdfviewer/PDFView;

.field public final b:Lh2/a;

.field public final c:Landroid/view/GestureDetector;

.field public final d:Landroid/view/ScaleGestureDetector;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lh2/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/d;->f:Z

    iput-boolean v0, p0, Lh2/d;->g:Z

    iput-object p1, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object p2, p0, Lh2/d;->b:Lh2/a;

    iput-boolean v0, p0, Lh2/d;->e:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lh2/d;->c:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lh2/d;->d:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    cmpg-float v1, v1, v2

    .line 12
    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->v(FFF)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    cmpg-float v1, v1, v2

    .line 40
    .line 41
    if-gez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget p1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->a:F

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    div-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    div-int/lit8 v2, v2, 0x2

    .line 70
    .line 71
    int-to-float v2, v2

    .line 72
    iget v3, v0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 73
    .line 74
    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lh2/a;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, v3, p1}, Lh2/a;->a(FFFF)V

    .line 77
    .line 78
    .line 79
    :goto_1
    const/4 p1, 0x1

    .line 80
    return p1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lh2/d;->b:Lh2/a;

    .line 3
    .line 4
    iput-boolean p1, v0, Lh2/a;->d:Z

    .line 5
    .line 6
    iget-object p1, v0, Lh2/a;->c:Landroid/widget/OverScroller;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 10
    .line 11
    .line 12
    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    float-to-int v1, p2

    .line 8
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    float-to-int v2, p2

    .line 13
    iget-boolean p2, p1, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget v0, p1, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 22
    .line 23
    mul-float p2, p2, v0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    sub-float/2addr p2, v0

    .line 31
    neg-float p2, p2

    .line 32
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    sub-float/2addr p2, v0

    .line 47
    neg-float p2, p2

    .line 48
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v3, p1, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 53
    .line 54
    mul-float v0, v0, v3

    .line 55
    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    int-to-float p1, p1

    .line 61
    sub-float/2addr v0, p1

    .line 62
    neg-float p1, v0

    .line 63
    float-to-int v3, p3

    .line 64
    float-to-int v4, p4

    .line 65
    float-to-int v5, p2

    .line 66
    const/4 v6, 0x0

    .line 67
    float-to-int v7, p1

    .line 68
    const/4 v8, 0x0

    .line 69
    iget-object p1, p0, Lh2/d;->b:Lh2/a;

    .line 70
    .line 71
    invoke-virtual {p1}, Lh2/a;->b()V

    .line 72
    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p1, Lh2/a;->d:Z

    .line 76
    .line 77
    iget-object v0, p1, Lh2/a;->c:Landroid/widget/OverScroller;

    .line 78
    .line 79
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 80
    .line 81
    .line 82
    return p2
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    mul-float v2, v2, v0

    .line 12
    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    .line 15
    cmpg-float v4, v2, v3

    .line 16
    .line 17
    if-gez v4, :cond_0

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    div-float v0, v3, v0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/high16 v3, 0x41200000    # 10.0f

    .line 27
    .line 28
    cmpl-float v2, v2, v3

    .line 29
    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    new-instance v2, Landroid/graphics/PointF;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    iget p1, v1, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 47
    .line 48
    mul-float p1, p1, v0

    .line 49
    .line 50
    invoke-virtual {v1, v2, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->u(Landroid/graphics/PointF;F)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    return p1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh2/d;->g:Z

    return p1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->q()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Ll2/a;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lh2/d;->g:Z

    .line 11
    .line 12
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lh2/d;->f:Z

    .line 3
    .line 4
    iget-object p2, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 5
    .line 6
    iget v0, p2, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 7
    .line 8
    iget v1, p2, Lcom/github/barteksc/pdfviewer/PDFView;->a:F

    .line 9
    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lh2/d;->e:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :cond_1
    neg-float p3, p3

    .line 24
    neg-float p4, p4

    .line 25
    iget v0, p2, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 26
    .line 27
    add-float/2addr v0, p3

    .line 28
    iget p3, p2, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 29
    .line 30
    add-float/2addr p3, p4

    .line 31
    invoke-virtual {p2, v0, p3}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-boolean p3, p0, Lh2/d;->g:Z

    .line 35
    .line 36
    if-eqz p3, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    .line 40
    .line 41
    .line 42
    :goto_1
    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOnTapListener()Lj2/f;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Ll2/a;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lh2/d;->d:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lh2/d;->c:Landroid/view/GestureDetector;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-ne p2, v2, :cond_2

    .line 28
    .line 29
    iget-boolean p2, p0, Lh2/d;->f:Z

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iput-boolean v1, p0, Lh2/d;->f:Z

    .line 34
    .line 35
    iget-object p2, p0, Lh2/d;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->q()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Ll2/a;

    .line 41
    .line 42
    .line 43
    :cond_2
    return p1
.end method
