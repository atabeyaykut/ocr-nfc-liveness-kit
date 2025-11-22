.class public final Lc5/c7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lc5/b7;

.field public final synthetic d:Lc5/e7;


# direct methods
.method public constructor <init>(Lc5/e7;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc5/c7;->d:Lc5/e7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lc5/b7;

    .line 7
    .line 8
    iget-object v1, p1, Lc5/x4;->a:Lc5/z4;

    .line 9
    .line 10
    check-cast v1, Lc5/i4;

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lc5/b7;-><init>(Lc5/c7;Lc5/i4;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lc5/c7;->c:Lc5/b7;

    .line 16
    .line 17
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    check-cast p1, Lc5/i4;

    .line 20
    .line 21
    iget-object p1, p1, Lc5/i4;->p:Lc5/w;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lc5/c7;->a:J

    .line 31
    .line 32
    iput-wide v0, p0, Lc5/c7;->b:J

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(ZZJ)Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/c7;->d:Lc5/e7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/measurement/oa;->b:Lcom/google/android/gms/internal/measurement/oa;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/oa;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/measurement/pa;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/pa;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Lc5/i4;

    .line 26
    .line 27
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 28
    .line 29
    sget-object v2, Lc5/r2;->i0:Lc5/q2;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v3, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Lc5/i4;

    .line 40
    .line 41
    invoke-virtual {v1}, Lc5/i4;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    :cond_0
    move-object v1, v0

    .line 48
    check-cast v1, Lc5/i4;

    .line 49
    .line 50
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 51
    .line 52
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 53
    .line 54
    .line 55
    move-object v2, v0

    .line 56
    check-cast v2, Lc5/i4;

    .line 57
    .line 58
    iget-object v2, v2, Lc5/i4;->p:Lc5/w;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    iget-object v1, v1, Lc5/s3;->p:Lc5/o3;

    .line 68
    .line 69
    invoke-virtual {v1, v4, v5}, Lc5/o3;->b(J)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-wide v1, p0, Lc5/c7;->a:J

    .line 73
    .line 74
    sub-long v1, p3, v1

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    const-wide/16 v4, 0x3e8

    .line 79
    .line 80
    cmp-long p1, v1, v4

    .line 81
    .line 82
    if-ltz p1, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    check-cast v0, Lc5/i4;

    .line 86
    .line 87
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 88
    .line 89
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 97
    .line 98
    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 99
    .line 100
    invoke-virtual {p1, p2, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    return p1

    .line 105
    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 106
    .line 107
    iget-wide v1, p0, Lc5/c7;->b:J

    .line 108
    .line 109
    sub-long v1, p3, v1

    .line 110
    .line 111
    iput-wide p3, p0, Lc5/c7;->b:J

    .line 112
    .line 113
    :cond_4
    move-object p1, v0

    .line 114
    check-cast p1, Lc5/i4;

    .line 115
    .line 116
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 117
    .line 118
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 126
    .line 127
    const-string v5, "Recording user engagement, ms"

    .line 128
    .line 129
    invoke-virtual {p1, v4, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v4, "_et"

    .line 138
    .line 139
    invoke-virtual {p1, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    move-object v1, v0

    .line 143
    check-cast v1, Lc5/i4;

    .line 144
    .line 145
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 146
    .line 147
    invoke-virtual {v1}, Lc5/e;->q()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    move-object v2, v0

    .line 152
    check-cast v2, Lc5/i4;

    .line 153
    .line 154
    iget-object v2, v2, Lc5/i4;->q:Lc5/f6;

    .line 155
    .line 156
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 157
    .line 158
    .line 159
    const/4 v4, 0x1

    .line 160
    xor-int/2addr v1, v4

    .line 161
    invoke-virtual {v2, v1}, Lc5/f6;->o(Z)Lc5/b6;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1, p1, v4}, Lc5/v7;->t(Lc5/b6;Landroid/os/Bundle;Z)V

    .line 166
    .line 167
    .line 168
    move-object v1, v0

    .line 169
    check-cast v1, Lc5/i4;

    .line 170
    .line 171
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 172
    .line 173
    sget-object v2, Lc5/r2;->U:Lc5/q2;

    .line 174
    .line 175
    invoke-virtual {v1, v3, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_5

    .line 180
    .line 181
    if-eqz p2, :cond_5

    .line 182
    .line 183
    const-string v1, "_fr"

    .line 184
    .line 185
    const-wide/16 v5, 0x1

    .line 186
    .line 187
    invoke-virtual {p1, v1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 188
    .line 189
    .line 190
    :cond_5
    move-object v1, v0

    .line 191
    check-cast v1, Lc5/i4;

    .line 192
    .line 193
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 194
    .line 195
    invoke-virtual {v1, v3, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_6

    .line 200
    .line 201
    if-nez p2, :cond_7

    .line 202
    .line 203
    :cond_6
    check-cast v0, Lc5/i4;

    .line 204
    .line 205
    iget-object p2, v0, Lc5/i4;->r:Lc5/v5;

    .line 206
    .line 207
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 208
    .line 209
    .line 210
    const-string v0, "auto"

    .line 211
    .line 212
    const-string v1, "_e"

    .line 213
    .line 214
    invoke-virtual {p2, v0, v1, p1}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    :cond_7
    iput-wide p3, p0, Lc5/c7;->a:J

    .line 218
    .line 219
    iget-object p1, p0, Lc5/c7;->c:Lc5/b7;

    .line 220
    .line 221
    invoke-virtual {p1}, Lc5/l;->a()V

    .line 222
    .line 223
    .line 224
    const-wide/32 p2, 0x36ee80

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2, p3}, Lc5/l;->c(J)V

    .line 228
    .line 229
    .line 230
    return v4
.end method
