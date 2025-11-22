.class public final Lio/realm/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/m0$b;,
        Lio/realm/m0$d;,
        Lio/realm/m0$a;,
        Lio/realm/m0$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/ArrayList;

.field public static final f:Ljava/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/lang/String;

.field public c:Lio/realm/o0;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/realm/m0;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/realm/m0;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/m0;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/m0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/realm/m0;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Invalid input stream to the asset file: "

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :try_start_0
    sget-object v2, Lio/realm/a;->g:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 26
    .line 27
    .line 28
    const/16 p0, 0x1000

    .line 29
    .line 30
    :try_start_2
    new-array p0, p0, [B

    .line 31
    .line 32
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, -0x1

    .line 37
    if-le v3, v4, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v0, p0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v1

    .line 49
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_1
    move-exception p0

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    move-object v1, p0

    .line 57
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 58
    .line 59
    :goto_3
    return-void

    .line 60
    :cond_3
    new-instance p0, Lio/realm/exceptions/RealmFileException;

    .line 61
    .line 62
    sget-object p1, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    .line 63
    .line 64
    invoke-direct {p0, p1, v1}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    move-object v1, v0

    .line 70
    goto :goto_5

    .line 71
    :catch_2
    move-exception p0

    .line 72
    move-object v1, v0

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    :try_start_5
    new-instance p0, Lio/realm/exceptions/RealmFileException;

    .line 75
    .line 76
    sget-object v3, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p0, v3, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 94
    :catch_3
    move-exception p0

    .line 95
    goto :goto_4

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    move-object p1, v1

    .line 98
    goto :goto_6

    .line 99
    :catch_4
    move-exception p0

    .line 100
    move-object v2, v1

    .line 101
    :goto_4
    :try_start_6
    new-instance v0, Lio/realm/exceptions/RealmFileException;

    .line 102
    .line 103
    sget-object v3, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    .line 104
    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v5, "Could not resolve the path to the asset file: "

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v0, v3, p1, p0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 126
    :catchall_2
    move-exception p0

    .line 127
    :goto_5
    move-object p1, v1

    .line 128
    move-object v1, v2

    .line 129
    :goto_6
    if-eqz v1, :cond_5

    .line 130
    .line 131
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 132
    .line 133
    .line 134
    goto :goto_7

    .line 135
    :catch_5
    nop

    .line 136
    :cond_5
    :goto_7
    if-eqz p1, :cond_6

    .line 137
    .line 138
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 139
    .line 140
    .line 141
    :catch_6
    :cond_6
    throw p0
.end method

.method public static d(Ljava/lang/String;Z)Lio/realm/m0;
    .locals 5

    sget-object v0, Lio/realm/m0;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/m0;

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lio/realm/m0;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    new-instance v2, Lio/realm/m0;

    invoke-direct {v2, p0}, Lio/realm/m0;-><init>(Ljava/lang/String;)V

    sget-object p0, Lio/realm/m0;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized b(Lio/realm/o0;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/a;",
            ">(",
            "Lio/realm/o0;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsSharedRealm$a;",
            ")TE;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lio/realm/m0;->e(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/m0$c;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lio/realm/m0;->f()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-eqz v1, :cond_4

    .line 17
    .line 18
    iget-object v3, p1, Lio/realm/o0;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v3}, Lio/realm/internal/Util;->c(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    xor-int/2addr v3, v2

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    new-instance v3, Ljava/io/File;

    .line 29
    .line 30
    iget-object v5, p1, Lio/realm/o0;->a:Ljava/io/File;

    .line 31
    .line 32
    iget-object v6, p1, Lio/realm/o0;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v3, v4

    .line 39
    :goto_1
    sget-object v5, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lio/realm/internal/Util;->c(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    xor-int/2addr v4, v2

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    :cond_2
    new-instance v5, Lio/realm/l0;

    .line 54
    .line 55
    invoke-direct {v5, v3, p1, v4}, Lio/realm/l0;-><init>(Ljava/io/File;Lio/realm/o0;Z)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v5}, Lio/realm/internal/OsObjectStore;->a(Lio/realm/o0;Lio/realm/l0;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    new-instance v3, Ljava/io/File;

    .line 62
    .line 63
    iget-object v4, p1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lio/realm/m0;->c:Lio/realm/o0;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {p0, p1}, Lio/realm/m0;->g(Lio/realm/o0;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-virtual {v0}, Lio/realm/m0$c;->d()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_7

    .line 82
    .line 83
    const-class v3, Lio/realm/g0;

    .line 84
    .line 85
    if-ne p2, v3, :cond_5

    .line 86
    .line 87
    new-instance p2, Lio/realm/g0;

    .line 88
    .line 89
    invoke-direct {p2, p0, p3}, Lio/realm/g0;-><init>(Lio/realm/m0;Lio/realm/internal/OsSharedRealm$a;)V

    .line 90
    .line 91
    .line 92
    iget-object p3, p2, Lio/realm/g0;->j:Lio/realm/u;

    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v3, Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 98
    .line 99
    iget-object v4, p3, Lio/realm/z0;->f:Lio/realm/a;

    .line 100
    .line 101
    iget-object v4, v4, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 102
    .line 103
    invoke-virtual {v4}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    invoke-direct {v3, v4, v5}, Lio/realm/internal/objectstore/OsKeyPathMapping;-><init>(J)V

    .line 108
    .line 109
    .line 110
    iput-object v3, p3, Lio/realm/z0;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    const-class v3, Lio/realm/n;

    .line 114
    .line 115
    if-ne p2, v3, :cond_6

    .line 116
    .line 117
    new-instance p2, Lio/realm/n;

    .line 118
    .line 119
    invoke-direct {p2, p0, p3}, Lio/realm/n;-><init>(Lio/realm/m0;Lio/realm/internal/OsSharedRealm$a;)V

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual {v0, p2}, Lio/realm/m0$c;->e(Lio/realm/a;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_7
    :goto_4
    iget-object p2, v0, Lio/realm/m0$c;->a:Ljava/lang/ThreadLocal;

    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    check-cast p3, Ljava/lang/Integer;

    .line 141
    .line 142
    if-eqz p3, :cond_8

    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    add-int/2addr v2, p3

    .line 149
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lio/realm/m0$c;->b()Lio/realm/a;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    if-eqz v1, :cond_a

    .line 161
    .line 162
    sget-object p3, Lio/realm/internal/j;->b:Lio/realm/internal/j;

    .line 163
    .line 164
    if-eqz p3, :cond_9

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_9
    sget-object p3, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    .line 168
    .line 169
    :goto_5
    iget-object v0, p2, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 170
    .line 171
    new-instance v1, Lio/realm/g0;

    .line 172
    .line 173
    invoke-direct {v1, v0}, Lio/realm/g0;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget-boolean p1, p1, Lio/realm/o0;->l:Z

    .line 180
    .line 181
    if-nez p1, :cond_a

    .line 182
    .line 183
    invoke-virtual {p2}, Lio/realm/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    .line 186
    :cond_a
    monitor-exit p0

    .line 187
    return-object p2

    .line 188
    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    .line 190
    throw p1
.end method

.method public final declared-synchronized c(Lio/realm/n$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/realm/m0;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/realm/n$a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/m0$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/a;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsSharedRealm$a;",
            ")",
            "Lio/realm/m0$c;"
        }
    .end annotation

    .line 1
    const-class v0, Lio/realm/g0;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lio/realm/m0$b;->a:Lio/realm/m0$b;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-class v0, Lio/realm/n;

    .line 9
    .line 10
    if-ne p1, v0, :cond_3

    .line 11
    .line 12
    sget-object p1, Lio/realm/m0$b;->b:Lio/realm/m0$b;

    .line 13
    .line 14
    :goto_0
    new-instance v0, Li9/a;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Li9/a;-><init>(Lio/realm/m0$b;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lio/realm/m0;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lio/realm/m0$c;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    sget-object v1, Lio/realm/internal/OsSharedRealm$a;->c:Lio/realm/internal/OsSharedRealm$a;

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Lio/realm/internal/OsSharedRealm$a;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    new-instance p2, Lio/realm/m0$d;

    .line 38
    .line 39
    invoke-direct {p2}, Lio/realm/m0$d;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p2, Lio/realm/m0$a;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {p2, v1}, Lio/realm/m0$a;-><init>(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    move-object v1, p2

    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    return-object v1

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m0;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lio/realm/m0$c;

    .line 23
    .line 24
    iget-object v2, v2, Lio/realm/m0$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v1
.end method

.method public final g(Lio/realm/o0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m0;->c:Lio/realm/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/realm/o0;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/realm/m0;->c:Lio/realm/o0;

    .line 11
    .line 12
    iget-object v0, v0, Lio/realm/o0;->e:[B

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move-object v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    array-length v2, v0

    .line 20
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    iget-object v2, p1, Lio/realm/o0;->e:[B

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    array-length v1, v2

    .line 30
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lio/realm/m0;->c:Lio/realm/o0;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lio/realm/m0;->c:Lio/realm/o0;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "\n\nNew configuration: \n"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "Wrong key used to decrypt Realm."

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method
