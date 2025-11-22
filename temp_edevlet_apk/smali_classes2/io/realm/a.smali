.class public abstract Lio/realm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/a$c;,
        Lio/realm/a$b;
    }
.end annotation


# static fields
.field public static volatile g:Landroid/content/Context;

.field public static final h:Lio/realm/a$c;


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:Lio/realm/o0;

.field public d:Lio/realm/m0;

.field public e:Lio/realm/internal/OsSharedRealm;

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf9/b;

    .line 2
    .line 3
    sget v1, Lf9/b;->b:I

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Lf9/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lf9/b;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1, v1}, Lf9/b;-><init>(II)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lio/realm/a$c;

    .line 15
    .line 16
    invoke-direct {v0}, Lio/realm/a$c;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/realm/a;->h:Lio/realm/a$c;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/realm/a$a;

    invoke-direct {v0, p0}, Lio/realm/a$a;-><init>(Lio/realm/a;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/a;->b:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getConfiguration()Lio/realm/o0;

    move-result-object v0

    iput-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/a;->d:Lio/realm/m0;

    iput-object p1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result p1

    iput-boolean p1, p0, Lio/realm/a;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/realm/a;->f:Z

    return-void
.end method

.method public constructor <init>(Lio/realm/m0;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lio/realm/m0;->c:Lio/realm/o0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/realm/a$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lio/realm/a$a;-><init>(Lio/realm/a;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iput-wide v2, p0, Lio/realm/a;->b:J

    .line 20
    .line 21
    iput-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, p0, Lio/realm/a;->d:Lio/realm/m0;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v3, v0, Lio/realm/o0;->k:Lio/realm/g0$a;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    new-instance v4, Lio/realm/b;

    .line 36
    .line 37
    invoke-direct {v4, p0, v3}, Lio/realm/b;-><init>(Lio/realm/a;Lio/realm/g0$a;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v4, v2

    .line 42
    :goto_0
    new-instance v3, Lio/realm/internal/OsRealmConfig$b;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lio/realm/internal/OsRealmConfig$b;-><init>(Lio/realm/o0;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/io/File;

    .line 48
    .line 49
    sget-object v5, Lio/realm/a;->g:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, ".realm.temp"

    .line 56
    .line 57
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, v3, Lio/realm/internal/OsRealmConfig$b;->f:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, v3, Lio/realm/internal/OsRealmConfig$b;->e:Z

    .line 68
    .line 69
    iput-object v2, v3, Lio/realm/internal/OsRealmConfig$b;->c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 70
    .line 71
    iput-object p2, v3, Lio/realm/internal/OsRealmConfig$b;->b:Lio/realm/internal/OsSchemaInfo;

    .line 72
    .line 73
    iput-object v4, v3, Lio/realm/internal/OsRealmConfig$b;->d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    .line 74
    .line 75
    invoke-static {v3, p3}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$b;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/internal/OsSharedRealm;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 80
    .line 81
    invoke-virtual {p2}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    iput-boolean p2, p0, Lio/realm/a;->a:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lio/realm/a;->f:Z

    .line 88
    .line 89
    iget-object p2, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Lio/realm/internal/OsSharedRealm;->registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lio/realm/a;->d:Lio/realm/m0;

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    .line 4
    .line 5
    check-cast v0, Le9/a;

    .line 6
    .line 7
    iget-object v0, v0, Le9/a;->a:Landroid/os/Looper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 23
    .line 24
    iget-boolean v0, v0, Lio/realm/o0;->p:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v0, Lio/realm/exceptions/RealmException;

    .line 30
    .line 31
    const-string v1, "Queries on the UI thread have been disabled. They can be enabled by setting \'RealmConfiguration.Builder.allowQueriesOnUiThread(true)\'."

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_2
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/realm/a;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/a;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final beginTransaction()V
    .locals 1

    invoke-virtual {p0}, Lio/realm/a;->b()V

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lio/realm/a;->b()V

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    return-void
.end method

.method public final close()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/realm/a;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lio/realm/a;->b:J

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/a;->d:Lio/realm/m0;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_b

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 35
    .line 36
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p0}, Lio/realm/a;->j()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-object v4, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 49
    .line 50
    invoke-virtual {v4}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object v4, Lio/realm/internal/OsSharedRealm$a;->c:Lio/realm/internal/OsSharedRealm$a;

    .line 56
    .line 57
    :goto_1
    invoke-virtual {v0, v3, v4}, Lio/realm/m0;->e(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/m0$c;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lio/realm/m0$c;->c()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x0

    .line 66
    if-gtz v4, :cond_3

    .line 67
    .line 68
    const-string v3, "%s has been closed already. refCount is %s"

    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    new-array v6, v6, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v2, v6, v5

    .line 74
    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v4, 0x1

    .line 80
    aput-object v2, v6, v4

    .line 81
    .line 82
    const/4 v2, 0x5

    .line 83
    invoke-static {v2, v1, v3, v6}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 89
    .line 90
    if-nez v4, :cond_9

    .line 91
    .line 92
    invoke-virtual {v3}, Lio/realm/m0$c;->a()V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lio/realm/a;->d:Lio/realm/m0;

    .line 96
    .line 97
    iget-object v2, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    iget-boolean v3, p0, Lio/realm/a;->f:Z

    .line 102
    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 109
    .line 110
    :cond_4
    iget-object v2, v0, Lio/realm/m0;->a:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lio/realm/m0$c;

    .line 131
    .line 132
    instance-of v4, v3, Lio/realm/m0$d;

    .line 133
    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    iget-object v3, v3, Lio/realm/m0$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    add-int/2addr v5, v3

    .line 143
    goto :goto_2

    .line 144
    :cond_6
    if-nez v5, :cond_a

    .line 145
    .line 146
    iput-object v1, v0, Lio/realm/m0;->c:Lio/realm/o0;

    .line 147
    .line 148
    iget-object v1, v0, Lio/realm/m0;->a:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_8

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lio/realm/m0$c;

    .line 169
    .line 170
    instance-of v3, v2, Lio/realm/m0$a;

    .line 171
    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    invoke-virtual {v2}, Lio/realm/m0$c;->b()Lio/realm/a;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    if-eqz v2, :cond_7

    .line 179
    .line 180
    :goto_3
    invoke-virtual {v2}, Lio/realm/a;->isClosed()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_7

    .line 185
    .line 186
    invoke-virtual {v2}, Lio/realm/a;->close()V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    iget-object v1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    sget-object v1, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_9
    iget-object v1, v3, Lio/realm/m0$c;->a:Ljava/lang/ThreadLocal;

    .line 202
    .line 203
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .line 209
    .line 210
    :cond_a
    :goto_4
    monitor-exit v0

    .line 211
    goto :goto_5

    .line 212
    :catchall_0
    move-exception v1

    .line 213
    monitor-exit v0

    .line 214
    throw v1

    .line 215
    :cond_b
    iput-object v1, p0, Lio/realm/a;->d:Lio/realm/m0;

    .line 216
    .line 217
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 218
    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    iget-boolean v2, p0, Lio/realm/a;->f:Z

    .line 222
    .line 223
    if-eqz v2, :cond_c

    .line 224
    .line 225
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 226
    .line 227
    .line 228
    iput-object v1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 229
    .line 230
    :cond_c
    :goto_5
    return-void
.end method

.method public abstract d()Lio/realm/a;
.end method

.method public final e(Ljava/lang/Class;JLjava/util/List;)Lio/realm/s0;
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lio/realm/z0;->c(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p2, p3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object p2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 15
    .line 16
    iget-object v0, p2, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p0

    .line 28
    move-object v6, p4

    .line 29
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/o;->n(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/s0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final f(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/s0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p2}, Lio/realm/z0;->d(Ljava/lang/String;)Lio/realm/internal/Table;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lio/realm/z0;->c(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_1
    sget-object v1, Lio/realm/internal/g;->a:Lio/realm/internal/g;

    .line 26
    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance p1, Lio/realm/p;

    .line 32
    .line 33
    cmp-long v0, p3, v2

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget v0, Lio/realm/internal/CheckedRow;->f:I

    .line 41
    .line 42
    iget-wide v0, p2, Lio/realm/internal/Table;->a:J

    .line 43
    .line 44
    invoke-virtual {p2, v0, v1, p3, p4}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide p3

    .line 48
    new-instance v1, Lio/realm/internal/CheckedRow;

    .line 49
    .line 50
    iget-object v0, p2, Lio/realm/internal/Table;->b:Lio/realm/internal/h;

    .line 51
    .line 52
    invoke-direct {v1, v0, p2, p3, p4}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-direct {p1, p0, v1}, Lio/realm/p;-><init>(Lio/realm/a;Lio/realm/internal/p;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 60
    .line 61
    iget-object v4, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 62
    .line 63
    cmp-long v0, p3, v2

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p2, p3, p4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_4
    move-object v7, v1

    .line 72
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2, p1}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    move-object v5, p1

    .line 86
    move-object v6, p0

    .line 87
    invoke-virtual/range {v4 .. v10}, Lio/realm/internal/o;->n(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/s0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_2
    return-object p1
.end method

.method public final finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/realm/a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 19
    .line 20
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v1, v3

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    const/4 v3, 0x0

    .line 27
    const-string v4, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    .line 28
    .line 29
    invoke-static {v2, v3, v4, v1}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lio/realm/a;->d:Lio/realm/m0;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v2, v1, Lio/realm/m0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    sget-object v0, Lio/realm/m0;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final g(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/s0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    new-instance p1, Lio/realm/p;

    .line 9
    .line 10
    new-instance p2, Lio/realm/internal/CheckedRow;

    .line 11
    .line 12
    invoke-direct {p2, p3}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0, p2}, Lio/realm/p;-><init>(Lio/realm/a;Lio/realm/internal/p;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object p2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 20
    .line 21
    iget-object v0, p2, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v1, p1

    .line 37
    move-object v2, p0

    .line 38
    move-object v3, p3

    .line 39
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/o;->n(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/s0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_1
    return-object p1
.end method

.method public abstract i()Lio/realm/z0;
.end method

.method public final isClosed()Z
    .locals 5

    iget-boolean v0, p0, Lio/realm/a;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/a;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/realm/a;->a:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Z
    .locals 1

    invoke-virtual {p0}, Lio/realm/a;->b()V

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lio/realm/a;->b()V

    invoke-virtual {p0}, Lio/realm/a;->a()V

    invoke-virtual {p0}, Lio/realm/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->refresh()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refresh a Realm instance inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
