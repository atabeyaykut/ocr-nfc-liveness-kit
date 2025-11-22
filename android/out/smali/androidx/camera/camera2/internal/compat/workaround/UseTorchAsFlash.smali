.class public Landroidx/camera/camera2/internal/compat/workaround/UseTorchAsFlash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final mHasUseTorchAsFlashQuirk:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/Quirks;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroidx/camera/camera2/internal/compat/quirk/UseTorchAsFlashQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/internal/compat/workaround/UseTorchAsFlash;->mHasUseTorchAsFlashQuirk:Z

    return-void
.end method


# virtual methods
.method public shouldUseTorchAsFlash()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/camera/camera2/internal/compat/workaround/UseTorchAsFlash;->mHasUseTorchAsFlashQuirk:Z

    return v0
.end method
