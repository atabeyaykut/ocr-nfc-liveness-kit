.class public Lorg/altbeacon/bluetooth/BluetoothTestJob;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->a:Landroid/os/Handler;

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->b:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothTestThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->a:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->a:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothTestJob$a;

    invoke-direct {v1, p0, p1}, Lorg/altbeacon/bluetooth/BluetoothTestJob$a;-><init>(Lorg/altbeacon/bluetooth/BluetoothTestJob;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
