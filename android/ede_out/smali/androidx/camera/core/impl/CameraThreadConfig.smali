.class public abstract Landroidx/camera/core/impl/CameraThreadConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/concurrent/Executor;Landroid/os/Handler;)Landroidx/camera/core/impl/CameraThreadConfig;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public abstract getCameraExecutor()Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSchedulerHandler()Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
