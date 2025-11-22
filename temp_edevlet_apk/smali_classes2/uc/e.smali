.class public final Luc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Luc/d;


# direct methods
.method public constructor <init>(Luc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Luc/e;->a:Luc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Luc/e;->a:Luc/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Luc/e;->a:Luc/d;

    .line 5
    .line 6
    invoke-virtual {v1}, Luc/d;->c()Luc/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    monitor-exit v0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v0, v1, Luc/a;->a:Luc/c;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Luc/d;->h:Luc/d;

    .line 19
    .line 20
    sget-object v2, Luc/d;->i:Ljava/util/logging/Logger;

    .line 21
    .line 22
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v3, v0, Luc/c;->e:Luc/d;

    .line 31
    .line 32
    iget-object v3, v3, Luc/d;->g:Luc/d$a;

    .line 33
    .line 34
    invoke-interface {v3}, Luc/d$a;->c()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    const-string v5, "starting"

    .line 39
    .line 40
    invoke-static {v1, v0, v5}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-wide/16 v3, -0x1

    .line 45
    .line 46
    :goto_1
    :try_start_1
    iget-object v5, p0, Luc/e;->a:Luc/d;

    .line 47
    .line 48
    invoke-static {v5, v1}, Luc/d;->a(Luc/d;Luc/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :try_start_2
    sget-object v5, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iget-object v2, v0, Luc/c;->e:Luc/d;

    .line 56
    .line 57
    iget-object v2, v2, Luc/d;->g:Luc/d$a;

    .line 58
    .line 59
    invoke-interface {v2}, Luc/d$a;->c()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    sub-long/2addr v5, v3

    .line 64
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/d0;->o(J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "finished run in "

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v5

    .line 79
    :try_start_3
    iget-object v6, p0, Luc/e;->a:Luc/d;

    .line 80
    .line 81
    iget-object v6, v6, Luc/d;->g:Luc/d$a;

    .line 82
    .line 83
    invoke-interface {v6, p0}, Luc/d$a;->execute(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception v5

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, v0, Luc/c;->e:Luc/d;

    .line 91
    .line 92
    iget-object v2, v2, Luc/d;->g:Luc/d$a;

    .line 93
    .line 94
    invoke-interface {v2}, Luc/d$a;->c()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    sub-long/2addr v6, v3

    .line 99
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/clearcut/d0;->o(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v3, "failed a run in "

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/clearcut/d0;->e(Luc/a;Luc/c;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    throw v5

    .line 113
    :cond_3
    return-void

    .line 114
    :catchall_2
    move-exception v1

    .line 115
    monitor-exit v0

    .line 116
    throw v1
.end method
