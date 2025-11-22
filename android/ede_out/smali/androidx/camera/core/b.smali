.class public final synthetic Landroidx/camera/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/AndroidImageReaderProxy;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/AndroidImageReaderProxy;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/b;->a:Landroidx/camera/core/AndroidImageReaderProxy;

    iput-object p2, p0, Landroidx/camera/core/b;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/core/b;->c:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/core/b;->c:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    iget-object v2, p0, Landroidx/camera/core/b;->a:Landroidx/camera/core/AndroidImageReaderProxy;

    invoke-static {v2, v0, v1, p1}, Landroidx/camera/core/AndroidImageReaderProxy;->a(Landroidx/camera/core/AndroidImageReaderProxy;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Landroid/media/ImageReader;)V

    return-void
.end method
