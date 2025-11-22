.class public abstract Lq4/d;
.super Lq4/m;
.source "SourceFile"

# interfaces
.implements Lq4/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    invoke-direct {p0, v0}, Lq4/m;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lq4/e;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lq4/e;

    if-eqz v1, :cond_1

    check-cast v0, Lq4/e;

    return-object v0

    :cond_1
    new-instance v0, Lq4/c;

    invoke-direct {v0, p0}, Lq4/c;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lz3/b$a;->x0(Landroid/os/IBinder;)Lz3/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v1, Lq4/d0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    sget v2, Lq4/n;->a:I

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    move-object p2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/os/Parcelable;

    .line 30
    .line 31
    :goto_0
    check-cast p2, Lq4/d0;

    .line 32
    .line 33
    invoke-interface {p0, p1, p2}, Lq4/e;->newBarcodeScanner(Lz3/b;Lq4/d0;)Lq4/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    check-cast p1, Lq4/m;

    .line 44
    .line 45
    invoke-virtual {p1}, Lq4/m;->asBinder()Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return p1
.end method
