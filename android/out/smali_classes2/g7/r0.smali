.class public final synthetic Lg7/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic b:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic c:Lcom/google/firebase/messaging/FirebaseMessaging;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic d:Lg7/d0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic e:Lg7/y;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/firebase/messaging/FirebaseMessaging;Lg7/y;Lg7/d0;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/messaging/FirebaseMessaging;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lg7/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lg7/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/r0;->a:Landroid/content/Context;

    iput-object p5, p0, Lg7/r0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lg7/r0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Lg7/r0;->d:Lg7/d0;

    iput-object p3, p0, Lg7/r0;->e:Lg7/y;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v5, p0, Lg7/r0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v6, p0, Lg7/r0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    iget-object v1, p0, Lg7/r0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 6
    .line 7
    iget-object v2, p0, Lg7/r0;->d:Lg7/d0;

    .line 8
    .line 9
    iget-object v4, p0, Lg7/r0;->e:Lg7/y;

    .line 10
    .line 11
    const-class v0, Lg7/q0;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v3, Lg7/q0;->d:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lg7/q0;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-nez v3, :cond_1

    .line 27
    .line 28
    const-string v3, "com.google.android.gms.appid"

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v7, Lg7/q0;

    .line 36
    .line 37
    invoke-direct {v7, v3, v6}, Lg7/q0;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7}, Lg7/q0;->b()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-direct {v3, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Lg7/q0;->d:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    move-object v3, v7

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    monitor-exit v0

    .line 54
    :goto_1
    new-instance v7, Lg7/s0;

    .line 55
    .line 56
    move-object v0, v7

    .line 57
    invoke-direct/range {v0 .. v6}, Lg7/s0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lg7/d0;Lg7/q0;Lg7/y;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 58
    .line 59
    .line 60
    return-object v7

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0

    .line 63
    throw v1
.end method
