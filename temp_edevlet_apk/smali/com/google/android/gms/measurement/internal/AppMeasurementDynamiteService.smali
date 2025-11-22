.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lcom/google/android/gms/internal/measurement/u0;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field public a:Lc5/i4;

.field public final b:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "listenerMap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    invoke-virtual {v0}, Lc5/i4;->g()Lc5/u1;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lc5/u1;->c(JLjava/lang/String;)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lc5/v5;->D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public clearMeasurementEnabled(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p1, p1, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lc5/r3;->c()V

    .line 12
    .line 13
    .line 14
    iget-object p2, p1, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast p2, Lc5/i4;

    .line 17
    .line 18
    iget-object p2, p2, Lc5/i4;->k:Lc5/h4;

    .line 19
    .line 20
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lo3/n0;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v0, v1, p1, v2}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    invoke-virtual {v0}, Lc5/i4;->g()Lc5/u1;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lc5/u1;->d(JLjava/lang/String;)V

    return-void
.end method

.method public generateEventId(Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lc5/v7;->l0()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 19
    .line 20
    iget-object v2, v2, Lc5/i4;->m:Lc5/v7;

    .line 21
    .line 22
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1, v0, v1}, Lc5/v7;->D(Lcom/google/android/gms/internal/measurement/y0;J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getAppInstanceId(Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lc5/e5;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0, p1}, Lc5/e5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lc5/v5;->A()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->y0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lc5/w7;

    .line 12
    .line 13
    invoke-direct {v1, p0, p3, p1, p2}, Lc5/w7;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/y0;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    check-cast v0, Lc5/i4;

    .line 14
    .line 15
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 16
    .line 17
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lc5/f6;->c:Lc5/b6;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lc5/b6;->b:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->y0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getCurrentScreenName(Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    check-cast v0, Lc5/i4;

    .line 14
    .line 15
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 16
    .line 17
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lc5/f6;->c:Lc5/b6;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lc5/b6;->a:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->y0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getGmpAppId(Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lc5/i4;

    .line 15
    .line 16
    iget-object v1, v1, Lc5/i4;->b:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    move-object v1, v0

    .line 22
    check-cast v1, Lc5/i4;

    .line 23
    .line 24
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 25
    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Lc5/i4;

    .line 28
    .line 29
    iget-object v2, v2, Lc5/i4;->v:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lb8/f;->L0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    check-cast v0, Lc5/i4;

    .line 38
    .line 39
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 40
    .line 41
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "getGoogleAppId failed with exception"

    .line 45
    .line 46
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->y0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast p1, Lc5/i4;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 25
    .line 26
    iget-object p1, p1, Lc5/i4;->m:Lc5/v7;

    .line 27
    .line 28
    invoke-static {p1}, Lc5/i4;->c(Lc5/y4;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x19

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lc5/v7;->C(Lcom/google/android/gms/internal/measurement/y0;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getTestFlag(Lcom/google/android/gms/internal/measurement/y0;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p2, :cond_4

    .line 6
    .line 7
    if-eq p2, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p2, v1, :cond_2

    .line 12
    .line 13
    if-eq p2, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p2, v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 20
    .line 21
    iget-object p2, p2, Lc5/i4;->m:Lc5/v7;

    .line 22
    .line 23
    invoke-static {p2}, Lc5/i4;->c(Lc5/y4;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 27
    .line 28
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 29
    .line 30
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 39
    .line 40
    check-cast v2, Lc5/i4;

    .line 41
    .line 42
    iget-object v2, v2, Lc5/i4;->k:Lc5/h4;

    .line 43
    .line 44
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Lo3/n0;

    .line 48
    .line 49
    invoke-direct {v7, v1, v0, v3}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v4, 0x3a98

    .line 53
    .line 54
    const-string v6, "boolean test flag value"

    .line 55
    .line 56
    invoke-virtual/range {v2 .. v7}, Lc5/h4;->h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p2, p1, v0}, Lc5/v7;->y(Lcom/google/android/gms/internal/measurement/y0;Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 71
    .line 72
    iget-object p2, p2, Lc5/i4;->m:Lc5/v7;

    .line 73
    .line 74
    invoke-static {p2}, Lc5/i4;->c(Lc5/y4;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 78
    .line 79
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 80
    .line 81
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 90
    .line 91
    check-cast v1, Lc5/i4;

    .line 92
    .line 93
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 94
    .line 95
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 96
    .line 97
    .line 98
    new-instance v6, Lc5/p5;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v6, v0, v2, v3}, Lc5/p5;-><init>(Lc5/r3;Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    const-wide/16 v3, 0x3a98

    .line 105
    .line 106
    const-string v5, "int test flag value"

    .line 107
    .line 108
    invoke-virtual/range {v1 .. v6}, Lc5/h4;->h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p2, p1, v0}, Lc5/v7;->C(Lcom/google/android/gms/internal/measurement/y0;I)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 123
    .line 124
    iget-object p2, p2, Lc5/i4;->m:Lc5/v7;

    .line 125
    .line 126
    invoke-static {p2}, Lc5/i4;->c(Lc5/y4;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 130
    .line 131
    iget-object v1, v1, Lc5/i4;->r:Lc5/v5;

    .line 132
    .line 133
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 134
    .line 135
    .line 136
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 137
    .line 138
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 142
    .line 143
    check-cast v2, Lc5/i4;

    .line 144
    .line 145
    iget-object v2, v2, Lc5/i4;->k:Lc5/h4;

    .line 146
    .line 147
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 148
    .line 149
    .line 150
    new-instance v7, Lc5/k;

    .line 151
    .line 152
    invoke-direct {v7, v0, v1, v3}, Lc5/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    const-wide/16 v4, 0x3a98

    .line 156
    .line 157
    const-string v6, "double test flag value"

    .line 158
    .line 159
    invoke-virtual/range {v2 .. v7}, Lc5/h4;->h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Ljava/lang/Double;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    new-instance v2, Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v3, "r"

    .line 175
    .line 176
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 177
    .line 178
    .line 179
    :try_start_0
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/measurement/y0;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :catch_0
    move-exception p1

    .line 184
    iget-object p2, p2, Lc5/x4;->a:Lc5/z4;

    .line 185
    .line 186
    check-cast p2, Lc5/i4;

    .line 187
    .line 188
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 189
    .line 190
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 191
    .line 192
    .line 193
    const-string v0, "Error returning double value to wrapper"

    .line 194
    .line 195
    iget-object p2, p2, Lc5/e3;->j:Lc5/c3;

    .line 196
    .line 197
    invoke-virtual {p2, p1, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 202
    .line 203
    iget-object p2, p2, Lc5/i4;->m:Lc5/v7;

    .line 204
    .line 205
    invoke-static {p2}, Lc5/i4;->c(Lc5/y4;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 209
    .line 210
    iget-object v1, v1, Lc5/i4;->r:Lc5/v5;

    .line 211
    .line 212
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 213
    .line 214
    .line 215
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    .line 217
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 221
    .line 222
    check-cast v2, Lc5/i4;

    .line 223
    .line 224
    iget-object v2, v2, Lc5/i4;->k:Lc5/h4;

    .line 225
    .line 226
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 227
    .line 228
    .line 229
    new-instance v7, Lc5/e5;

    .line 230
    .line 231
    invoke-direct {v7, v0, v1, v3}, Lc5/e5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    const-wide/16 v4, 0x3a98

    .line 235
    .line 236
    const-string v6, "long test flag value"

    .line 237
    .line 238
    invoke-virtual/range {v2 .. v7}, Lc5/h4;->h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Ljava/lang/Long;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 245
    .line 246
    .line 247
    move-result-wide v0

    .line 248
    invoke-virtual {p2, p1, v0, v1}, Lc5/v7;->D(Lcom/google/android/gms/internal/measurement/y0;J)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 253
    .line 254
    iget-object p2, p2, Lc5/i4;->m:Lc5/v7;

    .line 255
    .line 256
    invoke-static {p2}, Lc5/i4;->c(Lc5/y4;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 260
    .line 261
    iget-object v1, v1, Lc5/i4;->r:Lc5/v5;

    .line 262
    .line 263
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 264
    .line 265
    .line 266
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 267
    .line 268
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 272
    .line 273
    check-cast v2, Lc5/i4;

    .line 274
    .line 275
    iget-object v2, v2, Lc5/i4;->k:Lc5/h4;

    .line 276
    .line 277
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 278
    .line 279
    .line 280
    new-instance v7, Lo3/h0;

    .line 281
    .line 282
    invoke-direct {v7, v0, v1, v3}, Lo3/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    const-wide/16 v4, 0x3a98

    .line 286
    .line 287
    const-string v6, "String test flag value"

    .line 288
    .line 289
    invoke-virtual/range {v2 .. v7}, Lc5/h4;->h(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {p2, v0, p1}, Lc5/v7;->E(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/y0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    new-instance v7, Lc5/o5;

    .line 12
    .line 13
    move-object v1, v7

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p4

    .line 16
    move-object v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move v6, p3

    .line 19
    invoke-direct/range {v1 .. v6}, Lc5/o5;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/y0;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v7}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    return-void
.end method

.method public initialize(Lz3/b;Lcom/google/android/gms/internal/measurement/e1;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-static {p1, p2, p3}, Lc5/i4;->r(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/e1;Ljava/lang/Long;)Lc5/i4;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 26
    .line 27
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "Attempting to initialize multiple times"

    .line 31
    .line 32
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lo3/n0;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    invoke-direct {v1, v2, p0, p1}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 6
    .line 7
    iget-object v2, v1, Lc5/i4;->r:Lc5/v5;

    .line 8
    .line 9
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 10
    .line 11
    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move v6, p4

    .line 16
    move v7, p5

    .line 17
    move-wide/from16 v8, p6

    .line 18
    .line 19
    invoke-virtual/range {v2 .. v9}, Lc5/v5;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/y0;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    const-string v4, "app"

    .line 19
    .line 20
    const-string v1, "_o"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lc5/s;

    .line 26
    .line 27
    new-instance v3, Lc5/q;

    .line 28
    .line 29
    invoke-direct {v3, p3}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v0

    .line 33
    move-object v2, p2

    .line 34
    move-wide v5, p5

    .line 35
    invoke-direct/range {v1 .. v6}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 39
    .line 40
    iget-object p2, p2, Lc5/i4;->k:Lc5/h4;

    .line 41
    .line 42
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 43
    .line 44
    .line 45
    new-instance p3, Lc5/u5;

    .line 46
    .line 47
    invoke-direct {p3, p0, p4, v0, p1}, Lc5/u5;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/y0;Lc5/s;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p3}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public logHealthData(ILjava/lang/String;Lz3/b;Lz3/b;Lz3/b;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    move-object v6, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p3}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    move-object v6, p3

    .line 14
    :goto_0
    if-nez p4, :cond_1

    .line 15
    .line 16
    move-object v7, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-static {p4}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    move-object v7, p3

    .line 23
    :goto_1
    if-nez p5, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    invoke-static {p5}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_2
    move-object v8, v0

    .line 31
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 32
    .line 33
    iget-object v1, p3, Lc5/i4;->j:Lc5/e3;

    .line 34
    .line 35
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    move v2, p1

    .line 41
    move-object v5, p2

    .line 42
    invoke-virtual/range {v1 .. v8}, Lc5/e3;->u(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onActivityCreated(Lz3/b;Landroid/os/Bundle;J)V
    .locals 0
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p3, p3, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p3}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p3, Lc5/v5;->c:Lc5/t5;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 16
    .line 17
    iget-object p4, p4, Lc5/i4;->r:Lc5/v5;

    .line 18
    .line 19
    invoke-static {p4}, Lc5/i4;->d(Lc5/r3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4}, Lc5/v5;->g()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {p3, p1, p2}, Lc5/t5;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lz3/b;J)V
    .locals 0
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc5/v5;->c:Lc5/t5;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 16
    .line 17
    iget-object p3, p3, Lc5/i4;->r:Lc5/v5;

    .line 18
    .line 19
    invoke-static {p3}, Lc5/i4;->d(Lc5/r3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lc5/v5;->g()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lc5/t5;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onActivityPaused(Lz3/b;J)V
    .locals 0
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc5/v5;->c:Lc5/t5;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 16
    .line 17
    iget-object p3, p3, Lc5/i4;->r:Lc5/v5;

    .line 18
    .line 19
    invoke-static {p3}, Lc5/i4;->d(Lc5/r3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lc5/v5;->g()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lc5/t5;->onActivityPaused(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onActivityResumed(Lz3/b;J)V
    .locals 0
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc5/v5;->c:Lc5/t5;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 16
    .line 17
    iget-object p3, p3, Lc5/i4;->r:Lc5/v5;

    .line 18
    .line 19
    invoke-static {p3}, Lc5/i4;->d(Lc5/r3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lc5/v5;->g()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lc5/t5;->onActivityResumed(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lz3/b;Lcom/google/android/gms/internal/measurement/y0;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p3, p3, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p3}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p3, Lc5/v5;->c:Lc5/t5;

    .line 12
    .line 13
    new-instance p4, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 21
    .line 22
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 23
    .line 24
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lc5/v5;->g()V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/app/Activity;

    .line 35
    .line 36
    invoke-virtual {p3, p1, p4}, Lc5/t5;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/measurement/y0;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p1

    .line 44
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 45
    .line 46
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 47
    .line 48
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 49
    .line 50
    .line 51
    const-string p3, "Error returning bundle value to wrapper"

    .line 52
    .line 53
    iget-object p2, p2, Lc5/e3;->j:Lc5/c3;

    .line 54
    .line 55
    invoke-virtual {p2, p1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onActivityStarted(Lz3/b;J)V
    .locals 0
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc5/v5;->c:Lc5/t5;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 16
    .line 17
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 18
    .line 19
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lc5/v5;->g()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onActivityStopped(Lz3/b;J)V
    .locals 0
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p2, Lc5/v5;->c:Lc5/t5;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 16
    .line 17
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 18
    .line 19
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lc5/v5;->g()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/y0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/y0;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/b1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Landroidx/collection/ArrayMap;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/b1;->d()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lc5/b5;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lc5/x7;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lc5/x7;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/b1;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Landroidx/collection/ArrayMap;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/b1;->d()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 45
    .line 46
    iget-object p1, p1, Lc5/i4;->r:Lc5/v5;

    .line 47
    .line 48
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lc5/r3;->c()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Lc5/v5;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 63
    .line 64
    check-cast p1, Lc5/i4;

    .line 65
    .line 66
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 67
    .line 68
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "OnEventListener already registered"

    .line 72
    .line 73
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p1
.end method

.method public resetAnalyticsData(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    check-cast v1, Lc5/i4;

    .line 20
    .line 21
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 22
    .line 23
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lc5/m5;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v0, p1, p2, v3}, Lc5/m5;-><init>(Lc5/r3;JI)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 7
    .line 8
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 9
    .line 10
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 11
    .line 12
    .line 13
    const-string p2, "Conditional user property must not be null"

    .line 14
    .line 15
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 22
    .line 23
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 24
    .line 25
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lc5/v5;->r(Landroid/os/Bundle;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/internal/measurement/ia;->b:Lcom/google/android/gms/internal/measurement/ia;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ia;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/measurement/ja;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ja;->a()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast v1, Lc5/i4;

    .line 27
    .line 28
    iget-object v2, v1, Lc5/i4;->g:Lc5/e;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    sget-object v4, Lc5/r2;->p0:Lc5/q2;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 40
    .line 41
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lc5/g5;

    .line 45
    .line 46
    invoke-direct {v2, v0, p1, p2, p3}, Lc5/g5;-><init>(Lc5/v5;Landroid/os/Bundle;J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lc5/h4;->q(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lc5/v5;->x(Landroid/os/Bundle;J)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public setConsentThirdParty(Landroid/os/Bundle;J)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    const/16 v1, -0x14

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, p2, p3}, Lc5/v5;->s(Landroid/os/Bundle;IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCurrentScreen(Lz3/b;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p4, p4, Lc5/i4;->q:Lc5/f6;

    .line 7
    .line 8
    invoke-static {p4}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/Activity;

    .line 16
    .line 17
    iget-object p5, p4, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    check-cast p5, Lc5/i4;

    .line 20
    .line 21
    iget-object p5, p5, Lc5/i4;->g:Lc5/e;

    .line 22
    .line 23
    invoke-virtual {p5}, Lc5/e;->q()Z

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    if-nez p5, :cond_0

    .line 28
    .line 29
    iget-object p1, p4, Lc5/x4;->a:Lc5/z4;

    .line 30
    .line 31
    check-cast p1, Lc5/i4;

    .line 32
    .line 33
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 34
    .line 35
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 39
    .line 40
    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p5, p4, Lc5/f6;->c:Lc5/b6;

    .line 44
    .line 45
    if-nez p5, :cond_1

    .line 46
    .line 47
    iget-object p1, p4, Lc5/x4;->a:Lc5/z4;

    .line 48
    .line 49
    check-cast p1, Lc5/i4;

    .line 50
    .line 51
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 52
    .line 53
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 57
    .line 58
    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p4, Lc5/f6;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object p1, p4, Lc5/x4;->a:Lc5/z4;

    .line 70
    .line 71
    check-cast p1, Lc5/i4;

    .line 72
    .line 73
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 74
    .line 75
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 79
    .line 80
    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    if-nez p3, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p4, p3}, Lc5/f6;->p(Ljava/lang/Class;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    :cond_3
    iget-object v0, p5, Lc5/b6;->b:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, p3}, Lc5/v7;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iget-object p5, p5, Lc5/b6;->a:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p5, p2}, Lc5/v7;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p5

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    if-nez p5, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    iget-object p1, p4, Lc5/x4;->a:Lc5/z4;

    .line 111
    .line 112
    check-cast p1, Lc5/i4;

    .line 113
    .line 114
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 115
    .line 116
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 120
    .line 121
    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 122
    .line 123
    :goto_0
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_5
    :goto_1
    const/16 p5, 0x64

    .line 129
    .line 130
    if-eqz p2, :cond_7

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_6

    .line 137
    .line 138
    iget-object v0, p4, Lc5/x4;->a:Lc5/z4;

    .line 139
    .line 140
    check-cast v0, Lc5/i4;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-gt v0, p5, :cond_6

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    iget-object p1, p4, Lc5/x4;->a:Lc5/z4;

    .line 153
    .line 154
    check-cast p1, Lc5/i4;

    .line 155
    .line 156
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 157
    .line 158
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    :goto_2
    if-eqz p3, :cond_9

    .line 175
    .line 176
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-lez v0, :cond_8

    .line 181
    .line 182
    iget-object v0, p4, Lc5/x4;->a:Lc5/z4;

    .line 183
    .line 184
    check-cast v0, Lc5/i4;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-gt v0, p5, :cond_8

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_8
    iget-object p1, p4, Lc5/x4;->a:Lc5/z4;

    .line 197
    .line 198
    check-cast p1, Lc5/i4;

    .line 199
    .line 200
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 201
    .line 202
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 206
    .line 207
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    .line 216
    .line 217
    :goto_3
    invoke-virtual {p1, p2, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_9
    :goto_4
    iget-object p5, p4, Lc5/x4;->a:Lc5/z4;

    .line 222
    .line 223
    check-cast p5, Lc5/i4;

    .line 224
    .line 225
    iget-object p5, p5, Lc5/i4;->j:Lc5/e3;

    .line 226
    .line 227
    invoke-static {p5}, Lc5/i4;->e(Lc5/y4;)V

    .line 228
    .line 229
    .line 230
    iget-object p5, p5, Lc5/e3;->p:Lc5/c3;

    .line 231
    .line 232
    if-nez p2, :cond_a

    .line 233
    .line 234
    const-string v0, "null"

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    move-object v0, p2

    .line 238
    :goto_5
    const-string v1, "Setting current screen to name, class"

    .line 239
    .line 240
    invoke-virtual {p5, v0, v1, p3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    new-instance p5, Lc5/b6;

    .line 244
    .line 245
    iget-object v0, p4, Lc5/x4;->a:Lc5/z4;

    .line 246
    .line 247
    check-cast v0, Lc5/i4;

    .line 248
    .line 249
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 250
    .line 251
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lc5/v7;->l0()J

    .line 255
    .line 256
    .line 257
    move-result-wide v0

    .line 258
    invoke-direct {p5, p2, p3, v0, v1}, Lc5/b6;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 259
    .line 260
    .line 261
    iget-object p2, p4, Lc5/f6;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 262
    .line 263
    invoke-virtual {p2, p1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    const/4 p2, 0x1

    .line 267
    invoke-virtual {p4, p1, p5, p2}, Lc5/f6;->g(Landroid/app/Activity;Lc5/b6;Z)V

    .line 268
    .line 269
    .line 270
    :goto_6
    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast v1, Lc5/i4;

    .line 17
    .line 18
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 19
    .line 20
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lc5/h5;

    .line 24
    .line 25
    invoke-direct {v2, v0, p1}, Lc5/h5;-><init>(Lc5/v5;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    move-object p1, v1

    .line 21
    :goto_0
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 22
    .line 23
    check-cast v1, Lc5/i4;

    .line 24
    .line 25
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 26
    .line 27
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lc5/f5;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v0, p1, v3}, Lc5/f5;-><init>(Lc5/v5;Landroid/os/Bundle;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setEventInterceptor(Lcom/google/android/gms/internal/measurement/b1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/clearcut/f;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/f;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/b1;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 10
    .line 11
    iget-object p1, p1, Lc5/i4;->k:Lc5/h4;

    .line 12
    .line 13
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lc5/h4;->r()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 23
    .line 24
    iget-object p1, p1, Lc5/i4;->r:Lc5/v5;

    .line 25
    .line 26
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lc5/t2;->b()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lc5/r3;->c()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p1, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    const-string v2, "EventInterceptor already set."

    .line 45
    .line 46
    invoke-static {v2, v1}, Lr3/r;->k(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iput-object v0, p1, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 53
    .line 54
    iget-object p1, p1, Lc5/i4;->k:Lc5/h4;

    .line 55
    .line 56
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lo3/n0;

    .line 60
    .line 61
    const/4 v2, 0x4

    .line 62
    invoke-direct {v1, v2, p0, v0}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/d1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object p2, p2, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lc5/r3;->c()V

    .line 16
    .line 17
    .line 18
    iget-object p3, p2, Lc5/x4;->a:Lc5/z4;

    .line 19
    .line 20
    check-cast p3, Lc5/i4;

    .line 21
    .line 22
    iget-object p3, p3, Lc5/i4;->k:Lc5/h4;

    .line 23
    .line 24
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lo3/n0;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-direct {v0, v1, p2, p1}, Lo3/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    check-cast v1, Lc5/i4;

    .line 14
    .line 15
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 16
    .line 17
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lc5/j5;

    .line 21
    .line 22
    invoke-direct {v2, v0, p1, p2}, Lc5/j5;-><init>(Lc5/v5;J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 13
    .line 14
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 15
    .line 16
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 17
    .line 18
    .line 19
    const-string p2, "User ID must be non-empty"

    .line 20
    .line 21
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 28
    .line 29
    iget-object v1, v0, Lc5/i4;->r:Lc5/v5;

    .line 30
    .line 31
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "_id"

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    move-object v4, p1

    .line 39
    move-wide v6, p2

    .line 40
    invoke-virtual/range {v1 .. v7}, Lc5/v5;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lz3/b;ZJ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 9
    .line 10
    iget-object v0, p3, Lc5/i4;->r:Lc5/v5;

    .line 11
    .line 12
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 13
    .line 14
    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move v4, p4

    .line 18
    move-wide v5, p5

    .line 19
    invoke-virtual/range {v0 .. v6}, Lc5/v5;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/b1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Landroidx/collection/ArrayMap;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/b1;->d()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lc5/b5;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lc5/x7;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lc5/x7;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/b1;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 32
    .line 33
    iget-object p1, p1, Lc5/i4;->r:Lc5/v5;

    .line 34
    .line 35
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lc5/r3;->c()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lc5/v5;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 50
    .line 51
    check-cast p1, Lc5/i4;

    .line 52
    .line 53
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 54
    .line 55
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "OnEventListener had not been registered"

    .line 59
    .line 60
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method public final x0()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "scion"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to perform action before initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 5
    .line 6
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 7
    .line 8
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lc5/v7;->E(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
