.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lc5/w3;


# instance fields
.field public a:Lc5/x3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lc5/x3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lc5/x3;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lc5/x3;-><init>(Lc5/w3;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lc5/x3;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lc5/x3;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p1, v1, v1}, Lc5/i4;->r(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/e1;Ljava/lang/Long;)Lc5/i4;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 23
    .line 24
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 25
    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    const-string p1, "Receiver called with null intent"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string v2, "Local receiver got"

    .line 37
    .line 38
    iget-object v3, v1, Lc5/e3;->p:Lc5/c3;

    .line 39
    .line 40
    invoke-virtual {v3, p2, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 44
    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    new-instance p2, Landroid/content/Intent;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "com.google.android.gms.measurement.AppMeasurementService"

    .line 57
    .line 58
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string v1, "Starting wakeful intent."

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lc5/x3;->a:Lc5/w3;

    .line 71
    .line 72
    check-cast v0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p2}, Landroidx/legacy/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string p1, "com.android.vending.INSTALL_REFERRER"

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    const-string p1, "Install Referrer Broadcasts are deprecated"

    .line 90
    .line 91
    :goto_0
    iget-object p2, v1, Lc5/e3;->j:Lc5/c3;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    return-void
.end method
