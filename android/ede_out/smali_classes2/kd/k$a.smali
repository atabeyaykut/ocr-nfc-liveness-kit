.class public final Lkd/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lld/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkd/k;


# direct methods
.method public constructor <init>(Lkd/k;)V
    .locals 0

    iput-object p1, p0, Lkd/k$a;->a:Lkd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongThread"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-object v0, Lgd/e;->x:Lgd/e;

    .line 2
    .line 3
    sget-boolean v0, Lid/b;->b:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lkd/k;->l:I

    .line 9
    .line 10
    const-string v0, "k"

    .line 11
    .line 12
    const-string v2, "Beacon simulator not enabled"

    .line 13
    .line 14
    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0, v2, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lkd/k$a;->a:Lkd/k;

    .line 20
    .line 21
    iget-object v0, v0, Lkd/k;->f:Lld/m;

    .line 22
    .line 23
    iget-object v0, v0, Lld/m;->a:Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lkd/k$a;->a:Lkd/k;

    .line 29
    .line 30
    iget-object v0, v0, Lkd/k;->d:Lkd/e;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-boolean v2, v0, Lkd/e;->a:Z

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lkd/e;->e()V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Lkd/e;->f()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lgd/l;

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Lkd/e;->j(Lgd/l;)Lkd/h;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lkd/h;->a()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    const-string v3, "e"

    .line 72
    .line 73
    const-string v6, "found a monitor that expired: %s"

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    new-array v8, v7, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v4, v8, v1

    .line 79
    .line 80
    invoke-static {v3, v6, v8}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v5, Lkd/h;->c:Lkd/a;

    .line 84
    .line 85
    iget-object v6, v0, Lkd/e;->c:Landroid/content/Context;

    .line 86
    .line 87
    const-string v8, "monitoringData"

    .line 88
    .line 89
    iget-boolean v5, v5, Lkd/h;->a:Z

    .line 90
    .line 91
    new-instance v9, Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v10, "region"

    .line 97
    .line 98
    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    .line 100
    .line 101
    const-string v4, "inside"

    .line 102
    .line 103
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v6, v8, v9}, Lkd/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    if-eqz v3, :cond_4

    .line 115
    .line 116
    invoke-virtual {v0}, Lkd/e;->i()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    iget-object v3, v0, Lkd/e;->c:Landroid/content/Context;

    .line 125
    .line 126
    const-string v4, "org.altbeacon.beacon.service.monitoring_status_state"

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    :goto_1
    monitor-exit v0

    .line 136
    iget-object v0, p0, Lkd/k$a;->a:Lkd/k;

    .line 137
    .line 138
    invoke-static {v0}, Lkd/k;->a(Lkd/k;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    monitor-exit v0

    .line 144
    throw v1
.end method
