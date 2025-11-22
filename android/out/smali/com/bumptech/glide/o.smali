.class public final Lcom/bumptech/glide/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/bumptech/glide/manager/k;"
    }
.end annotation


# static fields
.field public static final l:Lm1/g;


# instance fields
.field public final a:Lcom/bumptech/glide/b;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/bumptech/glide/manager/j;

.field public final d:Lcom/bumptech/glide/manager/r;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final e:Lcom/bumptech/glide/manager/q;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final f:Lcom/bumptech/glide/manager/x;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final g:Lcom/bumptech/glide/o$a;

.field public final h:Lcom/bumptech/glide/manager/c;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lm1/f<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Lm1/g;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lm1/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lm1/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lm1/a;->d(Ljava/lang/Class;)Lm1/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lm1/g;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lm1/a;->w:Z

    .line 16
    .line 17
    sput-object v0, Lcom/bumptech/glide/o;->l:Lm1/g;

    .line 18
    .line 19
    new-instance v0, Lm1/g;

    .line 20
    .line 21
    invoke-direct {v0}, Lm1/g;-><init>()V

    .line 22
    .line 23
    .line 24
    const-class v2, Li1/c;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lm1/a;->d(Ljava/lang/Class;)Lm1/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lm1/g;

    .line 31
    .line 32
    iput-boolean v1, v0, Lm1/a;->w:Z

    .line 33
    .line 34
    sget-object v0, Lx0/l;->b:Lx0/l$c;

    .line 35
    .line 36
    new-instance v1, Lm1/g;

    .line 37
    .line 38
    invoke-direct {v1}, Lm1/g;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lm1/a;->e(Lx0/l;)Lm1/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lm1/g;

    .line 46
    .line 47
    invoke-virtual {v0}, Lm1/a;->k()Lm1/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lm1/g;

    .line 52
    .line 53
    invoke-virtual {v0}, Lm1/a;->q()Lm1/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lm1/g;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/q;Landroid/content/Context;)V
    .locals 6
    .param p1    # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/manager/r;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/d;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/bumptech/glide/manager/x;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/bumptech/glide/manager/x;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    .line 17
    .line 18
    new-instance v2, Lcom/bumptech/glide/o$a;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/bumptech/glide/o$a;-><init>(Lcom/bumptech/glide/o;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/bumptech/glide/o;->g:Lcom/bumptech/glide/o$a;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/b;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/j;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/q;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/r;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/bumptech/glide/o;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance p4, Lcom/bumptech/glide/o$b;

    .line 40
    .line 41
    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/o$b;-><init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/manager/r;)V

    .line 42
    .line 43
    .line 44
    check-cast v1, Lcom/bumptech/glide/manager/f;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 50
    .line 51
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v3, 0x1

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    const-string v4, "ConnectivityMonitor"

    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    const-string v5, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string v5, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 77
    .line 78
    :goto_1
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    if-eqz v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Lcom/bumptech/glide/manager/e;

    .line 84
    .line 85
    invoke-direct {v0, p3, p4}, Lcom/bumptech/glide/manager/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/o$b;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    new-instance v0, Lcom/bumptech/glide/manager/n;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/bumptech/glide/manager/n;-><init>()V

    .line 92
    .line 93
    .line 94
    :goto_2
    iput-object v0, p0, Lcom/bumptech/glide/o;->h:Lcom/bumptech/glide/manager/c;

    .line 95
    .line 96
    sget-object p3, Lq1/m;->a:[C

    .line 97
    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    if-ne p3, p4, :cond_4

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    :cond_4
    xor-int/lit8 p3, v1, 0x1

    .line 110
    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    invoke-static {}, Lq1/m;->e()Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/j;->a(Lcom/bumptech/glide/manager/k;)V

    .line 122
    .line 123
    .line 124
    :goto_3
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/j;->a(Lcom/bumptech/glide/manager/k;)V

    .line 125
    .line 126
    .line 127
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    .line 129
    iget-object p3, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/h;

    .line 130
    .line 131
    iget-object p3, p3, Lcom/bumptech/glide/h;->e:Ljava/util/List;

    .line 132
    .line 133
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    iput-object p2, p0, Lcom/bumptech/glide/o;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 137
    .line 138
    iget-object p2, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/h;

    .line 139
    .line 140
    monitor-enter p2

    .line 141
    :try_start_0
    iget-object p3, p2, Lcom/bumptech/glide/h;->j:Lm1/g;

    .line 142
    .line 143
    if-nez p3, :cond_6

    .line 144
    .line 145
    iget-object p3, p2, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/b$a;

    .line 146
    .line 147
    check-cast p3, Lcom/bumptech/glide/c;

    .line 148
    .line 149
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance p3, Lm1/g;

    .line 153
    .line 154
    invoke-direct {p3}, Lm1/g;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-boolean v3, p3, Lm1/a;->w:Z

    .line 158
    .line 159
    iput-object p3, p2, Lcom/bumptech/glide/h;->j:Lm1/g;

    .line 160
    .line 161
    :cond_6
    iget-object p3, p2, Lcom/bumptech/glide/h;->j:Lm1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    monitor-exit p2

    .line 164
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/o;->n(Lm1/g;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/b;->c(Lcom/bumptech/glide/o;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :catchall_0
    move-exception p1

    .line 172
    monitor-exit p2

    .line 173
    throw p1
.end method


# virtual methods
.method public final declared-synchronized g()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/x;->g()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/bumptech/glide/manager/x;->a:Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v0}, Lq1/m;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ln1/g;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/o;->k(Ln1/g;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bumptech/glide/manager/x;->a:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/r;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->a:Ljava/util/Set;

    .line 45
    .line 46
    invoke-static {v1}, Lq1/m;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lm1/d;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/r;->a(Lm1/d;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->b:Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/j;

    .line 76
    .line 77
    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/j;->b(Lcom/bumptech/glide/manager/k;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/j;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/bumptech/glide/o;->h:Lcom/bumptech/glide/manager/c;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/j;->b(Lcom/bumptech/glide/manager/k;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/o;->g:Lcom/bumptech/glide/o$a;

    .line 88
    .line 89
    invoke-static {}, Lq1/m;->e()Landroid/os/Handler;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/b;

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/b;->d(Lcom/bumptech/glide/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    monitor-exit p0

    .line 105
    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->l()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/x;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k(Ln1/g;)V
    .locals 4
    .param p1    # Ln1/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/o;->o(Ln1/g;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-interface {p1}, Ln1/g;->a()Lm1/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/o;->a:Lcom/bumptech/glide/b;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/bumptech/glide/o;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/o;->o(Ln1/g;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    monitor-exit v2

    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-nez v0, :cond_3

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, v0}, Ln1/g;->j(Lm1/d;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Lm1/d;->clear()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1

    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method public final declared-synchronized l()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/r;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->c:Z

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->a:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {v1}, Lq1/m;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lm1/d;

    .line 28
    .line 29
    invoke-interface {v2}, Lm1/d;->isRunning()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v2}, Lm1/d;->d()V

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Lcom/bumptech/glide/manager/r;->b:Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0

    .line 48
    throw v0
.end method

.method public final declared-synchronized m()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/r;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->c:Z

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->a:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {v1}, Lq1/m;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lm1/d;

    .line 28
    .line 29
    invoke-interface {v2}, Lm1/d;->j()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v2}, Lm1/d;->isRunning()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    invoke-interface {v2}, Lm1/d;->i()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->b:Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit p0

    .line 54
    throw v0
.end method

.method public final declared-synchronized n(Lm1/g;)V
    .locals 1
    .param p1    # Lm1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lm1/a;->c()Lm1/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lm1/g;

    .line 7
    .line 8
    iget-boolean v0, p1, Lm1/a;->w:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p1, Lm1/a;->y:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "You cannot auto lock an already locked options object, try clone() first"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p1, Lm1/a;->y:Z

    .line 27
    .line 28
    iput-boolean v0, p1, Lm1/a;->w:Z

    .line 29
    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/o;->k:Lm1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final declared-synchronized o(Ln1/g;)Z
    .locals 3
    .param p1    # Ln1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/g<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ln1/g;->a()Lm1/d;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/r;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/r;->a(Lm1/d;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bumptech/glide/manager/x;->a:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v0}, Ln1/g;->j(Lm1/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v1

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/o;->m()V

    iget-object v0, p0, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/manager/x;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/x;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
