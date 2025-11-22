.class public final synthetic Landroidx/camera/core/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ProcessingSurface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ProcessingSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/u0;->a:Landroidx/camera/core/ProcessingSurface;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/u0;->a:Landroidx/camera/core/ProcessingSurface;

    invoke-static {v0, p1}, Landroidx/camera/core/ProcessingSurface;->d(Landroidx/camera/core/ProcessingSurface;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
