.class public final synthetic Landroidx/camera/camera2/internal/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/f1;->a:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/f1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lm5/a;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/f1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/internal/f1;->a:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-static {v1, v0, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->d(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;Ljava/util/List;Ljava/util/List;)Lm5/a;

    move-result-object p1

    return-object p1
.end method
