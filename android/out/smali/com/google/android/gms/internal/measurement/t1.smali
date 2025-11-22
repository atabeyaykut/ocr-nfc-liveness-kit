.class public final Lcom/google/android/gms/internal/measurement/t1;
.super Lcom/google/android/gms/internal/measurement/y1;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/c2;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/t1;->e:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t1;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t1;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/t1;->g:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/c2;->a:Lcom/google/android/gms/internal/measurement/d2;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/t1;->e:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t1;->h:Ljava/lang/Object;

    const-string v1, "Error with data collection. Data lost."

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t1;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t1;->g:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t1;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->h:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 13
    .line 14
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x5

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->f:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->g:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v5, Lz3/d;

    .line 26
    .line 27
    invoke-direct {v5, v0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v6, Lz3/d;

    .line 31
    .line 32
    invoke-direct {v6, v1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lz3/d;

    .line 36
    .line 37
    invoke-direct {v7, v1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/v0;->logHealthData(ILjava/lang/String;Lz3/b;Lz3/b;Lz3/b;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->f:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/os/Bundle;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    new-instance v1, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->f:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroid/os/Bundle;

    .line 58
    .line 59
    const-string v2, "com.google.app_measurement.screen_service"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->f:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    instance-of v3, v0, Landroid/os/Bundle;

    .line 76
    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    check-cast v0, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->h:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lcom/google/android/gms/internal/measurement/c2;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/c2;->a:Lcom/google/android/gms/internal/measurement/d2;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 91
    .line 92
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/t1;->g:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Landroid/app/Activity;

    .line 98
    .line 99
    new-instance v3, Lz3/d;

    .line 100
    .line 101
    invoke-direct {v3, v2}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/y1;->b:J

    .line 105
    .line 106
    invoke-interface {v0, v3, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/v0;->onActivityCreated(Lz3/b;Landroid/os/Bundle;J)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
