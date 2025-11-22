.class public final Lx4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/d$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Lx4/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lx4/d$a;->a:Lx4/d$a;

    sput-object v0, Lx4/d;->b:Lx4/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)I
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lx4/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Context is null"

    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    const-string v1, "d"

    .line 9
    .line 10
    const-string v2, "null"

    .line 11
    .line 12
    const-string v3, "preferredRenderer: "

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    sget-boolean v1, Lx4/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return v2

    .line 28
    :cond_0
    :try_start_1
    invoke-static {p0}, Ly4/j;->a(Landroid/app/Activity;)Ly4/l;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_1
    .catch Lm3/g; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-interface {v1}, Ly4/l;->e()Ly4/a;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lx4/b;->a:Ly4/a;

    .line 40
    .line 41
    invoke-interface {v1}, Ly4/l;->m()Ln4/i;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Lx5/a;->m:Ln4/i;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v4, "delegate must not be null"

    .line 51
    .line 52
    invoke-static {v3, v4}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lx5/a;->m:Ln4/i;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    :goto_0
    const/4 v3, 0x1

    .line 58
    :try_start_3
    sput-boolean v3, Lx4/d;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    .line 60
    :try_start_4
    invoke-interface {v1}, Ly4/l;->d()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x2

    .line 65
    if-ne v3, v4, :cond_2

    .line 66
    .line 67
    sget-object v3, Lx4/d$a;->b:Lx4/d$a;

    .line 68
    .line 69
    sput-object v3, Lx4/d;->b:Lx4/d$a;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_4

    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    new-instance v3, Lz3/d;

    .line 77
    .line 78
    invoke-direct {v3, p0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v3, v2}, Ly4/l;->k0(Lz3/d;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :goto_2
    :try_start_5
    const-string v1, "d"

    .line 86
    .line 87
    const-string v3, "Failed to retrieve renderer type or log initialization."

    .line 88
    .line 89
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :goto_3
    const-string p0, "d"

    .line 93
    .line 94
    sget-object v1, Lx4/d;->b:Lx4/d$a;

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v3, "loadedRenderer: "

    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    .line 108
    .line 109
    monitor-exit v0

    .line 110
    return v2

    .line 111
    :catch_1
    move-exception p0

    .line 112
    :try_start_6
    new-instance v1, Lz4/g;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    :catch_2
    move-exception p0

    .line 119
    iget p0, p0, Lm3/g;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    .line 121
    monitor-exit v0

    .line 122
    return p0

    .line 123
    :cond_3
    :try_start_7
    new-instance p0, Ljava/lang/NullPointerException;

    .line 124
    .line 125
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    :goto_4
    monitor-exit v0

    .line 130
    throw p0
.end method
