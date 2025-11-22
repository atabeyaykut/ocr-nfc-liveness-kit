.class public final Lc5/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field public final synthetic a:Lc5/v5;


# direct methods
.method public synthetic constructor <init>(Lc5/v5;)V
    .locals 0

    iput-object p1, p0, Lc5/t5;->a:Lc5/v5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lc5/t5;->a:Lc5/v5;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v1, Lc5/i4;

    .line 6
    .line 7
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 13
    .line 14
    const-string v2, "onActivityCreated"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :cond_0
    :goto_0
    check-cast v2, Lc5/i4;

    .line 28
    .line 29
    iget-object v0, v2, Lc5/i4;->q:Lc5/f6;

    .line 30
    .line 31
    :goto_1
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lc5/f6;->q(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/net/Uri;->isHierarchical()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-object v3, v2

    .line 52
    check-cast v3, Lc5/i4;

    .line 53
    .line 54
    iget-object v3, v3, Lc5/i4;->m:Lc5/v7;

    .line 55
    .line 56
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 57
    .line 58
    .line 59
    const-string v3, "android.intent.extra.REFERRER_NAME"

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v3, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x1

    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    const-string v3, "https://www.google.com"

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    const-string v3, "android-app://com.google.appcrawler"

    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const/4 v1, 0x0

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 95
    :goto_3
    if-eq v5, v1, :cond_5

    .line 96
    .line 97
    const-string v1, "auto"

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    const-string v1, "gs"

    .line 101
    .line 102
    :goto_4
    move-object v7, v1

    .line 103
    :try_start_2
    const-string v1, "referrer"

    .line 104
    .line 105
    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-nez p2, :cond_6

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_6
    const/4 v5, 0x0

    .line 113
    :goto_5
    move-object v1, v2

    .line 114
    check-cast v1, Lc5/i4;

    .line 115
    .line 116
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 117
    .line 118
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 119
    .line 120
    .line 121
    new-instance v9, Ll3/i;

    .line 122
    .line 123
    move-object v3, v9

    .line 124
    move-object v4, p0

    .line 125
    invoke-direct/range {v3 .. v8}, Ll3/i;-><init>(Lc5/t5;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v9}, Lc5/h4;->p(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    .line 133
    goto :goto_6

    .line 134
    :catch_0
    move-exception v1

    .line 135
    :try_start_3
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 136
    .line 137
    check-cast v2, Lc5/i4;

    .line 138
    .line 139
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 140
    .line 141
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 145
    .line 146
    const-string v3, "Throwable caught in onActivityCreated"

    .line 147
    .line 148
    invoke-virtual {v2, v1, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    .line 150
    .line 151
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 152
    .line 153
    check-cast v0, Lc5/i4;

    .line 154
    .line 155
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :goto_6
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 159
    .line 160
    check-cast v0, Lc5/i4;

    .line 161
    .line 162
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 163
    .line 164
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1, p2}, Lc5/f6;->q(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 168
    .line 169
    .line 170
    throw v1
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/t5;->a:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lc5/f6;->m:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, v0, Lc5/f6;->g:Landroid/app/Activity;

    .line 16
    .line 17
    if-ne p1, v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, v0, Lc5/f6;->g:Landroid/app/Activity;

    .line 21
    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 24
    .line 25
    check-cast v1, Lc5/i4;

    .line 26
    .line 27
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 28
    .line 29
    invoke-virtual {v1}, Lc5/e;->q()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Lc5/f6;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/t5;->a:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lc5/f6;->m:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    iput-boolean v2, v0, Lc5/f6;->l:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lc5/f6;->h:Z

    .line 20
    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 23
    .line 24
    check-cast v1, Lc5/i4;

    .line 25
    .line 26
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 36
    .line 37
    check-cast v1, Lc5/i4;

    .line 38
    .line 39
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 40
    .line 41
    invoke-virtual {v1}, Lc5/e;->q()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v5, 0x0

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    iput-object v5, v0, Lc5/f6;->c:Lc5/b6;

    .line 49
    .line 50
    iget-object p1, v0, Lc5/x4;->a:Lc5/z4;

    .line 51
    .line 52
    check-cast p1, Lc5/i4;

    .line 53
    .line 54
    iget-object p1, p1, Lc5/i4;->k:Lc5/h4;

    .line 55
    .line 56
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lc5/m5;

    .line 60
    .line 61
    invoke-direct {v1, v0, v3, v4, v2}, Lc5/m5;-><init>(Lc5/r3;JI)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0, p1}, Lc5/f6;->s(Landroid/app/Activity;)Lc5/b6;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v1, v0, Lc5/f6;->c:Lc5/b6;

    .line 73
    .line 74
    iput-object v1, v0, Lc5/f6;->d:Lc5/b6;

    .line 75
    .line 76
    iput-object v5, v0, Lc5/f6;->c:Lc5/b6;

    .line 77
    .line 78
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 79
    .line 80
    check-cast v1, Lc5/i4;

    .line 81
    .line 82
    iget-object v1, v1, Lc5/i4;->k:Lc5/h4;

    .line 83
    .line 84
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lc5/e6;

    .line 88
    .line 89
    invoke-direct {v2, v0, p1, v3, v4}, Lc5/e6;-><init>(Lc5/f6;Lc5/b6;J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    iget-object p1, p0, Lc5/t5;->a:Lc5/v5;

    .line 96
    .line 97
    iget-object p1, p1, Lc5/x4;->a:Lc5/z4;

    .line 98
    .line 99
    check-cast p1, Lc5/i4;

    .line 100
    .line 101
    iget-object p1, p1, Lc5/i4;->l:Lc5/e7;

    .line 102
    .line 103
    invoke-static {p1}, Lc5/i4;->d(Lc5/r3;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p1, Lc5/x4;->a:Lc5/z4;

    .line 107
    .line 108
    check-cast v0, Lc5/i4;

    .line 109
    .line 110
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    iget-object v2, p1, Lc5/x4;->a:Lc5/z4;

    .line 120
    .line 121
    check-cast v2, Lc5/i4;

    .line 122
    .line 123
    iget-object v2, v2, Lc5/i4;->k:Lc5/h4;

    .line 124
    .line 125
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 126
    .line 127
    .line 128
    new-instance v3, Lc5/m5;

    .line 129
    .line 130
    const/4 v4, 0x2

    .line 131
    invoke-direct {v3, p1, v0, v1, v4}, Lc5/m5;-><init>(Lc5/r3;JI)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p1
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/t5;->a:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->l:Lc5/e7;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 13
    .line 14
    check-cast v1, Lc5/i4;

    .line 15
    .line 16
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-object v3, v0, Lc5/x4;->a:Lc5/z4;

    .line 26
    .line 27
    check-cast v3, Lc5/i4;

    .line 28
    .line 29
    iget-object v3, v3, Lc5/i4;->k:Lc5/h4;

    .line 30
    .line 31
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lc5/y6;

    .line 35
    .line 36
    invoke-direct {v4, v0, v1, v2}, Lc5/y6;-><init>(Lc5/e7;J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lc5/t5;->a:Lc5/v5;

    .line 43
    .line 44
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 45
    .line 46
    check-cast v0, Lc5/i4;

    .line 47
    .line 48
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 49
    .line 50
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lc5/f6;->m:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    const/4 v2, 0x1

    .line 57
    :try_start_0
    iput-boolean v2, v0, Lc5/f6;->l:Z

    .line 58
    .line 59
    iget-object v3, v0, Lc5/f6;->g:Landroid/app/Activity;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    if-eq p1, v3, :cond_0

    .line 63
    .line 64
    iget-object v3, v0, Lc5/f6;->m:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    iput-object p1, v0, Lc5/f6;->g:Landroid/app/Activity;

    .line 68
    .line 69
    iput-boolean v4, v0, Lc5/f6;->h:Z

    .line 70
    .line 71
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-object v3, v0, Lc5/x4;->a:Lc5/z4;

    .line 73
    .line 74
    check-cast v3, Lc5/i4;

    .line 75
    .line 76
    iget-object v3, v3, Lc5/i4;->g:Lc5/e;

    .line 77
    .line 78
    invoke-virtual {v3}, Lc5/e;->q()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    iput-object v3, v0, Lc5/f6;->j:Lc5/b6;

    .line 86
    .line 87
    iget-object v3, v0, Lc5/x4;->a:Lc5/z4;

    .line 88
    .line 89
    check-cast v3, Lc5/i4;

    .line 90
    .line 91
    iget-object v3, v3, Lc5/i4;->k:Lc5/h4;

    .line 92
    .line 93
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 94
    .line 95
    .line 96
    new-instance v5, Ll3/l;

    .line 97
    .line 98
    const/4 v6, 0x2

    .line 99
    invoke-direct {v5, v6, v0}, Ll3/l;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v5}, Lc5/h4;->p(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    throw p1

    .line 109
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 111
    .line 112
    check-cast v1, Lc5/i4;

    .line 113
    .line 114
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 115
    .line 116
    invoke-virtual {v1}, Lc5/e;->q()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_1

    .line 121
    .line 122
    iget-object p1, v0, Lc5/f6;->j:Lc5/b6;

    .line 123
    .line 124
    iput-object p1, v0, Lc5/f6;->c:Lc5/b6;

    .line 125
    .line 126
    iget-object p1, v0, Lc5/x4;->a:Lc5/z4;

    .line 127
    .line 128
    check-cast p1, Lc5/i4;

    .line 129
    .line 130
    iget-object p1, p1, Lc5/i4;->k:Lc5/h4;

    .line 131
    .line 132
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Lc5/d5;

    .line 136
    .line 137
    invoke-direct {v1, v0, v2}, Lc5/d5;-><init>(Lc5/r3;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v0, p1}, Lc5/f6;->s(Landroid/app/Activity;)Lc5/b6;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, p1, v1, v4}, Lc5/f6;->g(Landroid/app/Activity;Lc5/b6;Z)V

    .line 149
    .line 150
    .line 151
    iget-object p1, v0, Lc5/x4;->a:Lc5/z4;

    .line 152
    .line 153
    check-cast p1, Lc5/i4;

    .line 154
    .line 155
    invoke-virtual {p1}, Lc5/i4;->g()Lc5/u1;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v0, p1, Lc5/x4;->a:Lc5/z4;

    .line 160
    .line 161
    check-cast v0, Lc5/i4;

    .line 162
    .line 163
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v0

    .line 172
    iget-object v2, p1, Lc5/x4;->a:Lc5/z4;

    .line 173
    .line 174
    check-cast v2, Lc5/i4;

    .line 175
    .line 176
    iget-object v2, v2, Lc5/i4;->k:Lc5/h4;

    .line 177
    .line 178
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 179
    .line 180
    .line 181
    new-instance v3, Lc5/t0;

    .line 182
    .line 183
    invoke-direct {v3, p1, v0, v1}, Lc5/t0;-><init>(Lc5/u1;J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    return-void

    .line 190
    :catchall_1
    move-exception p1

    .line 191
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 192
    throw p1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/t5;->a:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->q:Lc5/f6;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 13
    .line 14
    check-cast v1, Lc5/i4;

    .line 15
    .line 16
    iget-object v1, v1, Lc5/i4;->g:Lc5/e;

    .line 17
    .line 18
    invoke-virtual {v1}, Lc5/e;->q()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, v0, Lc5/f6;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lc5/b6;

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "id"

    .line 45
    .line 46
    iget-wide v2, p1, Lc5/b6;->c:J

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 49
    .line 50
    .line 51
    const-string v1, "name"

    .line 52
    .line 53
    iget-object v2, p1, Lc5/b6;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "referrer_name"

    .line 59
    .line 60
    iget-object p1, p1, Lc5/b6;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "com.google.app_measurement.screen_service"

    .line 66
    .line 67
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
