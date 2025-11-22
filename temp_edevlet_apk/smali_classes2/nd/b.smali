.class public final Lnd/b;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field public final synthetic b:Lnd/c;


# direct methods
.method public constructor <init>(Lnd/c;Landroid/bluetooth/le/BluetoothLeAdvertiser;)V
    .locals 0

    iput-object p1, p0, Lnd/b;->b:Lnd/c;

    iput-object p2, p0, Lnd/b;->a:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartFailure(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    sget-object v0, Lnd/c;->d:Lnd/c;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "c"

    const-string v3, "Sending onStartFailure event"

    invoke-static {v2, v3, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lnd/b;->b:Lnd/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v1, Lnd/c;->b:Ljava/lang/Boolean;

    const-string p1, "Transmitter test failed in a way we consider a test failure"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v1, Lnd/c;->b:Ljava/lang/Boolean;

    const-string p1, "Transmitter test failed, but not in a way we consider a test failure"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    sget-object p1, Lnd/c;->d:Lnd/c;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "c"

    const-string v1, "Transmitter test succeeded"

    invoke-static {v0, v1, p1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnd/b;->a:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {p1, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lnd/b;->b:Lnd/c;

    iput-object p1, v0, Lnd/c;->b:Ljava/lang/Boolean;

    return-void
.end method
