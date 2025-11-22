.class public final Lc5/s3;
.super Lc5/y4;
.source "SourceFile"


# static fields
.field public static final z:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Landroid/content/SharedPreferences;

.field public d:Lc5/p3;

.field public final e:Lc5/o3;

.field public final f:Lc5/q3;

.field public g:Ljava/lang/String;

.field public h:Z

.field public j:J

.field public final k:Lc5/o3;

.field public final l:Lc5/m3;

.field public final m:Lc5/q3;

.field public final n:Lc5/m3;

.field public final p:Lc5/o3;

.field public q:Z

.field public final r:Lc5/m3;

.field public final s:Lc5/m3;

.field public final t:Lc5/o3;

.field public final v:Lc5/q3;

.field public final w:Lc5/q3;

.field public final x:Lc5/o3;

.field public final y:Lc5/n3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lc5/s3;->z:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lc5/i4;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lc5/y4;-><init>(Lc5/i4;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lc5/o3;

    .line 5
    .line 6
    const-string v0, "session_timeout"

    .line 7
    .line 8
    const-wide/32 v1, 0x1b7740

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0, v0, v1, v2}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lc5/s3;->k:Lc5/o3;

    .line 15
    .line 16
    new-instance p1, Lc5/m3;

    .line 17
    .line 18
    const-string v0, "start_new_session"

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {p1, p0, v0, v1}, Lc5/m3;-><init>(Lc5/s3;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lc5/s3;->l:Lc5/m3;

    .line 25
    .line 26
    new-instance p1, Lc5/o3;

    .line 27
    .line 28
    const-string v0, "last_pause_time"

    .line 29
    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    invoke-direct {p1, p0, v0, v1, v2}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lc5/s3;->p:Lc5/o3;

    .line 36
    .line 37
    new-instance p1, Lc5/q3;

    .line 38
    .line 39
    const-string v0, "non_personalized_ads"

    .line 40
    .line 41
    invoke-direct {p1, p0, v0}, Lc5/q3;-><init>(Lc5/s3;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lc5/s3;->m:Lc5/q3;

    .line 45
    .line 46
    new-instance p1, Lc5/m3;

    .line 47
    .line 48
    const-string v0, "allow_remote_dynamite"

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {p1, p0, v0, v3}, Lc5/m3;-><init>(Lc5/s3;Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lc5/s3;->n:Lc5/m3;

    .line 55
    .line 56
    new-instance p1, Lc5/o3;

    .line 57
    .line 58
    const-string v0, "first_open_time"

    .line 59
    .line 60
    invoke-direct {p1, p0, v0, v1, v2}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lc5/s3;->e:Lc5/o3;

    .line 64
    .line 65
    const-string p1, "app_install_time"

    .line 66
    .line 67
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lc5/q3;

    .line 71
    .line 72
    const-string v0, "app_instance_id"

    .line 73
    .line 74
    invoke-direct {p1, p0, v0}, Lc5/q3;-><init>(Lc5/s3;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lc5/s3;->f:Lc5/q3;

    .line 78
    .line 79
    new-instance p1, Lc5/m3;

    .line 80
    .line 81
    const-string v0, "app_backgrounded"

    .line 82
    .line 83
    invoke-direct {p1, p0, v0, v3}, Lc5/m3;-><init>(Lc5/s3;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lc5/s3;->r:Lc5/m3;

    .line 87
    .line 88
    new-instance p1, Lc5/m3;

    .line 89
    .line 90
    const-string v0, "deep_link_retrieval_complete"

    .line 91
    .line 92
    invoke-direct {p1, p0, v0, v3}, Lc5/m3;-><init>(Lc5/s3;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lc5/s3;->s:Lc5/m3;

    .line 96
    .line 97
    new-instance p1, Lc5/o3;

    .line 98
    .line 99
    const-string v0, "deep_link_retrieval_attempts"

    .line 100
    .line 101
    invoke-direct {p1, p0, v0, v1, v2}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lc5/s3;->t:Lc5/o3;

    .line 105
    .line 106
    new-instance p1, Lc5/q3;

    .line 107
    .line 108
    const-string v0, "firebase_feature_rollouts"

    .line 109
    .line 110
    invoke-direct {p1, p0, v0}, Lc5/q3;-><init>(Lc5/s3;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lc5/s3;->v:Lc5/q3;

    .line 114
    .line 115
    new-instance p1, Lc5/q3;

    .line 116
    .line 117
    const-string v0, "deferred_attribution_cache"

    .line 118
    .line 119
    invoke-direct {p1, p0, v0}, Lc5/q3;-><init>(Lc5/s3;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lc5/s3;->w:Lc5/q3;

    .line 123
    .line 124
    new-instance p1, Lc5/o3;

    .line 125
    .line 126
    const-string v0, "deferred_attribution_cache_timestamp"

    .line 127
    .line 128
    invoke-direct {p1, p0, v0, v1, v2}, Lc5/o3;-><init>(Lc5/s3;Ljava/lang/String;J)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Lc5/s3;->x:Lc5/o3;

    .line 132
    .line 133
    new-instance p1, Lc5/n3;

    .line 134
    .line 135
    invoke-direct {p1, p0}, Lc5/n3;-><init>(Lc5/s3;)V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lc5/s3;->y:Lc5/n3;

    .line 139
    .line 140
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0}, Lc5/y4;->d()V

    iget-object v0, p0, Lc5/s3;->c:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lc5/s3;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final h()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull$List;
        value = {
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.preferences"
                }
            .end subannotation,
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.monitoringSample"
                }
            .end subannotation
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    check-cast v0, Lc5/i4;

    .line 4
    .line 5
    iget-object v1, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "com.google.android.gms.measurement.prefs"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lc5/s3;->c:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    const-string v2, "has_been_opened"

    .line 17
    .line 18
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput-boolean v1, p0, Lc5/s3;->q:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lc5/s3;->c:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v1, Lc5/p3;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v0, Lc5/r2;->c:Lc5/q2;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v2}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-direct {v1, p0, v2, v3}, Lc5/p3;-><init>(Lc5/s3;J)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lc5/s3;->d:Lc5/p3;

    .line 67
    .line 68
    return-void
.end method

.method public final n()Lc5/f;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc5/f;->b(Ljava/lang/String;)Lc5/f;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p(Ljava/lang/Boolean;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final q(Z)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    check-cast v0, Lc5/i4;

    .line 7
    .line 8
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 9
    .line 10
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "App measurement setting deferred collection"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "deferred_analytics_collection"

    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final r(J)Z
    .locals 3

    iget-object v0, p0, Lc5/s3;->k:Lc5/o3;

    invoke-virtual {v0}, Lc5/o3;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lc5/s3;->p:Lc5/o3;

    invoke-virtual {v0}, Lc5/o3;->a()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final s(I)Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
