.class public final Ll3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:I

.field public static i:Landroid/app/PendingIntent;

.field public static final j:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lh5/l<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Ll3/v;

.field public final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final e:Landroid/os/Messenger;

.field public f:Landroid/os/Messenger;

.field public g:Ll3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll3/c;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Ll3/c;->a:Landroidx/collection/SimpleArrayMap;

    iput-object p1, p0, Ll3/c;->b:Landroid/content/Context;

    new-instance v0, Ll3/v;

    invoke-direct {v0, p1}, Ll3/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll3/c;->c:Ll3/v;

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Ll3/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ll3/e;-><init>(Ll3/c;Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Ll3/c;->e:Landroid/os/Messenger;

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object p1, p0, Ll3/c;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 3

    const-class v0, Ll3/c;

    monitor-enter v0

    :try_start_0
    sget v1, Ll3/c;->h:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ll3/c;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-class v0, Ll3/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ll3/c;->i:Landroid/app/PendingIntent;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "com.google.example.invalidpackage"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    sget v2, Li4/a;->a:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sput-object p0, Ll3/c;->i:Landroid/app/PendingIntent;

    .line 26
    .line 27
    :cond_0
    const-string p0, "app"

    .line 28
    .line 29
    sget-object v1, Ll3/c;->i:Landroid/app/PendingIntent;

    .line 30
    .line 31
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0

    .line 38
    throw p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lh5/z;
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-static {}, Ll3/c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lh5/l;

    .line 6
    .line 7
    invoke-direct {v1}, Lh5/l;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Ll3/c;->a:Landroidx/collection/SimpleArrayMap;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v3, p0, Ll3/c;->a:Landroidx/collection/SimpleArrayMap;

    .line 14
    .line 15
    invoke-virtual {v3, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance v2, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "com.google.android.gms"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Ll3/c;->c:Ll3/v;

    .line 30
    .line 31
    invoke-virtual {v3}, Ll3/v;->a()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    const-string v3, "com.google.iid.TOKEN_REQUEST"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Ll3/c;->b:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {p1, v2}, Ll3/c;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x5

    .line 65
    .line 66
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const-string p1, "|ID|"

    .line 70
    .line 71
    const-string v5, "|"

    .line 72
    .line 73
    const-string v6, "kid"

    .line 74
    .line 75
    invoke-static {v3, p1, v0, v5}, Landroid/support/v4/media/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string p1, "Rpc"

    .line 83
    .line 84
    const/4 v3, 0x3

    .line 85
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x8

    .line 106
    .line 107
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .line 109
    .line 110
    const-string v5, "Sending "

    .line 111
    .line 112
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, "Rpc"

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_1
    const-string p1, "google.messenger"

    .line 128
    .line 129
    iget-object v5, p0, Ll3/c;->e:Landroid/os/Messenger;

    .line 130
    .line 131
    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Ll3/c;->f:Landroid/os/Messenger;

    .line 135
    .line 136
    if-nez p1, :cond_2

    .line 137
    .line 138
    iget-object p1, p0, Ll3/c;->g:Ll3/h;

    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    :try_start_1
    iget-object v5, p0, Ll3/c;->f:Landroid/os/Messenger;

    .line 149
    .line 150
    if-eqz v5, :cond_3

    .line 151
    .line 152
    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    iget-object v5, p0, Ll3/c;->g:Ll3/h;

    .line 157
    .line 158
    iget-object v5, v5, Ll3/h;->a:Landroid/os/Messenger;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :catch_0
    nop

    .line 168
    const-string p1, "Rpc"

    .line 169
    .line 170
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_4

    .line 175
    .line 176
    const-string p1, "Rpc"

    .line 177
    .line 178
    const-string v3, "Messenger failed, fallback to startService"

    .line 179
    .line 180
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :cond_4
    iget-object p1, p0, Ll3/c;->c:Ll3/v;

    .line 184
    .line 185
    invoke-virtual {p1}, Ll3/v;->a()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-ne p1, v4, :cond_5

    .line 190
    .line 191
    iget-object p1, p0, Ll3/c;->b:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    iget-object p1, p0, Ll3/c;->b:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 200
    .line 201
    .line 202
    :goto_1
    iget-object p1, p0, Ll3/c;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 203
    .line 204
    new-instance v2, Ll3/x;

    .line 205
    .line 206
    const/4 v3, 0x0

    .line 207
    invoke-direct {v2, v3, v1}, Ll3/x;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    .line 212
    const-wide/16 v4, 0x1e

    .line 213
    .line 214
    invoke-virtual {p1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object v2, v1, Lh5/l;->a:Lh5/z;

    .line 219
    .line 220
    sget-object v3, Ll3/y;->a:Ll3/y;

    .line 221
    .line 222
    new-instance v4, Lg0/g;

    .line 223
    .line 224
    invoke-direct {v4, p0, v0, p1}, Lg0/g;-><init>(Ll3/c;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3, v4}, Lh5/z;->o(Ljava/util/concurrent/Executor;Lh5/e;)Lh5/z;

    .line 228
    .line 229
    .line 230
    iget-object p1, v1, Lh5/l;->a:Lh5/z;

    .line 231
    .line 232
    return-object p1

    .line 233
    :catchall_0
    move-exception p1

    .line 234
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    throw p1
.end method

.method public final d(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ll3/c;->a:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/c;->a:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh5/l;

    if-nez v1, :cond_1

    const-string p1, "Rpc"

    const-string v1, "Missing callback for "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Lh5/l;->b(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
