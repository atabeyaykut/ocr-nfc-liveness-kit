.class public final Lqd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd/b$c;
    }
.end annotation


# static fields
.field public static volatile q:Lqd/b;

.field public static final r:Lqd/c;

.field public static final s:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Lqd/b$a;

.field public final e:Lb0/a;

.field public final f:Lqd/d;

.field public final g:Lqd/a;

.field public final h:Lv7/p;

.field public final i:Lqd/l;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Lqd/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqd/c;

    invoke-direct {v0}, Lqd/c;-><init>()V

    sput-object v0, Lqd/b;->r:Lqd/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lqd/b;->s:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqd/b$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lqd/b$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqd/b;->d:Lqd/b$a;

    .line 10
    .line 11
    sget-object v0, Lqd/b;->r:Lqd/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lrd/a;->c:Lrd/a;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget-object v4, v1, Lrd/a;->a:Lqd/e;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v4, Lqd/e$a;

    .line 31
    .line 32
    invoke-direct {v4}, Lqd/e$a;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_1
    iput-object v4, p0, Lqd/b;->p:Lqd/e;

    .line 36
    .line 37
    new-instance v4, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v4, p0, Lqd/b;->a:Ljava/util/HashMap;

    .line 43
    .line 44
    new-instance v4, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v4, p0, Lqd/b;->b:Ljava/util/HashMap;

    .line 50
    .line 51
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v4, p0, Lqd/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    :cond_2
    const/4 v4, 0x0

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v1, v1, Lrd/a;->b:Lb0/a;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v1, v4

    .line 68
    :goto_2
    iput-object v1, p0, Lqd/b;->e:Lb0/a;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    new-instance v4, Lqd/d;

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v4, p0, v1}, Lqd/d;-><init>(Lqd/b;Landroid/os/Looper;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iput-object v4, p0, Lqd/b;->f:Lqd/d;

    .line 82
    .line 83
    new-instance v1, Lqd/a;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lqd/a;-><init>(Lqd/b;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lqd/b;->g:Lqd/a;

    .line 89
    .line 90
    new-instance v1, Lv7/p;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lv7/p;-><init>(Lqd/b;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lqd/b;->h:Lv7/p;

    .line 96
    .line 97
    new-instance v1, Lqd/l;

    .line 98
    .line 99
    invoke-direct {v1}, Lqd/l;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lqd/b;->i:Lqd/l;

    .line 103
    .line 104
    iput-boolean v3, p0, Lqd/b;->k:Z

    .line 105
    .line 106
    iput-boolean v3, p0, Lqd/b;->l:Z

    .line 107
    .line 108
    iput-boolean v3, p0, Lqd/b;->m:Z

    .line 109
    .line 110
    iput-boolean v3, p0, Lqd/b;->n:Z

    .line 111
    .line 112
    iput-boolean v3, p0, Lqd/b;->o:Z

    .line 113
    .line 114
    iget-object v0, v0, Lqd/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 115
    .line 116
    iput-object v0, p0, Lqd/b;->j:Ljava/util/concurrent/ExecutorService;

    .line 117
    .line 118
    return-void
.end method

.method public static a(Ljava/util/ArrayList;[Ljava/lang/Class;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lqd/b;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Lqd/b;
    .locals 2

    sget-object v0, Lqd/b;->q:Lqd/b;

    if-nez v0, :cond_1

    const-class v1, Lqd/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lqd/b;->q:Lqd/b;

    if-nez v0, :cond_0

    new-instance v0, Lqd/b;

    invoke-direct {v0}, Lqd/b;-><init>()V

    sput-object v0, Lqd/b;->q:Lqd/b;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lqd/m;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p2, Lqd/m;->b:Lqd/k;

    .line 2
    .line 3
    iget-object v0, v0, Lqd/k;->a:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v1, p2, Lqd/m;->a:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "Unexpected exception"

    .line 22
    .line 23
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p2

    .line 27
    :catch_1
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, p1, Lqd/j;

    .line 33
    .line 34
    iget-boolean v2, p0, Lqd/b;->k:Z

    .line 35
    .line 36
    iget-object v3, p0, Lqd/b;->p:Lqd/e;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "SubscriberExceptionEvent subscriber "

    .line 47
    .line 48
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p2, Lqd/m;->a:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, " threw an exception"

    .line 61
    .line 62
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {v3, v1, p2, v0}, Lqd/e;->b(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    check-cast p1, Lqd/j;

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "Initial event "

    .line 77
    .line 78
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p1, Lqd/j;->b:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, " caused exception in "

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v0, p1, Lqd/j;->c:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object p1, p1, Lqd/j;->a:Ljava/lang/Throwable;

    .line 101
    .line 102
    invoke-interface {v3, v1, p2, p1}, Lqd/e;->b(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    if-eqz v2, :cond_1

    .line 107
    .line 108
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v4, "Could not dispatch event: "

    .line 113
    .line 114
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v4, " to subscribing class "

    .line 125
    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v4, p2, Lqd/m;->a:Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v3, v1, v2, v0}, Lqd/e;->b(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    iget-boolean v1, p0, Lqd/b;->m:Z

    .line 146
    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    new-instance v1, Lqd/j;

    .line 150
    .line 151
    iget-object p2, p2, Lqd/m;->a:Ljava/lang/Object;

    .line 152
    .line 153
    invoke-direct {v1, v0, p1, p2}, Lqd/j;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v1}, Lqd/b;->f(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Lqd/g;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lqd/g;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p1, Lqd/g;->b:Lqd/m;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p1, Lqd/g;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v2, p1, Lqd/g;->b:Lqd/m;

    .line 9
    .line 10
    iput-object v2, p1, Lqd/g;->c:Lqd/g;

    .line 11
    .line 12
    sget-object v2, Lqd/g;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x2710

    .line 20
    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-boolean p1, v1, Lqd/m;->c:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lqd/b;->c(Ljava/lang/Object;Lqd/m;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqd/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lqd/b;->d:Lqd/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqd/b$c;

    .line 8
    .line 9
    iget-object v1, v0, Lqd/b$c;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-boolean p1, v0, Lqd/b$c;->b:Z

    .line 15
    .line 16
    if-nez p1, :cond_4

    .line 17
    .line 18
    iget-object p1, p0, Lqd/b;->e:Lb0/a;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-ne p1, v4, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 43
    :goto_2
    iput-boolean p1, v0, Lqd/b$c;->c:Z

    .line 44
    .line 45
    iput-boolean v3, v0, Lqd/b$c;->b:Z

    .line 46
    .line 47
    :goto_3
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1, v0}, Lqd/b;->g(Ljava/lang/Object;Lqd/b$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    iput-boolean v2, v0, Lqd/b$c;->b:Z

    .line 62
    .line 63
    iput-boolean v2, v0, Lqd/b$c;->c:Z

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    iput-boolean v2, v0, Lqd/b$c;->b:Z

    .line 68
    .line 69
    iput-boolean v2, v0, Lqd/b$c;->c:Z

    .line 70
    .line 71
    throw p1

    .line 72
    :cond_4
    :goto_4
    return-void
.end method

.method public final g(Ljava/lang/Object;Lqd/b$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lqd/b;->o:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    sget-object v1, Lqd/b;->s:Ljava/util/HashMap;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    move-object v3, v0

    .line 26
    :goto_0
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v2, v4}, Lqd/b;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    sget-object v3, Lqd/b;->s:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_1
    if-ge v3, v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2, v5}, Lqd/b;->h(Ljava/lang/Object;Lqd/b$c;Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    or-int/2addr v4, v5

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1

    .line 75
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lqd/b;->h(Ljava/lang/Object;Lqd/b$c;Ljava/lang/Class;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    :cond_3
    if-nez v4, :cond_5

    .line 80
    .line 81
    iget-boolean p2, p0, Lqd/b;->l:Z

    .line 82
    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    iget-object p2, p0, Lqd/b;->p:Lqd/e;

    .line 86
    .line 87
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "No subscribers registered for event "

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {p2, v1, v2}, Lqd/e;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-boolean p2, p0, Lqd/b;->n:Z

    .line 107
    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    const-class p2, Lqd/f;

    .line 111
    .line 112
    if-eq v0, p2, :cond_5

    .line 113
    .line 114
    const-class p2, Lqd/j;

    .line 115
    .line 116
    if-eq v0, p2, :cond_5

    .line 117
    .line 118
    new-instance p2, Lqd/f;

    .line 119
    .line 120
    invoke-direct {p2, p0, p1}, Lqd/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p2}, Lqd/b;->f(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    return-void
.end method

.method public final h(Ljava/lang/Object;Lqd/b$c;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lqd/b$c;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqd/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd/m;

    iput-object p1, p2, Lqd/b$c;->d:Ljava/lang/Object;

    :try_start_1
    iget-boolean v1, p2, Lqd/b$c;->c:Z

    invoke-virtual {p0, v0, p1, v1}, Lqd/b;->j(Lqd/m;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lqd/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lqd/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lqd/b;->f(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j(Lqd/m;Ljava/lang/Object;Z)V
    .locals 4

    .line 1
    sget-object v0, Lqd/b$b;->a:[I

    .line 2
    .line 3
    iget-object v1, p1, Lqd/m;->b:Lqd/k;

    .line 4
    .line 5
    iget-object v1, v1, Lqd/k;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_6

    .line 15
    .line 16
    iget-object v2, p0, Lqd/b;->f:Lqd/d;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v0, v3, :cond_4

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v0, v3, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    const/4 p3, 0x5

    .line 28
    if-ne v0, p3, :cond_0

    .line 29
    .line 30
    iget-object p3, p0, Lqd/b;->h:Lv7/p;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p1}, Lqd/g;->a(Ljava/lang/Object;Lqd/m;)Lqd/g;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p3, Lv7/p;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p2, Lqd/h;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lqd/h;->a(Lqd/g;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p3, Lv7/p;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lqd/b;

    .line 49
    .line 50
    iget-object p1, p1, Lqd/b;->j:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "Unknown thread mode: "

    .line 61
    .line 62
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lqd/m;->b:Lqd/k;

    .line 66
    .line 67
    iget-object p1, p1, Lqd/k;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p2

    .line 80
    :cond_1
    if-eqz p3, :cond_6

    .line 81
    .line 82
    iget-object p3, p0, Lqd/b;->g:Lqd/a;

    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {p2, p1}, Lqd/g;->a(Ljava/lang/Object;Lqd/m;)Lqd/g;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    monitor-enter p3

    .line 92
    :try_start_0
    iget-object p2, p3, Lqd/a;->a:Lqd/h;

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Lqd/h;->a(Lqd/g;)V

    .line 95
    .line 96
    .line 97
    iget-boolean p1, p3, Lqd/a;->c:Z

    .line 98
    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    iput-boolean v1, p3, Lqd/a;->c:Z

    .line 102
    .line 103
    iget-object p1, p3, Lqd/a;->b:Lqd/b;

    .line 104
    .line 105
    iget-object p1, p1, Lqd/b;->j:Ljava/util/concurrent/ExecutorService;

    .line 106
    .line 107
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    monitor-exit p3

    .line 111
    goto :goto_2

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p1

    .line 115
    :cond_3
    if-eqz v2, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    if-eqz p3, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    :goto_0
    invoke-virtual {v2, p2, p1}, Lqd/d;->a(Ljava/lang/Object;Lqd/m;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    :goto_1
    invoke-virtual {p0, p2, p1}, Lqd/b;->c(Ljava/lang/Object;Lqd/m;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    return-void
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    const-string v4, "android.os.Looper"

    .line 7
    .line 8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const-string v5, "getMainLooper"

    .line 13
    .line 14
    new-array v6, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    new-array v5, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    :cond_0
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-eqz v4, :cond_2

    .line 32
    .line 33
    :try_start_1
    sget v4, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->d:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    const/4 v4, 0x0

    .line 38
    :goto_1
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string v2, "It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies."

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, v1, Lqd/b;->i:Lqd/l;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object v5, Lqd/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    goto/16 :goto_a

    .line 69
    .line 70
    :cond_3
    invoke-static {}, Lqd/l;->b()Lqd/l$a;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iput-object v4, v6, Lqd/l$a;->e:Ljava/lang/Class;

    .line 75
    .line 76
    iput-boolean v2, v6, Lqd/l$a;->f:Z

    .line 77
    .line 78
    :goto_3
    iget-object v7, v6, Lqd/l$a;->e:Ljava/lang/Class;

    .line 79
    .line 80
    if-eqz v7, :cond_c

    .line 81
    .line 82
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    goto :goto_4

    .line 87
    :catchall_0
    :try_start_3
    iget-object v7, v6, Lqd/l$a;->e:Ljava/lang/Class;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    iput-boolean v3, v6, Lqd/l$a;->f:Z

    .line 94
    .line 95
    :goto_4
    array-length v8, v7

    .line 96
    const/4 v9, 0x0

    .line 97
    :goto_5
    if-ge v9, v8, :cond_8

    .line 98
    .line 99
    aget-object v11, v7, v9

    .line 100
    .line 101
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    and-int/lit8 v12, v10, 0x1

    .line 106
    .line 107
    if-eqz v12, :cond_7

    .line 108
    .line 109
    and-int/lit16 v10, v10, 0x1448

    .line 110
    .line 111
    if-nez v10, :cond_7

    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    array-length v12, v10

    .line 118
    if-ne v12, v3, :cond_7

    .line 119
    .line 120
    const-class v3, Lqd/i;

    .line 121
    .line 122
    invoke-virtual {v11, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Lqd/i;

    .line 127
    .line 128
    if-eqz v3, :cond_7

    .line 129
    .line 130
    aget-object v12, v10, v2

    .line 131
    .line 132
    iget-object v2, v6, Lqd/l$a;->b:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    if-nez v10, :cond_4

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    goto :goto_7

    .line 142
    :cond_4
    instance-of v13, v10, Ljava/lang/reflect/Method;

    .line 143
    .line 144
    if-eqz v13, :cond_6

    .line 145
    .line 146
    check-cast v10, Ljava/lang/reflect/Method;

    .line 147
    .line 148
    invoke-virtual {v6, v10, v12}, Lqd/l$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-eqz v10, :cond_5

    .line 153
    .line 154
    invoke-virtual {v2, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_6
    :goto_6
    invoke-virtual {v6, v11, v12}, Lqd/l$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    :goto_7
    if-eqz v2, :cond_7

    .line 169
    .line 170
    invoke-interface {v3}, Lqd/i;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    iget-object v2, v6, Lqd/l$a;->a:Ljava/util/ArrayList;

    .line 175
    .line 176
    new-instance v15, Lqd/k;

    .line 177
    .line 178
    invoke-interface {v3}, Lqd/i;->priority()I

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    invoke-interface {v3}, Lqd/i;->sticky()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    move-object v10, v15

    .line 187
    move-object v0, v15

    .line 188
    move v15, v3

    .line 189
    invoke-direct/range {v10 .. v15}, Lqd/k;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    const/4 v3, 0x1

    .line 199
    const/4 v0, 0x0

    .line 200
    goto :goto_5

    .line 201
    :cond_8
    iget-boolean v0, v6, Lqd/l$a;->f:Z

    .line 202
    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_9
    iget-object v0, v6, Lqd/l$a;->e:Ljava/lang/Class;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iput-object v0, v6, Lqd/l$a;->e:Ljava/lang/Class;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string v2, "java."

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_b

    .line 225
    .line 226
    const-string v2, "javax."

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-nez v2, :cond_b

    .line 233
    .line 234
    const-string v2, "android."

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_b

    .line 241
    .line 242
    const-string v2, "androidx."

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_a

    .line 249
    .line 250
    goto :goto_8

    .line 251
    :cond_a
    const/4 v0, 0x0

    .line 252
    goto :goto_9

    .line 253
    :cond_b
    :goto_8
    const/4 v0, 0x0

    .line 254
    iput-object v0, v6, Lqd/l$a;->e:Ljava/lang/Class;

    .line 255
    .line 256
    :goto_9
    const/4 v2, 0x0

    .line 257
    const/4 v3, 0x1

    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :catch_2
    move-exception v0

    .line 261
    iget-object v2, v6, Lqd/l$a;->e:Ljava/lang/Class;

    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const-string v3, "Could not inspect methods of "

    .line 268
    .line 269
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    const-string v3, ". Please make this class visible to EventBus annotation processor to avoid reflection."

    .line 274
    .line 275
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    new-instance v3, Lcom/airbnb/epoxy/d0;

    .line 280
    .line 281
    invoke-direct {v3, v2, v0}, Lcom/airbnb/epoxy/d0;-><init>(Ljava/lang/String;Ljava/lang/LinkageError;)V

    .line 282
    .line 283
    .line 284
    throw v3

    .line 285
    :cond_c
    invoke-static {v6}, Lqd/l;->a(Lqd/l$a;)Ljava/util/ArrayList;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_e

    .line 294
    .line 295
    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    :goto_a
    monitor-enter p0

    .line 299
    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_d

    .line 308
    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lqd/k;

    .line 314
    .line 315
    move-object/from16 v3, p1

    .line 316
    .line 317
    invoke-virtual {v1, v3, v2}, Lqd/b;->m(Ljava/lang/Object;Lqd/k;)V

    .line 318
    .line 319
    .line 320
    goto :goto_b

    .line 321
    :cond_d
    monitor-exit p0

    .line 322
    return-void

    .line 323
    :catchall_1
    move-exception v0

    .line 324
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 325
    throw v0

    .line 326
    :cond_e
    new-instance v0, Lcom/airbnb/epoxy/d0;

    .line 327
    .line 328
    const-string v2, "Subscriber "

    .line 329
    .line 330
    const-string v3, " and its super classes have no public methods with the @Subscribe annotation"

    .line 331
    .line 332
    invoke-static {v2, v4, v3}, Landroidx/camera/camera2/internal/c;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-direct {v0, v2}, Lcom/airbnb/epoxy/d0;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0
.end method

.method public final l(Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lqd/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lqd/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m(Ljava/lang/Object;Lqd/k;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lqd/k;->c:Ljava/lang/Class;

    .line 2
    .line 3
    new-instance v1, Lqd/m;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lqd/m;-><init>(Ljava/lang/Object;Lqd/k;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lqd/b;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_e

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_1
    if-gt v5, v2, :cond_3

    .line 40
    .line 41
    if-eq v5, v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lqd/m;

    .line 48
    .line 49
    iget-object v6, v6, Lqd/m;->b:Lqd/k;

    .line 50
    .line 51
    iget v6, v6, Lqd/k;->d:I

    .line 52
    .line 53
    iget v7, p2, Lqd/k;->d:I

    .line 54
    .line 55
    if-le v7, v6, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_2
    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v2, p0, Lqd/b;->b:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p2, Lqd/k;->e:Z

    .line 86
    .line 87
    if-eqz p1, :cond_d

    .line 88
    .line 89
    iget-object p1, p0, Lqd/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    iget-object p2, p0, Lqd/b;->e:Lb0/a;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    iget-boolean v3, p0, Lqd/b;->o:Z

    .line 95
    .line 96
    if-eqz v3, :cond_9

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_d

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/lang/Class;

    .line 123
    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_5

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    if-eqz p2, :cond_8

    .line 137
    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    if-ne v5, v6, :cond_6

    .line 147
    .line 148
    const/4 v5, 0x1

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    const/4 v5, 0x0

    .line 151
    :goto_4
    if-eqz v5, :cond_7

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_7
    const/4 v5, 0x0

    .line 155
    goto :goto_6

    .line 156
    :cond_8
    :goto_5
    const/4 v5, 0x1

    .line 157
    :goto_6
    invoke-virtual {p0, v1, v3, v5}, Lqd/b;->j(Lqd/m;Ljava/lang/Object;Z)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_d

    .line 166
    .line 167
    if-eqz p2, :cond_b

    .line 168
    .line 169
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-ne p2, v0, :cond_a

    .line 178
    .line 179
    const/4 p2, 0x1

    .line 180
    goto :goto_7

    .line 181
    :cond_a
    const/4 p2, 0x0

    .line 182
    :goto_7
    if-eqz p2, :cond_c

    .line 183
    .line 184
    :cond_b
    const/4 v4, 0x1

    .line 185
    :cond_c
    invoke-virtual {p0, v1, p1, v4}, Lqd/b;->j(Lqd/m;Ljava/lang/Object;Z)V

    .line 186
    .line 187
    .line 188
    :cond_d
    return-void

    .line 189
    :cond_e
    new-instance p2, Lcom/airbnb/epoxy/d0;

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v2, "Subscriber "

    .line 194
    .line 195
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p1, " already registered to event "

    .line 206
    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-direct {p2, p1}, Lcom/airbnb/epoxy/d0;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p2
.end method

.method public final declared-synchronized n(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "Subscriber to unregister was not registered before: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lqd/b;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Class;

    .line 29
    .line 30
    iget-object v2, p0, Lqd/b;->a:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_0
    if-ge v4, v2, :cond_0

    .line 47
    .line 48
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lqd/m;

    .line 53
    .line 54
    iget-object v6, v5, Lqd/m;->a:Ljava/lang/Object;

    .line 55
    .line 56
    if-ne v6, p1, :cond_1

    .line 57
    .line 58
    iput-boolean v3, v5, Lqd/m;->c:Z

    .line 59
    .line 60
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, -0x1

    .line 64
    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lqd/b;->b:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v1, p0, Lqd/b;->p:Lqd/e;

    .line 77
    .line 78
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {v1, v2, p1}, Lqd/e;->a(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :goto_1
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    monitor-exit p0

    .line 103
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventBus[indexCount=0, eventInheritance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lqd/b;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
