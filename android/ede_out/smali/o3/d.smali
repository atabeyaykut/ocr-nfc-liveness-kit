.class public final Lo3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final p:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final q:Lcom/google/android/gms/common/api/Status;

.field public static final r:Ljava/lang/Object;

.field public static s:Lo3/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:Z

.field public c:Lr3/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lt3/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Lm3/e;

.field public final g:Lr3/g0;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public k:Lo3/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Landroidx/collection/ArraySet;

.field public final m:Landroidx/collection/ArraySet;

.field public final n:Lh4/i;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public volatile o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo3/d;->p:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo3/d;->q:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo3/d;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    sget-object v0, Lm3/e;->d:Lm3/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x2710

    .line 7
    .line 8
    iput-wide v1, p0, Lo3/d;->a:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lo3/d;->b:Z

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lo3/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lo3/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x3f400000    # 0.75f

    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lo3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lo3/d;->k:Lo3/r;

    .line 40
    .line 41
    new-instance v2, Landroidx/collection/ArraySet;

    .line 42
    .line 43
    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lo3/d;->l:Landroidx/collection/ArraySet;

    .line 47
    .line 48
    new-instance v2, Landroidx/collection/ArraySet;

    .line 49
    .line 50
    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lo3/d;->m:Landroidx/collection/ArraySet;

    .line 54
    .line 55
    iput-boolean v3, p0, Lo3/d;->o:Z

    .line 56
    .line 57
    iput-object p1, p0, Lo3/d;->e:Landroid/content/Context;

    .line 58
    .line 59
    new-instance v2, Lh4/i;

    .line 60
    .line 61
    invoke-direct {v2, p2, p0}, Lh4/i;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lo3/d;->n:Lh4/i;

    .line 65
    .line 66
    iput-object v0, p0, Lo3/d;->f:Lm3/e;

    .line 67
    .line 68
    new-instance p2, Lr3/g0;

    .line 69
    .line 70
    invoke-direct {p2}, Lr3/g0;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lo3/d;->g:Lr3/g0;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object p2, Lw3/b;->d:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-nez p2, :cond_1

    .line 82
    .line 83
    invoke-static {}, Lw3/d;->a()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_0

    .line 88
    .line 89
    const-string p2, "android.hardware.type.automotive"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const/4 v3, 0x0

    .line 99
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sput-object p1, Lw3/b;->d:Ljava/lang/Boolean;

    .line 104
    .line 105
    :cond_1
    sget-object p1, Lw3/b;->d:Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iput-boolean v1, p0, Lo3/d;->o:Z

    .line 114
    .line 115
    :cond_2
    const/4 p1, 0x6

    .line 116
    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public static c(Lo3/a;Lm3/b;)Lcom/google/android/gms/common/api/Status;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object p0, p0, Lo3/a;->b:Ln3/a;

    .line 4
    .line 5
    iget-object p0, p0, Ln3/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "API: "

    .line 12
    .line 13
    const-string v2, " is not available on this device. Connection failed with: "

    .line 14
    .line 15
    invoke-static {v1, p0, v2, v0}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v2, 0x11

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iget-object v4, p1, Lm3/b;->c:Landroid/app/PendingIntent;

    .line 23
    .line 24
    move-object v0, v6

    .line 25
    move-object v5, p1

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lm3/b;)V

    .line 27
    .line 28
    .line 29
    return-object v6
.end method

.method public static e(Landroid/content/Context;)Lo3/d;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lo3/d;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo3/d;->s:Lo3/d;

    if-nez v1, :cond_0

    invoke-static {}, Lr3/i;->b()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo3/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lm3/e;->c:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lo3/d;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lo3/d;->s:Lo3/d;

    :cond_0
    sget-object p0, Lo3/d;->s:Lo3/d;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lo3/d;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lr3/s;->a()Lr3/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lr3/s;->a:Lr3/t;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v0, v0, Lr3/t;->b:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v1

    .line 21
    :cond_2
    :goto_0
    iget-object v0, p0, Lo3/d;->g:Lr3/g0;

    .line 22
    .line 23
    iget-object v0, v0, Lr3/g0;->a:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const v2, 0xc1fa340

    .line 26
    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq v0, v3, :cond_4

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    return v1

    .line 39
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 40
    return v0
.end method

.method public final b(Lm3/b;I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lo3/d;->f:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lo3/d;->e:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Ly3/a;->a(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v2, p1, Lm3/b;->b:I

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v5, p1, Lm3/b;->c:Landroid/app/PendingIntent;

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v5, 0x0

    .line 28
    :goto_0
    const/high16 v6, 0x8000000

    .line 29
    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    iget-object p1, p1, Lm3/b;->c:Landroid/app/PendingIntent;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    invoke-virtual {v0, v1, v2, p1}, Lm3/e;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-nez v5, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    sget p1, Lj4/d;->a:I

    .line 44
    .line 45
    or-int/2addr p1, v6

    .line 46
    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    if-eqz p1, :cond_4

    .line 51
    .line 52
    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 53
    .line 54
    new-instance v5, Landroid/content/Intent;

    .line 55
    .line 56
    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 57
    .line 58
    invoke-direct {v5, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    const-string v7, "pending_intent"

    .line 62
    .line 63
    invoke-virtual {v5, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string p1, "failing_client_id"

    .line 67
    .line 68
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string p1, "notify_manager"

    .line 72
    .line 73
    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    sget p1, Lh4/h;->a:I

    .line 77
    .line 78
    or-int/2addr p1, v6

    .line 79
    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, v1, v2, p1}, Lm3/e;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    :cond_4
    :goto_2
    return v3
.end method

.method public final d(Ln3/c;)Lo3/a0;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p1, Ln3/c;->e:Lo3/a;

    .line 2
    .line 3
    iget-object v1, p0, Lo3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lo3/a0;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lo3/a0;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lo3/a0;-><init>(Lo3/d;Ln3/c;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, v2, Lo3/a0;->b:Ln3/a$e;

    .line 22
    .line 23
    invoke-interface {p1}, Ln3/a$e;->o()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lo3/d;->m:Landroidx/collection/ArraySet;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Lo3/a0;->k()V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final f(Lm3/b;I)V
    .locals 3
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lo3/d;->b(Lm3/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo3/d;->n:Lh4/i;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    iget-object v2, p0, Lo3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object v3, p0, Lo3/d;->e:Landroid/content/Context;

    .line 8
    .line 9
    const-wide/32 v4, 0x493e0

    .line 10
    .line 11
    .line 12
    const-string v6, "GoogleApiManager"

    .line 13
    .line 14
    const/16 v7, 0x11

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Unknown message id: "

    .line 25
    .line 26
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v9

    .line 40
    :pswitch_0
    iput-boolean v9, p0, Lo3/d;->b:Z

    .line 41
    .line 42
    goto/16 :goto_b

    .line 43
    .line 44
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lo3/j0;

    .line 47
    .line 48
    iget-wide v4, p1, Lo3/j0;->c:J

    .line 49
    .line 50
    const-wide/16 v11, 0x0

    .line 51
    .line 52
    iget-object v0, p1, Lo3/j0;->a:Lr3/o;

    .line 53
    .line 54
    iget v2, p1, Lo3/j0;->b:I

    .line 55
    .line 56
    cmp-long v6, v4, v11

    .line 57
    .line 58
    if-nez v6, :cond_1

    .line 59
    .line 60
    new-instance p1, Lr3/v;

    .line 61
    .line 62
    new-array v1, v10, [Lr3/o;

    .line 63
    .line 64
    aput-object v0, v1, v9

    .line 65
    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p1, v2, v0}, Lr3/v;-><init>(ILjava/util/List;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lo3/d;->d:Lt3/c;

    .line 74
    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    sget-object v0, Lr3/w;->b:Lr3/w;

    .line 78
    .line 79
    new-instance v1, Lt3/c;

    .line 80
    .line 81
    invoke-direct {v1, v3, v0}, Lt3/c;-><init>(Landroid/content/Context;Lr3/w;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lo3/d;->d:Lt3/c;

    .line 85
    .line 86
    :cond_0
    iget-object v0, p0, Lo3/d;->d:Lt3/c;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lt3/c;->d(Lr3/v;)Lh5/z;

    .line 89
    .line 90
    .line 91
    goto/16 :goto_b

    .line 92
    .line 93
    :cond_1
    iget-object v4, p0, Lo3/d;->c:Lr3/v;

    .line 94
    .line 95
    if-eqz v4, :cond_8

    .line 96
    .line 97
    iget-object v5, v4, Lr3/v;->b:Ljava/util/List;

    .line 98
    .line 99
    iget v4, v4, Lr3/v;->a:I

    .line 100
    .line 101
    if-ne v4, v2, :cond_4

    .line 102
    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    iget v5, p1, Lo3/j0;->d:I

    .line 110
    .line 111
    if-lt v4, v5, :cond_2

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lo3/d;->c:Lr3/v;

    .line 115
    .line 116
    iget-object v4, v3, Lr3/v;->b:Ljava/util/List;

    .line 117
    .line 118
    if-nez v4, :cond_3

    .line 119
    .line 120
    new-instance v4, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v4, v3, Lr3/v;->b:Ljava/util/List;

    .line 126
    .line 127
    :cond_3
    iget-object v3, v3, Lr3/v;->b:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    :goto_0
    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    .line 135
    .line 136
    iget-object v4, p0, Lo3/d;->c:Lr3/v;

    .line 137
    .line 138
    if-eqz v4, :cond_8

    .line 139
    .line 140
    iget v5, v4, Lr3/v;->a:I

    .line 141
    .line 142
    if-gtz v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0}, Lo3/d;->a()Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_7

    .line 149
    .line 150
    :cond_5
    iget-object v5, p0, Lo3/d;->d:Lt3/c;

    .line 151
    .line 152
    if-nez v5, :cond_6

    .line 153
    .line 154
    sget-object v5, Lr3/w;->b:Lr3/w;

    .line 155
    .line 156
    new-instance v6, Lt3/c;

    .line 157
    .line 158
    invoke-direct {v6, v3, v5}, Lt3/c;-><init>(Landroid/content/Context;Lr3/w;)V

    .line 159
    .line 160
    .line 161
    iput-object v6, p0, Lo3/d;->d:Lt3/c;

    .line 162
    .line 163
    :cond_6
    iget-object v3, p0, Lo3/d;->d:Lt3/c;

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Lt3/c;->d(Lr3/v;)Lh5/z;

    .line 166
    .line 167
    .line 168
    :cond_7
    iput-object v8, p0, Lo3/d;->c:Lr3/v;

    .line 169
    .line 170
    :cond_8
    :goto_1
    iget-object v3, p0, Lo3/d;->c:Lr3/v;

    .line 171
    .line 172
    if-nez v3, :cond_1f

    .line 173
    .line 174
    new-instance v3, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance v0, Lr3/v;

    .line 183
    .line 184
    invoke-direct {v0, v2, v3}, Lr3/v;-><init>(ILjava/util/List;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, p0, Lo3/d;->c:Lr3/v;

    .line 188
    .line 189
    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-wide v2, p1, Lo3/j0;->c:J

    .line 194
    .line 195
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    .line 197
    .line 198
    goto/16 :goto_b

    .line 199
    .line 200
    :pswitch_2
    iget-object p1, p0, Lo3/d;->c:Lr3/v;

    .line 201
    .line 202
    if-eqz p1, :cond_1f

    .line 203
    .line 204
    iget v0, p1, Lr3/v;->a:I

    .line 205
    .line 206
    if-gtz v0, :cond_9

    .line 207
    .line 208
    invoke-virtual {p0}, Lo3/d;->a()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    :cond_9
    iget-object v0, p0, Lo3/d;->d:Lt3/c;

    .line 215
    .line 216
    if-nez v0, :cond_a

    .line 217
    .line 218
    sget-object v0, Lr3/w;->b:Lr3/w;

    .line 219
    .line 220
    new-instance v1, Lt3/c;

    .line 221
    .line 222
    invoke-direct {v1, v3, v0}, Lt3/c;-><init>(Landroid/content/Context;Lr3/w;)V

    .line 223
    .line 224
    .line 225
    iput-object v1, p0, Lo3/d;->d:Lt3/c;

    .line 226
    .line 227
    :cond_a
    iget-object v0, p0, Lo3/d;->d:Lt3/c;

    .line 228
    .line 229
    invoke-virtual {v0, p1}, Lt3/c;->d(Lr3/v;)Lh5/z;

    .line 230
    .line 231
    .line 232
    :cond_b
    iput-object v8, p0, Lo3/d;->c:Lr3/v;

    .line 233
    .line 234
    goto/16 :goto_b

    .line 235
    .line 236
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p1, Lo3/b0;

    .line 239
    .line 240
    iget-object v0, p1, Lo3/b0;->a:Lo3/a;

    .line 241
    .line 242
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_1f

    .line 247
    .line 248
    iget-object v0, p1, Lo3/b0;->a:Lo3/a;

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Lo3/a0;

    .line 255
    .line 256
    iget-object v1, v0, Lo3/a0;->j:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_1f

    .line 263
    .line 264
    iget-object v1, v0, Lo3/a0;->m:Lo3/d;

    .line 265
    .line 266
    iget-object v2, v1, Lo3/d;->n:Lh4/i;

    .line 267
    .line 268
    const/16 v3, 0xf

    .line 269
    .line 270
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v1, Lo3/d;->n:Lh4/i;

    .line 274
    .line 275
    const/16 v2, 0x10

    .line 276
    .line 277
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    .line 281
    .line 282
    iget-object v2, v0, Lo3/a0;->a:Ljava/util/LinkedList;

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    iget-object v5, p1, Lo3/b0;->b:Lm3/d;

    .line 300
    .line 301
    if-eqz v4, :cond_f

    .line 302
    .line 303
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    check-cast v4, Lo3/w0;

    .line 308
    .line 309
    instance-of v6, v4, Lo3/g0;

    .line 310
    .line 311
    if-eqz v6, :cond_c

    .line 312
    .line 313
    move-object v6, v4

    .line 314
    check-cast v6, Lo3/g0;

    .line 315
    .line 316
    invoke-virtual {v6, v0}, Lo3/g0;->g(Lo3/a0;)[Lm3/d;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    if-eqz v6, :cond_c

    .line 321
    .line 322
    array-length v7, v6

    .line 323
    const/4 v8, 0x0

    .line 324
    :goto_3
    if-ge v8, v7, :cond_e

    .line 325
    .line 326
    aget-object v11, v6, v8

    .line 327
    .line 328
    invoke-static {v11, v5}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    if-eqz v11, :cond_d

    .line 333
    .line 334
    if-ltz v8, :cond_e

    .line 335
    .line 336
    const/4 v5, 0x1

    .line 337
    goto :goto_4

    .line 338
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_e
    const/4 v5, 0x0

    .line 342
    :goto_4
    if-eqz v5, :cond_c

    .line 343
    .line 344
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    :goto_5
    if-ge v9, p1, :cond_1f

    .line 353
    .line 354
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Lo3/w0;

    .line 359
    .line 360
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    new-instance v3, Ln3/j;

    .line 364
    .line 365
    invoke-direct {v3, v5}, Ln3/j;-><init>(Lm3/d;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v3}, Lo3/w0;->b(Ljava/lang/RuntimeException;)V

    .line 369
    .line 370
    .line 371
    add-int/lit8 v9, v9, 0x1

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast p1, Lo3/b0;

    .line 377
    .line 378
    iget-object v0, p1, Lo3/b0;->a:Lo3/a;

    .line 379
    .line 380
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_1f

    .line 385
    .line 386
    iget-object v0, p1, Lo3/b0;->a:Lo3/a;

    .line 387
    .line 388
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Lo3/a0;

    .line 393
    .line 394
    iget-object v1, v0, Lo3/a0;->j:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-nez p1, :cond_10

    .line 401
    .line 402
    goto/16 :goto_b

    .line 403
    .line 404
    :cond_10
    iget-boolean p1, v0, Lo3/a0;->i:Z

    .line 405
    .line 406
    if-nez p1, :cond_1f

    .line 407
    .line 408
    iget-object p1, v0, Lo3/a0;->b:Ln3/a$e;

    .line 409
    .line 410
    invoke-interface {p1}, Ln3/a$e;->isConnected()Z

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-nez p1, :cond_11

    .line 415
    .line 416
    invoke-virtual {v0}, Lo3/a0;->k()V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_b

    .line 420
    .line 421
    :cond_11
    invoke-virtual {v0}, Lo3/a0;->d()V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_b

    .line 425
    .line 426
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast p1, Lo3/s;

    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-nez p1, :cond_12

    .line 438
    .line 439
    throw v8

    .line 440
    :cond_12
    invoke-virtual {v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    check-cast p1, Lo3/a0;

    .line 445
    .line 446
    invoke-virtual {p1, v9}, Lo3/a0;->j(Z)Z

    .line 447
    .line 448
    .line 449
    throw v8

    .line 450
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    .line 452
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_1f

    .line 457
    .line 458
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 459
    .line 460
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    check-cast p1, Lo3/a0;

    .line 465
    .line 466
    invoke-virtual {p1, v10}, Lo3/a0;->j(Z)Z

    .line 467
    .line 468
    .line 469
    goto/16 :goto_b

    .line 470
    .line 471
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 472
    .line 473
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eqz v0, :cond_1f

    .line 478
    .line 479
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    .line 481
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    check-cast p1, Lo3/a0;

    .line 486
    .line 487
    iget-object v0, p1, Lo3/a0;->m:Lo3/d;

    .line 488
    .line 489
    iget-object v1, v0, Lo3/d;->n:Lh4/i;

    .line 490
    .line 491
    invoke-static {v1}, Lr3/r;->d(Lh4/i;)V

    .line 492
    .line 493
    .line 494
    iget-boolean v1, p1, Lo3/a0;->i:Z

    .line 495
    .line 496
    if-eqz v1, :cond_1f

    .line 497
    .line 498
    if-eqz v1, :cond_13

    .line 499
    .line 500
    iget-object v1, p1, Lo3/a0;->m:Lo3/d;

    .line 501
    .line 502
    iget-object v2, v1, Lo3/d;->n:Lh4/i;

    .line 503
    .line 504
    const/16 v3, 0xb

    .line 505
    .line 506
    iget-object v4, p1, Lo3/a0;->c:Lo3/a;

    .line 507
    .line 508
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    iget-object v1, v1, Lo3/d;->n:Lh4/i;

    .line 512
    .line 513
    const/16 v2, 0x9

    .line 514
    .line 515
    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    iput-boolean v9, p1, Lo3/a0;->i:Z

    .line 519
    .line 520
    :cond_13
    sget v1, Lm3/f;->a:I

    .line 521
    .line 522
    iget-object v2, v0, Lo3/d;->f:Lm3/e;

    .line 523
    .line 524
    iget-object v0, v0, Lo3/d;->e:Landroid/content/Context;

    .line 525
    .line 526
    invoke-virtual {v2, v1, v0}, Lm3/e;->c(ILandroid/content/Context;)I

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    const/16 v1, 0x12

    .line 531
    .line 532
    if-ne v0, v1, :cond_14

    .line 533
    .line 534
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 535
    .line 536
    const/16 v1, 0x15

    .line 537
    .line 538
    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    .line 539
    .line 540
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 541
    .line 542
    .line 543
    goto :goto_6

    .line 544
    :cond_14
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 545
    .line 546
    const/16 v1, 0x16

    .line 547
    .line 548
    const-string v2, "API failed to connect while resuming due to an unknown error."

    .line 549
    .line 550
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 551
    .line 552
    .line 553
    :goto_6
    invoke-virtual {p1, v0}, Lo3/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 554
    .line 555
    .line 556
    iget-object p1, p1, Lo3/a0;->b:Ln3/a$e;

    .line 557
    .line 558
    const-string v0, "Timing out connection while resuming."

    .line 559
    .line 560
    invoke-interface {p1, v0}, Ln3/a$e;->d(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_b

    .line 564
    .line 565
    :pswitch_8
    iget-object p1, p0, Lo3/d;->m:Landroidx/collection/ArraySet;

    .line 566
    .line 567
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    :cond_15
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    if-eqz v1, :cond_16

    .line 576
    .line 577
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    check-cast v1, Lo3/a;

    .line 582
    .line 583
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    check-cast v1, Lo3/a0;

    .line 588
    .line 589
    if-eqz v1, :cond_15

    .line 590
    .line 591
    invoke-virtual {v1}, Lo3/a0;->n()V

    .line 592
    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_16
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_b

    .line 599
    .line 600
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    .line 602
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_1f

    .line 607
    .line 608
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 609
    .line 610
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    check-cast p1, Lo3/a0;

    .line 615
    .line 616
    iget-object v0, p1, Lo3/a0;->m:Lo3/d;

    .line 617
    .line 618
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 619
    .line 620
    invoke-static {v0}, Lr3/r;->d(Lh4/i;)V

    .line 621
    .line 622
    .line 623
    iget-boolean v0, p1, Lo3/a0;->i:Z

    .line 624
    .line 625
    if-eqz v0, :cond_1f

    .line 626
    .line 627
    invoke-virtual {p1}, Lo3/a0;->k()V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_b

    .line 631
    .line 632
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast p1, Ln3/c;

    .line 635
    .line 636
    invoke-virtual {p0, p1}, Lo3/d;->d(Ln3/c;)Lo3/a0;

    .line 637
    .line 638
    .line 639
    goto/16 :goto_b

    .line 640
    .line 641
    :pswitch_b
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    instance-of p1, p1, Landroid/app/Application;

    .line 646
    .line 647
    if-eqz p1, :cond_1f

    .line 648
    .line 649
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    check-cast p1, Landroid/app/Application;

    .line 654
    .line 655
    invoke-static {p1}, Lo3/b;->b(Landroid/app/Application;)V

    .line 656
    .line 657
    .line 658
    sget-object p1, Lo3/b;->e:Lo3/b;

    .line 659
    .line 660
    new-instance v0, Lo3/v;

    .line 661
    .line 662
    invoke-direct {v0, p0}, Lo3/v;-><init>(Lo3/d;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p1, v0}, Lo3/b;->a(Lo3/b$a;)V

    .line 666
    .line 667
    .line 668
    iget-object v0, p1, Lo3/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 669
    .line 670
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    iget-object p1, p1, Lo3/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 675
    .line 676
    if-nez v1, :cond_17

    .line 677
    .line 678
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 679
    .line 680
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 681
    .line 682
    .line 683
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-nez v0, :cond_17

    .line 691
    .line 692
    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 693
    .line 694
    const/16 v1, 0x64

    .line 695
    .line 696
    if-le v0, v1, :cond_17

    .line 697
    .line 698
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 699
    .line 700
    .line 701
    :cond_17
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 702
    .line 703
    .line 704
    move-result p1

    .line 705
    if-nez p1, :cond_1f

    .line 706
    .line 707
    iput-wide v4, p0, Lo3/d;->a:J

    .line 708
    .line 709
    goto/16 :goto_b

    .line 710
    .line 711
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 712
    .line 713
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast p1, Lm3/b;

    .line 716
    .line 717
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    if-eqz v2, :cond_19

    .line 730
    .line 731
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    check-cast v2, Lo3/a0;

    .line 736
    .line 737
    iget v3, v2, Lo3/a0;->g:I

    .line 738
    .line 739
    if-ne v3, v0, :cond_18

    .line 740
    .line 741
    move-object v8, v2

    .line 742
    :cond_19
    if-eqz v8, :cond_1b

    .line 743
    .line 744
    iget v0, p1, Lm3/b;->b:I

    .line 745
    .line 746
    const/16 v1, 0xd

    .line 747
    .line 748
    if-ne v0, v1, :cond_1a

    .line 749
    .line 750
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 751
    .line 752
    iget-object v1, p0, Lo3/d;->f:Lm3/e;

    .line 753
    .line 754
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    .line 756
    .line 757
    sget-object v1, Lm3/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 758
    .line 759
    iget v1, p1, Lm3/b;->b:I

    .line 760
    .line 761
    invoke-static {v1}, Lm3/b;->E(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    const-string v2, "Error resolution was canceled by the user, original error message: "

    .line 766
    .line 767
    const-string v3, ": "

    .line 768
    .line 769
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    iget-object p1, p1, Lm3/b;->d:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    invoke-direct {v0, v7, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v8, v0}, Lo3/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_b

    .line 789
    .line 790
    :cond_1a
    iget-object v0, v8, Lo3/a0;->c:Lo3/a;

    .line 791
    .line 792
    invoke-static {v0, p1}, Lo3/d;->c(Lo3/a;Lm3/b;)Lcom/google/android/gms/common/api/Status;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-virtual {v8, p1}, Lo3/a0;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_b

    .line 800
    .line 801
    :cond_1b
    const-string p1, "Could not find API instance "

    .line 802
    .line 803
    const-string v1, " while trying to fail enqueued calls."

    .line 804
    .line 805
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    move-result-object p1

    .line 809
    new-instance v0, Ljava/lang/Exception;

    .line 810
    .line 811
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 812
    .line 813
    .line 814
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object p1

    .line 818
    invoke-static {v6, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .line 820
    .line 821
    goto/16 :goto_b

    .line 822
    .line 823
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast p1, Lo3/l0;

    .line 826
    .line 827
    iget-object v0, p1, Lo3/l0;->c:Ln3/c;

    .line 828
    .line 829
    iget-object v0, v0, Ln3/c;->e:Lo3/a;

    .line 830
    .line 831
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    check-cast v0, Lo3/a0;

    .line 836
    .line 837
    if-nez v0, :cond_1c

    .line 838
    .line 839
    iget-object v0, p1, Lo3/l0;->c:Ln3/c;

    .line 840
    .line 841
    invoke-virtual {p0, v0}, Lo3/d;->d(Ln3/c;)Lo3/a0;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    :cond_1c
    iget-object v1, v0, Lo3/a0;->b:Ln3/a$e;

    .line 846
    .line 847
    invoke-interface {v1}, Ln3/a$e;->o()Z

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    iget-object v2, p1, Lo3/l0;->a:Lo3/w0;

    .line 852
    .line 853
    if-eqz v1, :cond_1d

    .line 854
    .line 855
    iget-object v1, p0, Lo3/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 856
    .line 857
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    iget p1, p1, Lo3/l0;->b:I

    .line 862
    .line 863
    if-eq v1, p1, :cond_1d

    .line 864
    .line 865
    sget-object p1, Lo3/d;->p:Lcom/google/android/gms/common/api/Status;

    .line 866
    .line 867
    invoke-virtual {v2, p1}, Lo3/w0;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0}, Lo3/a0;->n()V

    .line 871
    .line 872
    .line 873
    goto :goto_b

    .line 874
    :cond_1d
    invoke-virtual {v0, v2}, Lo3/a0;->l(Lo3/w0;)V

    .line 875
    .line 876
    .line 877
    goto :goto_b

    .line 878
    :pswitch_e
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 879
    .line 880
    .line 881
    move-result-object p1

    .line 882
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 883
    .line 884
    .line 885
    move-result-object p1

    .line 886
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_1f

    .line 891
    .line 892
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    check-cast v0, Lo3/a0;

    .line 897
    .line 898
    iget-object v1, v0, Lo3/a0;->m:Lo3/d;

    .line 899
    .line 900
    iget-object v1, v1, Lo3/d;->n:Lh4/i;

    .line 901
    .line 902
    invoke-static {v1}, Lr3/r;->d(Lh4/i;)V

    .line 903
    .line 904
    .line 905
    iput-object v8, v0, Lo3/a0;->k:Lm3/b;

    .line 906
    .line 907
    invoke-virtual {v0}, Lo3/a0;->k()V

    .line 908
    .line 909
    .line 910
    goto :goto_8

    .line 911
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast p1, Lo3/x0;

    .line 914
    .line 915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    throw v8

    .line 919
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast p1, Ljava/lang/Boolean;

    .line 922
    .line 923
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 924
    .line 925
    .line 926
    move-result p1

    .line 927
    if-eq v10, p1, :cond_1e

    .line 928
    .line 929
    goto :goto_9

    .line 930
    :cond_1e
    const-wide/16 v4, 0x2710

    .line 931
    .line 932
    :goto_9
    iput-wide v4, p0, Lo3/d;->a:J

    .line 933
    .line 934
    const/16 p1, 0xc

    .line 935
    .line 936
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 948
    .line 949
    .line 950
    move-result v2

    .line 951
    if-eqz v2, :cond_1f

    .line 952
    .line 953
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    check-cast v2, Lo3/a;

    .line 958
    .line 959
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    iget-wide v3, p0, Lo3/d;->a:J

    .line 964
    .line 965
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 966
    .line 967
    .line 968
    goto :goto_a

    .line 969
    :cond_1f
    :goto_b
    return v10

    .line 970
    nop

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
