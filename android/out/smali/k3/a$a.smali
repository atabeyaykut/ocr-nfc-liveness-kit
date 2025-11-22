.class public final Lk3/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/clearcut/z3;

.field public final e:Lcom/google/android/gms/internal/clearcut/f4;

.field public f:Z

.field public final synthetic g:Lk3/a;


# direct methods
.method public constructor <init>(Lk3/a;[B)V
    .locals 6

    .line 1
    iput-object p1, p0, Lk3/a$a;->g:Lk3/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lk3/a;->e:I

    .line 7
    .line 8
    iput v0, p0, Lk3/a$a;->a:I

    .line 9
    .line 10
    iget-object v0, p1, Lk3/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lk3/a$a;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p1, Lk3/a;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lk3/a$a;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p1, Lk3/a;->g:Lcom/google/android/gms/internal/clearcut/z3;

    .line 19
    .line 20
    iput-object v0, p0, Lk3/a$a;->d:Lcom/google/android/gms/internal/clearcut/z3;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/clearcut/f4;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/f4;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lk3/a$a;->e:Lcom/google/android/gms/internal/clearcut/f4;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lk3/a$a;->f:Z

    .line 31
    .line 32
    iget-object v2, p1, Lk3/a;->f:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v2, p0, Lk3/a$a;->c:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p1, Lk3/a;->a:Landroid/content/Context;

    .line 37
    .line 38
    sget-object v3, Lcom/google/android/gms/internal/clearcut/a;->a:Landroid/os/UserManager;

    .line 39
    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v4, 0x18

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-lt v3, v4, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    if-eqz v3, :cond_5

    .line 51
    .line 52
    sget-boolean v3, Lcom/google/android/gms/internal/clearcut/a;->b:Z

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    sget-object v3, Lcom/google/android/gms/internal/clearcut/a;->a:Landroid/os/UserManager;

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    const-class v4, Lcom/google/android/gms/internal/clearcut/a;

    .line 61
    .line 62
    monitor-enter v4

    .line 63
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/clearcut/a;->a:Landroid/os/UserManager;

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    invoke-static {v2}, Landroid/support/v4/media/h;->f(Landroid/content/Context;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/os/UserManager;

    .line 72
    .line 73
    sput-object v2, Lcom/google/android/gms/internal/clearcut/a;->a:Landroid/os/UserManager;

    .line 74
    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    sput-boolean v5, Lcom/google/android/gms/internal/clearcut/a;->b:Z

    .line 78
    .line 79
    monitor-exit v4

    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    move-object v3, v2

    .line 83
    :cond_2
    monitor-exit v4

    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p1

    .line 88
    :cond_3
    :goto_1
    invoke-static {v3}, Landroidx/appcompat/app/b;->k(Landroid/os/UserManager;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    sput-boolean v3, Lcom/google/android/gms/internal/clearcut/a;->b:Z

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    sput-object v2, Lcom/google/android/gms/internal/clearcut/a;->a:Landroid/os/UserManager;

    .line 98
    .line 99
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    :cond_5
    iput-boolean v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->w:Z

    .line 103
    .line 104
    iget-object v1, p1, Lk3/a;->i:Lw3/a;

    .line 105
    .line 106
    check-cast v1, Lc5/w;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 116
    .line 117
    iget-object p1, p1, Lk3/a;->i:Lw3/a;

    .line 118
    .line 119
    check-cast p1, Lc5/w;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 125
    .line 126
    .line 127
    move-result-wide v1

    .line 128
    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->d:J

    .line 129
    .line 130
    iget-wide v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->c:J

    .line 131
    .line 132
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    div-int/lit16 p1, p1, 0x3e8

    .line 141
    .line 142
    int-to-long v1, p1

    .line 143
    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/f4;->q:J

    .line 144
    .line 145
    iput-object p2, v0, Lcom/google/android/gms/internal/clearcut/f4;->k:[B

    .line 146
    .line 147
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lk3/a$a;->f:Z

    .line 4
    .line 5
    if-nez v0, :cond_1b

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lk3/a$a;->f:Z

    .line 9
    .line 10
    new-instance v3, Lk3/f;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/clearcut/n4;

    .line 13
    .line 14
    iget-object v11, v1, Lk3/a$a;->g:Lk3/a;

    .line 15
    .line 16
    iget-object v5, v11, Lk3/a;->b:Ljava/lang/String;

    .line 17
    .line 18
    iget v6, v11, Lk3/a;->c:I

    .line 19
    .line 20
    iget v7, v1, Lk3/a$a;->a:I

    .line 21
    .line 22
    iget-object v8, v1, Lk3/a$a;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v1, Lk3/a$a;->c:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v10, v1, Lk3/a$a;->d:Lcom/google/android/gms/internal/clearcut/z3;

    .line 27
    .line 28
    move-object v4, v0

    .line 29
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/clearcut/n4;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/z3;)V

    .line 30
    .line 31
    .line 32
    sget-object v4, Lk3/a;->k:Ln3/a;

    .line 33
    .line 34
    iget-object v4, v1, Lk3/a$a;->e:Lcom/google/android/gms/internal/clearcut/f4;

    .line 35
    .line 36
    invoke-direct {v3, v0, v4}, Lk3/f;-><init>(Lcom/google/android/gms/internal/clearcut/n4;Lcom/google/android/gms/internal/clearcut/f4;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v11, Lk3/a;->j:Lk3/a$b;

    .line 40
    .line 41
    check-cast v0, Lcom/google/android/gms/internal/clearcut/m4;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v4, v3, Lk3/f;->a:Lcom/google/android/gms/internal/clearcut/n4;

    .line 47
    .line 48
    iget-object v5, v4, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    iget-object v7, v3, Lk3/f;->j:Lcom/google/android/gms/internal/clearcut/f4;

    .line 52
    .line 53
    if-eqz v7, :cond_0

    .line 54
    .line 55
    iget v7, v7, Lcom/google/android/gms/internal/clearcut/f4;->f:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v7, 0x0

    .line 59
    :goto_0
    sget-object v8, Lcom/google/android/gms/internal/clearcut/m4;->i:Lcom/google/android/gms/internal/clearcut/h;

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/internal/clearcut/e;->a()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const/4 v9, 0x2

    .line 72
    const/4 v10, 0x0

    .line 73
    iget v4, v4, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    .line 74
    .line 75
    iget-object v12, v0, Lcom/google/android/gms/internal/clearcut/m4;->a:Landroid/content/Context;

    .line 76
    .line 77
    if-nez v8, :cond_10

    .line 78
    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    if-ltz v4, :cond_2

    .line 89
    .line 90
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move-object v5, v10

    .line 96
    :goto_1
    if-eqz v5, :cond_18

    .line 97
    .line 98
    if-eqz v12, :cond_5

    .line 99
    .line 100
    invoke-static {v12}, Lcom/google/android/gms/internal/clearcut/m4;->c(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/clearcut/m4;->f:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lcom/google/android/gms/internal/clearcut/e;

    .line 114
    .line 115
    if-nez v4, :cond_4

    .line 116
    .line 117
    sget-object v4, Lcom/google/android/gms/internal/clearcut/m4;->d:Lcom/google/android/gms/internal/clearcut/m;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    sget-object v7, Lcom/google/android/gms/internal/clearcut/e;->g:Ljava/lang/Object;

    .line 123
    .line 124
    new-instance v7, Lcom/google/android/gms/internal/clearcut/i;

    .line 125
    .line 126
    invoke-direct {v7, v4, v5}, Lcom/google/android/gms/internal/clearcut/i;-><init>(Lcom/google/android/gms/internal/clearcut/m;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-object v4, v7

    .line 133
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/e;->a()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/String;

    .line 138
    .line 139
    move-object v4, v0

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    :goto_2
    move-object v4, v10

    .line 142
    :goto_3
    if-nez v4, :cond_6

    .line 143
    .line 144
    goto/16 :goto_9

    .line 145
    .line 146
    :cond_6
    const/16 v0, 0x2c

    .line 147
    .line 148
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-ltz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    add-int/2addr v0, v2

    .line 159
    goto :goto_4

    .line 160
    :cond_7
    const-string v5, ""

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    :goto_4
    const/16 v7, 0x2f

    .line 164
    .line 165
    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->indexOf(II)I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    const-string v8, "LogSamplerImpl"

    .line 170
    .line 171
    if-gtz v7, :cond_9

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const-string v5, "Failed to parse the rule: "

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :cond_8
    new-instance v0, Ljava/lang/String;

    .line 188
    .line 189
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_7

    .line 193
    .line 194
    :cond_9
    :try_start_0
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v13

    .line 202
    add-int/2addr v7, v2

    .line 203
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const-wide/16 v16, 0x0

    .line 212
    .line 213
    cmp-long v0, v13, v16

    .line 214
    .line 215
    if-ltz v0, :cond_e

    .line 216
    .line 217
    cmp-long v0, v6, v16

    .line 218
    .line 219
    if-gez v0, :cond_a

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a4$b;->v()Lcom/google/android/gms/internal/clearcut/a4$b$a;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/v0$a;->e()V

    .line 227
    .line 228
    .line 229
    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/v0$a;->b:Lcom/google/android/gms/internal/clearcut/v0;

    .line 230
    .line 231
    check-cast v4, Lcom/google/android/gms/internal/clearcut/a4$b;

    .line 232
    .line 233
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/a4$b;->k(Lcom/google/android/gms/internal/clearcut/a4$b;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/v0$a;->e()V

    .line 237
    .line 238
    .line 239
    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/v0$a;->b:Lcom/google/android/gms/internal/clearcut/v0;

    .line 240
    .line 241
    check-cast v4, Lcom/google/android/gms/internal/clearcut/a4$b;

    .line 242
    .line 243
    invoke-static {v4, v13, v14}, Lcom/google/android/gms/internal/clearcut/a4$b;->j(Lcom/google/android/gms/internal/clearcut/a4$b;J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/v0$a;->e()V

    .line 247
    .line 248
    .line 249
    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/v0$a;->b:Lcom/google/android/gms/internal/clearcut/v0;

    .line 250
    .line 251
    check-cast v4, Lcom/google/android/gms/internal/clearcut/a4$b;

    .line 252
    .line 253
    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/clearcut/a4$b;->l(Lcom/google/android/gms/internal/clearcut/a4$b;J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/v0$a;->f()Lcom/google/android/gms/internal/clearcut/v0;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/clearcut/v0;->e(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    check-cast v4, Ljava/lang/Byte;

    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-ne v4, v2, :cond_b

    .line 271
    .line 272
    const/4 v6, 0x1

    .line 273
    goto :goto_5

    .line 274
    :cond_b
    if-nez v4, :cond_c

    .line 275
    .line 276
    const/4 v6, 0x0

    .line 277
    goto :goto_5

    .line 278
    :cond_c
    sget-object v4, Lcom/google/android/gms/internal/clearcut/j2;->c:Lcom/google/android/gms/internal/clearcut/j2;

    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/clearcut/j2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/o2;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/clearcut/o2;->i(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/clearcut/v0;->e(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    :goto_5
    if-eqz v6, :cond_d

    .line 299
    .line 300
    check-cast v0, Lcom/google/android/gms/internal/clearcut/a4$b;

    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/clearcut/z2;

    .line 304
    .line 305
    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/z2;-><init>()V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_e
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const/16 v4, 0x48

    .line 312
    .line 313
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .line 315
    .line 316
    const-string v4, "negative values not supported: "

    .line 317
    .line 318
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v4, "/"

    .line 325
    .line 326
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    :goto_7
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    goto :goto_9

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    const-string v6, "parseLong() failed while parsing: "

    .line 346
    .line 347
    if-eqz v5, :cond_f

    .line 348
    .line 349
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    goto :goto_8

    .line 354
    :cond_f
    new-instance v4, Ljava/lang/String;

    .line 355
    .line 356
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :goto_8
    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .line 361
    .line 362
    :goto_9
    move-object v0, v10

    .line 363
    :goto_a
    if-eqz v0, :cond_18

    .line 364
    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/a4$b;->o()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-static {v12}, Lcom/google/android/gms/internal/clearcut/m4;->d(Landroid/content/Context;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v4

    .line 373
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/clearcut/m4;->a(JLjava/lang/String;)J

    .line 374
    .line 375
    .line 376
    move-result-wide v12

    .line 377
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/a4$b;->t()J

    .line 378
    .line 379
    .line 380
    move-result-wide v14

    .line 381
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/a4$b;->u()J

    .line 382
    .line 383
    .line 384
    move-result-wide v16

    .line 385
    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/clearcut/m4;->b(JJJ)Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    goto/16 :goto_e

    .line 390
    .line 391
    :cond_10
    if-eqz v5, :cond_11

    .line 392
    .line 393
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-nez v0, :cond_11

    .line 398
    .line 399
    goto :goto_b

    .line 400
    :cond_11
    if-ltz v4, :cond_12

    .line 401
    .line 402
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    goto :goto_b

    .line 407
    :cond_12
    move-object v5, v10

    .line 408
    :goto_b
    if-eqz v5, :cond_18

    .line 409
    .line 410
    if-nez v12, :cond_13

    .line 411
    .line 412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    goto :goto_d

    .line 417
    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/clearcut/m4;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 418
    .line 419
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    check-cast v4, Lcom/google/android/gms/internal/clearcut/e;

    .line 424
    .line 425
    if-nez v4, :cond_15

    .line 426
    .line 427
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a4;->j()Lcom/google/android/gms/internal/clearcut/a4;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    sget-object v6, Lcom/google/android/gms/internal/clearcut/m4;->c:Lcom/google/android/gms/internal/clearcut/m;

    .line 432
    .line 433
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    sget-object v8, Lcom/google/android/gms/internal/clearcut/e;->g:Ljava/lang/Object;

    .line 437
    .line 438
    new-instance v8, Lcom/google/android/gms/internal/clearcut/j;

    .line 439
    .line 440
    invoke-direct {v8, v6, v5, v4}, Lcom/google/android/gms/internal/clearcut/j;-><init>(Lcom/google/android/gms/internal/clearcut/m;Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/a4;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    move-object v4, v0

    .line 448
    check-cast v4, Lcom/google/android/gms/internal/clearcut/e;

    .line 449
    .line 450
    if-eqz v4, :cond_14

    .line 451
    .line 452
    goto :goto_c

    .line 453
    :cond_14
    move-object v4, v8

    .line 454
    :cond_15
    :goto_c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/e;->a()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Lcom/google/android/gms/internal/clearcut/a4;

    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/a4;->i()Lcom/google/android/gms/internal/clearcut/a1;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    if-eqz v4, :cond_18

    .line 473
    .line 474
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    check-cast v4, Lcom/google/android/gms/internal/clearcut/a4$b;

    .line 479
    .line 480
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/a4$b;->m()Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-eqz v5, :cond_17

    .line 485
    .line 486
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/a4$b;->i()I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    if-eqz v5, :cond_17

    .line 491
    .line 492
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/a4$b;->i()I

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    if-ne v5, v7, :cond_16

    .line 497
    .line 498
    :cond_17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/a4$b;->o()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-static {v12}, Lcom/google/android/gms/internal/clearcut/m4;->d(Landroid/content/Context;)J

    .line 503
    .line 504
    .line 505
    move-result-wide v13

    .line 506
    invoke-static {v13, v14, v5}, Lcom/google/android/gms/internal/clearcut/m4;->a(JLjava/lang/String;)J

    .line 507
    .line 508
    .line 509
    move-result-wide v16

    .line 510
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/a4$b;->t()J

    .line 511
    .line 512
    .line 513
    move-result-wide v18

    .line 514
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/a4$b;->u()J

    .line 515
    .line 516
    .line 517
    move-result-wide v20

    .line 518
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/clearcut/m4;->b(JJJ)Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-nez v4, :cond_16

    .line 523
    .line 524
    const/4 v2, 0x0

    .line 525
    :cond_18
    :goto_e
    if-eqz v2, :cond_19

    .line 526
    .line 527
    iget-object v0, v11, Lk3/a;->h:Lk3/c;

    .line 528
    .line 529
    check-cast v0, Lcom/google/android/gms/internal/clearcut/i2;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    new-instance v2, Lcom/google/android/gms/internal/clearcut/e4;

    .line 535
    .line 536
    iget-object v4, v0, Ln3/c;->h:Lo3/e0;

    .line 537
    .line 538
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/clearcut/e4;-><init>(Lk3/f;Lo3/e0;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v9, v2}, Ln3/c;->b(ILcom/google/android/gms/common/api/internal/a;)V

    .line 542
    .line 543
    .line 544
    return-void

    .line 545
    :cond_19
    sget-object v0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    .line 546
    .line 547
    if-eqz v0, :cond_1a

    .line 548
    .line 549
    new-instance v2, Lo3/l;

    .line 550
    .line 551
    invoke-direct {v2, v10}, Lo3/l;-><init>(Lo3/e0;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Ln3/h;)V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 559
    .line 560
    const-string v2, "Result must not be null"

    .line 561
    .line 562
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v0

    .line 566
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 567
    .line 568
    const-string v2, "do not reuse LogEventBuilder"

    .line 569
    .line 570
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw v0
.end method
