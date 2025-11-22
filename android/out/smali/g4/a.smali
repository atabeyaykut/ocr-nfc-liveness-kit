.class public Lg4/a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    :goto_0
    const/4 p4, 0x1

    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    return p4

    .line 24
    :cond_1
    move-object p3, p0

    .line 25
    check-cast p3, Lg4/e;

    .line 26
    .line 27
    if-ne p1, p4, :cond_3

    .line 28
    .line 29
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    .line 31
    sget v0, Lg4/b;->a:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    move-object p1, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/os/Parcelable;

    .line 47
    .line 48
    :goto_1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 49
    .line 50
    check-cast p3, Lg4/i;

    .line 51
    .line 52
    iget-object p2, p3, Lg4/i;->a:Lg4/h;

    .line 53
    .line 54
    iget-object p2, p2, Lg4/j;->d:Lh5/l;

    .line 55
    .line 56
    invoke-static {p1, v1, p2}, Lo3/n;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lh5/l;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_3
    return v1
.end method
