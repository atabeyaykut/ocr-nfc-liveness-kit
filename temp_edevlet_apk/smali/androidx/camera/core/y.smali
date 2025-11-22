.class public final synthetic Landroidx/camera/core/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageCapture;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/y;->a:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/y;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/core/y;->c:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/y;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/core/y;->c:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    iget-object v2, p0, Landroidx/camera/core/y;->a:Landroidx/camera/core/ImageCapture;

    invoke-static {v2, v0, v1}, Landroidx/camera/core/ImageCapture;->d(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method
