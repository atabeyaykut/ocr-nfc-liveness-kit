.class public final Ly4/h;
.super Ln4/a;
.source "SourceFile"

# interfaces
.implements Ly4/a;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-direct {p0, p1, v0}, Ln4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final v(Lcom/google/android/gms/maps/model/LatLng;)Lz3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Ln4/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Ln4/a;->w0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz3/b$a;->x0(Landroid/os/IBinder;)Lz3/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
