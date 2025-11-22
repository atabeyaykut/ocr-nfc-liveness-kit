.class public final Lh6/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh6/z;

.field public final b:Lm6/e;

.field public final c:Ln6/a;

.field public final d:Li6/b;

.field public final e:Lh6/n0;


# direct methods
.method public constructor <init>(Lh6/z;Lm6/e;Ln6/a;Li6/b;Lh6/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/m0;->a:Lh6/z;

    iput-object p2, p0, Lh6/m0;->b:Lm6/e;

    iput-object p3, p0, Lh6/m0;->c:Ln6/a;

    iput-object p4, p0, Lh6/m0;->d:Li6/b;

    iput-object p5, p0, Lh6/m0;->e:Lh6/n0;

    return-void
.end method

.method public static a(Lj6/k;Li6/b;Lh6/n0;)Lj6/k;
    .locals 3

    .line 1
    new-instance v0, Lj6/k$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj6/k$a;-><init>(Lj6/a0$e$d;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Li6/b;->b:Li6/a;

    .line 7
    .line 8
    invoke-interface {p1}, Li6/a;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lj6/t;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lj6/t;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lj6/k$a;->e:Lj6/a0$e$d$d;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p1, "FirebaseCrashlytics"

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v1, "No log data to include with this event."

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {p1, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object p1, p2, Lh6/n0;->a:Lh6/j0;

    .line 38
    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 41
    .line 42
    iget-object v2, p1, Lh6/j0;->a:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p1

    .line 52
    invoke-static {v1}, Lh6/m0;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p2, Lh6/n0;->b:Lh6/j0;

    .line 57
    .line 58
    invoke-virtual {p2}, Lh6/j0;->a()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2}, Lh6/m0;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    iget-object p0, p0, Lj6/k;->c:Lj6/a0$e$d$a;

    .line 73
    .line 74
    invoke-virtual {p0}, Lj6/a0$e$d$a;->f()Lj6/l$a;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v1, Lj6/b0;

    .line 79
    .line 80
    invoke-direct {v1, p1}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lj6/l$a;->b:Lj6/b0;

    .line 84
    .line 85
    new-instance p1, Lj6/b0;

    .line 86
    .line 87
    invoke-direct {p1, p2}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lj6/l$a;->c:Lj6/b0;

    .line 91
    .line 92
    invoke-virtual {p0}, Lj6/l$a;->a()Lj6/l;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iput-object p0, v0, Lj6/k$a;->c:Lj6/a0$e$d$a;

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v0}, Lj6/k$a;->a()Lj6/k;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    monitor-exit p1

    .line 105
    throw p0
.end method

.method public static b(Landroid/content/Context;Lh6/g0;Lm6/f;Lh6/a;Li6/b;Lh6/n0;Ls4/a9;Lo6/c;)Lh6/m0;
    .locals 6

    .line 1
    new-instance v1, Lh6/z;

    .line 2
    .line 3
    invoke-direct {v1, p0, p1, p3, p6}, Lh6/z;-><init>(Landroid/content/Context;Lh6/g0;Lh6/a;Ls4/a9;)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lm6/e;

    .line 7
    .line 8
    invoke-direct {v2, p2, p7}, Lm6/e;-><init>(Lm6/f;Lo6/c;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ln6/a;->b:Lk6/a;

    .line 12
    .line 13
    invoke-static {p0}, Lu2/w;->b(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lu2/w;->a()Lu2/w;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Ls2/a;

    .line 21
    .line 22
    sget-object p2, Ln6/a;->c:Ljava/lang/String;

    .line 23
    .line 24
    sget-object p3, Ln6/a;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p1, p2, p3}, Ls2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lu2/w;->c(Ls2/a;)Lu2/t;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Lr2/b;

    .line 34
    .line 35
    const-string p2, "json"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p2, Ln6/a;->e:Landroidx/browser/browseractions/b;

    .line 41
    .line 42
    const-string p3, "FIREBASE_CRASHLYTICS_REPORT"

    .line 43
    .line 44
    invoke-virtual {p0, p3, p1, p2}, Lu2/t;->a(Ljava/lang/String;Lr2/b;Lr2/e;)Lu2/u;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v3, Ln6/a;

    .line 49
    .line 50
    invoke-direct {v3, p0}, Ln6/a;-><init>(Lr2/f;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Lh6/m0;

    .line 54
    .line 55
    move-object v0, p0

    .line 56
    move-object v4, p4

    .line 57
    move-object v5, p5

    .line 58
    invoke-direct/range {v0 .. v5}, Lh6/m0;-><init>(Lh6/z;Lm6/e;Ln6/a;Li6/b;Lh6/n0;)V

    .line 59
    .line 60
    .line 61
    return-object p0
.end method

.method public static c(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    new-instance v3, Lj6/d;

    .line 50
    .line 51
    invoke-direct {v3, v2, v1}, Lj6/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 59
    .line 60
    const-string v0, "Null value"

    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 67
    .line 68
    const-string v0, "Null key"

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    new-instance p0, Lh6/l0;

    .line 75
    .line 76
    invoke-direct {p0}, Lh6/l0;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/util/concurrent/Executor;)Lh5/z;
    .locals 8
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lh6/m0;->b:Lm6/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm6/e;->b()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/io/File;

    .line 27
    .line 28
    :try_start_0
    sget-object v3, Lm6/e;->f:Lk6/a;

    .line 29
    .line 30
    invoke-static {v2}, Lm6/e;->d(Ljava/io/File;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Lk6/a;->g(Ljava/lang/String;)Lj6/b;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v5, Lh6/b;

    .line 46
    .line 47
    invoke-direct {v5, v3, v4, v2}, Lh6/b;-><init>(Lj6/b;Ljava/lang/String;Ljava/io/File;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v5, "Could not load report file "

    .line 58
    .line 59
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, "; deleting"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v5, "FirebaseCrashlytics"

    .line 75
    .line 76
    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lh6/a0;

    .line 103
    .line 104
    iget-object v3, p0, Lh6/m0;->c:Ln6/a;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lh6/a0;->a()Lj6/a0;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-instance v5, Lh5/l;

    .line 114
    .line 115
    invoke-direct {v5}, Lh5/l;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v6, Lr2/a;

    .line 119
    .line 120
    sget-object v7, Lr2/d;->c:Lr2/d;

    .line 121
    .line 122
    invoke-direct {v6, v4, v7}, Lr2/a;-><init>(Ljava/lang/Object;Lr2/d;)V

    .line 123
    .line 124
    .line 125
    new-instance v4, La3/j;

    .line 126
    .line 127
    invoke-direct {v4, v5, v2}, La3/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v3, Ln6/a;->a:Lr2/f;

    .line 131
    .line 132
    invoke-interface {v2, v6, v4}, Lr2/f;->b(Lr2/a;Lr2/h;)V

    .line 133
    .line 134
    .line 135
    new-instance v2, Landroidx/camera/camera2/internal/compat/workaround/b;

    .line 136
    .line 137
    const/4 v3, 0x2

    .line 138
    invoke-direct {v2, v3, p0}, Landroidx/camera/camera2/internal/compat/workaround/b;-><init>(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v3, v5, Lh5/l;->a:Lh5/z;

    .line 142
    .line 143
    invoke-virtual {v3, p1, v2}, Lh5/z;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    invoke-static {v0}, Lh5/n;->f(Ljava/util/List;)Lh5/z;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1
.end method
