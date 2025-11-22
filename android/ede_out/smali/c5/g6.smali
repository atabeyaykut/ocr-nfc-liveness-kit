.class public final Lc5/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc5/y7;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/internal/measurement/y0;

.field public final synthetic f:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Ljava/lang/String;Ljava/lang/String;Lc5/y7;ZLcom/google/android/gms/internal/measurement/y0;)V
    .locals 0

    iput-object p1, p0, Lc5/g6;->f:Lc5/t6;

    iput-object p2, p0, Lc5/g6;->a:Ljava/lang/String;

    iput-object p3, p0, Lc5/g6;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/g6;->c:Lc5/y7;

    iput-boolean p5, p0, Lc5/g6;->d:Z

    iput-object p6, p0, Lc5/g6;->e:Lcom/google/android/gms/internal/measurement/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc5/g6;->c:Lc5/y7;

    .line 2
    .line 3
    iget-object v1, p0, Lc5/g6;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/g6;->e:Lcom/google/android/gms/internal/measurement/y0;

    .line 6
    .line 7
    iget-object v3, p0, Lc5/g6;->f:Lc5/t6;

    .line 8
    .line 9
    new-instance v4, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v5, v3, Lc5/t6;->d:Lc5/v2;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    iget-object v6, v3, Lc5/x4;->a:Lc5/z4;

    .line 17
    .line 18
    iget-object v7, p0, Lc5/g6;->b:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    :try_start_1
    move-object v0, v6

    .line 23
    check-cast v0, Lc5/i4;

    .line 24
    .line 25
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 26
    .line 27
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 31
    .line 32
    const-string v5, "Failed to get user properties; not connected to service"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v5, v7}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    .line 36
    .line 37
    check-cast v6, Lc5/i4;

    .line 38
    .line 39
    iget-object v0, v6, Lc5/i4;->m:Lc5/v7;

    .line 40
    .line 41
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v4}, Lc5/v7;->A(Lcom/google/android/gms/internal/measurement/y0;Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    :try_start_2
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v8, p0, Lc5/g6;->d:Z

    .line 52
    .line 53
    invoke-interface {v5, v1, v7, v8, v0}, Lc5/v2;->S(Ljava/lang/String;Ljava/lang/String;ZLc5/y7;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v5, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_5

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Lc5/r7;

    .line 80
    .line 81
    iget-object v8, v7, Lc5/r7;->e:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    .line 83
    iget-object v9, v7, Lc5/r7;->b:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v8, :cond_3

    .line 86
    .line 87
    :try_start_3
    invoke-virtual {v5, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object v8, v7, Lc5/r7;->d:Ljava/lang/Long;

    .line 92
    .line 93
    if-eqz v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    invoke-virtual {v5, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iget-object v7, v7, Lc5/r7;->g:Ljava/lang/Double;

    .line 104
    .line 105
    if-eqz v7, :cond_2

    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 108
    .line 109
    .line 110
    move-result-wide v7

    .line 111
    invoke-virtual {v5, v9, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Lc5/t6;->s()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    .line 117
    .line 118
    check-cast v6, Lc5/i4;

    .line 119
    .line 120
    iget-object v0, v6, Lc5/i4;->m:Lc5/v7;

    .line 121
    .line 122
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2, v5}, Lc5/v7;->A(Lcom/google/android/gms/internal/measurement/y0;Landroid/os/Bundle;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_4

    .line 131
    :catch_0
    move-exception v0

    .line 132
    move-object v4, v5

    .line 133
    goto :goto_2

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    goto :goto_3

    .line 136
    :catch_1
    move-exception v0

    .line 137
    :goto_2
    :try_start_5
    iget-object v5, v3, Lc5/x4;->a:Lc5/z4;

    .line 138
    .line 139
    check-cast v5, Lc5/i4;

    .line 140
    .line 141
    iget-object v5, v5, Lc5/i4;->j:Lc5/e3;

    .line 142
    .line 143
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 144
    .line 145
    .line 146
    iget-object v5, v5, Lc5/e3;->f:Lc5/c3;

    .line 147
    .line 148
    const-string v6, "Failed to get user properties; remote exception"

    .line 149
    .line 150
    invoke-virtual {v5, v1, v6, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    .line 152
    .line 153
    iget-object v0, v3, Lc5/x4;->a:Lc5/z4;

    .line 154
    .line 155
    check-cast v0, Lc5/i4;

    .line 156
    .line 157
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 158
    .line 159
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2, v4}, Lc5/v7;->A(Lcom/google/android/gms/internal/measurement/y0;Landroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :goto_3
    move-object v5, v4

    .line 167
    :goto_4
    iget-object v1, v3, Lc5/x4;->a:Lc5/z4;

    .line 168
    .line 169
    check-cast v1, Lc5/i4;

    .line 170
    .line 171
    iget-object v1, v1, Lc5/i4;->m:Lc5/v7;

    .line 172
    .line 173
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2, v5}, Lc5/v7;->A(Lcom/google/android/gms/internal/measurement/y0;Landroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    throw v0
.end method
