.class public final Landroidx/camera/extensions/ExtensionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;
    }
.end annotation


# static fields
.field private static final EXTENSIONS_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ExtensionsManager"

.field private static sDeinitializeFuture:Lm5/a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "EXTENSIONS_LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "EXTENSIONS_LOCK"
    .end annotation
.end field

.field private static sInitializeFuture:Lm5/a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "EXTENSIONS_LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "Landroidx/camera/extensions/ExtensionsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

.field private final mExtensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;)V
    .locals 0
    .param p1    # Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    new-instance p1, Landroidx/camera/extensions/ExtensionsInfo;

    invoke-direct {p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;-><init>(Landroidx/camera/core/CameraProvider;)V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/extensions/internal/VersionName;Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/extensions/ExtensionsManager;->lambda$getInstanceAsync$0(Landroidx/camera/extensions/internal/VersionName;Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/extensions/ExtensionsManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/extensions/ExtensionsManager;->lambda$shutdown$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lm5/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/CameraProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraProvider;",
            ")",
            "Lm5/a<",
            "Landroidx/camera/extensions/ExtensionsManager;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/extensions/internal/VersionName;->getCurrentVersion()Landroidx/camera/extensions/internal/VersionName;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/camera/extensions/ExtensionsManager;->getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/camera/extensions/internal/VersionName;)Lm5/a;

    move-result-object p0

    return-object p0
.end method

.method public static getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/camera/extensions/internal/VersionName;)Lm5/a;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/CameraProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/extensions/internal/VersionName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraProvider;",
            "Landroidx/camera/extensions/internal/VersionName;",
            ")",
            "Lm5/a<",
            "Landroidx/camera/extensions/ExtensionsManager;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lm5/a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not yet done deinitializing extensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lm5/a;

    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->getRuntimeVersion()Landroidx/camera/extensions/internal/Version;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p0, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->NONE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    invoke-static {p0, p1}, Landroidx/camera/extensions/ExtensionsManager;->getOrCreateExtensionsManager(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;)Landroidx/camera/extensions/ExtensionsManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->getRuntimeVersion()Landroidx/camera/extensions/internal/Version;

    move-result-object v1

    sget-object v2, Landroidx/camera/extensions/internal/Version;->VERSION_1_1:Landroidx/camera/extensions/internal/Version;

    invoke-virtual {v1, v2}, Landroidx/camera/extensions/internal/Version;->compareTo(Landroidx/camera/extensions/internal/Version;)I

    move-result v1

    if-gez v1, :cond_3

    sget-object p0, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    invoke-static {p0, p1}, Landroidx/camera/extensions/ExtensionsManager;->getOrCreateExtensionsManager(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;)Landroidx/camera/extensions/ExtensionsManager;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_3
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lm5/a;

    if-nez v1, :cond_4

    new-instance v1, Landroidx/camera/extensions/b;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/extensions/b;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/camera/extensions/internal/VersionName;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lm5/a;

    move-result-object p0

    sput-object p0, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lm5/a;

    :cond_4
    sget-object p0, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lm5/a;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getOrCreateExtensionsManager(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;)Landroidx/camera/extensions/ExtensionsManager;
    .locals 2
    .param p0    # Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/CameraProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Landroidx/camera/extensions/ExtensionsManager;

    invoke-direct {v1, p0, p1}, Landroidx/camera/extensions/ExtensionsManager;-><init>(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;)V

    sput-object v1, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$getInstanceAsync$0(Landroidx/camera/extensions/internal/VersionName;Landroid/content/Context;Landroidx/camera/core/CameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ExtensionsManager"

    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/VersionName;->toVersionString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroidx/camera/extensions/ExtensionsManager$1;

    invoke-direct {v1, p3, p2}, Landroidx/camera/extensions/ExtensionsManager$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/CameraProvider;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Landroidx/camera/extensions/impl/InitializerImpl;->init(Ljava/lang/String;Landroid/content/Context;Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initialize extensions. Something wents wrong when initializing the vendor library. "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_UNAVAILABLE_ERROR_LOADING:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initialize extensions. Some classes or methods are missed in the vendor library. "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    :goto_1
    invoke-static {p0, p2}, Landroidx/camera/extensions/ExtensionsManager;->getOrCreateExtensionsManager(Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;Landroidx/camera/core/CameraProvider;)Landroidx/camera/extensions/ExtensionsManager;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :goto_2
    const-string p0, "Initialize extensions"

    return-object p0
.end method

.method private synthetic lambda$shutdown$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroidx/camera/extensions/ExtensionsManager$2;

    invoke-direct {v0, p0, p1}, Landroidx/camera/extensions/ExtensionsManager$2;-><init>(Landroidx/camera/extensions/ExtensionsManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/extensions/impl/InitializerImpl;->deinit(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getEstimatedCaptureLatencyRange(Landroidx/camera/core/CameraSelector;I)Landroid/util/Range;
    .locals 2
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraSelector;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/camera/extensions/ExtensionsInfo;->getEstimatedCaptureLatencyRange(Landroidx/camera/core/CameraSelector;ILandroid/util/Size;)Landroid/util/Range;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No camera can be found to support the specified extensions mode! isExtensionAvailable should be checked first before calling getEstimatedCaptureLatencyRange."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensionEnabledCameraSelector(Landroidx/camera/core/CameraSelector;I)Landroidx/camera/core/CameraSelector;
    .locals 2
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->getExtensionCameraSelectorAndInjectCameraConfig(Landroidx/camera/core/CameraSelector;I)Landroidx/camera/core/CameraSelector;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This device doesn\'t support extensions function! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensionsAvailability()Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    return-object v0
.end method

.method public isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z
    .locals 2
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsInfo:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->isExtensionAvailable(Landroidx/camera/core/CameraSelector;I)Z

    move-result p1

    return p1
.end method

.method public shutdown()Lm5/a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/extensions/ExtensionsManager;->EXTENSIONS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->getRuntimeVersion()Landroidx/camera/extensions/internal/Version;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sput-object v2, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lm5/a;

    sput-object v2, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lm5/a;

    if-nez v1, :cond_1

    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v3, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lm5/a;

    if-eqz v3, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    sput-object v2, Landroidx/camera/extensions/ExtensionsManager;->sInitializeFuture:Lm5/a;

    sget-object v1, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    iget-object v1, v1, Landroidx/camera/extensions/ExtensionsManager;->mExtensionsAvailability:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    sput-object v2, Landroidx/camera/extensions/ExtensionsManager;->sExtensionsManager:Landroidx/camera/extensions/ExtensionsManager;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v3, Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;->LIBRARY_AVAILABLE:Landroidx/camera/extensions/ExtensionsManager$ExtensionsAvailability;

    if-ne v1, v3, :cond_3

    new-instance v1, Landroidx/camera/core/impl/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/camera/core/impl/p;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lm5/a;

    move-result-object v1

    :goto_0
    sput-object v1, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lm5/a;

    goto :goto_1

    :cond_3
    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lm5/a;

    move-result-object v1

    goto :goto_0

    :goto_1
    sget-object v1, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lm5/a;

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lm5/a;

    move-result-object v1

    sput-object v1, Landroidx/camera/extensions/ExtensionsManager;->sDeinitializeFuture:Lm5/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
