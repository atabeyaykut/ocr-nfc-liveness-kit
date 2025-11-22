.class public final Lc5/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lc5/r3;


# direct methods
.method public constructor <init>(Lc5/t6;Lc5/s;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/n5;->a:I

    .line 2
    iput-object p1, p0, Lc5/n5;->e:Lc5/r3;

    iput-object p2, p0, Lc5/n5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc5/n5;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/n5;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc5/v5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/n5;->a:I

    .line 1
    iput-object p1, p0, Lc5/n5;->e:Lc5/r3;

    iput-object p2, p0, Lc5/n5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc5/n5;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/n5;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lc5/n5;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/n5;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/n5;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lc5/n5;->e:Lc5/r3;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    check-cast v3, Lc5/v5;

    .line 14
    .line 15
    iget-object v0, v3, Lc5/x4;->a:Lc5/z4;

    .line 16
    .line 17
    check-cast v0, Lc5/i4;

    .line 18
    .line 19
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v5, v2

    .line 24
    check-cast v5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    iget-object v6, p0, Lc5/n5;->b:Ljava/lang/String;

    .line 27
    .line 28
    move-object v7, v1

    .line 29
    check-cast v7, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lc5/t6;->q(Z)Lc5/y7;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    new-instance v1, Lc5/o6;

    .line 43
    .line 44
    move-object v3, v1

    .line 45
    move-object v4, v0

    .line 46
    invoke-direct/range {v3 .. v8}, Lc5/o6;-><init>(Lc5/t6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lc5/y7;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_0
    const/4 v0, 0x0

    .line 54
    :try_start_0
    move-object v4, v3

    .line 55
    check-cast v4, Lc5/t6;

    .line 56
    .line 57
    iget-object v4, v4, Lc5/t6;->d:Lc5/v2;

    .line 58
    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    move-object v2, v3

    .line 62
    check-cast v2, Lc5/t6;

    .line 63
    .line 64
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 65
    .line 66
    check-cast v2, Lc5/i4;

    .line 67
    .line 68
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 69
    .line 70
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 74
    .line 75
    const-string v4, "Discarding data. Failed to send event to service to bundle"

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    check-cast v2, Lc5/s;

    .line 82
    .line 83
    iget-object v5, p0, Lc5/n5;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v4, v2, v5}, Lc5/v2;->Y(Lc5/s;Ljava/lang/String;)[B

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v2, v3

    .line 90
    check-cast v2, Lc5/t6;

    .line 91
    .line 92
    invoke-virtual {v2}, Lc5/t6;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v2

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v2

    .line 99
    :try_start_1
    move-object v4, v3

    .line 100
    check-cast v4, Lc5/t6;

    .line 101
    .line 102
    iget-object v4, v4, Lc5/x4;->a:Lc5/z4;

    .line 103
    .line 104
    check-cast v4, Lc5/i4;

    .line 105
    .line 106
    iget-object v4, v4, Lc5/i4;->j:Lc5/e3;

    .line 107
    .line 108
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 109
    .line 110
    .line 111
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 112
    .line 113
    const-string v5, "Failed to send event to the service to bundle"

    .line 114
    .line 115
    invoke-virtual {v4, v2, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    :goto_1
    check-cast v3, Lc5/t6;

    .line 119
    .line 120
    iget-object v2, v3, Lc5/x4;->a:Lc5/z4;

    .line 121
    .line 122
    check-cast v2, Lc5/i4;

    .line 123
    .line 124
    iget-object v2, v2, Lc5/i4;->m:Lc5/v7;

    .line 125
    .line 126
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 127
    .line 128
    .line 129
    check-cast v1, Lcom/google/android/gms/internal/measurement/y0;

    .line 130
    .line 131
    invoke-virtual {v2, v1, v0}, Lc5/v7;->B(Lcom/google/android/gms/internal/measurement/y0;[B)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :goto_2
    check-cast v3, Lc5/t6;

    .line 136
    .line 137
    iget-object v3, v3, Lc5/x4;->a:Lc5/z4;

    .line 138
    .line 139
    check-cast v3, Lc5/i4;

    .line 140
    .line 141
    iget-object v3, v3, Lc5/i4;->m:Lc5/v7;

    .line 142
    .line 143
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 144
    .line 145
    .line 146
    check-cast v1, Lcom/google/android/gms/internal/measurement/y0;

    .line 147
    .line 148
    invoke-virtual {v3, v1, v0}, Lc5/v7;->B(Lcom/google/android/gms/internal/measurement/y0;[B)V

    .line 149
    .line 150
    .line 151
    throw v2

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
