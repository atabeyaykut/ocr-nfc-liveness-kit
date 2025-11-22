.class public final Lld/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/bluetooth/le/BluetoothLeScanner;

.field public final synthetic b:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;)V
    .locals 0

    iput-object p1, p0, Lld/k;->a:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object p2, p0, Lld/k;->b:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "CycledLeScannerForLollipop"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Stopping LE scan on scan handler"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lld/k;->a:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v3, p0, Lld/k;->b:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "Cannot stop scan.  Security Exception"

    invoke-static {v0, v1, v3}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Cannot stop scan. Unexpected NPE."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string v2, "Cannot stop scan. Bluetooth may be turned off."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
