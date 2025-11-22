.class public final Lc5/v5;
.super Lc5/r3;
.source "SourceFile"


# instance fields
.field public c:Lc5/t5;

.field public d:Lcom/google/android/gms/internal/clearcut/f;

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field public j:Lc5/f;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "consentLock"
    .end annotation
.end field

.field public k:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "consentLock"
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public m:J

.field public n:I

.field public final p:Lc5/a8;

.field public q:Z

.field public final r:Lcom/google/android/gms/internal/measurement/w5;


# direct methods
.method public constructor <init>(Lc5/i4;)V
    .locals 3

    invoke-direct {p0, p1}, Lc5/r3;-><init>(Lc5/i4;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lc5/v5;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc5/v5;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc5/v5;->q:Z

    new-instance v0, Lcom/google/android/gms/internal/measurement/w5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/w5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc5/v5;->r:Lcom/google/android/gms/internal/measurement/w5;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lc5/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lc5/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lc5/v5;->j:Lc5/f;

    const/16 v0, 0x64

    iput v0, p0, Lc5/v5;->k:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lc5/v5;->m:J

    iput v0, p0, Lc5/v5;->n:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc5/v5;->l:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lc5/a8;

    invoke-direct {v0, p1}, Lc5/a8;-><init>(Lc5/i4;)V

    iput-object v0, p0, Lc5/v5;->p:Lc5/a8;

    return-void
.end method

.method public static B(Lc5/v5;Lc5/f;IJZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lc5/v5;->m:J

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    cmp-long v5, p3, v0

    .line 14
    .line 15
    if-gtz v5, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lc5/v5;->n:I

    .line 18
    .line 19
    if-gt v0, p2, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    check-cast v4, Lc5/i4;

    .line 28
    .line 29
    iget-object p0, v4, Lc5/i4;->j:Lc5/e3;

    .line 30
    .line 31
    invoke-static {p0}, Lc5/i4;->e(Lc5/y4;)V

    .line 32
    .line 33
    .line 34
    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    .line 35
    .line 36
    iget-object p0, p0, Lc5/e3;->m:Lc5/c3;

    .line 37
    .line 38
    :goto_1
    invoke-virtual {p0, p1, p2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :goto_2
    check-cast v4, Lc5/i4;

    .line 43
    .line 44
    iget-object v0, v4, Lc5/i4;->h:Lc5/s3;

    .line 45
    .line 46
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Lc5/s3;->s(I)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "consent_settings"

    .line 67
    .line 68
    invoke-virtual {p1}, Lc5/f;->d()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    .line 75
    const-string p1, "consent_source"

    .line 76
    .line 77
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    .line 82
    .line 83
    iput-wide p3, p0, Lc5/v5;->m:J

    .line 84
    .line 85
    iput p2, p0, Lc5/v5;->n:I

    .line 86
    .line 87
    invoke-virtual {v4}, Lc5/i4;->s()Lc5/t6;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 95
    .line 96
    .line 97
    if-eqz p5, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 100
    .line 101
    move-object p2, p1

    .line 102
    check-cast p2, Lc5/i4;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    check-cast p1, Lc5/i4;

    .line 108
    .line 109
    invoke-virtual {p1}, Lc5/i4;->p()Lc5/y2;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lc5/y2;->h()V

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {p0}, Lc5/t6;->o()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0, v3}, Lc5/t6;->q(Z)Lc5/y7;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance p2, Lc5/j6;

    .line 127
    .line 128
    invoke-direct {p2, p0, p1, v2}, Lc5/j6;-><init>(Lc5/t6;Lc5/y7;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    if-eqz p6, :cond_5

    .line 135
    .line 136
    invoke-virtual {v4}, Lc5/i4;->s()Lc5/t6;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lc5/t6;->x(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    return-void

    .line 149
    :cond_6
    iget-object p0, v4, Lc5/i4;->j:Lc5/e3;

    .line 150
    .line 151
    invoke-static {p0}, Lc5/i4;->e(Lc5/y4;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p0, p0, Lc5/e3;->m:Lc5/c3;

    .line 159
    .line 160
    const-string p2, "Lower precedence consent source ignored, proposed source"

    .line 161
    .line 162
    goto :goto_1
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final C()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 8
    .line 9
    check-cast v0, Lc5/i4;

    .line 10
    .line 11
    invoke-virtual {v0}, Lc5/i4;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, v0, Lc5/i4;->g:Lc5/e;

    .line 18
    .line 19
    sget-object v2, Lc5/r2;->Z:Lc5/q2;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v3, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Lc5/i4;->g:Lc5/e;

    .line 30
    .line 31
    iget-object v4, v1, Lc5/x4;->a:Lc5/z4;

    .line 32
    .line 33
    check-cast v4, Lc5/i4;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v4, "google_analytics_deferred_deep_link_enabled"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Lc5/e;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 53
    .line 54
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "Deferred Deep Link feature enabled."

    .line 58
    .line 59
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lc5/i4;->k:Lc5/h4;

    .line 65
    .line 66
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lc5/d5;

    .line 70
    .line 71
    invoke-direct {v4, p0, v2}, Lc5/d5;-><init>(Lc5/r3;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lc5/r3;->c()V

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x1

    .line 88
    invoke-virtual {v1, v4}, Lc5/t6;->q(Z)Lc5/y7;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-object v5, v1, Lc5/x4;->a:Lc5/z4;

    .line 93
    .line 94
    check-cast v5, Lc5/i4;

    .line 95
    .line 96
    invoke-virtual {v5}, Lc5/i4;->p()Lc5/y2;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    new-array v6, v2, [B

    .line 101
    .line 102
    const/4 v7, 0x3

    .line 103
    invoke-virtual {v5, v7, v6}, Lc5/y2;->o(I[B)Z

    .line 104
    .line 105
    .line 106
    new-instance v5, Lc5/j6;

    .line 107
    .line 108
    invoke-direct {v5, v1, v4, v2}, Lc5/j6;-><init>(Lc5/t6;Lc5/y7;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v5}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    iput-boolean v2, p0, Lc5/v5;->q:Z

    .line 115
    .line 116
    iget-object v1, v0, Lc5/i4;->h:Lc5/s3;

    .line 117
    .line 118
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lc5/x4;->b()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const-string v4, "previous_os_version"

    .line 129
    .line 130
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    .line 135
    .line 136
    check-cast v3, Lc5/i4;

    .line 137
    .line 138
    invoke-virtual {v3}, Lc5/i4;->n()Lc5/m;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lc5/y4;->d()V

    .line 143
    .line 144
    .line 145
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_1

    .line 152
    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_1

    .line 158
    .line 159
    invoke-virtual {v1}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    .line 169
    .line 170
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    .line 172
    .line 173
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_2

    .line 178
    .line 179
    invoke-virtual {v0}, Lc5/i4;->n()Lc5/m;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lc5/y4;->d()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_2

    .line 191
    .line 192
    new-instance v0, Landroid/os/Bundle;

    .line 193
    .line 194
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v1, "_po"

    .line 198
    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v1, "auto"

    .line 203
    .line 204
    const-string v2, "_ou"

    .line 205
    .line 206
    invoke-virtual {p0, v1, v2, v0}, Lc5/v5;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    :cond_2
    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    check-cast v0, Lc5/i4;

    .line 4
    .line 5
    iget-object v1, v0, Lc5/i4;->p:Lc5/w;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "name"

    .line 23
    .line 24
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "creation_timestamp"

    .line 28
    .line 29
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const-string p1, "expired_event_name"

    .line 35
    .line 36
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "expired_event_params"

    .line 40
    .line 41
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, v0, Lc5/i4;->k:Lc5/h4;

    .line 45
    .line 46
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lc5/k;

    .line 50
    .line 51
    const/4 p3, 0x2

    .line 52
    invoke-direct {p2, p3, p0, v3}, Lc5/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lc5/i4;

    .line 5
    .line 6
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v1, v1, Landroid/app/Application;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lc5/v5;->c:Lc5/t5;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lc5/i4;

    .line 21
    .line 22
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/Application;

    .line 29
    .line 30
    iget-object v1, p0, Lc5/v5;->c:Lc5/t5;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 20

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string v0, "app"

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object/from16 v3, p1

    .line 10
    .line 11
    :goto_0
    if-nez p3, :cond_1

    .line 12
    .line 13
    new-instance v0, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v0, p3

    .line 20
    .line 21
    :goto_1
    const-string v1, "screen_view"

    .line 22
    .line 23
    move-object/from16 v4, p2

    .line 24
    .line 25
    invoke-static {v4, v1}, Lc5/v7;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_d

    .line 31
    .line 32
    iget-object v1, v11, Lc5/x4;->a:Lc5/z4;

    .line 33
    .line 34
    check-cast v1, Lc5/i4;

    .line 35
    .line 36
    iget-object v1, v1, Lc5/i4;->q:Lc5/f6;

    .line 37
    .line 38
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, v1, Lc5/f6;->m:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v5

    .line 44
    :try_start_0
    iget-boolean v3, v1, Lc5/f6;->l:Z

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 49
    .line 50
    check-cast v0, Lc5/i4;

    .line 51
    .line 52
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 53
    .line 54
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Lc5/e3;->l:Lc5/c3;

    .line 58
    .line 59
    const-string v1, "Cannot log screen view event when the app is in the background."

    .line 60
    .line 61
    :goto_2
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_2
    const-string v3, "screen_name"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    const/16 v3, 0x64

    .line 73
    .line 74
    if-eqz v13, :cond_4

    .line 75
    .line 76
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-lez v4, :cond_3

    .line 81
    .line 82
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    iget-object v6, v1, Lc5/x4;->a:Lc5/z4;

    .line 87
    .line 88
    check-cast v6, Lc5/i4;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    if-le v4, v3, :cond_4

    .line 94
    .line 95
    :cond_3
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 96
    .line 97
    check-cast v0, Lc5/i4;

    .line 98
    .line 99
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 100
    .line 101
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Lc5/e3;->l:Lc5/c3;

    .line 105
    .line 106
    const-string v1, "Invalid screen name length for screen view. Length"

    .line 107
    .line 108
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :goto_3
    invoke-virtual {v0, v2, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_4
    const-string v4, "screen_class"

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-lez v6, :cond_5

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    iget-object v7, v1, Lc5/x4;->a:Lc5/z4;

    .line 140
    .line 141
    check-cast v7, Lc5/i4;

    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    if-le v6, v3, :cond_6

    .line 147
    .line 148
    :cond_5
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 149
    .line 150
    check-cast v0, Lc5/i4;

    .line 151
    .line 152
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 153
    .line 154
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Lc5/e3;->l:Lc5/c3;

    .line 158
    .line 159
    const-string v1, "Invalid screen class length for screen view. Length"

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    goto :goto_3

    .line 170
    :cond_6
    if-nez v4, :cond_8

    .line 171
    .line 172
    iget-object v3, v1, Lc5/f6;->g:Landroid/app/Activity;

    .line 173
    .line 174
    if-eqz v3, :cond_7

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v1, v3}, Lc5/f6;->p(Ljava/lang/Class;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    goto :goto_4

    .line 185
    :cond_7
    const-string v3, "Activity"

    .line 186
    .line 187
    :goto_4
    move-object v14, v3

    .line 188
    goto :goto_5

    .line 189
    :cond_8
    move-object v14, v4

    .line 190
    :goto_5
    iget-object v3, v1, Lc5/f6;->c:Lc5/b6;

    .line 191
    .line 192
    iget-boolean v4, v1, Lc5/f6;->h:Z

    .line 193
    .line 194
    if-eqz v4, :cond_9

    .line 195
    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    iput-boolean v2, v1, Lc5/f6;->h:Z

    .line 199
    .line 200
    iget-object v2, v3, Lc5/b6;->b:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v2, v14}, Lc5/v7;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    iget-object v3, v3, Lc5/b6;->a:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v3, v13}, Lc5/v7;->W(Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v2, :cond_9

    .line 213
    .line 214
    if-eqz v3, :cond_9

    .line 215
    .line 216
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 217
    .line 218
    check-cast v0, Lc5/i4;

    .line 219
    .line 220
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 221
    .line 222
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, v0, Lc5/e3;->l:Lc5/c3;

    .line 226
    .line 227
    const-string v1, "Ignoring call to log screen view event with duplicate parameters."

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :goto_6
    monitor-exit v5

    .line 232
    goto/16 :goto_a

    .line 233
    .line 234
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 236
    .line 237
    check-cast v2, Lc5/i4;

    .line 238
    .line 239
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 240
    .line 241
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 245
    .line 246
    if-nez v13, :cond_a

    .line 247
    .line 248
    const-string v3, "null"

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_a
    move-object v3, v13

    .line 252
    :goto_7
    if-nez v14, :cond_b

    .line 253
    .line 254
    const-string v4, "null"

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_b
    move-object v4, v14

    .line 258
    :goto_8
    const-string v5, "Logging screen view with name, class"

    .line 259
    .line 260
    invoke-virtual {v2, v3, v5, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v1, Lc5/f6;->c:Lc5/b6;

    .line 264
    .line 265
    if-nez v2, :cond_c

    .line 266
    .line 267
    iget-object v2, v1, Lc5/f6;->d:Lc5/b6;

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_c
    iget-object v2, v1, Lc5/f6;->c:Lc5/b6;

    .line 271
    .line 272
    :goto_9
    new-instance v3, Lc5/b6;

    .line 273
    .line 274
    iget-object v4, v1, Lc5/x4;->a:Lc5/z4;

    .line 275
    .line 276
    check-cast v4, Lc5/i4;

    .line 277
    .line 278
    iget-object v4, v4, Lc5/i4;->m:Lc5/v7;

    .line 279
    .line 280
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4}, Lc5/v7;->l0()J

    .line 284
    .line 285
    .line 286
    move-result-wide v15

    .line 287
    const/16 v17, 0x1

    .line 288
    .line 289
    move-object v12, v3

    .line 290
    move-wide/from16 v18, p6

    .line 291
    .line 292
    invoke-direct/range {v12 .. v19}, Lc5/b6;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 293
    .line 294
    .line 295
    iput-object v3, v1, Lc5/f6;->c:Lc5/b6;

    .line 296
    .line 297
    iput-object v2, v1, Lc5/f6;->d:Lc5/b6;

    .line 298
    .line 299
    iput-object v3, v1, Lc5/f6;->j:Lc5/b6;

    .line 300
    .line 301
    iget-object v4, v1, Lc5/x4;->a:Lc5/z4;

    .line 302
    .line 303
    check-cast v4, Lc5/i4;

    .line 304
    .line 305
    iget-object v4, v4, Lc5/i4;->p:Lc5/w;

    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 311
    .line 312
    .line 313
    move-result-wide v4

    .line 314
    iget-object v6, v1, Lc5/x4;->a:Lc5/z4;

    .line 315
    .line 316
    check-cast v6, Lc5/i4;

    .line 317
    .line 318
    iget-object v6, v6, Lc5/i4;->k:Lc5/h4;

    .line 319
    .line 320
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 321
    .line 322
    .line 323
    new-instance v7, Lc5/c6;

    .line 324
    .line 325
    move-object/from16 p1, v7

    .line 326
    .line 327
    move-object/from16 p2, v1

    .line 328
    .line 329
    move-object/from16 p3, v0

    .line 330
    .line 331
    move-object/from16 p4, v3

    .line 332
    .line 333
    move-object/from16 p5, v2

    .line 334
    .line 335
    move-wide/from16 p6, v4

    .line 336
    .line 337
    invoke-direct/range {p1 .. p7}, Lc5/c6;-><init>(Lc5/f6;Landroid/os/Bundle;Lc5/b6;Lc5/b6;J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v7}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 341
    .line 342
    .line 343
    :goto_a
    return-void

    .line 344
    :catchall_0
    move-exception v0

    .line 345
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    throw v0

    .line 347
    :cond_d
    if-eqz p5, :cond_f

    .line 348
    .line 349
    iget-object v1, v11, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    .line 350
    .line 351
    if-eqz v1, :cond_f

    .line 352
    .line 353
    invoke-static/range {p2 .. p2}, Lc5/v7;->S(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_e

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_e
    const/4 v9, 0x0

    .line 361
    goto :goto_c

    .line 362
    :cond_f
    :goto_b
    const/4 v1, 0x1

    .line 363
    const/4 v9, 0x1

    .line 364
    :goto_c
    new-instance v7, Landroid/os/Bundle;

    .line 365
    .line 366
    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    :cond_10
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_15

    .line 382
    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v7, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    instance-of v6, v5, Landroid/os/Bundle;

    .line 394
    .line 395
    if-eqz v6, :cond_11

    .line 396
    .line 397
    new-instance v6, Landroid/os/Bundle;

    .line 398
    .line 399
    check-cast v5, Landroid/os/Bundle;

    .line 400
    .line 401
    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7, v1, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 405
    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_11
    instance-of v1, v5, [Landroid/os/Parcelable;

    .line 409
    .line 410
    if-eqz v1, :cond_13

    .line 411
    .line 412
    check-cast v5, [Landroid/os/Parcelable;

    .line 413
    .line 414
    const/4 v1, 0x0

    .line 415
    :goto_e
    array-length v6, v5

    .line 416
    if-ge v1, v6, :cond_10

    .line 417
    .line 418
    aget-object v6, v5, v1

    .line 419
    .line 420
    instance-of v8, v6, Landroid/os/Bundle;

    .line 421
    .line 422
    if-eqz v8, :cond_12

    .line 423
    .line 424
    new-instance v8, Landroid/os/Bundle;

    .line 425
    .line 426
    check-cast v6, Landroid/os/Bundle;

    .line 427
    .line 428
    invoke-direct {v8, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 429
    .line 430
    .line 431
    aput-object v8, v5, v1

    .line 432
    .line 433
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 434
    .line 435
    goto :goto_e

    .line 436
    :cond_13
    instance-of v1, v5, Ljava/util/List;

    .line 437
    .line 438
    if-eqz v1, :cond_10

    .line 439
    .line 440
    check-cast v5, Ljava/util/List;

    .line 441
    .line 442
    const/4 v1, 0x0

    .line 443
    :goto_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-ge v1, v6, :cond_10

    .line 448
    .line 449
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    instance-of v8, v6, Landroid/os/Bundle;

    .line 454
    .line 455
    if-eqz v8, :cond_14

    .line 456
    .line 457
    new-instance v8, Landroid/os/Bundle;

    .line 458
    .line 459
    check-cast v6, Landroid/os/Bundle;

    .line 460
    .line 461
    invoke-direct {v8, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v5, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 468
    .line 469
    goto :goto_f

    .line 470
    :cond_15
    iget-object v0, v11, Lc5/x4;->a:Lc5/z4;

    .line 471
    .line 472
    check-cast v0, Lc5/i4;

    .line 473
    .line 474
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 475
    .line 476
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 477
    .line 478
    .line 479
    new-instance v12, Lc5/k5;

    .line 480
    .line 481
    move-object v1, v12

    .line 482
    move-object/from16 v2, p0

    .line 483
    .line 484
    move-object/from16 v4, p2

    .line 485
    .line 486
    move-wide/from16 v5, p6

    .line 487
    .line 488
    move/from16 v8, p5

    .line 489
    .line 490
    move/from16 v10, p4

    .line 491
    .line 492
    invoke-direct/range {v1 .. v10}, Lc5/k5;-><init>(Lc5/v5;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v12}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 496
    .line 497
    .line 498
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    check-cast v0, Lc5/i4;

    .line 7
    .line 8
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    move-object v1, p0

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p1

    .line 20
    move-object v6, p2

    .line 21
    invoke-virtual/range {v1 .. v6}, Lc5/v5;->o(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final o(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/t2;->b()V

    move-object v10, p0

    iget-object v0, v10, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    if-eqz v0, :cond_1

    invoke-static/range {p5 .. p5}, Lc5/v7;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p5

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lc5/v5;->p(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    invoke-static/range {p1 .. p1}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lc5/t2;->b()V

    invoke-virtual/range {p0 .. p0}, Lc5/r3;->c()V

    iget-object v1, v7, Lc5/x4;->a:Lc5/z4;

    move-object v13, v1

    check-cast v13, Lc5/i4;

    invoke-virtual {v13}, Lc5/i4;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v13}, Lc5/i4;->o()Lc5/w2;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc5/w2;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v13, Lc5/i4;->j:Lc5/e3;

    .line 4
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    const-string v1, "Dropping non-safelisted event. event name, origin"

    .line 5
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    invoke-virtual {v0, v9, v1, v8}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, v7, Lc5/v5;->f:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_3

    iput-boolean v15, v7, Lc5/v5;->f:Z

    :try_start_0
    move-object v0, v1

    check-cast v0, Lc5/i4;

    .line 6
    iget-boolean v0, v0, Lc5/i4;->e:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_2

    .line 7
    :try_start_1
    move-object v0, v1

    check-cast v0, Lc5/i4;

    .line 8
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v15, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-array v2, v15, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v6

    const-string v3, "initialize"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lc5/i4;

    .line 10
    iget-object v3, v3, Lc5/i4;->a:Landroid/content/Context;

    aput-object v3, v2, v6

    .line 11
    invoke-virtual {v0, v14, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    check-cast v1, Lc5/i4;

    .line 12
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 13
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 14
    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    .line 15
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 16
    :catch_1
    iget-object v0, v13, Lc5/i4;->j:Lc5/e3;

    .line 17
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    const-string v1, "Tag Manager is not found and thus will not be used"

    .line 18
    iget-object v0, v0, Lc5/e3;->m:Lc5/c3;

    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "auto"

    const-string v16, "_lgclid"

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v0, v13, Lc5/i4;->p:Lc5/w;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    const/4 v14, 0x0

    move-object/from16 v6, v16

    .line 22
    invoke-virtual/range {v1 .. v6}, Lc5/v5;->w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p6, :cond_5

    .line 23
    sget-object v0, Lc5/v7;->h:[Ljava/lang/String;

    aget-object v0, v0, v14

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v15

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, v13, Lc5/i4;->m:Lc5/v7;

    .line 25
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 26
    iget-object v1, v13, Lc5/i4;->h:Lc5/s3;

    .line 27
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 28
    iget-object v1, v1, Lc5/s3;->y:Lc5/n3;

    invoke-virtual {v1}, Lc5/n3;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lc5/v7;->u(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, v7, Lc5/v5;->r:Lcom/google/android/gms/internal/measurement/w5;

    const/16 v1, 0x28

    if-nez p8, :cond_a

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "_iap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 29
    iget-object v2, v13, Lc5/i4;->m:Lc5/v7;

    .line 30
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    const-string v3, "event"

    .line 31
    invoke-virtual {v2, v3, v9}, Lc5/v7;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    sget-object v4, La6/a;->c:[Ljava/lang/String;

    sget-object v5, La6/a;->d:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v9}, Lc5/v7;->I(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v6, 0xd

    goto :goto_5

    :cond_7
    iget-object v4, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v4, Lc5/i4;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1, v3, v9}, Lc5/v7;->H(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_4
    const/4 v6, 0x2

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_a

    .line 32
    iget-object v2, v13, Lc5/i4;->j:Lc5/e3;

    .line 33
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 34
    iget-object v3, v13, Lc5/i4;->n:Lc5/z2;

    .line 35
    invoke-virtual {v3, v9}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lc5/e3;->h:Lc5/c3;

    const-string v4, "Invalid public event name. Event will not be logged (FE)"

    invoke-virtual {v2, v3, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v2, v13, Lc5/i4;->m:Lc5/v7;

    .line 37
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 38
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v9, v15}, Lc5/v7;->n(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move v14, v2

    .line 39
    :cond_9
    iget-object v2, v13, Lc5/i4;->m:Lc5/v7;

    .line 40
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    const/4 v3, 0x0

    const-string v4, "_ev"

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move/from16 p3, v6

    move-object/from16 p4, v4

    move-object/from16 p5, v1

    move/from16 p6, v14

    invoke-static/range {p1 .. p6}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 42
    :cond_a
    sget-object v2, Lcom/google/android/gms/internal/measurement/zb;->b:Lcom/google/android/gms/internal/measurement/zb;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zb;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 43
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ac;

    .line 44
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ac;->a()V

    .line 45
    iget-object v2, v13, Lc5/i4;->g:Lc5/e;

    .line 46
    sget-object v3, Lc5/r2;->w0:Lc5/q2;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v2

    const-string v3, "_sc"

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_c

    .line 47
    iget-object v2, v13, Lc5/i4;->q:Lc5/f6;

    .line 48
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 49
    invoke-virtual {v2, v14}, Lc5/f6;->o(Z)Lc5/b6;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v12, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iput-boolean v15, v2, Lc5/b6;->d:Z

    :cond_b
    if-eqz p6, :cond_e

    if-nez p8, :cond_e

    goto :goto_6

    .line 50
    :cond_c
    iget-object v2, v13, Lc5/i4;->q:Lc5/f6;

    .line 51
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 52
    invoke-virtual {v2, v14}, Lc5/f6;->o(Z)Lc5/b6;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v12, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    iput-boolean v15, v2, Lc5/b6;->d:Z

    :cond_d
    if-eqz p6, :cond_e

    if-nez p8, :cond_e

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    invoke-static {v2, v12, v6}, Lc5/v7;->t(Lc5/b6;Landroid/os/Bundle;Z)V

    const-string v2, "am"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static/range {p2 .. p2}, Lc5/v7;->S(Ljava/lang/String;)Z

    move-result v4

    if-eqz p6, :cond_11

    iget-object v5, v7, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    if-eqz v5, :cond_11

    if-nez v4, :cond_11

    if-eqz v2, :cond_f

    const/16 v16, 0x1

    goto :goto_9

    .line 53
    :cond_f
    iget-object v0, v13, Lc5/i4;->j:Lc5/e3;

    .line 54
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 55
    iget-object v1, v13, Lc5/i4;->n:Lc5/z2;

    .line 56
    invoke-virtual {v1, v9}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v2, v13, Lc5/i4;->n:Lc5/z2;

    .line 58
    invoke-virtual {v2, v12}, Lc5/z2;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    const-string v3, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v1, v3, v2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v7, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v13, v7, Lc5/v5;->d:Lcom/google/android/gms/internal/clearcut/f;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    :try_start_4
    iget-object v0, v13, Lcom/google/android/gms/internal/clearcut/f;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/b1;

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/b1;->w(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    iget-object v1, v13, Lcom/google/android/gms/internal/clearcut/f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    if-eqz v1, :cond_10

    .line 60
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    const-string v2, "Event interceptor threw exception"

    .line 61
    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    :goto_8
    return-void

    :cond_11
    move/from16 v16, v2

    .line 62
    :goto_9
    invoke-virtual {v13}, Lc5/i4;->b()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 63
    iget-object v2, v13, Lc5/i4;->m:Lc5/v7;

    .line 64
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 65
    invoke-virtual {v2, v9}, Lc5/v7;->f0(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    .line 66
    iget-object v3, v13, Lc5/i4;->j:Lc5/e3;

    .line 67
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 68
    iget-object v4, v13, Lc5/i4;->n:Lc5/z2;

    .line 69
    invoke-virtual {v4, v9}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lc5/e3;->h:Lc5/c3;

    const-string v5, "Invalid event name. Event will not be logged (FE)"

    invoke-virtual {v3, v4, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v3, v13, Lc5/i4;->m:Lc5/v7;

    .line 71
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 72
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v9, v15}, Lc5/v7;->n(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_a

    :cond_12
    const/4 v6, 0x0

    .line 73
    :goto_a
    iget-object v3, v13, Lc5/i4;->m:Lc5/v7;

    .line 74
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    const-string v4, "_ev"

    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, v0

    move-object/from16 p2, p9

    move/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v1

    move/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_13
    const-string v0, "_o"

    const-string v1, "_sn"

    const-string v2, "_si"

    filled-new-array {v0, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 77
    iget-object v1, v13, Lc5/i4;->m:Lc5/v7;

    .line 78
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v6, p8

    .line 79
    invoke-virtual/range {v1 .. v6}, Lc5/v7;->o0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v12}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    iget-object v1, v13, Lc5/i4;->q:Lc5/f6;

    .line 81
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 82
    invoke-virtual {v1, v14}, Lc5/f6;->o(Z)Lc5/b6;

    move-result-object v1

    const-wide/16 v5, 0x0

    const-string v4, "_ae"

    if-eqz v1, :cond_14

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 83
    iget-object v1, v13, Lc5/i4;->l:Lc5/e7;

    .line 84
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 85
    iget-object v1, v1, Lc5/e7;->e:Lc5/c7;

    iget-object v2, v1, Lc5/c7;->d:Lc5/e7;

    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v2, Lc5/i4;

    .line 86
    iget-object v2, v2, Lc5/i4;->p:Lc5/w;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 89
    iget-wide v14, v1, Lc5/c7;->b:J

    sub-long v14, v2, v14

    iput-wide v2, v1, Lc5/c7;->b:J

    cmp-long v1, v14, v5

    if-lez v1, :cond_14

    .line 90
    iget-object v1, v13, Lc5/i4;->m:Lc5/v7;

    .line 91
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 92
    invoke-virtual {v1, v12, v14, v15}, Lc5/v7;->r(Landroid/os/Bundle;J)V

    .line 93
    :cond_14
    sget-object v1, Lcom/google/android/gms/internal/measurement/fa;->b:Lcom/google/android/gms/internal/measurement/fa;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/fa;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 94
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ga;

    .line 95
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ga;->a()V

    .line 96
    iget-object v1, v13, Lc5/i4;->g:Lc5/e;

    .line 97
    sget-object v2, Lc5/r2;->h0:Lc5/q2;

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v2}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "auto"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_18

    const-string v1, "_ssr"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 98
    iget-object v1, v13, Lc5/i4;->m:Lc5/v7;

    .line 99
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 100
    invoke-virtual {v12, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw3/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v2, v14

    goto :goto_b

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_16
    :goto_b
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    check-cast v3, Lc5/i4;

    .line 101
    iget-object v3, v3, Lc5/i4;->h:Lc5/s3;

    .line 102
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 103
    iget-object v3, v3, Lc5/s3;->v:Lc5/q3;

    invoke-virtual {v3}, Lc5/q3;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc5/v7;->W(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    check-cast v1, Lc5/i4;

    if-nez v3, :cond_17

    .line 104
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 105
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 106
    iget-object v1, v1, Lc5/s3;->v:Lc5/q3;

    invoke-virtual {v1, v2}, Lc5/q3;->b(Ljava/lang/String;)V

    goto :goto_c

    .line 107
    :cond_17
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 108
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    .line 109
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 110
    iget-object v1, v13, Lc5/i4;->m:Lc5/v7;

    .line 111
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 112
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    check-cast v1, Lc5/i4;

    .line 113
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 114
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 115
    iget-object v1, v1, Lc5/s3;->v:Lc5/q3;

    invoke-virtual {v1}, Lc5/q3;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v12, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_c
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, v13, Lc5/i4;->h:Lc5/s3;

    .line 117
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 118
    iget-object v1, v1, Lc5/s3;->p:Lc5/o3;

    invoke-virtual {v1}, Lc5/o3;->a()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_1a

    .line 119
    iget-object v1, v13, Lc5/i4;->h:Lc5/s3;

    .line 120
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 121
    invoke-virtual {v1, v10, v11}, Lc5/s3;->r(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 122
    iget-object v1, v13, Lc5/i4;->h:Lc5/s3;

    .line 123
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 124
    iget-object v1, v1, Lc5/s3;->r:Lc5/m3;

    invoke-virtual {v1}, Lc5/m3;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 125
    iget-object v1, v13, Lc5/i4;->j:Lc5/e3;

    .line 126
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 127
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    const-string v17, "auto"

    const-string v18, "_sid"

    const/16 v19, 0x0

    .line 128
    iget-object v1, v13, Lc5/i4;->p:Lc5/w;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    move-object v14, v4

    move-object/from16 v4, v19

    move-wide v7, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    .line 131
    invoke-virtual/range {v1 .. v6}, Lc5/v5;->w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "auto"

    const-string v6, "_sno"

    const/4 v4, 0x0

    .line 132
    iget-object v1, v13, Lc5/i4;->p:Lc5/w;

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    .line 135
    invoke-virtual/range {v1 .. v6}, Lc5/v5;->w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "auto"

    const-string v6, "_se"

    .line 136
    iget-object v1, v13, Lc5/i4;->p:Lc5/w;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    .line 139
    invoke-virtual/range {v1 .. v6}, Lc5/v5;->w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1a
    move-object v14, v4

    move-wide v7, v5

    :goto_d
    const-string v1, "extend_session"

    invoke-virtual {v12, v1, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    .line 140
    iget-object v1, v13, Lc5/i4;->j:Lc5/e3;

    .line 141
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 142
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 143
    iget-object v1, v13, Lc5/i4;->l:Lc5/e7;

    .line 144
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 145
    iget-object v1, v1, Lc5/e7;->d:Lc5/d7;

    const/4 v2, 0x1

    invoke-virtual {v1, v10, v11, v2}, Lc5/d7;->b(JZ)V

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v2, :cond_20

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 146
    iget-object v4, v13, Lc5/i4;->m:Lc5/v7;

    .line 147
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 148
    invoke-virtual {v12, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    new-array v7, v5, [Landroid/os/Bundle;

    check-cast v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v7, v5

    move-object v4, v7

    goto :goto_10

    :cond_1c
    instance-of v5, v4, [Landroid/os/Parcelable;

    if-eqz v5, :cond_1d

    check-cast v4, [Landroid/os/Parcelable;

    array-length v5, v4

    const-class v7, [Landroid/os/Bundle;

    invoke-static {v4, v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_f

    :cond_1d
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_1e

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    :goto_f
    check-cast v4, [Landroid/os/Bundle;

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1f

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_20
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_25

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v7, :cond_21

    const-string v2, "_ep"

    move-object/from16 v8, p1

    goto :goto_12

    :cond_21
    move-object/from16 v8, p1

    move-object v2, v9

    :goto_12
    invoke-virtual {v1, v0, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_22

    .line 149
    iget-object v3, v13, Lc5/i4;->m:Lc5/v7;

    .line 150
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 151
    invoke-virtual {v3, v1}, Lc5/v7;->n0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_22
    move-object v12, v1

    new-instance v5, Lc5/s;

    new-instance v3, Lc5/q;

    invoke-direct {v3, v12}, Lc5/q;-><init>(Landroid/os/Bundle;)V

    move-object v1, v5

    move-object/from16 v4, p1

    move-object/from16 p6, v0

    move-object v0, v5

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lc5/s;-><init>(Ljava/lang/String;Lc5/q;Ljava/lang/String;J)V

    invoke-virtual {v13}, Lc5/i4;->s()Lc5/t6;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-virtual {v1}, Lc5/t2;->b()V

    invoke-virtual {v1}, Lc5/r3;->c()V

    .line 153
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    move-object v3, v2

    check-cast v3, Lc5/i4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    check-cast v2, Lc5/i4;

    invoke-virtual {v2}, Lc5/i4;->p()Lc5/y2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lc5/t;->a(Lc5/s;Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    array-length v3, v4

    const/high16 v5, 0x20000

    if-le v3, v5, :cond_23

    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    check-cast v2, Lc5/i4;

    .line 156
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 157
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    const-string v3, "Event is too long for local database. Sending event directly to service"

    .line 158
    iget-object v2, v2, Lc5/e3;->g:Lc5/c3;

    invoke-virtual {v2, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_13

    :cond_23
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lc5/y2;->o(I[B)Z

    move-result v6

    const/4 v2, 0x1

    .line 159
    :goto_13
    invoke-virtual {v1, v2}, Lc5/t6;->q(Z)Lc5/y7;

    move-result-object v3

    new-instance v2, Lc5/m6;

    invoke-direct {v2, v1, v3, v6, v0}, Lc5/m6;-><init>(Lc5/t6;Lc5/y7;ZLc5/s;)V

    invoke-virtual {v1, v2}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    if-nez v16, :cond_24

    move-object/from16 v6, p0

    .line 160
    iget-object v0, v6, Lc5/v5;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/b5;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-interface/range {v1 .. v6}, Lc5/b5;->a(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p0

    goto :goto_14

    :cond_24
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p6

    goto/16 :goto_11

    :cond_25
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    iget-object v0, v13, Lc5/i4;->q:Lc5/f6;

    .line 162
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Lc5/f6;->o(Z)Lc5/b6;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 164
    iget-object v0, v13, Lc5/i4;->l:Lc5/e7;

    .line 165
    invoke-static {v0}, Lc5/i4;->d(Lc5/r3;)V

    .line 166
    iget-object v1, v13, Lc5/i4;->p:Lc5/w;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 169
    iget-object v0, v0, Lc5/e7;->e:Lc5/c7;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Lc5/c7;->a(ZZJ)Z

    :cond_26
    return-void

    .line 170
    :cond_27
    iget-object v0, v13, Lc5/i4;->j:Lc5/e3;

    .line 171
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    const-string v1, "Event not sent since app measurement is disabled"

    .line 172
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final q(JZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 8
    .line 9
    check-cast v0, Lc5/i4;

    .line 10
    .line 11
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 12
    .line 13
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "Resetting analytics data (FE)"

    .line 17
    .line 18
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lc5/i4;->l:Lc5/e7;

    .line 24
    .line 25
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Lc5/e7;->e:Lc5/c7;

    .line 32
    .line 33
    iget-object v2, v1, Lc5/c7;->c:Lc5/b7;

    .line 34
    .line 35
    invoke-virtual {v2}, Lc5/l;->a()V

    .line 36
    .line 37
    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    iput-wide v2, v1, Lc5/c7;->a:J

    .line 41
    .line 42
    iput-wide v2, v1, Lc5/c7;->b:J

    .line 43
    .line 44
    invoke-virtual {v0}, Lc5/i4;->a()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v4, v0, Lc5/i4;->h:Lc5/s3;

    .line 49
    .line 50
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v4, Lc5/s3;->e:Lc5/o3;

    .line 54
    .line 55
    invoke-virtual {v5, p1, p2}, Lc5/o3;->b(J)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v4, Lc5/x4;->a:Lc5/z4;

    .line 59
    .line 60
    check-cast p1, Lc5/i4;

    .line 61
    .line 62
    iget-object p2, p1, Lc5/i4;->h:Lc5/s3;

    .line 63
    .line 64
    invoke-static {p2}, Lc5/i4;->c(Lc5/y4;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p2, Lc5/s3;->v:Lc5/q3;

    .line 68
    .line 69
    invoke-virtual {p2}, Lc5/q3;->a()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/4 v5, 0x0

    .line 78
    if-nez p2, :cond_0

    .line 79
    .line 80
    iget-object p2, v4, Lc5/s3;->v:Lc5/q3;

    .line 81
    .line 82
    invoke-virtual {p2, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/measurement/oa;->b:Lcom/google/android/gms/internal/measurement/oa;

    .line 86
    .line 87
    iget-object v6, p2, Lcom/google/android/gms/internal/measurement/oa;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 88
    .line 89
    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Lcom/google/android/gms/internal/measurement/pa;

    .line 94
    .line 95
    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/pa;->a()V

    .line 96
    .line 97
    .line 98
    iget-object v6, p1, Lc5/i4;->g:Lc5/e;

    .line 99
    .line 100
    sget-object v7, Lc5/r2;->i0:Lc5/q2;

    .line 101
    .line 102
    invoke-virtual {v6, v5, v7}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_1

    .line 107
    .line 108
    iget-object v6, v4, Lc5/s3;->p:Lc5/o3;

    .line 109
    .line 110
    invoke-virtual {v6, v2, v3}, Lc5/o3;->b(J)V

    .line 111
    .line 112
    .line 113
    :cond_1
    iget-object p1, p1, Lc5/i4;->g:Lc5/e;

    .line 114
    .line 115
    invoke-virtual {p1}, Lc5/e;->r()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    xor-int/lit8 p1, v1, 0x1

    .line 122
    .line 123
    invoke-virtual {v4, p1}, Lc5/s3;->q(Z)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iget-object p1, v4, Lc5/s3;->w:Lc5/q3;

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, v4, Lc5/s3;->x:Lc5/o3;

    .line 132
    .line 133
    invoke-virtual {p1, v2, v3}, Lc5/o3;->b(J)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v4, Lc5/s3;->y:Lc5/n3;

    .line 137
    .line 138
    invoke-virtual {p1, v5}, Lc5/n3;->b(Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    const/4 p1, 0x1

    .line 142
    if-eqz p3, :cond_3

    .line 143
    .line 144
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-virtual {p3}, Lc5/t2;->b()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Lc5/r3;->c()V

    .line 152
    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p3, v2}, Lc5/t6;->q(Z)Lc5/y7;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v3, p3, Lc5/x4;->a:Lc5/z4;

    .line 160
    .line 161
    move-object v4, v3

    .line 162
    check-cast v4, Lc5/i4;

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    check-cast v3, Lc5/i4;

    .line 168
    .line 169
    invoke-virtual {v3}, Lc5/i4;->p()Lc5/y2;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lc5/y2;->h()V

    .line 174
    .line 175
    .line 176
    new-instance v3, Lc5/k4;

    .line 177
    .line 178
    invoke-direct {v3, p3, v2, p1}, Lc5/k4;-><init>(Ljava/lang/Object;Ls3/a;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, v3}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/oa;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 185
    .line 186
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    check-cast p2, Lcom/google/android/gms/internal/measurement/pa;

    .line 191
    .line 192
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/pa;->a()V

    .line 193
    .line 194
    .line 195
    iget-object p2, v0, Lc5/i4;->g:Lc5/e;

    .line 196
    .line 197
    invoke-virtual {p2, v5, v7}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_4

    .line 202
    .line 203
    iget-object p2, v0, Lc5/i4;->l:Lc5/e7;

    .line 204
    .line 205
    invoke-static {p2}, Lc5/i4;->d(Lc5/r3;)V

    .line 206
    .line 207
    .line 208
    iget-object p2, p2, Lc5/e7;->d:Lc5/d7;

    .line 209
    .line 210
    invoke-virtual {p2}, Lc5/d7;->a()V

    .line 211
    .line 212
    .line 213
    :cond_4
    xor-int/2addr p1, v1

    .line 214
    iput-boolean p1, p0, Lc5/v5;->q:Z

    .line 215
    .line 216
    return-void
.end method

.method public final r(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "app_id"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v1, v2

    .line 24
    check-cast v1, Lc5/i4;

    .line 25
    .line 26
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 27
    .line 28
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "Package name should be null when calling setConditionalUserProperty"

    .line 32
    .line 33
    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-class v1, Ljava/lang/String;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static {v0, p1, v1, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p1, "origin"

    .line 48
    .line 49
    invoke-static {v0, p1, v1, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v4, "name"

    .line 53
    .line 54
    invoke-static {v0, v4, v1, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v5, "value"

    .line 58
    .line 59
    const-class v6, Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v0, v5, v6, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string v6, "trigger_event_name"

    .line 65
    .line 66
    invoke-static {v0, v6, v1, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-wide/16 v7, 0x0

    .line 70
    .line 71
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const-string v8, "trigger_timeout"

    .line 76
    .line 77
    const-class v9, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-static {v0, v8, v9, v7}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v10, "timed_out_event_name"

    .line 83
    .line 84
    invoke-static {v0, v10, v1, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string v10, "timed_out_event_params"

    .line 88
    .line 89
    const-class v11, Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-static {v0, v10, v11, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string v10, "triggered_event_name"

    .line 95
    .line 96
    invoke-static {v0, v10, v1, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v10, "triggered_event_params"

    .line 100
    .line 101
    invoke-static {v0, v10, v11, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const-string v10, "time_to_live"

    .line 105
    .line 106
    invoke-static {v0, v10, v9, v7}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string v7, "expired_event_name"

    .line 110
    .line 111
    invoke-static {v0, v7, v1, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-string v1, "expired_event_params"

    .line 115
    .line 116
    invoke-static {v0, v1, v11, v3}, Lc5/a5;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const-string p1, "creation_timestamp"

    .line 141
    .line 142
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast v2, Lc5/i4;

    .line 154
    .line 155
    iget-object p3, v2, Lc5/i4;->m:Lc5/v7;

    .line 156
    .line 157
    invoke-static {p3}, Lc5/i4;->c(Lc5/y4;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p1}, Lc5/v7;->i0(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    if-nez p3, :cond_7

    .line 165
    .line 166
    iget-object p3, v2, Lc5/i4;->m:Lc5/v7;

    .line 167
    .line 168
    invoke-static {p3}, Lc5/i4;->c(Lc5/y4;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p2, p1}, Lc5/v7;->e0(Ljava/lang/Object;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    if-nez p3, :cond_6

    .line 176
    .line 177
    iget-object p3, v2, Lc5/i4;->m:Lc5/v7;

    .line 178
    .line 179
    invoke-static {p3}, Lc5/i4;->c(Lc5/y4;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p2, p1}, Lc5/v7;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    if-nez p3, :cond_1

    .line 187
    .line 188
    iget-object p3, v2, Lc5/i4;->j:Lc5/e3;

    .line 189
    .line 190
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v2, Lc5/i4;->n:Lc5/z2;

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p3, p3, Lc5/e3;->f:Lc5/c3;

    .line 200
    .line 201
    const-string v0, "Unable to normalize conditional user property value"

    .line 202
    .line 203
    invoke-virtual {p3, p1, v0, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_1
    invoke-static {v0, p3}, Lc5/a5;->c(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 211
    .line 212
    .line 213
    move-result-wide p2

    .line 214
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    const-wide/16 v3, 0x1

    .line 223
    .line 224
    const-wide v5, 0x39ef8b000L

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    if-nez v1, :cond_3

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    cmp-long v1, p2, v5

    .line 235
    .line 236
    if-gtz v1, :cond_2

    .line 237
    .line 238
    cmp-long v1, p2, v3

    .line 239
    .line 240
    if-gez v1, :cond_3

    .line 241
    .line 242
    :cond_2
    iget-object v0, v2, Lc5/i4;->j:Lc5/e3;

    .line 243
    .line 244
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v2, Lc5/i4;->n:Lc5/z2;

    .line 248
    .line 249
    invoke-virtual {v1, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    iget-object p3, v0, Lc5/e3;->f:Lc5/c3;

    .line 258
    .line 259
    const-string v0, "Invalid conditional user property timeout"

    .line 260
    .line 261
    invoke-virtual {p3, p1, v0, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_3
    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 266
    .line 267
    .line 268
    move-result-wide p2

    .line 269
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    cmp-long v1, p2, v5

    .line 273
    .line 274
    if-gtz v1, :cond_5

    .line 275
    .line 276
    cmp-long v1, p2, v3

    .line 277
    .line 278
    if-gez v1, :cond_4

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_4
    iget-object p1, v2, Lc5/i4;->k:Lc5/h4;

    .line 282
    .line 283
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 284
    .line 285
    .line 286
    new-instance p2, Lc5/f5;

    .line 287
    .line 288
    const/4 p3, 0x1

    .line 289
    invoke-direct {p2, p0, v0, p3}, Lc5/f5;-><init>(Lc5/v5;Landroid/os/Bundle;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p2}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_5
    :goto_0
    iget-object v0, v2, Lc5/i4;->j:Lc5/e3;

    .line 297
    .line 298
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, v2, Lc5/i4;->n:Lc5/z2;

    .line 302
    .line 303
    invoke-virtual {v1, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    iget-object p3, v0, Lc5/e3;->f:Lc5/c3;

    .line 312
    .line 313
    const-string v0, "Invalid conditional user property time to live"

    .line 314
    .line 315
    invoke-virtual {p3, p1, v0, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_6
    iget-object p3, v2, Lc5/i4;->j:Lc5/e3;

    .line 320
    .line 321
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 322
    .line 323
    .line 324
    iget-object v0, v2, Lc5/i4;->n:Lc5/z2;

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iget-object p3, p3, Lc5/e3;->f:Lc5/c3;

    .line 331
    .line 332
    const-string v0, "Invalid conditional user property value"

    .line 333
    .line 334
    invoke-virtual {p3, p1, v0, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_7
    iget-object p2, v2, Lc5/i4;->j:Lc5/e3;

    .line 339
    .line 340
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 341
    .line 342
    .line 343
    iget-object p3, v2, Lc5/i4;->n:Lc5/z2;

    .line 344
    .line 345
    invoke-virtual {p3, p1}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    .line 350
    .line 351
    const-string p3, "Invalid conditional user property name"

    .line 352
    .line 353
    invoke-virtual {p2, p1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public final s(Landroid/os/Bundle;IJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ad_storage"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lc5/f;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    :cond_0
    const-string v0, "analytics_storage"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lc5/f;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    check-cast v2, Lc5/i4;

    .line 40
    .line 41
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 42
    .line 43
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "Ignoring invalid consent setting"

    .line 47
    .line 48
    iget-object v2, v2, Lc5/e3;->l:Lc5/c3;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v1, Lc5/i4;

    .line 54
    .line 55
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 56
    .line 57
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    .line 61
    .line 62
    iget-object v0, v0, Lc5/e3;->l:Lc5/c3;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {p1}, Lc5/f;->a(Landroid/os/Bundle;)Lc5/f;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lc5/v5;->t(Lc5/f;IJ)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final t(Lc5/f;IJ)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0xa

    .line 5
    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p1, Lc5/f;->a:Ljava/lang/Boolean;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p1, Lc5/f;->b:Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    check-cast p1, Lc5/i4;

    .line 20
    .line 21
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 22
    .line 23
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 27
    .line 28
    const-string p2, "Discarding empty consent settings"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    iget-object v1, p0, Lc5/v5;->h:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    iget v2, p0, Lc5/v5;->k:I

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-gt p2, v2, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    :goto_1
    if-eqz v2, :cond_9

    .line 47
    .line 48
    iget-object v2, p0, Lc5/v5;->j:Lc5/f;

    .line 49
    .line 50
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    iget-object v6, p1, Lc5/f;->a:Ljava/lang/Boolean;

    .line 53
    .line 54
    if-ne v6, v5, :cond_3

    .line 55
    .line 56
    iget-object v6, v2, Lc5/f;->a:Ljava/lang/Boolean;

    .line 57
    .line 58
    if-ne v6, v5, :cond_4

    .line 59
    .line 60
    :cond_3
    iget-object v6, p1, Lc5/f;->b:Ljava/lang/Boolean;

    .line 61
    .line 62
    if-ne v6, v5, :cond_5

    .line 63
    .line 64
    iget-object v2, v2, Lc5/f;->b:Ljava/lang/Boolean;

    .line 65
    .line 66
    if-eq v2, v5, :cond_5

    .line 67
    .line 68
    :cond_4
    const/4 v2, 0x1

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_5
    const/4 v2, 0x0

    .line 74
    :goto_2
    invoke-virtual {p1}, Lc5/f;->f()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_6

    .line 79
    .line 80
    iget-object v5, p0, Lc5/v5;->j:Lc5/f;

    .line 81
    .line 82
    invoke-virtual {v5}, Lc5/f;->f()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_6

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    :cond_6
    iget-object v5, p0, Lc5/v5;->j:Lc5/f;

    .line 90
    .line 91
    new-instance v6, Lc5/f;

    .line 92
    .line 93
    iget-object v7, p1, Lc5/f;->a:Ljava/lang/Boolean;

    .line 94
    .line 95
    if-nez v7, :cond_7

    .line 96
    .line 97
    iget-object v7, v5, Lc5/f;->a:Ljava/lang/Boolean;

    .line 98
    .line 99
    :cond_7
    iget-object p1, p1, Lc5/f;->b:Ljava/lang/Boolean;

    .line 100
    .line 101
    if-nez p1, :cond_8

    .line 102
    .line 103
    iget-object p1, v5, Lc5/f;->b:Ljava/lang/Boolean;

    .line 104
    .line 105
    :cond_8
    invoke-direct {v6, v7, p1}, Lc5/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 106
    .line 107
    .line 108
    iput-object v6, p0, Lc5/v5;->j:Lc5/f;

    .line 109
    .line 110
    iput p2, p0, Lc5/v5;->k:I

    .line 111
    .line 112
    move p1, v4

    .line 113
    move-object v4, v6

    .line 114
    goto :goto_3

    .line 115
    :cond_9
    move-object v4, p1

    .line 116
    const/4 p1, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    const/4 v3, 0x0

    .line 119
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-nez v3, :cond_a

    .line 121
    .line 122
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 123
    .line 124
    check-cast p1, Lc5/i4;

    .line 125
    .line 126
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 127
    .line 128
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lc5/e3;->m:Lc5/c3;

    .line 132
    .line 133
    const-string p2, "Ignoring lower-priority consent settings, proposed settings"

    .line 134
    .line 135
    invoke-virtual {p1, v4, p2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_a
    iget-object v1, p0, Lc5/v5;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 142
    .line 143
    .line 144
    move-result-wide v8

    .line 145
    if-eqz v2, :cond_b

    .line 146
    .line 147
    iget-object v0, p0, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 154
    .line 155
    check-cast v0, Lc5/i4;

    .line 156
    .line 157
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 158
    .line 159
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Lc5/q5;

    .line 163
    .line 164
    move-object v2, v1

    .line 165
    move-object v3, p0

    .line 166
    move-wide v5, p3

    .line 167
    move v7, p2

    .line 168
    move v10, p1

    .line 169
    invoke-direct/range {v2 .. v10}, Lc5/q5;-><init>(Lc5/v5;Lc5/f;JIJZ)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lc5/h4;->q(Ljava/lang/Runnable;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_b
    const/16 p3, 0x1e

    .line 177
    .line 178
    if-eq p2, p3, :cond_d

    .line 179
    .line 180
    if-ne p2, v0, :cond_c

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_c
    iget-object p3, p0, Lc5/x4;->a:Lc5/z4;

    .line 184
    .line 185
    check-cast p3, Lc5/i4;

    .line 186
    .line 187
    iget-object p3, p3, Lc5/i4;->k:Lc5/h4;

    .line 188
    .line 189
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 190
    .line 191
    .line 192
    new-instance p4, Lc5/s5;

    .line 193
    .line 194
    move-object v2, p4

    .line 195
    move-object v3, p0

    .line 196
    move v5, p2

    .line 197
    move-wide v6, v8

    .line 198
    move v8, p1

    .line 199
    invoke-direct/range {v2 .. v8}, Lc5/s5;-><init>(Lc5/v5;Lc5/f;IJZ)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3, p4}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_d
    :goto_4
    iget-object p3, p0, Lc5/x4;->a:Lc5/z4;

    .line 207
    .line 208
    check-cast p3, Lc5/i4;

    .line 209
    .line 210
    iget-object p3, p3, Lc5/i4;->k:Lc5/h4;

    .line 211
    .line 212
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 213
    .line 214
    .line 215
    new-instance p4, Lc5/r5;

    .line 216
    .line 217
    move-object v2, p4

    .line 218
    move-object v3, p0

    .line 219
    move v5, p2

    .line 220
    move-wide v6, v8

    .line 221
    move v8, p1

    .line 222
    invoke-direct/range {v2 .. v8}, Lc5/r5;-><init>(Lc5/v5;Lc5/f;IJZ)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3, p4}, Lc5/h4;->q(Ljava/lang/Runnable;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    throw p1
.end method

.method public final u(Lc5/f;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lc5/f;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lc5/f;->e()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 19
    .line 20
    check-cast p1, Lc5/i4;

    .line 21
    .line 22
    invoke-virtual {p1}, Lc5/i4;->s()Lc5/t6;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lc5/t6;->o()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_0
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 36
    .line 37
    check-cast v0, Lc5/i4;

    .line 38
    .line 39
    iget-object v3, v0, Lc5/i4;->k:Lc5/h4;

    .line 40
    .line 41
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, v0, Lc5/i4;->G:Z

    .line 48
    .line 49
    if-eq p1, v0, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 52
    .line 53
    check-cast v0, Lc5/i4;

    .line 54
    .line 55
    iget-object v3, v0, Lc5/i4;->k:Lc5/h4;

    .line 56
    .line 57
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 61
    .line 62
    .line 63
    iput-boolean p1, v0, Lc5/i4;->G:Z

    .line 64
    .line 65
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 66
    .line 67
    check-cast v0, Lc5/i4;

    .line 68
    .line 69
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 70
    .line 71
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "measurement_enabled_from_api"

    .line 82
    .line 83
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v0, 0x0

    .line 103
    :goto_1
    if-eqz p1, :cond_4

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1, v1}, Lc5/v5;->y(Ljava/lang/Boolean;Z)V

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move-object v3, p2

    .line 3
    move-object v0, p3

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string v1, "app"

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v2, p1

    .line 11
    :goto_0
    iget-object v1, v7, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    move-object v4, v1

    .line 14
    check-cast v4, Lc5/i4;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/16 v6, 0x18

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    iget-object v8, v4, Lc5/i4;->m:Lc5/v7;

    .line 22
    .line 23
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8, p2}, Lc5/v7;->i0(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v8, v4, Lc5/i4;->m:Lc5/v7;

    .line 32
    .line 33
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 34
    .line 35
    .line 36
    const-string v9, "user property"

    .line 37
    .line 38
    invoke-virtual {v8, v9, p2}, Lc5/v7;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    if-nez v10, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object v10, Lc5/u;->b:[Ljava/lang/String;

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    invoke-virtual {v8, v9, v10, v11, p2}, Lc5/v7;->I(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-nez v10, :cond_3

    .line 53
    .line 54
    const/16 v8, 0xf

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    iget-object v10, v8, Lc5/x4;->a:Lc5/z4;

    .line 58
    .line 59
    check-cast v10, Lc5/i4;

    .line 60
    .line 61
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v6, v9, p2}, Lc5/v7;->H(ILjava/lang/String;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-nez v8, :cond_4

    .line 69
    .line 70
    :goto_1
    const/4 v8, 0x6

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 v8, 0x0

    .line 73
    :goto_2
    iget-object v9, v7, Lc5/v5;->r:Lcom/google/android/gms/internal/measurement/w5;

    .line 74
    .line 75
    const/4 v10, 0x1

    .line 76
    if-eqz v8, :cond_6

    .line 77
    .line 78
    iget-object v0, v4, Lc5/i4;->m:Lc5/v7;

    .line 79
    .line 80
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v6, p2, v10}, Lc5/v7;->n(ILjava/lang/String;Z)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    :cond_5
    iget-object v1, v4, Lc5/i4;->m:Lc5/v7;

    .line 100
    .line 101
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    const-string v3, "_ev"

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-object p1, v9

    .line 111
    move-object p2, v2

    .line 112
    move p3, v8

    .line 113
    move-object/from16 p4, v3

    .line 114
    .line 115
    move-object/from16 p5, v0

    .line 116
    .line 117
    :goto_3
    move/from16 p6, v5

    .line 118
    .line 119
    invoke-static/range {p1 .. p6}, Lc5/v7;->w(Lc5/u7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_6
    if-eqz v0, :cond_b

    .line 124
    .line 125
    iget-object v8, v4, Lc5/i4;->m:Lc5/v7;

    .line 126
    .line 127
    invoke-static {v8}, Lc5/i4;->c(Lc5/y4;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, p3, p2}, Lc5/v7;->e0(Ljava/lang/Object;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_9

    .line 135
    .line 136
    iget-object v1, v4, Lc5/i4;->m:Lc5/v7;

    .line 137
    .line 138
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v6, p2, v10}, Lc5/v7;->n(ILjava/lang/String;Z)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    instance-of v2, v0, Ljava/lang/String;

    .line 152
    .line 153
    if-nez v2, :cond_7

    .line 154
    .line 155
    instance-of v2, v0, Ljava/lang/CharSequence;

    .line 156
    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :cond_8
    iget-object v0, v4, Lc5/i4;->m:Lc5/v7;

    .line 168
    .line 169
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 170
    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    const-string v3, "_ev"

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-object p1, v9

    .line 179
    move-object p2, v2

    .line 180
    move p3, v8

    .line 181
    move-object/from16 p4, v3

    .line 182
    .line 183
    move-object/from16 p5, v1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    iget-object v4, v4, Lc5/i4;->m:Lc5/v7;

    .line 187
    .line 188
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, p3, p2}, Lc5/v7;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-eqz v4, :cond_a

    .line 196
    .line 197
    check-cast v1, Lc5/i4;

    .line 198
    .line 199
    iget-object v8, v1, Lc5/i4;->k:Lc5/h4;

    .line 200
    .line 201
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 202
    .line 203
    .line 204
    new-instance v9, Lc5/l5;

    .line 205
    .line 206
    move-object v0, v9

    .line 207
    move-object v1, p0

    .line 208
    move-object v3, p2

    .line 209
    move-wide/from16 v5, p5

    .line 210
    .line 211
    invoke-direct/range {v0 .. v6}, Lc5/l5;-><init>(Lc5/v5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v9}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    :cond_a
    return-void

    .line 218
    :cond_b
    const/4 v4, 0x0

    .line 219
    check-cast v1, Lc5/i4;

    .line 220
    .line 221
    iget-object v8, v1, Lc5/i4;->k:Lc5/h4;

    .line 222
    .line 223
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 224
    .line 225
    .line 226
    new-instance v9, Lc5/l5;

    .line 227
    .line 228
    move-object v0, v9

    .line 229
    move-object v1, p0

    .line 230
    move-object v3, p2

    .line 231
    move-wide/from16 v5, p5

    .line 232
    .line 233
    invoke-direct/range {v0 .. v6}, Lc5/l5;-><init>(Lc5/v5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, v9}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p4}, Lr3/r;->f(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p5}, Lr3/r;->f(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 11
    .line 12
    .line 13
    const-string v0, "allow_personalized_ads"

    .line 14
    .line 15
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    instance-of v0, p3, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move-object v0, p3

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string p5, "false"

    .line 44
    .line 45
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    const-wide/16 v3, 0x1

    .line 50
    .line 51
    if-eq v1, p3, :cond_0

    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-wide v5, v3

    .line 57
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    move-object v0, v2

    .line 62
    check-cast v0, Lc5/i4;

    .line 63
    .line 64
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 65
    .line 66
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    cmp-long v7, v5, v3

    .line 74
    .line 75
    if-nez v7, :cond_1

    .line 76
    .line 77
    const-string p5, "true"

    .line 78
    .line 79
    :cond_1
    iget-object v0, v0, Lc5/s3;->m:Lc5/q3;

    .line 80
    .line 81
    invoke-virtual {v0, p5}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    if-nez p3, :cond_3

    .line 86
    .line 87
    move-object p5, v2

    .line 88
    check-cast p5, Lc5/i4;

    .line 89
    .line 90
    iget-object p5, p5, Lc5/i4;->h:Lc5/s3;

    .line 91
    .line 92
    invoke-static {p5}, Lc5/i4;->c(Lc5/y4;)V

    .line 93
    .line 94
    .line 95
    iget-object p5, p5, Lc5/s3;->m:Lc5/q3;

    .line 96
    .line 97
    const-string v0, "unset"

    .line 98
    .line 99
    invoke-virtual {p5, v0}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    const-string p5, "_npa"

    .line 103
    .line 104
    :cond_3
    move-object v6, p3

    .line 105
    move-object v7, p5

    .line 106
    check-cast v2, Lc5/i4;

    .line 107
    .line 108
    invoke-virtual {v2}, Lc5/i4;->a()Z

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    if-nez p3, :cond_4

    .line 113
    .line 114
    iget-object p1, v2, Lc5/i4;->j:Lc5/e3;

    .line 115
    .line 116
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 117
    .line 118
    .line 119
    const-string p2, "User property not set since app measurement is disabled"

    .line 120
    .line 121
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    invoke-virtual {v2}, Lc5/i4;->b()Z

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-nez p3, :cond_5

    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    new-instance p3, Lc5/r7;

    .line 135
    .line 136
    move-object v3, p3

    .line 137
    move-wide v4, p1

    .line 138
    move-object v8, p4

    .line 139
    invoke-direct/range {v3 .. v8}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lc5/i4;->s()Lc5/t6;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Lc5/t2;->b()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lc5/r3;->c()V

    .line 150
    .line 151
    .line 152
    iget-object p2, p1, Lc5/x4;->a:Lc5/z4;

    .line 153
    .line 154
    move-object p4, p2

    .line 155
    check-cast p4, Lc5/i4;

    .line 156
    .line 157
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    check-cast p2, Lc5/i4;

    .line 161
    .line 162
    invoke-virtual {p2}, Lc5/i4;->p()Lc5/y2;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    invoke-static {p3, p4}, Lc5/s7;->a(Lc5/r7;Landroid/os/Parcel;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p4}, Landroid/os/Parcel;->marshall()[B

    .line 177
    .line 178
    .line 179
    move-result-object p5

    .line 180
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 181
    .line 182
    .line 183
    array-length p4, p5

    .line 184
    const/high16 v0, 0x20000

    .line 185
    .line 186
    if-le p4, v0, :cond_6

    .line 187
    .line 188
    iget-object p2, p2, Lc5/x4;->a:Lc5/z4;

    .line 189
    .line 190
    check-cast p2, Lc5/i4;

    .line 191
    .line 192
    iget-object p2, p2, Lc5/i4;->j:Lc5/e3;

    .line 193
    .line 194
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 195
    .line 196
    .line 197
    const-string p4, "User property too long for local database. Sending directly to service"

    .line 198
    .line 199
    iget-object p2, p2, Lc5/e3;->g:Lc5/c3;

    .line 200
    .line 201
    invoke-virtual {p2, p4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const/4 p2, 0x0

    .line 205
    goto :goto_2

    .line 206
    :cond_6
    invoke-virtual {p2, v1, p5}, Lc5/y2;->o(I[B)Z

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    :goto_2
    invoke-virtual {p1, v1}, Lc5/t6;->q(Z)Lc5/y7;

    .line 211
    .line 212
    .line 213
    move-result-object p4

    .line 214
    new-instance p5, Lc5/h6;

    .line 215
    .line 216
    invoke-direct {p5, p1, p4, p2, p3}, Lc5/h6;-><init>(Lc5/t6;Lc5/y7;ZLc5/r7;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p5}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final x(Landroid/os/Bundle;J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ia;->b:Lcom/google/android/gms/internal/measurement/ia;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ia;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/ja;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ja;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast v0, Lc5/i4;

    .line 17
    .line 18
    iget-object v1, v0, Lc5/i4;->g:Lc5/e;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    sget-object v3, Lc5/r2;->o0:Lc5/q2;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lc5/w2;->n()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, v0, Lc5/i4;->j:Lc5/e3;

    .line 45
    .line 46
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "Using developer consent only; google app id found"

    .line 50
    .line 51
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, p2, p3}, Lc5/v5;->s(Landroid/os/Bundle;IJ)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final y(Ljava/lang/Boolean;Z)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 8
    .line 9
    check-cast v0, Lc5/i4;

    .line 10
    .line 11
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 12
    .line 13
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "Setting app measurement enabled (FE)"

    .line 17
    .line 18
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lc5/i4;->h:Lc5/s3;

    .line 24
    .line 25
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lc5/s3;->p(Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p2, v0, Lc5/i4;->h:Lc5/s3;

    .line 34
    .line 35
    invoke-static {p2}, Lc5/i4;->c(Lc5/y4;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lc5/x4;->b()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v1, "measurement_enabled_from_api"

    .line 50
    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object p2, v0, Lc5/i4;->k:Lc5/h4;

    .line 68
    .line 69
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lc5/h4;->b()V

    .line 73
    .line 74
    .line 75
    iget-boolean p2, v0, Lc5/i4;->G:Z

    .line 76
    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    return-void

    .line 89
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lc5/v5;->z()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final z()V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    check-cast v0, Lc5/i4;

    .line 7
    .line 8
    iget-object v1, v0, Lc5/i4;->h:Lc5/s3;

    .line 9
    .line 10
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Lc5/s3;->m:Lc5/q3;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc5/q3;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const-string v3, "unset"

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const-string v8, "app"

    .line 31
    .line 32
    const-string v9, "_npa"

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    iget-object v1, v0, Lc5/i4;->p:Lc5/w;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    move-object v4, p0

    .line 45
    invoke-virtual/range {v4 .. v9}, Lc5/v5;->w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const-string v3, "true"

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eq v2, v1, :cond_1

    .line 56
    .line 57
    const-wide/16 v3, 0x0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-wide/16 v3, 0x1

    .line 61
    .line 62
    :goto_0
    const-string v9, "app"

    .line 63
    .line 64
    const-string v10, "_npa"

    .line 65
    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    iget-object v1, v0, Lc5/i4;->p:Lc5/w;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    move-object v5, p0

    .line 80
    invoke-virtual/range {v5 .. v10}, Lc5/v5;->w(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lc5/i4;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-boolean v1, p0, Lc5/v5;->q:Z

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 94
    .line 95
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 96
    .line 97
    .line 98
    const-string v2, "Recording app launch after enabling measurement for the first time (FE)"

    .line 99
    .line 100
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lc5/v5;->C()V

    .line 106
    .line 107
    .line 108
    sget-object v1, Lcom/google/android/gms/internal/measurement/oa;->b:Lcom/google/android/gms/internal/measurement/oa;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/oa;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 111
    .line 112
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lcom/google/android/gms/internal/measurement/pa;

    .line 117
    .line 118
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/pa;->a()V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lc5/i4;->g:Lc5/e;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    sget-object v3, Lc5/r2;->i0:Lc5/q2;

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    iget-object v1, v0, Lc5/i4;->l:Lc5/e7;

    .line 133
    .line 134
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v1, Lc5/e7;->d:Lc5/d7;

    .line 138
    .line 139
    invoke-virtual {v1}, Lc5/d7;->a()V

    .line 140
    .line 141
    .line 142
    :cond_3
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 143
    .line 144
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 145
    .line 146
    .line 147
    new-instance v1, Lc5/i5;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lc5/i5;-><init>(Lc5/v5;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 157
    .line 158
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 159
    .line 160
    .line 161
    const-string v3, "Updating Scion state (FE)"

    .line 162
    .line 163
    iget-object v1, v1, Lc5/e3;->n:Lc5/c3;

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lc5/t6;->q(Z)Lc5/y7;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v2, Lo3/h0;

    .line 183
    .line 184
    const/4 v3, 0x2

    .line 185
    invoke-direct {v2, v3, v0, v1}, Lo3/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method
