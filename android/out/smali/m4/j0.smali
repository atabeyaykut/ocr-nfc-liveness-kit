.class public abstract Lm4/j0;
.super Lm4/b;
.source "SourceFile"

# interfaces
.implements Lm4/k0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-direct {p0, v0}, Lm4/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p0}, Lm4/k0;->e()V

    goto :goto_0

    :cond_1
    sget-object p1, Lm4/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lm4/e;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lm4/g0;

    invoke-static {p2}, Lm4/e;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lm4/k0;->N(Lm4/g0;)V

    :goto_0
    return v0
.end method
