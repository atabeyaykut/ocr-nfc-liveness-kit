.class public final synthetic Landroidx/camera/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/CameraX;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/h;->a:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/core/h;->b:Ljava/util/concurrent/Executor;

    iput-wide p3, p0, Landroidx/camera/core/h;->c:J

    iput-object p5, p0, Landroidx/camera/core/h;->d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Landroidx/camera/core/h;->c:J

    iget-object v2, p0, Landroidx/camera/core/h;->d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v3, p0, Landroidx/camera/core/h;->a:Landroidx/camera/core/CameraX;

    iget-object v4, p0, Landroidx/camera/core/h;->b:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/camera/core/CameraX;->e(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
