.class public final synthetic Landroidx/camera/extensions/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/extensions/internal/VersionName;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroidx/camera/core/CameraProvider;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/camera/extensions/internal/VersionName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/camera/extensions/b;->a:Landroidx/camera/extensions/internal/VersionName;

    iput-object p1, p0, Landroidx/camera/extensions/b;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/camera/extensions/b;->c:Landroidx/camera/core/CameraProvider;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/camera/extensions/b;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/camera/extensions/b;->c:Landroidx/camera/core/CameraProvider;

    iget-object v2, p0, Landroidx/camera/extensions/b;->a:Landroidx/camera/extensions/internal/VersionName;

    invoke-static {v2, v0, v1, p1}, Landroidx/camera/extensions/ExtensionsManager;->a(Landroidx/camera/extensions/internal/VersionName;Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
