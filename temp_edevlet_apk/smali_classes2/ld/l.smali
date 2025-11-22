.class public final Lld/l;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lld/i;


# direct methods
.method public constructor <init>(Lld/i;)V
    .locals 0

    iput-object p1, p0, Lld/l;->a:Lld/i;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 14
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "got batch records"

    .line 5
    .line 6
    const-string v3, "CycledLeScannerForLollipop"

    .line 7
    .line 8
    invoke-static {v3, v2, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lld/l;->a:Lld/i;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 28
    .line 29
    iget-object v2, v2, Lld/b;->t:Lld/a;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    sub-long/2addr v6, v10

    .line 56
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    const-wide/32 v12, 0xf4240

    .line 61
    .line 62
    .line 63
    div-long/2addr v10, v12

    .line 64
    add-long/2addr v6, v10

    .line 65
    check-cast v2, Lkd/k$a;

    .line 66
    .line 67
    iget-object v4, v2, Lkd/k$a;->a:Lkd/k;

    .line 68
    .line 69
    invoke-virtual/range {v4 .. v9}, Lkd/k;->d(IJLandroid/bluetooth/BluetoothDevice;[B)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-wide v1, v2, Lld/i;->A:J

    .line 74
    .line 75
    const-wide/16 v4, 0x0

    .line 76
    .line 77
    cmp-long p1, v1, v4

    .line 78
    .line 79
    if-lez p1, :cond_1

    .line 80
    .line 81
    const-string p1, "got a filtered batch scan result in the background."

    .line 82
    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v3, p1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public final onScanFailed(I)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-object v0, Lnd/c;->d:Lnd/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lnd/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lnd/c;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lnd/c;->d:Lnd/c;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lnd/c;->d:Lnd/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "CycledLeScannerForLollipop"

    .line 20
    .line 21
    if-eq p1, v0, :cond_4

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    const-string v0, "Scan failed with unknown error (errorCode="

    .line 33
    .line 34
    const-string v3, ")"

    .line 35
    .line 36
    invoke-static {v0, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-array v0, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v2, p1, v0}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p1, "Scan failed: power optimized scan feature is not supported"

    .line 47
    .line 48
    new-array v0, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {v2, p1, v0}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p1, "Scan failed: internal error"

    .line 55
    .line 56
    new-array v0, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v2, p1, v0}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string p1, "Scan failed: app cannot be registered"

    .line 63
    .line 64
    new-array v0, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v2, p1, v0}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const-string p1, "Scan failed: a BLE scan with the same settings is already started by the app"

    .line 71
    .line 72
    new-array v0, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v2, p1, v0}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 13
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-boolean p1, Lid/b;->b:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "CycledLeScannerForLollipop"

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "got record"

    .line 9
    .line 10
    new-array v2, v0, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v1, p1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/os/ParcelUuid;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v4, "with service uuid: "

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-array v3, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v1, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lld/l;->a:Lld/i;

    .line 62
    .line 63
    iget-object v2, p1, Lld/b;->t:Lld/a;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    sub-long/2addr v5, v9

    .line 90
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    const-wide/32 v11, 0xf4240

    .line 95
    .line 96
    .line 97
    div-long/2addr v9, v11

    .line 98
    add-long/2addr v5, v9

    .line 99
    check-cast v2, Lkd/k$a;

    .line 100
    .line 101
    iget-object v3, v2, Lkd/k$a;->a:Lkd/k;

    .line 102
    .line 103
    invoke-virtual/range {v3 .. v8}, Lkd/k;->d(IJLandroid/bluetooth/BluetoothDevice;[B)V

    .line 104
    .line 105
    .line 106
    iget-wide p1, p1, Lld/i;->A:J

    .line 107
    .line 108
    const-wide/16 v2, 0x0

    .line 109
    .line 110
    cmp-long v4, p1, v2

    .line 111
    .line 112
    if-lez v4, :cond_1

    .line 113
    .line 114
    const-string p1, "got a filtered scan result in the background."

    .line 115
    .line 116
    new-array p2, v0, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {v1, p1, p2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    return-void
.end method
