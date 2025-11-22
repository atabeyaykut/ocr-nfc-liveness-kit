.class public final Ly4/n;
.super Ln4/a;
.source "SourceFile"

# interfaces
.implements Ly4/c;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    invoke-direct {p0, p1, v0}, Ln4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final B(Lx4/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Ln4/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final F()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final L(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Ln4/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ln4/a;->w0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public final O(Lz3/d;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Ln4/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Ln4/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Ln4/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final m0(Lz3/d;Lz3/d;Landroid/os/Bundle;)Lz3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Ln4/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Ln4/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p3}, Ln4/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Ln4/a;->w0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lz3/b$a;->x0(Landroid/os/IBinder;)Lz3/b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final o0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onResume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final u0(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ln4/a;->x0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Ln4/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Ln4/a;->y0(Landroid/os/Parcel;I)V

    return-void
.end method
