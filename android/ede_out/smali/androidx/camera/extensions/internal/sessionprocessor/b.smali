.class public final synthetic Landroidx/camera/extensions/internal/sessionprocessor/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/b;->a:Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;

    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/b;->b:I

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/b;->a:Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/b;->b:I

    invoke-static {v0, v1, p1}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->a(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILandroid/media/ImageReader;)V

    return-void
.end method
