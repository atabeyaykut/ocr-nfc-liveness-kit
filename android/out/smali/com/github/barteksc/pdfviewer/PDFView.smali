.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$a;,
        Lcom/github/barteksc/pdfviewer/PDFView$b;
    }
.end annotation


# static fields
.field public static final synthetic O:I


# instance fields
.field public A:Lh2/e;

.field public B:Lcom/github/barteksc/pdfviewer/a;

.field public final C:Landroid/graphics/Paint;

.field public D:I

.field public E:I

.field public F:Z

.field public final G:Lcom/shockwave/pdfium/PdfiumCore;

.field public H:Lcom/shockwave/pdfium/PdfDocument;

.field public I:Z

.field public K:Z

.field public final L:Landroid/graphics/PaintFlagsDrawFilter;

.field public M:I

.field public final N:Ljava/util/ArrayList;

.field public a:F

.field public b:F

.field public c:F

.field public d:Lcom/github/barteksc/pdfviewer/PDFView$b;

.field public final e:Lh2/b;

.field public final f:Lh2/a;

.field public final g:Lh2/d;

.field public h:[I

.field public j:[I

.field public k:[I

.field public l:I

.field public m:I

.field public n:I

.field public p:I

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public v:F

.field public w:Z

.field public x:I

.field public y:Lh2/c;

.field public final z:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->a:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->b:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$b;->a:Lcom/github/barteksc/pdfviewer/PDFView$b;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:Lcom/github/barteksc/pdfviewer/PDFView$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->w:Z

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->D:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->E:I

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->I:Z

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->K:Z

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->L:Landroid/graphics/PaintFlagsDrawFilter;

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/ArrayList;

    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "PDF renderer"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lh2/b;

    invoke-direct {p2}, Lh2/b;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    new-instance p2, Lh2/a;

    invoke-direct {p2, p0}, Lh2/a;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lh2/a;

    new-instance v1, Lh2/d;

    invoke-direct {v1, p0, p2}, Lh2/d;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lh2/a;)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lh2/d;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->C:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p2, p1}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnDrawListener(Lj2/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSpacing(I)V

    return-void
.end method

.method public static synthetic c(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setInvalidPageColor(I)V

    return-void
.end method

.method public static synthetic d(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnDrawAllListener(Lj2/a;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageChangeListener(Lj2/b;)V

    return-void
.end method

.method public static synthetic f(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageScrollListener(Lj2/d;)V

    return-void
.end method

.method public static synthetic g(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnRenderListener(Lj2/e;)V

    return-void
.end method

.method public static synthetic h(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnTapListener(Lj2/f;)V

    return-void
.end method

.method public static synthetic i(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageErrorListener(Lj2/c;)V

    return-void
.end method

.method public static synthetic j(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method public static synthetic k(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setScrollHandle(Ll2/a;)V

    return-void
.end method

.method private setDefaultPage(I)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->E:I

    return-void
.end method

.method private setInvalidPageColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->D:I

    return-void
.end method

.method private setOnDrawAllListener(Lj2/a;)V
    .locals 0

    return-void
.end method

.method private setOnDrawListener(Lj2/a;)V
    .locals 0

    return-void
.end method

.method private setOnPageChangeListener(Lj2/b;)V
    .locals 0

    return-void
.end method

.method private setOnPageErrorListener(Lj2/c;)V
    .locals 0

    return-void
.end method

.method private setOnPageScrollListener(Lj2/d;)V
    .locals 0

    return-void
.end method

.method private setOnRenderListener(Lj2/e;)V
    .locals 0

    return-void
.end method

.method private setOnTapListener(Lj2/f;)V
    .locals 0

    return-void
.end method

.method private setScrollHandle(Ll2/a;)V
    .locals 0

    return-void
.end method

.method private setSpacing(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    if-lez p1, :cond_3

    .line 17
    .line 18
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 19
    .line 20
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 21
    .line 22
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 23
    .line 24
    mul-float v0, v0, v1

    .line 25
    .line 26
    add-float/2addr v0, p1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-float p1, p1

    .line 32
    cmpl-float p1, v0, p1

    .line 33
    .line 34
    if-lez p1, :cond_3

    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    if-gez p1, :cond_2

    .line 38
    .line 39
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 40
    .line 41
    cmpg-float v0, v0, v1

    .line 42
    .line 43
    if-gez v0, :cond_2

    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    if-lez p1, :cond_3

    .line 47
    .line 48
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-float/2addr v0, p1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    cmpl-float p1, v0, p1

    .line 61
    .line 62
    if-lez p1, :cond_3

    .line 63
    .line 64
    return v2

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    return p1
.end method

.method public final canScrollVertically(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    if-lez p1, :cond_3

    .line 17
    .line 18
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-float/2addr v0, p1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    cmpl-float p1, v0, p1

    .line 31
    .line 32
    if-lez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    if-gez p1, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 38
    .line 39
    cmpg-float v0, v0, v1

    .line 40
    .line 41
    if-gez v0, :cond_2

    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    if-lez p1, :cond_3

    .line 45
    .line 46
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 47
    .line 48
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 49
    .line 50
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 51
    .line 52
    mul-float v0, v0, v1

    .line 53
    .line 54
    add-float/2addr v0, p1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    cmpl-float p1, v0, p1

    .line 61
    .line 62
    if-lez p1, :cond_3

    .line 63
    .line 64
    return v2

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    return p1
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lh2/a;

    .line 12
    .line 13
    iget-object v1, v0, Lh2/a;->c:Landroid/widget/OverScroller;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, v0, Lh2/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    int-to-float v1, v1

    .line 33
    invoke-virtual {v3, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-boolean v1, v0, Lh2/a;->d:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, v0, Lh2/a;->d:Z

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->q()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Ll2/a;

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    return v0
.end method

.method public getDocumentMeta()Lcom/shockwave/pdfium/PdfDocument$Meta;
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->H:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->b(Lcom/shockwave/pdfium/PdfDocument;)Lcom/shockwave/pdfium/PdfDocument$Meta;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentPageCount()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:I

    return v0
.end method

.method public getFilteredUserPageIndexes()[I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:[I

    return-object v0
.end method

.method public getFilteredUserPages()[I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->j:[I

    return-object v0
.end method

.method public getInvalidPageColor()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->D:I

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    return v0
.end method

.method public getMidZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->b:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->a:F

    return v0
.end method

.method public getOnPageChangeListener()Lj2/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnPageScrollListener()Lj2/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnRenderListener()Lj2/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnTapListener()Lj2/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptimalPageHeight()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    return v0
.end method

.method public getOptimalPageWidth()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    return v0
.end method

.method public getOriginalUserPages()[I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->h:[I

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->h:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:I

    return v0
.end method

.method public getPositionOffset()F
    .locals 3

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    :goto_1
    return v0
.end method

.method public getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$b;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:Lcom/github/barteksc/pdfviewer/PDFView$b;

    return-object v0
.end method

.method public getScrollHandle()Ll2/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpacingPx()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    return v0
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->H:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->f(Lcom/shockwave/pdfium/PdfDocument;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    return v0
.end method

.method public final l()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    int-to-float v1, v0

    .line 10
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 11
    .line 12
    mul-float v1, v1, v2

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    .line 17
    .line 18
    mul-int v0, v0, v2

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    add-float/2addr v1, v0

    .line 22
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 23
    .line 24
    mul-float v1, v1, v0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    int-to-float v1, v0

    .line 28
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 29
    .line 30
    mul-float v1, v1, v2

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    .line 35
    .line 36
    mul-int v0, v0, v2

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    add-float/2addr v1, v0

    .line 40
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 41
    .line 42
    mul-float v1, v1, v0

    .line 43
    .line 44
    return v1
.end method

.method public final m()V
    .locals 5

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->p:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float v3, v0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    mul-float v2, v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    :cond_2
    :goto_1
    return-void
.end method

.method public final n(I)F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-float v0, p1

    .line 6
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 7
    .line 8
    mul-float v0, v0, v1

    .line 9
    .line 10
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    .line 11
    .line 12
    mul-int p1, p1, v1

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    add-float/2addr v0, p1

    .line 16
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 17
    .line 18
    mul-float v0, v0, p1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    int-to-float v0, p1

    .line 22
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 23
    .line 24
    mul-float v0, v0, v1

    .line 25
    .line 26
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    .line 27
    .line 28
    mul-int p1, p1, v1

    .line 29
    .line 30
    int-to-float p1, p1

    .line 31
    add-float/2addr v0, p1

    .line 32
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 33
    .line 34
    mul-float v0, v0, p1

    .line 35
    .line 36
    return v0
.end method

.method public final o(Landroid/graphics/Canvas;Lk2/a;)V
    .locals 11

    .line 1
    iget-object v0, p2, Lk2/a;->d:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p2, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iget p2, p2, Lk2/a;->a:I

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->n(I)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    move v2, p2

    .line 24
    const/4 p2, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .line 43
    .line 44
    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 45
    .line 46
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 47
    .line 48
    mul-float v5, v5, v6

    .line 49
    .line 50
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 51
    .line 52
    mul-float v5, v5, v6

    .line 53
    .line 54
    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 55
    .line 56
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 57
    .line 58
    mul-float v7, v7, v8

    .line 59
    .line 60
    mul-float v7, v7, v6

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 67
    .line 68
    mul-float v6, v6, v8

    .line 69
    .line 70
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 71
    .line 72
    mul-float v6, v6, v8

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 79
    .line 80
    mul-float v0, v0, v8

    .line 81
    .line 82
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 83
    .line 84
    mul-float v0, v0, v8

    .line 85
    .line 86
    new-instance v8, Landroid/graphics/RectF;

    .line 87
    .line 88
    float-to-int v9, v5

    .line 89
    int-to-float v9, v9

    .line 90
    float-to-int v10, v7

    .line 91
    int-to-float v10, v10

    .line 92
    add-float/2addr v5, v6

    .line 93
    float-to-int v5, v5

    .line 94
    int-to-float v5, v5

    .line 95
    add-float/2addr v7, v0

    .line 96
    float-to-int v0, v7

    .line 97
    int-to-float v0, v0

    .line 98
    invoke-direct {v8, v9, v10, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    .line 100
    .line 101
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 102
    .line 103
    add-float/2addr v0, p2

    .line 104
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 105
    .line 106
    add-float/2addr v5, v2

    .line 107
    iget v6, v8, Landroid/graphics/RectF;->left:F

    .line 108
    .line 109
    add-float/2addr v6, v0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    int-to-float v7, v7

    .line 115
    cmpl-float v6, v6, v7

    .line 116
    .line 117
    if-gez v6, :cond_3

    .line 118
    .line 119
    iget v6, v8, Landroid/graphics/RectF;->right:F

    .line 120
    .line 121
    add-float/2addr v0, v6

    .line 122
    cmpg-float v0, v0, v3

    .line 123
    .line 124
    if-lez v0, :cond_3

    .line 125
    .line 126
    iget v0, v8, Landroid/graphics/RectF;->top:F

    .line 127
    .line 128
    add-float/2addr v0, v5

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    int-to-float v6, v6

    .line 134
    cmpl-float v0, v0, v6

    .line 135
    .line 136
    if-gez v0, :cond_3

    .line 137
    .line 138
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    .line 139
    .line 140
    add-float/2addr v5, v0

    .line 141
    cmpg-float v0, v5, v3

    .line 142
    .line 143
    if-gtz v0, :cond_2

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->C:Landroid/graphics/Paint;

    .line 147
    .line 148
    invoke-virtual {p1, v1, v4, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_1
    neg-float p2, p2

    .line 152
    neg-float v0, v2

    .line 153
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->s()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->K:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->L:Landroid/graphics/PaintFlagsDrawFilter;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->w:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    return-void

    .line 42
    :cond_4
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 43
    .line 44
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 50
    .line 51
    iget-object v3, v2, Lh2/b;->c:Ljava/util/ArrayList;

    .line 52
    .line 53
    monitor-enter v3

    .line 54
    :try_start_0
    iget-object v2, v2, Lh2/b;->c:Ljava/util/ArrayList;

    .line 55
    .line 56
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lk2/a;

    .line 72
    .line 73
    invoke-virtual {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->o(Landroid/graphics/Canvas;Lk2/a;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 78
    .line 79
    invoke-virtual {v2}, Lh2/b;->b()Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lk2/a;

    .line 98
    .line 99
    invoke-virtual {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->o(Landroid/graphics/Canvas;Lk2/a;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 128
    .line 129
    .line 130
    neg-float v0, v0

    .line 131
    neg-float v1, v1

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_2

    .line 6
    .line 7
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lh2/a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lh2/a;->b()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->m()V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 26
    .line 27
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:I

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->n(I)F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    neg-float p2, p2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->n(I)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    neg-float p1, p1

    .line 42
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    div-int v1, v0, v1

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    int-to-float v0, v0

    .line 18
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 19
    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 25
    .line 26
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 27
    .line 28
    add-float/2addr v3, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 35
    .line 36
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 37
    .line 38
    add-float/2addr v3, v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_0
    int-to-float v0, v0

    .line 44
    div-float/2addr v0, v2

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-float/2addr v1, v0

    .line 50
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 51
    .line 52
    mul-float v3, v3, v0

    .line 53
    .line 54
    div-float/2addr v1, v3

    .line 55
    float-to-double v0, v1

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    double-to-int v0, v0

    .line 61
    if-ltz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    if-gt v0, v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eq v0, v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->t(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->q()V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 9
    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_d

    .line 13
    .line 14
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Lh2/e;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 25
    .line 26
    iget-object v3, v0, Lh2/b;->d:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v3

    .line 29
    :try_start_0
    iget-object v4, v0, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 30
    .line 31
    iget-object v5, v0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 39
    .line 40
    .line 41
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->B:Lcom/github/barteksc/pdfviewer/a;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget v5, v3, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 51
    .line 52
    mul-float v4, v4, v5

    .line 53
    .line 54
    iput v4, v0, Lcom/github/barteksc/pdfviewer/a;->c:F

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget v5, v3, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 61
    .line 62
    mul-float v4, v4, v5

    .line 63
    .line 64
    iput v4, v0, Lcom/github/barteksc/pdfviewer/a;->d:F

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const v5, 0x3e99999a    # 0.3f

    .line 71
    .line 72
    .line 73
    mul-float v4, v4, v5

    .line 74
    .line 75
    float-to-int v4, v4

    .line 76
    iput v4, v0, Lcom/github/barteksc/pdfviewer/a;->n:I

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    mul-float v4, v4, v5

    .line 83
    .line 84
    float-to-int v4, v4

    .line 85
    iput v4, v0, Lcom/github/barteksc/pdfviewer/a;->o:I

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const/high16 v5, 0x3f800000    # 1.0f

    .line 92
    .line 93
    div-float v4, v5, v4

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    div-float v6, v5, v6

    .line 100
    .line 101
    const/high16 v7, 0x43800000    # 256.0f

    .line 102
    .line 103
    mul-float v6, v6, v7

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    div-float/2addr v6, v8

    .line 110
    mul-float v4, v4, v7

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    div-float/2addr v4, v8

    .line 117
    div-float v6, v5, v6

    .line 118
    .line 119
    invoke-static {v6}, Lc5/w;->d(F)I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    div-float v4, v5, v4

    .line 124
    .line 125
    invoke-static {v4}, Lc5/w;->d(F)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    new-instance v8, Landroid/util/Pair;

    .line 130
    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-direct {v8, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iput-object v8, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    cmpl-float v6, v4, v1

    .line 149
    .line 150
    if-lez v6, :cond_1

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    :cond_1
    neg-float v4, v4

    .line 154
    iput v4, v0, Lcom/github/barteksc/pdfviewer/a;->f:F

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    cmpl-float v6, v4, v1

    .line 161
    .line 162
    if-lez v6, :cond_2

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_2
    move v1, v4

    .line 166
    :goto_0
    neg-float v1, v1

    .line 167
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a;->g:F

    .line 168
    .line 169
    iget v1, v0, Lcom/github/barteksc/pdfviewer/a;->c:F

    .line 170
    .line 171
    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 172
    .line 173
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v4, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    int-to-float v4, v4

    .line 182
    div-float/2addr v1, v4

    .line 183
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a;->h:F

    .line 184
    .line 185
    iget v1, v0, Lcom/github/barteksc/pdfviewer/a;->d:F

    .line 186
    .line 187
    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 188
    .line 189
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v4, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    int-to-float v4, v4

    .line 198
    div-float/2addr v1, v4

    .line 199
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a;->i:F

    .line 200
    .line 201
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 202
    .line 203
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v1, Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    int-to-float v1, v1

    .line 212
    div-float v1, v5, v1

    .line 213
    .line 214
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a;->j:F

    .line 215
    .line 216
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 217
    .line 218
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v1, Ljava/lang/Integer;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    int-to-float v1, v1

    .line 227
    div-float v1, v5, v1

    .line 228
    .line 229
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a;->k:F

    .line 230
    .line 231
    iget v4, v0, Lcom/github/barteksc/pdfviewer/a;->j:F

    .line 232
    .line 233
    div-float v4, v7, v4

    .line 234
    .line 235
    iput v4, v0, Lcom/github/barteksc/pdfviewer/a;->l:F

    .line 236
    .line 237
    div-float/2addr v7, v1

    .line 238
    iput v7, v0, Lcom/github/barteksc/pdfviewer/a;->m:F

    .line 239
    .line 240
    iput v2, v0, Lcom/github/barteksc/pdfviewer/a;->b:I

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getSpacingPx()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    int-to-float v1, v1

    .line 247
    iget v4, v3, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 248
    .line 249
    mul-float v1, v1, v4

    .line 250
    .line 251
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a;->p:F

    .line 252
    .line 253
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    int-to-float v4, v4

    .line 258
    div-float v4, v1, v4

    .line 259
    .line 260
    sub-float/2addr v1, v4

    .line 261
    iput v1, v0, Lcom/github/barteksc/pdfviewer/a;->p:F

    .line 262
    .line 263
    iget-boolean v1, v3, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 264
    .line 265
    const/16 v4, 0x78

    .line 266
    .line 267
    const/4 v6, 0x0

    .line 268
    if-eqz v1, :cond_5

    .line 269
    .line 270
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0, v1, v6}, Lcom/github/barteksc/pdfviewer/a;->b(FZ)Lcom/github/barteksc/pdfviewer/a$a;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    int-to-float v8, v8

    .line 287
    sub-float/2addr v7, v8

    .line 288
    add-float/2addr v7, v5

    .line 289
    invoke-virtual {v0, v7, v2}, Lcom/github/barteksc/pdfviewer/a;->b(FZ)Lcom/github/barteksc/pdfviewer/a$a;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    iget v7, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 294
    .line 295
    iget v8, v5, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 296
    .line 297
    if-ne v7, v8, :cond_3

    .line 298
    .line 299
    iget v5, v5, Lcom/github/barteksc/pdfviewer/a$a;->b:I

    .line 300
    .line 301
    iget v7, v1, Lcom/github/barteksc/pdfviewer/a$a;->b:I

    .line 302
    .line 303
    sub-int/2addr v5, v7

    .line 304
    add-int/2addr v5, v2

    .line 305
    goto :goto_2

    .line 306
    :cond_3
    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 307
    .line 308
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v7, Ljava/lang/Integer;

    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    iget v8, v1, Lcom/github/barteksc/pdfviewer/a$a;->b:I

    .line 317
    .line 318
    sub-int/2addr v7, v8

    .line 319
    add-int/2addr v7, v6

    .line 320
    iget v8, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 321
    .line 322
    add-int/2addr v8, v2

    .line 323
    :goto_1
    iget v9, v5, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 324
    .line 325
    if-ge v8, v9, :cond_4

    .line 326
    .line 327
    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 328
    .line 329
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v9, Ljava/lang/Integer;

    .line 332
    .line 333
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    add-int/2addr v7, v9

    .line 338
    add-int/lit8 v8, v8, 0x1

    .line 339
    .line 340
    goto :goto_1

    .line 341
    :cond_4
    iget v5, v5, Lcom/github/barteksc/pdfviewer/a$a;->b:I

    .line 342
    .line 343
    add-int/2addr v5, v2

    .line 344
    add-int/2addr v5, v7

    .line 345
    :goto_2
    const/4 v7, 0x0

    .line 346
    const/4 v8, 0x0

    .line 347
    :goto_3
    if-ge v7, v5, :cond_8

    .line 348
    .line 349
    if-ge v8, v4, :cond_8

    .line 350
    .line 351
    rsub-int/lit8 v9, v8, 0x78

    .line 352
    .line 353
    invoke-virtual {v0, v7, v9, v6}, Lcom/github/barteksc/pdfviewer/a;->d(IIZ)I

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    add-int/2addr v8, v9

    .line 358
    add-int/lit8 v7, v7, 0x1

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_5
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    invoke-virtual {v0, v1, v6}, Lcom/github/barteksc/pdfviewer/a;->b(FZ)Lcom/github/barteksc/pdfviewer/a$a;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    int-to-float v8, v8

    .line 378
    sub-float/2addr v7, v8

    .line 379
    add-float/2addr v7, v5

    .line 380
    invoke-virtual {v0, v7, v2}, Lcom/github/barteksc/pdfviewer/a;->b(FZ)Lcom/github/barteksc/pdfviewer/a$a;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    iget v7, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 385
    .line 386
    iget v8, v5, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 387
    .line 388
    if-ne v7, v8, :cond_6

    .line 389
    .line 390
    iget v5, v5, Lcom/github/barteksc/pdfviewer/a$a;->c:I

    .line 391
    .line 392
    iget v7, v1, Lcom/github/barteksc/pdfviewer/a$a;->c:I

    .line 393
    .line 394
    sub-int/2addr v5, v7

    .line 395
    add-int/2addr v5, v2

    .line 396
    goto :goto_5

    .line 397
    :cond_6
    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 398
    .line 399
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v7, Ljava/lang/Integer;

    .line 402
    .line 403
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    iget v8, v1, Lcom/github/barteksc/pdfviewer/a$a;->c:I

    .line 408
    .line 409
    sub-int/2addr v7, v8

    .line 410
    add-int/2addr v7, v6

    .line 411
    iget v8, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 412
    .line 413
    add-int/2addr v8, v2

    .line 414
    :goto_4
    iget v9, v5, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 415
    .line 416
    if-ge v8, v9, :cond_7

    .line 417
    .line 418
    iget-object v9, v0, Lcom/github/barteksc/pdfviewer/a;->e:Landroid/util/Pair;

    .line 419
    .line 420
    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v9, Ljava/lang/Integer;

    .line 423
    .line 424
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result v9

    .line 428
    add-int/2addr v7, v9

    .line 429
    add-int/lit8 v8, v8, 0x1

    .line 430
    .line 431
    goto :goto_4

    .line 432
    :cond_7
    iget v5, v5, Lcom/github/barteksc/pdfviewer/a$a;->c:I

    .line 433
    .line 434
    add-int/2addr v5, v2

    .line 435
    add-int/2addr v5, v7

    .line 436
    :goto_5
    const/4 v7, 0x0

    .line 437
    const/4 v8, 0x0

    .line 438
    :goto_6
    if-ge v7, v5, :cond_8

    .line 439
    .line 440
    if-ge v8, v4, :cond_8

    .line 441
    .line 442
    rsub-int/lit8 v9, v8, 0x78

    .line 443
    .line 444
    invoke-virtual {v0, v7, v9, v6}, Lcom/github/barteksc/pdfviewer/a;->d(IIZ)I

    .line 445
    .line 446
    .line 447
    move-result v9

    .line 448
    add-int/2addr v8, v9

    .line 449
    add-int/lit8 v7, v7, 0x1

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_8
    iget v5, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 453
    .line 454
    sub-int/2addr v5, v2

    .line 455
    invoke-virtual {v0, v5}, Lcom/github/barteksc/pdfviewer/a;->a(I)I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    if-ltz v5, :cond_9

    .line 460
    .line 461
    iget v7, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 462
    .line 463
    sub-int/2addr v7, v2

    .line 464
    invoke-virtual {v0, v7, v5}, Lcom/github/barteksc/pdfviewer/a;->e(II)V

    .line 465
    .line 466
    .line 467
    :cond_9
    iget v5, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 468
    .line 469
    add-int/2addr v5, v2

    .line 470
    invoke-virtual {v0, v5}, Lcom/github/barteksc/pdfviewer/a;->a(I)I

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-ltz v5, :cond_a

    .line 475
    .line 476
    iget v1, v1, Lcom/github/barteksc/pdfviewer/a$a;->a:I

    .line 477
    .line 478
    add-int/2addr v1, v2

    .line 479
    invoke-virtual {v0, v1, v5}, Lcom/github/barteksc/pdfviewer/a;->e(II)V

    .line 480
    .line 481
    .line 482
    :cond_a
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$b;->c:Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 487
    .line 488
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_b

    .line 493
    .line 494
    if-ge v8, v4, :cond_c

    .line 495
    .line 496
    invoke-virtual {v0, v6, v8, v2}, Lcom/github/barteksc/pdfviewer/a;->d(IIZ)I

    .line 497
    .line 498
    .line 499
    goto :goto_7

    .line 500
    :cond_b
    if-ge v8, v4, :cond_c

    .line 501
    .line 502
    invoke-virtual {v0, v6, v8, v6}, Lcom/github/barteksc/pdfviewer/a;->d(IIZ)I

    .line 503
    .line 504
    .line 505
    :cond_c
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :catchall_0
    move-exception v0

    .line 510
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    throw v0

    .line 512
    :cond_d
    :goto_8
    return-void
.end method

.method public final r(FF)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 2
    .line 3
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$b;->b:Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 4
    .line 5
    sget-object v2, Lcom/github/barteksc/pdfviewer/PDFView$b;->a:Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 6
    .line 7
    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$b;->c:Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 8
    .line 9
    const/high16 v4, 0x40000000    # 2.0f

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:F

    .line 15
    .line 16
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 17
    .line 18
    mul-float v0, v0, v6

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    int-to-float v6, v6

    .line 25
    cmpg-float v6, v0, v6

    .line 26
    .line 27
    if-gez v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    div-int/lit8 p1, p1, 0x2

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    div-float/2addr v0, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    cmpl-float v6, p1, v5

    .line 39
    .line 40
    if-lez v6, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-float v6, p1, v0

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    int-to-float v7, v7

    .line 51
    cmpg-float v6, v6, v7

    .line 52
    .line 53
    if-gez v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    :goto_0
    sub-float/2addr p1, v0

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    int-to-float v6, v6

    .line 70
    cmpg-float v6, v0, v6

    .line 71
    .line 72
    if-gez v6, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    int-to-float p2, p2

    .line 79
    sub-float/2addr p2, v0

    .line 80
    div-float/2addr p2, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    cmpl-float v4, p2, v5

    .line 83
    .line 84
    if-lez v4, :cond_4

    .line 85
    .line 86
    const/4 p2, 0x0

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    add-float v4, p2, v0

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    int-to-float v5, v5

    .line 95
    cmpg-float v4, v4, v5

    .line 96
    .line 97
    if-gez v4, :cond_5

    .line 98
    .line 99
    neg-float p2, v0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    int-to-float v0, v0

    .line 105
    add-float/2addr p2, v0

    .line 106
    :cond_5
    :goto_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 107
    .line 108
    cmpg-float v4, p2, v0

    .line 109
    .line 110
    if-gez v4, :cond_6

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_6
    cmpl-float v0, p2, v0

    .line 114
    .line 115
    if-lez v0, :cond_f

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_7
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:F

    .line 119
    .line 120
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 121
    .line 122
    mul-float v0, v0, v6

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    int-to-float v6, v6

    .line 129
    cmpg-float v6, v0, v6

    .line 130
    .line 131
    if-gez v6, :cond_8

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    div-int/lit8 p2, p2, 0x2

    .line 138
    .line 139
    int-to-float p2, p2

    .line 140
    div-float/2addr v0, v4

    .line 141
    goto :goto_3

    .line 142
    :cond_8
    cmpl-float v6, p2, v5

    .line 143
    .line 144
    if-lez v6, :cond_9

    .line 145
    .line 146
    const/4 p2, 0x0

    .line 147
    goto :goto_4

    .line 148
    :cond_9
    add-float v6, p2, v0

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    int-to-float v7, v7

    .line 155
    cmpg-float v6, v6, v7

    .line 156
    .line 157
    if-gez v6, :cond_a

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    int-to-float p2, p2

    .line 164
    :goto_3
    sub-float/2addr p2, v0

    .line 165
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    int-to-float v6, v6

    .line 174
    cmpg-float v6, v0, v6

    .line 175
    .line 176
    if-gez v6, :cond_b

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    int-to-float p1, p1

    .line 183
    sub-float/2addr p1, v0

    .line 184
    div-float/2addr p1, v4

    .line 185
    goto :goto_5

    .line 186
    :cond_b
    cmpl-float v4, p1, v5

    .line 187
    .line 188
    if-lez v4, :cond_c

    .line 189
    .line 190
    const/4 p1, 0x0

    .line 191
    goto :goto_5

    .line 192
    :cond_c
    add-float v4, p1, v0

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    int-to-float v5, v5

    .line 199
    cmpg-float v4, v4, v5

    .line 200
    .line 201
    if-gez v4, :cond_d

    .line 202
    .line 203
    neg-float p1, v0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    int-to-float v0, v0

    .line 209
    add-float/2addr p1, v0

    .line 210
    :cond_d
    :goto_5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 211
    .line 212
    cmpg-float v4, p1, v0

    .line 213
    .line 214
    if-gez v4, :cond_e

    .line 215
    .line 216
    :goto_6
    iput-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_e
    cmpl-float v0, p1, v0

    .line 220
    .line 221
    if-lez v0, :cond_f

    .line 222
    .line 223
    :goto_7
    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_f
    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:Lcom/github/barteksc/pdfviewer/PDFView$b;

    .line 227
    .line 228
    :goto_8
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 229
    .line 230
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lh2/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh2/a;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Lh2/e;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v0, Lh2/e;->h:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->y:Lh2/c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:Lh2/b;

    .line 25
    .line 26
    iget-object v2, v0, Lh2/b;->d:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v3, v0, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lk2/a;

    .line 46
    .line 47
    iget-object v4, v4, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, v0, Lh2/b;->a:Ljava/util/PriorityQueue;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lk2/a;

    .line 75
    .line 76
    iget-object v4, v4, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v3, v0, Lh2/b;->b:Ljava/util/PriorityQueue;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    .line 85
    .line 86
    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    iget-object v3, v0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 89
    .line 90
    monitor-enter v3

    .line 91
    :try_start_1
    iget-object v2, v0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lk2/a;

    .line 108
    .line 109
    iget-object v4, v4, Lk2/a;->c:Landroid/graphics/Bitmap;

    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    iget-object v0, v0, Lh2/b;->c:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    .line 119
    .line 120
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Lcom/shockwave/pdfium/PdfiumCore;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->H:Lcom/shockwave/pdfium/PdfDocument;

    .line 126
    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lcom/shockwave/pdfium/PdfiumCore;->a(Lcom/shockwave/pdfium/PdfDocument;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Lh2/e;

    .line 134
    .line 135
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->h:[I

    .line 136
    .line 137
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->j:[I

    .line 138
    .line 139
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:[I

    .line 140
    .line 141
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->H:Lcom/shockwave/pdfium/PdfDocument;

    .line 142
    .line 143
    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 145
    .line 146
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 147
    .line 148
    const/high16 v0, 0x3f800000    # 1.0f

    .line 149
    .line 150
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 151
    .line 152
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->w:Z

    .line 153
    .line 154
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    .line 155
    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    throw v0

    .line 160
    :catchall_1
    move-exception v0

    .line 161
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    throw v0
.end method

.method public setMaxZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    return-void
.end method

.method public setMidZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->b:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->a:F

    return-void
.end method

.method public setPositionOffset(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->l()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float v0, v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    invoke-virtual {p0, v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    return-void
.end method

.method public setSwipeVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    return-void
.end method

.method public final t(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-gtz p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->h:[I

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    if-lt p1, v1, :cond_3

    .line 16
    .line 17
    array-length p1, v0

    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:I

    .line 22
    .line 23
    if-lt p1, v0, :cond_3

    .line 24
    .line 25
    add-int/lit8 p1, v0, -0x1

    .line 26
    .line 27
    :cond_3
    :goto_0
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:[I

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    if-ltz p1, :cond_4

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    if-ge p1, v1, :cond_4

    .line 37
    .line 38
    aget p1, v0, p1

    .line 39
    .line 40
    :cond_4
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->q()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final u(Landroid/graphics/PointF;F)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 2
    .line 3
    div-float v0, p2, v0

    .line 4
    .line 5
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    .line 6
    .line 7
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 8
    .line 9
    mul-float p2, p2, v0

    .line 10
    .line 11
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 12
    .line 13
    mul-float v1, v1, v0

    .line 14
    .line 15
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 16
    .line 17
    mul-float v3, v2, v0

    .line 18
    .line 19
    sub-float/2addr v2, v3

    .line 20
    add-float/2addr v2, p2

    .line 21
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 22
    .line 23
    mul-float v0, v0, p1

    .line 24
    .line 25
    sub-float/2addr p1, v0

    .line 26
    add-float/2addr p1, v1

    .line 27
    invoke-virtual {p0, v2, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final v(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lh2/a;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:F

    invoke-virtual {v0, p1, p2, v1, p3}, Lh2/a;->a(FFFF)V

    return-void
.end method
