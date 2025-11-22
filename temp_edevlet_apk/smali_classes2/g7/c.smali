.class public final Lg7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/content/Context;

.field public final c:Lg7/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg7/e0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lg7/c;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lg7/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lg7/c;->c:Lg7/e0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lg7/c;->c:Lg7/e0;

    .line 2
    .line 3
    const-string v1, "gcm.n.noui"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lg7/e0;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget-object v1, p0, Lg7/c;->b:Landroid/content/Context;

    .line 14
    .line 15
    const-string v3, "keyguard"

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/app/KeyguardManager;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v5, "activity"

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/app/ActivityManager;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 64
    .line 65
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 66
    .line 67
    if-ne v7, v3, :cond_2

    .line 68
    .line 69
    iget v3, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 70
    .line 71
    const/16 v5, 0x64

    .line 72
    .line 73
    if-ne v3, v5, :cond_3

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 78
    :goto_1
    if-eqz v3, :cond_4

    .line 79
    .line 80
    return v4

    .line 81
    :cond_4
    const-string v3, "gcm.n.image"

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lg7/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/4 v6, 0x0

    .line 92
    const-string v7, "FirebaseMessaging"

    .line 93
    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    :try_start_0
    new-instance v5, Lg7/a0;

    .line 98
    .line 99
    new-instance v8, Ljava/net/URL;

    .line 100
    .line 101
    invoke-direct {v8, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v5, v8}, Lg7/a0;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :catch_0
    nop

    .line 109
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    const-string v8, "Not downloading image, bad URL: "

    .line 118
    .line 119
    if-eqz v5, :cond_6

    .line 120
    .line 121
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    new-instance v3, Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :goto_3
    move-object v5, v6

    .line 135
    :goto_4
    if-eqz v5, :cond_7

    .line 136
    .line 137
    new-instance v3, Lg7/z;

    .line 138
    .line 139
    invoke-direct {v3, v5}, Lg7/z;-><init>(Lg7/a0;)V

    .line 140
    .line 141
    .line 142
    iget-object v8, p0, Lg7/c;->a:Ljava/util/concurrent/Executor;

    .line 143
    .line 144
    invoke-static {v8, v3}, Lh5/n;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lh5/z;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iput-object v3, v5, Lg7/a0;->b:Lh5/z;

    .line 149
    .line 150
    :cond_7
    invoke-static {v1, v0}, Lg7/a;->a(Landroid/content/Context;Lg7/e0;)Lg7/a$a;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v3, v0, Lg7/a$a;->a:Landroidx/core/app/NotificationCompat$Builder;

    .line 155
    .line 156
    if-nez v5, :cond_8

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_8
    :try_start_1
    iget-object v8, v5, Lg7/a0;->b:Lh5/z;

    .line 160
    .line 161
    invoke-static {v8}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 165
    .line 166
    const-wide/16 v10, 0x5

    .line 167
    .line 168
    invoke-static {v8, v10, v11, v9}, Lh5/n;->b(Lh5/k;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Landroid/graphics/Bitmap;

    .line 173
    .line 174
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 175
    .line 176
    .line 177
    new-instance v9, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 178
    .line 179
    invoke-direct {v9}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v8, v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catch_1
    const-string v6, "Failed to download image in time, showing notification without it"

    .line 195
    .line 196
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Lg7/a0;->close()V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catch_2
    const-string v6, "Interrupted while downloading image, showing notification without it"

    .line 204
    .line 205
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Lg7/a0;->close()V

    .line 209
    .line 210
    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :catch_3
    move-exception v5

    .line 220
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    const-string v6, "Failed to download image: "

    .line 229
    .line 230
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :goto_5
    const/4 v5, 0x3

    .line 238
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_9

    .line 243
    .line 244
    const-string v5, "Showing notification"

    .line 245
    .line 246
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :cond_9
    const-string v5, "notification"

    .line 250
    .line 251
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/app/NotificationManager;

    .line 256
    .line 257
    iget-object v0, v0, Lg7/a$a;->b:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v1, v0, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 264
    .line 265
    .line 266
    return v2
.end method
