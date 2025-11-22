.class public final synthetic Landroidx/camera/core/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageCapture;

.field public final synthetic b:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/z;->a:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/z;->b:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iput-object p3, p0, Landroidx/camera/core/z;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/camera/core/z;->d:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/z;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/core/z;->d:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    iget-object v2, p0, Landroidx/camera/core/z;->a:Landroidx/camera/core/ImageCapture;

    iget-object v3, p0, Landroidx/camera/core/z;->b:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-static {v2, v3, v0, v1}, Landroidx/camera/core/ImageCapture;->h(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method
