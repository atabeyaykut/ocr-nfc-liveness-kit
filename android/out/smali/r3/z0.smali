.class public final Lr3/z0;
.super Lr3/n0;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final synthetic h:Lr3/c;


# direct methods
.method public constructor <init>(Lr3/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lr3/z0;->h:Lr3/c;

    invoke-direct {p0, p1, p2, p4}, Lr3/n0;-><init>(Lr3/c;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lr3/z0;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final e(Lm3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/z0;->h:Lr3/c;

    .line 2
    .line 3
    iget-object v0, v0, Lr3/c;->p:Lr3/c$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lr3/c$b;->onConnectionFailed(Lm3/b;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/z0;->g:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object v3, p0, Lr3/z0;->h:Lr3/c;

    .line 12
    .line 13
    invoke-virtual {v3}, Lr3/c;->x()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Lr3/c;->x()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v3, "service descriptor mismatch: "

    .line 28
    .line 29
    const-string v4, " vs. "

    .line 30
    .line 31
    invoke-static {v3, v0, v4, v2}, Landroidx/camera/camera2/internal/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v3, v0}, Lr3/c;->q(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    const/4 v4, 0x4

    .line 44
    invoke-static {v3, v2, v4, v0}, Lr3/c;->C(Lr3/c;IILandroid/os/IInterface;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-static {v3, v2, v4, v0}, Lr3/c;->C(Lr3/c;IILandroid/os/IInterface;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    iput-object v0, v3, Lr3/c;->t:Lm3/b;

    .line 59
    .line 60
    iget-object v0, v3, Lr3/c;->o:Lr3/c$a;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Lr3/c$a;->a()V

    .line 65
    .line 66
    .line 67
    :cond_2
    const/4 v0, 0x1

    .line 68
    return v0

    .line 69
    :cond_3
    return v1

    .line 70
    :catch_0
    const-string v0, "service probably died"

    .line 71
    .line 72
    :goto_0
    const-string v2, "GmsClient"

    .line 73
    .line 74
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return v1
.end method
