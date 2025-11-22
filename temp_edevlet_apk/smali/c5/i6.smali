.class public final Lc5/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/y7;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/y0;

.field public final synthetic c:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Lc5/y7;Lcom/google/android/gms/internal/measurement/y0;)V
    .locals 0

    iput-object p1, p0, Lc5/i6;->c:Lc5/t6;

    iput-object p2, p0, Lc5/i6;->a:Lc5/y7;

    iput-object p3, p0, Lc5/i6;->b:Lcom/google/android/gms/internal/measurement/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc5/i6;->a:Lc5/y7;

    .line 2
    .line 3
    const-string v1, "Failed to get app instance id"

    .line 4
    .line 5
    iget-object v2, p0, Lc5/i6;->b:Lcom/google/android/gms/internal/measurement/y0;

    .line 6
    .line 7
    iget-object v3, p0, Lc5/i6;->c:Lc5/t6;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    iget-object v5, v3, Lc5/x4;->a:Lc5/z4;

    .line 11
    .line 12
    check-cast v5, Lc5/i4;

    .line 13
    .line 14
    iget-object v5, v5, Lc5/i4;->h:Lc5/s3;

    .line 15
    .line 16
    invoke-static {v5}, Lc5/i4;->c(Lc5/y4;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Lc5/s3;->n()Lc5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5}, Lc5/f;->f()Z

    .line 24
    .line 25
    .line 26
    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v6, v3, Lc5/x4;->a:Lc5/z4;

    .line 28
    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    :try_start_1
    move-object v0, v6

    .line 32
    check-cast v0, Lc5/i4;

    .line 33
    .line 34
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 35
    .line 36
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lc5/e3;->l:Lc5/c3;

    .line 40
    .line 41
    const-string v5, "Analytics storage consent denied; will not get app instance id"

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v0, v6

    .line 47
    check-cast v0, Lc5/i4;

    .line 48
    .line 49
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 50
    .line 51
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v0, v6

    .line 60
    check-cast v0, Lc5/i4;

    .line 61
    .line 62
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 63
    .line 64
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lc5/s3;->f:Lc5/q3;

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Lc5/q3;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :goto_0
    check-cast v6, Lc5/i4;

    .line 73
    .line 74
    iget-object v0, v6, Lc5/i4;->m:Lc5/v7;

    .line 75
    .line 76
    :goto_1
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4, v2}, Lc5/v7;->E(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :cond_0
    :try_start_2
    iget-object v5, v3, Lc5/t6;->d:Lc5/v2;

    .line 88
    .line 89
    if-nez v5, :cond_1

    .line 90
    .line 91
    move-object v0, v6

    .line 92
    check-cast v0, Lc5/i4;

    .line 93
    .line 94
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 95
    .line 96
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v5, v0}, Lc5/v2;->o(Lc5/y7;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    move-object v0, v6

    .line 115
    check-cast v0, Lc5/i4;

    .line 116
    .line 117
    iget-object v0, v0, Lc5/i4;->r:Lc5/v5;

    .line 118
    .line 119
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, v0, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v6

    .line 128
    check-cast v0, Lc5/i4;

    .line 129
    .line 130
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 131
    .line 132
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v0, Lc5/s3;->f:Lc5/q3;

    .line 136
    .line 137
    invoke-virtual {v0, v4}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    invoke-virtual {v3}, Lc5/t6;->s()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :goto_2
    :try_start_3
    iget-object v5, v3, Lc5/x4;->a:Lc5/z4;

    .line 145
    .line 146
    check-cast v5, Lc5/i4;

    .line 147
    .line 148
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 149
    .line 150
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 151
    .line 152
    .line 153
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 154
    .line 155
    invoke-virtual {v5, v0, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    .line 157
    .line 158
    iget-object v0, v3, Lc5/x4;->a:Lc5/z4;

    .line 159
    .line 160
    check-cast v0, Lc5/i4;

    .line 161
    .line 162
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :goto_3
    iget-object v1, v3, Lc5/x4;->a:Lc5/z4;

    .line 166
    .line 167
    check-cast v1, Lc5/i4;

    .line 168
    .line 169
    iget-object v1, v1, Lc5/i4;->m:Lc5/v7;

    .line 170
    .line 171
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v4, v2}, Lc5/v7;->E(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method
