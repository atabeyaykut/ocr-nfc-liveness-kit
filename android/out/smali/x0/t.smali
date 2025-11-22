.class public final Lx0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lx0/t;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lx0/t;->b:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lx0/t;->a:Ljava/lang/Object;

    iput-object p2, p0, Lx0/t;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lx0/t;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm6/f;

    .line 4
    .line 5
    iget-object v1, p0, Lx0/t;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    iget-object v0, v0, Lm6/f;->a:Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Error creating marker: "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lx0/t;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "FirebaseCrashlytics"

    .line 43
    .line 44
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lx0/t;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/r4;

    .line 4
    .line 5
    iget-object v1, p0, Lx0/t;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/r4;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/measurement/j4;->a:Landroid/net/Uri;

    .line 16
    .line 17
    const-class v0, Lcom/google/android/gms/internal/measurement/j4;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->e:Ljava/util/HashMap;

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v3, Lcom/google/android/gms/internal/measurement/j4;->e:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v3, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lcom/google/android/gms/internal/measurement/j4;->j:Ljava/lang/Object;

    .line 44
    .line 45
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->a:Landroid/net/Uri;

    .line 46
    .line 47
    new-instance v5, Lcom/google/android/gms/internal/clearcut/q4;

    .line 48
    .line 49
    invoke-direct {v5, v8}, Lcom/google/android/gms/internal/clearcut/q4;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->e:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->f:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 72
    .line 73
    .line 74
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->g:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 77
    .line 78
    .line 79
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->h:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 82
    .line 83
    .line 84
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->i:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 87
    .line 88
    .line 89
    new-instance v3, Ljava/lang/Object;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v3, Lcom/google/android/gms/internal/measurement/j4;->j:Ljava/lang/Object;

    .line 95
    .line 96
    :cond_1
    :goto_0
    sget-object v9, Lcom/google/android/gms/internal/measurement/j4;->j:Ljava/lang/Object;

    .line 97
    .line 98
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->e:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/4 v10, 0x0

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    sget-object v2, Lcom/google/android/gms/internal/measurement/j4;->e:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/String;

    .line 114
    .line 115
    if-nez v1, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move-object v10, v1

    .line 119
    :goto_1
    monitor-exit v0

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->k:[Ljava/lang/String;

    .line 122
    .line 123
    array-length v3, v3

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    sget-object v3, Lcom/google/android/gms/internal/measurement/j4;->a:Landroid/net/Uri;

    .line 126
    .line 127
    new-array v6, v8, [Ljava/lang/String;

    .line 128
    .line 129
    aput-object v1, v6, v4

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_5

    .line 146
    .line 147
    invoke-static {v9, v1, v10}, Lcom/google/android/gms/internal/measurement/j4;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    move-object v2, v10

    .line 164
    :cond_6
    invoke-static {v9, v1, v2}, Lcom/google/android/gms/internal/measurement/j4;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    if-nez v2, :cond_7

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    move-object v10, v2

    .line 171
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 172
    .line 173
    .line 174
    :goto_3
    return-object v10

    .line 175
    :catchall_0
    move-exception v1

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :catchall_1
    move-exception v1

    .line 181
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    throw v1
.end method
