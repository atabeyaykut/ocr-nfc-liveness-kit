.class public Lz4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln4/d;


# direct methods
.method public constructor <init>(Ln4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lz4/d;->a:Ln4/d;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/model/LatLng;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz4/d;->a:Ln4/d;

    invoke-interface {v0}, Ln4/d;->m()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lz4/g;

    invoke-direct {v1, v0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lz4/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lz4/d;->a:Ln4/d;

    check-cast p1, Lz4/d;

    iget-object p1, p1, Lz4/d;->a:Ln4/d;

    invoke-interface {v0, p1}, Ln4/d;->j0(Ln4/d;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lz4/g;

    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lz4/d;->a:Ln4/d;

    invoke-interface {v0}, Ln4/d;->l()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lz4/g;

    invoke-direct {v1, v0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
