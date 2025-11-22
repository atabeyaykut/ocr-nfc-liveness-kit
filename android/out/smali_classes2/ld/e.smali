.class public final Lld/e;
.super Lld/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field public y:Lld/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLkd/k$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lld/b;-><init>(Landroid/content/Context;ZLkd/k$a;)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 8

    iget-wide v0, p0, Lld/b;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "CycledLeScannerForJellyBeanMr2"

    const-string v5, "Waiting to start next Bluetooth scan for another %s milliseconds"

    invoke-static {v4, v5, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v3, p0, Lld/b;->u:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lld/b;->n()V

    :cond_0
    iget-object v3, p0, Lld/b;->q:Landroid/os/Handler;

    new-instance v4, Lld/e$a;

    invoke-direct {v4, p0}, Lld/e$a;-><init>(Lld/e;)V

    const-wide/16 v5, 0x3e8

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    move-wide v0, v5

    :cond_1
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_2
    return v4
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lld/e;->y:Lld/h;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Lld/h;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lld/h;-><init>(Lld/e;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lld/e;->y:Lld/h;

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lld/e;->y:Lld/h;

    .line 20
    .line 21
    iget-object v2, p0, Lld/b;->r:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lld/g;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1}, Lld/g;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lld/b;->i:Z

    .line 37
    .line 38
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lld/e;->y:Lld/h;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Lld/h;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lld/h;-><init>(Lld/e;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lld/e;->y:Lld/h;

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lld/e;->y:Lld/h;

    .line 20
    .line 21
    iget-object v2, p0, Lld/b;->r:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lld/f;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1}, Lld/f;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lld/b;->g()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lld/e;->y:Lld/h;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Lld/h;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lld/h;-><init>(Lld/e;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lld/e;->y:Lld/h;

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lld/e;->y:Lld/h;

    .line 20
    .line 21
    iget-object v2, p0, Lld/b;->r:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lld/g;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1}, Lld/g;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
