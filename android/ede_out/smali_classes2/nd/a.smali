.class public final Lnd/a;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/bluetooth/le/BluetoothLeScanner;

.field public final synthetic b:Lnd/c;


# direct methods
.method public constructor <init>(Lnd/c;Landroid/bluetooth/le/BluetoothLeScanner;)V
    .locals 0

    iput-object p1, p0, Lnd/a;->b:Lnd/c;

    iput-object p2, p0, Lnd/a;->a:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public final onScanFailed(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    sget-object v0, Lnd/c;->d:Lnd/c;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Sending onScanFailed event"

    const-string v3, "c"

    invoke-static {v3, v2, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lnd/a;->b:Lnd/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string p1, "Scan test failed in a way we consider a failure"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lnd/c;->b()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const-string p1, "Scan test failed in a way we do not consider a failure"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, v1, Lnd/c;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, p0, Lnd/a;->b:Lnd/c;

    iput-object p1, p2, Lnd/c;->c:Ljava/lang/Boolean;

    sget-object p1, Lnd/c;->d:Lnd/c;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "c"

    const-string v0, "Scan test succeeded"

    invoke-static {p2, v0, p1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lnd/a;->a:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {p1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
