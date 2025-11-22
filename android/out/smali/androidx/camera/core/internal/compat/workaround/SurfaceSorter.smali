.class public Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final PRIORITY_MEDIA_CODEC_SURFACE:I = 0x2

.field private static final PRIORITY_OTHERS:I = 0x1

.field private static final PRIORITY_PREVIEW_SURFACE:I


# instance fields
.field private final mHasQuirk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroidx/camera/core/internal/compat/quirk/SurfaceOrderQuirk;

    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->mHasQuirk:Z

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/DeferrableSurface;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->lambda$sort$0(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/DeferrableSurface;)I

    move-result p0

    return p0
.end method

.method private getSurfacePriority(Landroidx/camera/core/impl/DeferrableSurface;)I
    .locals 2
    .param p1    # Landroidx/camera/core/impl/DeferrableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/media/MediaCodec;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/camera/core/VideoCapture;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroidx/camera/core/Preview;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method private synthetic lambda$sort$0(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/DeferrableSurface;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->getSurfacePriority(Landroidx/camera/core/impl/DeferrableSurface;)I

    move-result p1

    invoke-direct {p0, p2}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->getSurfacePriority(Landroidx/camera/core/impl/DeferrableSurface;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public sort(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->mHasQuirk:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/camera/core/internal/compat/workaround/a;

    invoke-direct {v0, p0}, Landroidx/camera/core/internal/compat/workaround/a;-><init>(Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
