.class public final synthetic Landroidx/camera/core/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/m;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/m;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/CaptureProcessorPipeline;

    invoke-static {v0, p1}, Landroidx/camera/core/CaptureProcessorPipeline;->b(Landroidx/camera/core/CaptureProcessorPipeline;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final notifyProcessingError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/m;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-static {v0, p1, p2}, Landroidx/camera/core/ImageCapture;->a(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
