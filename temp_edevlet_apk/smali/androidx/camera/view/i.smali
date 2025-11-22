.class public final synthetic Landroidx/camera/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView$1;

.field public final synthetic b:Landroidx/camera/core/impl/CameraInternal;

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$1;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/i;->a:Landroidx/camera/view/PreviewView$1;

    iput-object p2, p0, Landroidx/camera/view/i;->b:Landroidx/camera/core/impl/CameraInternal;

    iput-object p3, p0, Landroidx/camera/view/i;->c:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final onTransformationInfoUpdate(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/view/i;->b:Landroidx/camera/core/impl/CameraInternal;

    iget-object v1, p0, Landroidx/camera/view/i;->c:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/view/i;->a:Landroidx/camera/view/PreviewView$1;

    invoke-static {v2, v0, v1, p1}, Landroidx/camera/view/PreviewView$1;->b(Landroidx/camera/view/PreviewView$1;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method
