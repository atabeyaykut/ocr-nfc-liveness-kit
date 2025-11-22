.class public final Lo6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo6/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp6/f;

.field public final c:Lo6/e;

.field public final d:Lcom/google/android/gms/internal/clearcut/z;

.field public final e:Lcom/google/android/gms/internal/measurement/w5;

.field public final f:Lp4/m9;

.field public final g:Lh6/c0;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lp6/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lh5/l<",
            "Lp6/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp6/f;Lcom/google/android/gms/internal/clearcut/z;Lo6/e;Lcom/google/android/gms/internal/measurement/w5;Lp4/m9;Lh6/c0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo6/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    new-instance v2, Lh5/l;

    .line 14
    .line 15
    invoke-direct {v2}, Lh5/l;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lo6/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    iput-object p1, p0, Lo6/c;->a:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Lo6/c;->b:Lp6/f;

    .line 26
    .line 27
    iput-object p3, p0, Lo6/c;->d:Lcom/google/android/gms/internal/clearcut/z;

    .line 28
    .line 29
    iput-object p4, p0, Lo6/c;->c:Lo6/e;

    .line 30
    .line 31
    iput-object p5, p0, Lo6/c;->e:Lcom/google/android/gms/internal/measurement/w5;

    .line 32
    .line 33
    iput-object p6, p0, Lo6/c;->f:Lp4/m9;

    .line 34
    .line 35
    iput-object p7, p0, Lo6/c;->g:Lh6/c0;

    .line 36
    .line 37
    new-instance p1, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 p5, 0x0

    .line 43
    const-string p2, "max_custom_exception_events"

    .line 44
    .line 45
    const/16 p3, 0x8

    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    new-instance p6, Lp6/c;

    .line 52
    .line 53
    invoke-direct {p6, p2}, Lp6/c;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-string p2, "collect_reports"

    .line 57
    .line 58
    const/4 p3, 0x1

    .line 59
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const-string p3, "collect_anrs"

    .line 64
    .line 65
    const/4 p4, 0x0

    .line 66
    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    new-instance p7, Lp6/b;

    .line 71
    .line 72
    invoke-direct {p7, p2, p3}, Lp6/b;-><init>(ZZ)V

    .line 73
    .line 74
    .line 75
    const-string p2, "expires_at"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_0

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide p1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide p1

    .line 92
    const-wide/32 p3, 0x36ee80

    .line 93
    .line 94
    .line 95
    add-long/2addr p1, p3

    .line 96
    :goto_0
    move-wide p3, p1

    .line 97
    new-instance p1, Lp6/e;

    .line 98
    .line 99
    move-object p2, p1

    .line 100
    invoke-direct/range {p2 .. p7}, Lp6/e;-><init>(JLp6/a;Lp6/c;Lp6/b;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x3

    .line 17
    const-string v0, "FirebaseCrashlytics"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lp6/e;
    .locals 8

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {v1, p1}, Lg/d;->b(II)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-nez v3, :cond_7

    .line 10
    .line 11
    iget-object v3, p0, Lo6/c;->e:Lcom/google/android/gms/internal/measurement/w5;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/w5;->b()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x3

    .line 18
    if-eqz v3, :cond_6

    .line 19
    .line 20
    iget-object v5, p0, Lo6/c;->c:Lo6/e;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v6, "settings_version"

    .line 26
    .line 27
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eq v6, v4, :cond_0

    .line 32
    .line 33
    new-instance v6, Lo6/a;

    .line 34
    .line 35
    invoke-direct {v6}, Lo6/a;-><init>()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v6, Lo6/g;

    .line 40
    .line 41
    invoke-direct {v6}, Lo6/g;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v5, v5, Lo6/e;->a:Lcom/google/android/gms/internal/clearcut/z;

    .line 45
    .line 46
    invoke-interface {v6, v5, v3}, Lo6/f;->a(Lcom/google/android/gms/internal/clearcut/z;Lorg/json/JSONObject;)Lp6/e;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_5

    .line 51
    .line 52
    const-string v6, "Loaded cached settings: "

    .line 53
    .line 54
    invoke-static {v3, v6}, Lo6/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lo6/c;->d:Lcom/google/android/gms/internal/clearcut/z;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    invoke-static {v4, p1}, Lg/d;->b(II)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    iget-wide v3, v5, Lp6/e;->d:J

    .line 73
    .line 74
    cmp-long p1, v3, v6

    .line 75
    .line 76
    if-gez p1, :cond_1

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 p1, 0x0

    .line 81
    :goto_1
    if-nez p1, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const-string p1, "Cached settings have expired."

    .line 85
    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :catch_0
    move-exception p1

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "Returning cached settings."

    .line 99
    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    :cond_4
    move-object v2, v5

    .line 110
    goto :goto_4

    .line 111
    :catch_1
    move-exception p1

    .line 112
    move-object v2, v5

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    :try_start_2
    const-string p1, "Failed to parse cached settings data."

    .line 115
    .line 116
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    const-string p1, "No cached settings data found."

    .line 121
    .line 122
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    invoke-static {v0, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :goto_3
    const-string v1, "Failed to get cached settings"

    .line 133
    .line 134
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_4
    return-object v2
.end method
