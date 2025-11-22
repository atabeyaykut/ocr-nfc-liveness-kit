.class public final Lld/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/bluetooth/le/BluetoothLeScanner;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/bluetooth/le/ScanSettings;

.field public final synthetic d:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;Ljava/util/ArrayList;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 0

    iput-object p1, p0, Lld/j;->a:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object p2, p0, Lld/j;->b:Ljava/util/List;

    iput-object p3, p0, Lld/j;->c:Landroid/bluetooth/le/ScanSettings;

    iput-object p4, p0, Lld/j;->d:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "CycledLeScannerForLollipop"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lld/j;->a:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v3, p0, Lld/j;->b:Ljava/util/List;

    iget-object v4, p0, Lld/j;->c:Landroid/bluetooth/le/ScanSettings;

    iget-object v5, p0, Lld/j;->d:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot start scan.  Security Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Cannot start scan. Unexpected NPE."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string v2, "Cannot start scan. Bluetooth may be turned off."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
