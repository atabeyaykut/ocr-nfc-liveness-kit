.class public Landroidx/camera/camera2/internal/DisplayInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final MAX_PREVIEW_SIZE:Landroid/util/Size;

.field private static volatile sInstance:Landroidx/camera/camera2/internal/DisplayInfoManager;


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mMaxPreviewSize:Landroidx/camera/camera2/internal/compat/workaround/MaxPreviewSize;

.field private volatile mPreviewSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/internal/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/DisplayInfoManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mPreviewSize:Landroid/util/Size;

    new-instance v0, Landroidx/camera/camera2/internal/compat/workaround/MaxPreviewSize;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/compat/workaround/MaxPreviewSize;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mMaxPreviewSize:Landroidx/camera/camera2/internal/compat/workaround/MaxPreviewSize;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private calculatePreviewSize()Landroid/util/Size;
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->getMaxSizeDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    :goto_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int v2, v2, v0

    sget-object v0, Landroidx/camera/camera2/internal/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int v4, v4, v3

    if-le v2, v4, :cond_1

    move-object v1, v0

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mMaxPreviewSize:Landroidx/camera/camera2/internal/compat/workaround/MaxPreviewSize;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/workaround/MaxPreviewSize;->getMaxPreviewResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/camera/camera2/internal/DisplayInfoManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/camera/camera2/internal/DisplayInfoManager;->sInstance:Landroidx/camera/camera2/internal/DisplayInfoManager;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/camera/camera2/internal/DisplayInfoManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/camera2/internal/DisplayInfoManager;->sInstance:Landroidx/camera/camera2/internal/DisplayInfoManager;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/camera/camera2/internal/DisplayInfoManager;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/DisplayInfoManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/camera/camera2/internal/DisplayInfoManager;->sInstance:Landroidx/camera/camera2/internal/DisplayInfoManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->sInstance:Landroidx/camera/camera2/internal/DisplayInfoManager;

    return-object p0
.end method

.method public static releaseInstance()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Landroidx/camera/camera2/internal/DisplayInfoManager;->sInstance:Landroidx/camera/camera2/internal/DisplayInfoManager;

    return-void
.end method


# virtual methods
.method public getMaxSizeDisplay()Landroid/view/Display;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v6, v0, v2

    invoke-virtual {v6}, Landroid/view/Display;->getState()I

    move-result v7

    if-eq v7, v3, :cond_1

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int v9, v8, v7

    if-le v9, v5, :cond_1

    mul-int v8, v8, v7

    move-object v4, v6

    move v5, v8

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No display can be found from the input display manager!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mPreviewSize:Landroid/util/Size;

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mPreviewSize:Landroid/util/Size;

    iget-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method public refresh()V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/DisplayInfoManager;->mPreviewSize:Landroid/util/Size;

    return-void
.end method
