.class public final synthetic Landroidx/camera/core/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm5/a;

.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lm5/a;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/r;->a:Lm5/a;

    iput-object p2, p0, Landroidx/camera/core/impl/r;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-wide p3, p0, Landroidx/camera/core/impl/r;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/impl/r;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-wide v1, p0, Landroidx/camera/core/impl/r;->c:J

    iget-object v3, p0, Landroidx/camera/core/impl/r;->a:Lm5/a;

    invoke-static {v3, v0, v1, v2}, Landroidx/camera/core/impl/DeferrableSurfaces;->b(Lm5/a;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    return-void
.end method
