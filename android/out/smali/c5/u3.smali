.class public final Lc5/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lc5/v3;


# direct methods
.method public constructor <init>(Lc5/v3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc5/u3;->b:Lc5/v3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc5/u3;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lc5/u3;->b:Lc5/v3;

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/measurement/m0;->a:I

    .line 6
    .line 7
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 8
    .line 9
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/n0;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/gms/internal/measurement/n0;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/l0;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/measurement/l0;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object p2, p1, Lc5/v3;->a:Lc5/i4;

    .line 28
    .line 29
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 30
    .line 31
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p2, Lc5/e3;->j:Lc5/c3;

    .line 35
    .line 36
    const-string v0, "Install Referrer Service implementation was not found"

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p2, p1, Lc5/v3;->a:Lc5/i4;

    .line 43
    .line 44
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 45
    .line 46
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p2, Lc5/e3;->p:Lc5/c3;

    .line 50
    .line 51
    const-string v1, "Install Referrer Service connected"

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p1, Lc5/v3;->a:Lc5/i4;

    .line 57
    .line 58
    iget-object p2, p2, Lc5/i4;->k:Lc5/h4;

    .line 59
    .line 60
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lc5/t3;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-direct {v1, p0, v0, p0, v2}, Lc5/t3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    move-exception p2

    .line 74
    iget-object p1, p1, Lc5/v3;->a:Lc5/i4;

    .line 75
    .line 76
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 77
    .line 78
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "Exception occurred while calling Install Referrer API"

    .line 82
    .line 83
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 84
    .line 85
    invoke-virtual {p1, p2, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    iget-object p1, p1, Lc5/v3;->a:Lc5/i4;

    .line 90
    .line 91
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 92
    .line 93
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 94
    .line 95
    .line 96
    const-string p2, "Install Referrer connection returned with null binder"

    .line 97
    .line 98
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lc5/u3;->b:Lc5/v3;

    .line 2
    .line 3
    iget-object p1, p1, Lc5/v3;->a:Lc5/i4;

    .line 4
    .line 5
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 6
    .line 7
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "Install Referrer Service disconnected"

    .line 11
    .line 12
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
