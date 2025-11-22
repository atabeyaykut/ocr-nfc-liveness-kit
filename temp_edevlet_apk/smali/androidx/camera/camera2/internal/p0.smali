.class public final synthetic Landroidx/camera/camera2/internal/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/ExposureControl;

.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/camera/camera2/internal/ExposureControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/internal/p0;->a:Landroidx/camera/camera2/internal/ExposureControl;

    iput-object p3, p0, Landroidx/camera/camera2/internal/p0;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput p1, p0, Landroidx/camera/camera2/internal/p0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/p0;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget v1, p0, Landroidx/camera/camera2/internal/p0;->c:I

    iget-object v2, p0, Landroidx/camera/camera2/internal/p0;->a:Landroidx/camera/camera2/internal/ExposureControl;

    invoke-static {v1, v2, v0}, Landroidx/camera/camera2/internal/ExposureControl;->b(ILandroidx/camera/camera2/internal/ExposureControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
