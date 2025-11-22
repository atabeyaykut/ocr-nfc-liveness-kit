.class public final Lkd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static c:Z = false


# instance fields
.field public final a:Lkd/a;

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lkd/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkd/f;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lkd/f;->a:Lkd/a;

    return-void
.end method


# virtual methods
.method public final a(Lgd/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkd/f;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkd/g;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "RangeState"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-boolean v4, Lid/b;->b:Z

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object p1, v4, v1

    .line 23
    .line 24
    aput-object v0, v4, v2

    .line 25
    .line 26
    const-string v1, "adding %s to existing range for: %s"

    .line 27
    .line 28
    invoke-static {v3, v1, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Lkd/g;->c(Lgd/c;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-boolean v0, Lid/b;->b:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p1, v0, v1

    .line 42
    .line 43
    const-string v1, "adding %s to new rangedBeacon"

    .line 44
    .line 45
    invoke-static {v3, v1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lkd/f;->b:Ljava/util/HashMap;

    .line 49
    .line 50
    new-instance v1, Lkd/g;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lkd/g;-><init>(Lgd/c;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public final declared-synchronized b()Ljava/util/ArrayList;
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lkd/f;->b:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v3, p0, Lkd/f;->b:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_6

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lgd/c;

    .line 36
    .line 37
    iget-object v5, p0, Lkd/f;->b:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lkd/g;

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    iget-boolean v6, v5, Lkd/g;->a:Z

    .line 48
    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v5}, Lkd/g;->a()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lkd/g;->b()Lkd/i;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-interface {v6}, Lkd/i;->a()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    iget-object v6, v5, Lkd/g;->c:Lgd/c;

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_3

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lkd/g;->b()Lkd/i;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-interface {v6}, Lkd/i;->a()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    const/4 v7, 0x1

    .line 81
    xor-int/2addr v6, v7

    .line 82
    const/4 v8, 0x0

    .line 83
    if-ne v6, v7, :cond_5

    .line 84
    .line 85
    sget-boolean v6, Lkd/f;->c:Z

    .line 86
    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    iget-wide v11, v5, Lkd/g;->b:J

    .line 94
    .line 95
    sub-long/2addr v9, v11

    .line 96
    const-wide/16 v11, 0x1388

    .line 97
    .line 98
    cmp-long v6, v9, v11

    .line 99
    .line 100
    if-lez v6, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const/4 v7, 0x0

    .line 104
    :goto_2
    if-eqz v7, :cond_4

    .line 105
    .line 106
    :cond_3
    iput-boolean v8, v5, Lkd/g;->a:Z

    .line 107
    .line 108
    :cond_4
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    const-string v4, "RangeState"

    .line 113
    .line 114
    const-string v5, "Dumping beacon from RangeState because it has no recent measurements."

    .line 115
    .line 116
    new-array v6, v8, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {v4, v5, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iput-object v0, p0, Lkd/f;->b:Ljava/util/HashMap;

    .line 123
    .line 124
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    .line 126
    return-object v1

    .line 127
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    monitor-exit p0

    .line 131
    throw v0
.end method
