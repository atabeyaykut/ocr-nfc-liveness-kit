.class Landroidx/camera/core/ProcessingImageReader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ProcessingImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/ProcessingImageReader;


# direct methods
.method public constructor <init>(Landroidx/camera/core/ProcessingImageReader;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/ProcessingImageReader$2;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/ProcessingImageReader$2;->lambda$onImageAvailable$0(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    return-void
.end method

.method private synthetic lambda$onImageAvailable$0(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object p1, p1, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object v1, v0, Landroidx/camera/core/ProcessingImageReader;->mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    iget-object v2, v0, Landroidx/camera/core/ProcessingImageReader;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v0}, Landroidx/camera/core/SettableImageProxyBundle;->reset()V

    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v0}, Landroidx/camera/core/ProcessingImageReader;->setupSettableImageProxyBundleCallbacks()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    new-instance p1, Landroidx/camera/core/n0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0, v1}, Landroidx/camera/core/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-interface {v1, p1}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
