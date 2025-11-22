.class public final Lc5/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lc5/e7;


# direct methods
.method public constructor <init>(Lc5/e7;)V
    .locals 0

    iput-object p1, p0, Lc5/d7;->a:Lc5/e7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/d7;->a:Lc5/e7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lc5/i4;

    .line 10
    .line 11
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 12
    .line 13
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 14
    .line 15
    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Lc5/i4;

    .line 18
    .line 19
    iget-object v2, v2, Lc5/i4;->p:Lc5/w;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v1, v2, v3}, Lc5/s3;->r(J)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    check-cast v1, Lc5/i4;

    .line 36
    .line 37
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 38
    .line 39
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v1, Lc5/s3;->l:Lc5/m3;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Lc5/m3;->a(Z)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 54
    .line 55
    .line 56
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 57
    .line 58
    const/16 v2, 0x64

    .line 59
    .line 60
    if-ne v1, v2, :cond_0

    .line 61
    .line 62
    move-object v1, v0

    .line 63
    check-cast v1, Lc5/i4;

    .line 64
    .line 65
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 66
    .line 67
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "Detected application was in foreground"

    .line 71
    .line 72
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v0, Lc5/i4;

    .line 78
    .line 79
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, v0, v1, v2}, Lc5/d7;->c(JZ)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/d7;->a:Lc5/e7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lc5/e7;->g()V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lc5/i4;

    .line 13
    .line 14
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 15
    .line 16
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, p2}, Lc5/s3;->r(J)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lc5/i4;

    .line 27
    .line 28
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 29
    .line 30
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v1, Lc5/s3;->l:Lc5/m3;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Lc5/m3;->a(Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    move-object v1, v0

    .line 40
    check-cast v1, Lc5/i4;

    .line 41
    .line 42
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 43
    .line 44
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v1, Lc5/s3;->p:Lc5/o3;

    .line 48
    .line 49
    invoke-virtual {v1, p1, p2}, Lc5/o3;->b(J)V

    .line 50
    .line 51
    .line 52
    check-cast v0, Lc5/i4;

    .line 53
    .line 54
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 55
    .line 56
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lc5/s3;->l:Lc5/m3;

    .line 60
    .line 61
    invoke-virtual {v0}, Lc5/m3;->b()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lc5/d7;->c(JZ)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public final c(JZ)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/d7;->a:Lc5/e7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lc5/i4;

    .line 10
    .line 11
    invoke-virtual {v1}, Lc5/i4;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    check-cast v1, Lc5/i4;

    .line 20
    .line 21
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 22
    .line 23
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v1, Lc5/s3;->p:Lc5/o3;

    .line 27
    .line 28
    invoke-virtual {v1, p1, p2}, Lc5/o3;->b(J)V

    .line 29
    .line 30
    .line 31
    move-object v1, v0

    .line 32
    check-cast v1, Lc5/i4;

    .line 33
    .line 34
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    move-object v3, v0

    .line 44
    check-cast v3, Lc5/i4;

    .line 45
    .line 46
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 47
    .line 48
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, v3, Lc5/e3;->p:Lc5/c3;

    .line 56
    .line 57
    const-string v3, "Session started, time"

    .line 58
    .line 59
    invoke-virtual {v2, v1, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v1, 0x3e8

    .line 63
    .line 64
    div-long v1, p1, v1

    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v2, v0

    .line 71
    check-cast v2, Lc5/i4;

    .line 72
    .line 73
    iget-object v3, v2, Lc5/i4;->r:Lc5/v5;

    .line 74
    .line 75
    invoke-static {v3}, Lc5/i4;->d(Lc5/r3;)V

    .line 76
    .line 77
    .line 78
    const-string v7, "auto"

    .line 79
    .line 80
    const-string v8, "_sid"

    .line 81
    .line 82
    move-wide v4, p1

    .line 83
    move-object v6, v1

    .line 84
    invoke-virtual/range {v3 .. v8}, Lc5/v5;->w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v2, v0

    .line 88
    check-cast v2, Lc5/i4;

    .line 89
    .line 90
    iget-object v2, v2, Lc5/i4;->h:Lc5/s3;

    .line 91
    .line 92
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v2, Lc5/s3;->l:Lc5/m3;

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3}, Lc5/m3;->a(Z)V

    .line 99
    .line 100
    .line 101
    new-instance v7, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "_sid"

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-virtual {v7, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    move-object v1, v0

    .line 116
    check-cast v1, Lc5/i4;

    .line 117
    .line 118
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 119
    .line 120
    sget-object v2, Lc5/r2;->d0:Lc5/q2;

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-virtual {v1, v3, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_1

    .line 128
    .line 129
    if-eqz p3, :cond_1

    .line 130
    .line 131
    const-string p3, "_aib"

    .line 132
    .line 133
    const-wide/16 v1, 0x1

    .line 134
    .line 135
    invoke-virtual {v7, p3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 136
    .line 137
    .line 138
    :cond_1
    move-object p3, v0

    .line 139
    check-cast p3, Lc5/i4;

    .line 140
    .line 141
    iget-object v4, p3, Lc5/i4;->r:Lc5/v5;

    .line 142
    .line 143
    invoke-static {v4}, Lc5/i4;->d(Lc5/r3;)V

    .line 144
    .line 145
    .line 146
    const-string v8, "auto"

    .line 147
    .line 148
    const-string v9, "_s"

    .line 149
    .line 150
    move-wide v5, p1

    .line 151
    invoke-virtual/range {v4 .. v9}, Lc5/v5;->o(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget-object p3, Lcom/google/android/gms/internal/measurement/fa;->b:Lcom/google/android/gms/internal/measurement/fa;

    .line 155
    .line 156
    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/fa;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 157
    .line 158
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    check-cast p3, Lcom/google/android/gms/internal/measurement/ga;

    .line 163
    .line 164
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/ga;->a()V

    .line 165
    .line 166
    .line 167
    move-object p3, v0

    .line 168
    check-cast p3, Lc5/i4;

    .line 169
    .line 170
    iget-object p3, p3, Lc5/i4;->g:Lc5/e;

    .line 171
    .line 172
    sget-object v1, Lc5/r2;->h0:Lc5/q2;

    .line 173
    .line 174
    invoke-virtual {p3, v3, v1}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    if-eqz p3, :cond_2

    .line 179
    .line 180
    move-object p3, v0

    .line 181
    check-cast p3, Lc5/i4;

    .line 182
    .line 183
    iget-object p3, p3, Lc5/i4;->h:Lc5/s3;

    .line 184
    .line 185
    invoke-static {p3}, Lc5/i4;->c(Lc5/y4;)V

    .line 186
    .line 187
    .line 188
    iget-object p3, p3, Lc5/s3;->v:Lc5/q3;

    .line 189
    .line 190
    invoke-virtual {p3}, Lc5/q3;->a()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_2

    .line 199
    .line 200
    new-instance v5, Landroid/os/Bundle;

    .line 201
    .line 202
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v1, "_ffr"

    .line 206
    .line 207
    invoke-virtual {v5, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    check-cast v0, Lc5/i4;

    .line 211
    .line 212
    iget-object v2, v0, Lc5/i4;->r:Lc5/v5;

    .line 213
    .line 214
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 215
    .line 216
    .line 217
    const-string v6, "auto"

    .line 218
    .line 219
    const-string v7, "_ssr"

    .line 220
    .line 221
    move-wide v3, p1

    .line 222
    invoke-virtual/range {v2 .. v7}, Lc5/v5;->o(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_2
    return-void
.end method
