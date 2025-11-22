.class public abstract Lld/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field public a:Landroid/bluetooth/BluetoothAdapter;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public final l:Landroid/content/Context;

.field public m:J

.field public n:Z

.field public o:Lld/c;

.field public p:J

.field public final q:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final r:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final s:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final t:Lld/a;

.field public u:Z

.field public v:Z

.field public volatile w:Z

.field public x:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLkd/k$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lld/b;->b:J

    iput-wide v0, p0, Lld/b;->c:J

    iput-wide v0, p0, Lld/b;->d:J

    iput-wide v0, p0, Lld/b;->e:J

    iput-wide v0, p0, Lld/b;->f:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lld/b;->g:Z

    iput-boolean v2, p0, Lld/b;->j:Z

    iput-boolean v2, p0, Lld/b;->k:Z

    iput-boolean v2, p0, Lld/b;->n:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lld/b;->o:Lld/c;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lld/b;->q:Landroid/os/Handler;

    iput-boolean v2, p0, Lld/b;->u:Z

    iput-boolean v2, p0, Lld/b;->v:Z

    iput-boolean v2, p0, Lld/b;->w:Z

    iput-object v3, p0, Lld/b;->x:Landroid/app/PendingIntent;

    const-wide/16 v2, 0x44c

    iput-wide v2, p0, Lld/b;->m:J

    iput-wide v0, p0, Lld/b;->p:J

    iput-object p1, p0, Lld/b;->l:Landroid/content/Context;

    iput-object p3, p0, Lld/b;->t:Lld/a;

    iput-boolean p2, p0, Lld/b;->u:Z

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CycledLeScannerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lld/b;->s:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lld/b;->r:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lld/b;->x:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CycledLeScanner"

    const-string v4, "cancel wakeup alarm: %s"

    invoke-static {v2, v4, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lld/b;->l:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lld/b;->i()Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x2

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lld/b;->i()Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Set a wakeup alarm to go off in %s ms: %s"

    invoke-static {v2, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Lld/b;->l:Landroid/content/Context;

    invoke-virtual {v2, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract c()Z
.end method

.method public final d()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "CycledLeScanner"

    .line 5
    .line 6
    const-string v2, "Destroying"

    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lld/b;->q:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lld/b;->r:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v2, Lld/b$a;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lld/b$a;-><init>(Lld/b;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lld/b;->o:Lld/c;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v2, p0, Lld/b;->l:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    iput-object v1, p0, Lld/b;->o:Lld/c;

    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public abstract e()V
.end method

.method public final f()V
    .locals 11
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "Not stopping scan because this is Android N and we keep scanning for a minimum of 6 seconds at a time. We will stop in "

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Done with scan cycle"

    const-string v4, "CycledLeScanner"

    invoke-static {v4, v3, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lld/b;->t:Lld/a;

    check-cast v2, Lkd/k$a;

    invoke-virtual {v2}, Lkd/k$a;->a()V

    iget-boolean v2, p0, Lld/b;->h:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Bluetooth is disabled.  Cannot scan for beacons."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lld/b;->v:Z

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lld/b;->w:Z

    if-eqz v2, :cond_3

    iget-wide v5, p0, Lld/b;->p:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lld/b;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "Not stopping scanning.  Device capable of multiple indistinct detections per scan."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v2, v7, :cond_4

    iget-wide v7, p0, Lld/b;->p:J

    iget-wide v9, p0, Lld/b;->m:J

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1770

    cmp-long v2, v7, v9

    if-gez v2, :cond_4

    iget-wide v7, p0, Lld/b;->b:J

    sub-long v7, v5, v7

    cmp-long v2, v7, v9

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lld/b;->b:J

    sub-long/2addr v5, v7

    sub-long/2addr v9, v5

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " millisconds."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iput-boolean v3, p0, Lld/b;->n:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :cond_4
    :try_start_1
    const-string v0, "stopping bluetooth le scan"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lld/b;->e()V

    iput-boolean v1, p0, Lld/b;->n:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Internal Android exception scanning for beacons"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v2, v3}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lld/b;->c:J

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lld/b;->h()J

    move-result-wide v2

    iput-wide v2, p0, Lld/b;->d:J

    iget-boolean v0, p0, Lld/b;->k:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lld/b;->k(Ljava/lang/Boolean;)V

    :cond_6
    iget-boolean v0, p0, Lld/b;->k:Z

    if-nez v0, :cond_7

    const-string v0, "Scanning disabled. "

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lld/b;->j:Z

    invoke-virtual {p0}, Lld/b;->a()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    const-string v0, "SecurityException working accessing bluetooth."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final g()Landroid/bluetooth/BluetoothAdapter;
    .locals 4

    const-string v0, "CycledLeScanner"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lld/b;->a:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    iget-object v2, p0, Lld/b;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lld/b;->a:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    const-string v2, "Failed to construct a BluetoothAdapter"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Cannot consruct bluetooth adapter.  Security Exception"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lld/b;->a:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public final h()J
    .locals 6

    iget-wide v0, p0, Lld/b;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lld/b;->m:J

    add-long/2addr v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    rem-long/2addr v4, v2

    sub-long/2addr v0, v4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lld/b;->p:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "CycledLeScanner"

    const-string v4, "Normalizing between scan period from %s to %s"

    invoke-static {v3, v4, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final i()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lld/b;->x:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    iget-object v2, p0, Lld/b;->l:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "wakeup"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lld/b;->x:Landroid/app/PendingIntent;

    :cond_0
    iget-object v0, p0, Lld/b;->x:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final j()Z
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lld/b;->p:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lld/b;->m:J

    add-long/2addr v0, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    iget-wide v2, p0, Lld/b;->f:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "The next scan cycle would go over the Android N max duration."

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "CycledLeScanner"

    invoke-static {v2, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lld/b;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "Stopping scan to prevent Android N scan timeout."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    const-string v0, "Allowing a long running scan to be stopped by the OS.  To prevent this, set longScanForcingEnabled in the AndroidBeaconLibrary."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v5
.end method

.method public final k(Ljava/lang/Boolean;)V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "CycledLeScanner"

    .line 2
    .line 3
    const-string v1, "We are already scanning and have been for "

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iput-boolean v2, p0, Lld/b;->j:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-string v4, "No Bluetooth adapter.  beaconService cannot scan."

    .line 16
    .line 17
    new-array v5, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v4, v5}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean v4, p0, Lld/b;->k:Z

    .line 23
    .line 24
    if-eqz v4, :cond_e

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_e

    .line 31
    .line 32
    invoke-virtual {p0}, Lld/b;->c()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string p1, "starting a new scan cycle"

    .line 40
    .line 41
    new-array v4, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, p1, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-boolean p1, p0, Lld/b;->h:Z

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget-boolean p1, p0, Lld/b;->i:Z

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-boolean p1, p0, Lld/b;->v:Z

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    iget-wide v4, p0, Lld/b;->f:J

    .line 69
    .line 70
    sub-long/2addr v1, v4

    .line 71
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, " millis"

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-array v1, v3, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v0, p1, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lld/b;->h:Z

    .line 91
    .line 92
    iput-boolean v3, p0, Lld/b;->i:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    .line 94
    :try_start_1
    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_d

    .line 99
    .line 100
    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_5

    .line 109
    .line 110
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    const/16 v1, 0x1c

    .line 113
    .line 114
    if-lt p1, v1, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const-string p1, "Bluetooth is disabled.  Cannot scan for beacons."

    .line 118
    .line 119
    new-array v1, v3, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {v0, p1, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lld/b;->k:Z

    .line 127
    .line 128
    if-eqz p1, :cond_b

    .line 129
    .line 130
    iget-boolean p1, p0, Lld/b;->v:Z

    .line 131
    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    iput-boolean v3, p0, Lld/b;->v:Z

    .line 135
    .line 136
    const-string p1, "restarting a bluetooth le scan"

    .line 137
    .line 138
    new-array v1, v3, [Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {v0, p1, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    const-string p1, "starting a new bluetooth le scan"

    .line 145
    .line 146
    new-array v1, v3, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-static {v0, p1, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    :goto_2
    :try_start_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .line 153
    const/16 v1, 0x17

    .line 154
    .line 155
    if-lt p1, v1, :cond_a

    .line 156
    .line 157
    const/16 v1, 0x1f

    .line 158
    .line 159
    if-lt p1, v1, :cond_7

    .line 160
    .line 161
    const-string p1, "android.permission.BLUETOOTH_SCAN"

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lld/b;->b(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_7

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_7
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lld/b;->b(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_9

    .line 177
    .line 178
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Lld/b;->b(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_8

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    const/4 v2, 0x0

    .line 188
    :cond_9
    :goto_3
    if-eqz v2, :cond_c

    .line 189
    .line 190
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    iput-wide v1, p0, Lld/b;->f:J

    .line 195
    .line 196
    invoke-virtual {p0}, Lld/b;->p()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catch_0
    move-exception p1

    .line 201
    :try_start_3
    const-string v1, "Internal Android exception scanning for beacons"

    .line 202
    .line 203
    new-array v2, v3, [Ljava/lang/Object;

    .line 204
    .line 205
    invoke-static {p1, v0, v1, v2}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :catch_1
    move-exception p1

    .line 210
    goto :goto_5

    .line 211
    :cond_b
    const-string p1, "Scanning unnecessary - no monitoring or ranging active."

    .line 212
    .line 213
    new-array v1, v3, [Ljava/lang/Object;

    .line 214
    .line 215
    invoke-static {v0, p1, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_c
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 219
    .line 220
    .line 221
    move-result-wide v1

    .line 222
    iput-wide v1, p0, Lld/b;->b:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :goto_5
    :try_start_4
    const-string v1, "Exception starting Bluetooth scan.  Perhaps Bluetooth is disabled or unavailable?"

    .line 226
    .line 227
    new-array v2, v3, [Ljava/lang/Object;

    .line 228
    .line 229
    invoke-static {p1, v0, v1, v2}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_d
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 233
    .line 234
    .line 235
    move-result-wide v1

    .line 236
    iget-wide v4, p0, Lld/b;->m:J

    .line 237
    .line 238
    add-long/2addr v1, v4

    .line 239
    iput-wide v1, p0, Lld/b;->e:J

    .line 240
    .line 241
    invoke-virtual {p0}, Lld/b;->l()V

    .line 242
    .line 243
    .line 244
    const-string p1, "Scan started"

    .line 245
    .line 246
    new-array v1, v3, [Ljava/lang/Object;

    .line 247
    .line 248
    invoke-static {v0, p1, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_e
    const-string p1, "disabling scan"

    .line 253
    .line 254
    new-array v1, v3, [Ljava/lang/Object;

    .line 255
    .line 256
    invoke-static {v0, p1, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iput-boolean v3, p0, Lld/b;->h:Z

    .line 260
    .line 261
    iput-boolean v3, p0, Lld/b;->j:Z

    .line 262
    .line 263
    invoke-virtual {p0}, Lld/b;->r()V

    .line 264
    .line 265
    .line 266
    const-wide/16 v1, 0x0

    .line 267
    .line 268
    iput-wide v1, p0, Lld/b;->f:J

    .line 269
    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 271
    .line 272
    .line 273
    move-result-wide v1

    .line 274
    iput-wide v1, p0, Lld/b;->c:J

    .line 275
    .line 276
    iget-object p1, p0, Lld/b;->q:Landroid/os/Handler;

    .line 277
    .line 278
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lld/b;->f()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :catch_2
    const-string p1, "SecurityException working accessing bluetooth."

    .line 287
    .line 288
    new-array v1, v3, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-static {v0, p1, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :goto_7
    return-void
.end method

.method public final l()V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-wide v0, p0, Lld/b;->e:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-boolean v2, p0, Lld/b;->k:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "CycledLeScanner"

    const-string v4, "Waiting to stop scan cycle for another %s milliseconds"

    invoke-static {v3, v4, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, p0, Lld/b;->u:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lld/b;->n()V

    :cond_0
    iget-object v2, p0, Lld/b;->q:Landroid/os/Handler;

    new-instance v3, Lld/b$b;

    invoke-direct {v3, p0}, Lld/b$b;-><init>(Lld/b;)V

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    move-wide v0, v4

    :cond_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lld/b;->f()V

    :goto_0
    return-void
.end method

.method public final m(JJZ)V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Set scan periods called with %s, %s Background mode must have changed."

    const-string v4, "CycledLeScanner"

    invoke-static {v4, v1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lld/b;->u:Z

    if-eq v0, p5, :cond_0

    iput-boolean v3, p0, Lld/b;->v:Z

    :cond_0
    iput-boolean p5, p0, Lld/b;->u:Z

    iput-wide p1, p0, Lld/b;->m:J

    iput-wide p3, p0, Lld/b;->p:J

    if-eqz p5, :cond_1

    const-string p5, "We are in the background.  Setting wakeup alarm"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p5, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lld/b;->n()V

    goto :goto_0

    :cond_1
    const-string p5, "We are not in the background.  Cancelling wakeup alarm"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p5, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lld/b;->a()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v5, p0, Lld/b;->d:J

    cmp-long p5, v5, v0

    if-lez p5, :cond_2

    iget-wide v7, p0, Lld/b;->c:J

    add-long/2addr v7, p3

    cmp-long p3, v7, v5

    if-gez p3, :cond_2

    iput-wide v7, p0, Lld/b;->d:J

    new-array p3, v3, [Ljava/lang/Object;

    new-instance p4, Ljava/util/Date;

    iget-wide v5, p0, Lld/b;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {p4, v7, v8}, Ljava/util/Date;-><init>(J)V

    aput-object p4, p3, v2

    const-string p4, "Adjusted nextScanStartTime to be %s"

    invoke-static {v4, p4, p3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-wide p3, p0, Lld/b;->e:J

    cmp-long p5, p3, v0

    if-lez p5, :cond_3

    iget-wide v0, p0, Lld/b;->b:J

    add-long/2addr v0, p1

    cmp-long p1, v0, p3

    if-gez p1, :cond_3

    iput-wide v0, p0, Lld/b;->e:J

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Adjusted scanStopTime to be %s"

    invoke-static {v4, p2, p1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lld/b;->p:J

    .line 2
    .line 3
    const-wide/32 v2, 0x493e0

    .line 4
    .line 5
    .line 6
    cmp-long v4, v2, v0

    .line 7
    .line 8
    if-gez v4, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide v0, v2

    .line 12
    :goto_0
    iget-wide v2, p0, Lld/b;->m:J

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-gez v4, :cond_1

    .line 17
    .line 18
    move-wide v0, v2

    .line 19
    :cond_1
    iget-object v2, p0, Lld/b;->l:Landroid/content/Context;

    .line 20
    .line 21
    const-string v3, "alarm"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/app/AlarmManager;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    add-long/2addr v4, v0

    .line 34
    invoke-virtual {p0}, Lld/b;->i()Landroid/app/PendingIntent;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const/4 v7, 0x2

    .line 39
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 40
    .line 41
    .line 42
    new-array v3, v7, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    aput-object v0, v3, v4

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0}, Lld/b;->i()Landroid/app/PendingIntent;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    aput-object v1, v3, v0

    .line 57
    .line 58
    const-string v0, "CycledLeScanner"

    .line 59
    .line 60
    const-string v1, "Set a wakeup alarm to go off in %s ms: %s"

    .line 61
    .line 62
    invoke-static {v0, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lld/b;->o:Lld/c;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "android.intent.action.USER_FOREGROUND"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lld/c;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lld/c;-><init>(Lld/b;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lld/b;->o:Lld/c;

    .line 90
    .line 91
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void
.end method

.method public final o()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CycledLeScanner"

    const-string v3, "start called"

    invoke-static {v2, v3, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lld/b;->k:Z

    iget-boolean v1, p0, Lld/b;->j:Z

    if-nez v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lld/b;->k(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const-string v1, "scanning already started"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public abstract p()V
.end method

.method public q()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "stop called"

    const-string v3, "CycledLeScanner"

    invoke-static {v3, v2, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lld/b;->k:Z

    iget-boolean v1, p0, Lld/b;->j:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lld/b;->k(Ljava/lang/Boolean;)V

    iget-boolean v1, p0, Lld/b;->n:Z

    if-eqz v1, :cond_1

    const-string v1, "Stopping scanning previously left on."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lld/b;->n:Z

    :try_start_0
    const-string v1, "stopping bluetooth le scan"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lld/b;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Internal Android exception scanning for beacons"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "scanning already stopped"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract r()V
.end method
