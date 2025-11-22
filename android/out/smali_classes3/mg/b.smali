.class public final Lmg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# instance fields
.field public final a:Lmg/c;

.field public b:Z


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmg/b;->a:Lmg/c;

    return-void
.end method


# virtual methods
.method public final analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 4
    .annotation build Landroidx/camera/core/ExperimentalGetImage;
    .end annotation

    .line 1
    const-string v0, "imageProxy"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lmg/b;->b:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, La8/a;->a(Landroid/media/Image;I)La8/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Lx7/d;->a()Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lmg/b;->b:Z

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->a(La8/a;)Lh5/z;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lmg/b$a;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lmg/b$a;-><init>(Lmg/b;Landroidx/camera/core/ImageProxy;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroidx/camera/camera2/interop/d;

    .line 45
    .line 46
    const/4 v3, 0x7

    .line 47
    invoke-direct {v2, v3, v1}, Landroidx/camera/camera2/interop/d;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object v1, Lh5/m;->a:Lh5/y;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lh5/z;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lmg/a;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1}, Lmg/a;-><init>(Lmg/b;Landroidx/camera/core/ImageProxy;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lh5/z;->p(Lh5/f;)Lh5/z;

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final synthetic getTargetCoordinateSystem()I
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/s;->a(Landroidx/camera/core/ImageAnalysis$Analyzer;)I

    move-result v0

    return v0
.end method

.method public final synthetic getTargetResolutionOverride()Landroid/util/Size;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/s;->b(Landroidx/camera/core/ImageAnalysis$Analyzer;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic updateTransform(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/s;->c(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroid/graphics/Matrix;)V

    return-void
.end method
