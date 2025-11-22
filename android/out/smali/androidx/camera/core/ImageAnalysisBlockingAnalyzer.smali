.class final Landroidx/camera/core/ImageAnalysisBlockingAnalyzer;
.super Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireImage(Landroidx/camera/core/impl/ImageReaderProxy;)Landroidx/camera/core/ImageProxy;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    return-object p1
.end method

.method public clearCache()V
    .locals 0

    return-void
.end method

.method public onValidImageAvailable(Landroidx/camera/core/ImageProxy;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->analyzeImage(Landroidx/camera/core/ImageProxy;)Lm5/a;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageAnalysisBlockingAnalyzer$1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/ImageAnalysisBlockingAnalyzer$1;-><init>(Landroidx/camera/core/ImageAnalysisBlockingAnalyzer;Landroidx/camera/core/ImageProxy;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lm5/a;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
