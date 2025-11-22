.class public abstract Ln4/c;
.super Ln4/e;
.source "SourceFile"

# interfaces
.implements Ln4/d;


# direct methods
.method public static x0(Landroid/os/IBinder;)Ln4/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ln4/d;

    if-eqz v1, :cond_1

    check-cast v0, Ln4/d;

    return-object v0

    :cond_1
    new-instance v0, Ln4/b;

    invoke-direct {v0, p0}, Ln4/b;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
