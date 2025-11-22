.class public final Lo3/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lo3/d1;->a:I

    iput-object p1, p0, Lo3/d1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo3/d1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo3/d1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lo3/d1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo3/d1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lo3/d1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lo3/d1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :pswitch_0
    check-cast v3, Lo3/e1;

    .line 14
    .line 15
    iget v0, v3, Lo3/e1;->b:I

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    move-object v0, v2

    .line 20
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 21
    .line 22
    iget-object v4, v3, Lo3/e1;->c:Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v0, v3, Lo3/e1;->b:I

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    if-lt v0, v1, :cond_2

    .line 41
    .line 42
    move-object v0, v2

    .line 43
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget v0, v3, Lo3/e1;->b:I

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    if-lt v0, v1, :cond_3

    .line 52
    .line 53
    move-object v0, v2

    .line 54
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d()V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget v0, v3, Lo3/e1;->b:I

    .line 60
    .line 61
    const/4 v1, 0x4

    .line 62
    if-lt v0, v1, :cond_4

    .line 63
    .line 64
    move-object v0, v2

    .line 65
    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget v0, v3, Lo3/e1;->b:I

    .line 71
    .line 72
    const/4 v1, 0x5

    .line 73
    if-lt v0, v1, :cond_5

    .line 74
    .line 75
    check-cast v2, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :cond_5
    return-void

    .line 81
    :goto_1
    check-cast v3, Lc5/t6;

    .line 82
    .line 83
    iget-object v0, v3, Lc5/t6;->d:Lc5/v2;

    .line 84
    .line 85
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 86
    .line 87
    const-string v4, "Failed to send default event parameters to service"

    .line 88
    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    check-cast v3, Lc5/i4;

    .line 92
    .line 93
    iget-object v0, v3, Lc5/i4;->j:Lc5/e3;

    .line 94
    .line 95
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    :try_start_0
    move-object v5, v2

    .line 105
    check-cast v5, Lc5/y7;

    .line 106
    .line 107
    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast v1, Landroid/os/Bundle;

    .line 111
    .line 112
    check-cast v2, Lc5/y7;

    .line 113
    .line 114
    invoke-interface {v0, v1, v2}, Lc5/v2;->p(Landroid/os/Bundle;Lc5/y7;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    check-cast v3, Lc5/i4;

    .line 120
    .line 121
    iget-object v1, v3, Lc5/i4;->j:Lc5/e3;

    .line 122
    .line 123
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 127
    .line 128
    invoke-virtual {v1, v0, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
