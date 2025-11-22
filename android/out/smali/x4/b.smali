.class public final Lx4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ly4/a;


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lx4/a;
    .locals 3
    .param p0    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lx4/a;

    .line 4
    .line 5
    sget-object v1, Lx4/b;->a:Ly4/a;

    .line 6
    .line 7
    const-string v2, "CameraUpdateFactory is not initialized"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p0}, Ly4/a;->v(Lcom/google/android/gms/maps/model/LatLng;)Lz3/b;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Lx4/a;-><init>(Lz3/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Lz4/g;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string v0, "latLng must not be null"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method
