.class public final synthetic Landroidx/camera/core/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lm5/a;

.field public final synthetic c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lm5/a;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/s;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/camera/core/impl/s;->b:Lm5/a;

    iput-object p3, p0, Landroidx/camera/core/impl/s;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-wide p4, p0, Landroidx/camera/core/impl/s;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/core/impl/s;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-wide v1, p0, Landroidx/camera/core/impl/s;->d:J

    iget-object v3, p0, Landroidx/camera/core/impl/s;->a:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/camera/core/impl/s;->b:Lm5/a;

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/camera/core/impl/DeferrableSurfaces;->d(Ljava/util/concurrent/Executor;Lm5/a;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    return-void
.end method
