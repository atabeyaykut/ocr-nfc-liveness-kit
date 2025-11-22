.class public final synthetic Landroidx/camera/core/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageCapture;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/a0;->a:Landroidx/camera/core/ImageCapture;

    return-void
.end method


# virtual methods
.method public final capture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/a0;->a:Landroidx/camera/core/ImageCapture;

    invoke-static {v0, p1}, Landroidx/camera/core/ImageCapture;->i(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lm5/a;

    move-result-object p1

    return-object p1
.end method
