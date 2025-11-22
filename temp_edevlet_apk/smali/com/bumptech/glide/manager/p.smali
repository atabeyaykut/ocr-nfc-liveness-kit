.class public final Lcom/bumptech/glide/manager/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/p$b;
    }
.end annotation


# static fields
.field public static final i:Lcom/bumptech/glide/manager/p$a;


# instance fields
.field public volatile a:Lcom/bumptech/glide/o;

.field public final b:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final d:Landroid/os/Handler;

.field public final e:Lcom/bumptech/glide/manager/p$b;

.field public final f:Lcom/bumptech/glide/i;

.field public final g:Lcom/bumptech/glide/manager/i;

.field public final h:Lcom/bumptech/glide/manager/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/manager/p$a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/p$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/p;->i:Lcom/bumptech/glide/manager/p$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/p$b;Lcom/bumptech/glide/i;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/manager/p$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/manager/p;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/manager/p;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/p;->i:Lcom/bumptech/glide/manager/p$a;

    .line 37
    .line 38
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/p;->e:Lcom/bumptech/glide/manager/p$b;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/manager/p;->f:Lcom/bumptech/glide/i;

    .line 41
    .line 42
    new-instance v0, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/bumptech/glide/manager/p;->d:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v0, Lcom/bumptech/glide/manager/m;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lcom/bumptech/glide/manager/m;-><init>(Lcom/bumptech/glide/manager/p$b;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/bumptech/glide/manager/p;->h:Lcom/bumptech/glide/manager/m;

    .line 59
    .line 60
    sget-boolean p1, Le1/r;->h:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    sget-boolean p1, Le1/r;->g:Z

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object p1, p2, Lcom/bumptech/glide/i;->a:Ljava/util/Map;

    .line 70
    .line 71
    const-class p2, Lcom/bumptech/glide/g;

    .line 72
    .line 73
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    new-instance p1, Lcom/bumptech/glide/manager/g;

    .line 80
    .line 81
    invoke-direct {p1}, Lcom/bumptech/glide/manager/g;-><init>()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    new-instance p1, Lcom/bumptech/glide/manager/h;

    .line 86
    .line 87
    invoke-direct {p1}, Lcom/bumptech/glide/manager/h;-><init>()V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    new-instance p1, Lc5/v;

    .line 92
    .line 93
    invoke-direct {p1}, Lc5/v;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_2
    iput-object p1, p0, Lcom/bumptech/glide/manager/p;->g:Lcom/bumptech/glide/manager/i;

    .line 97
    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/manager/p;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/o;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    sget-object v0, Lq1/m;->a:[C

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_b

    .line 21
    .line 22
    instance-of v0, p1, Landroid/app/Application;

    .line 23
    .line 24
    if-nez v0, :cond_b

    .line 25
    .line 26
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/p;->c(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/o;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    .line 38
    .line 39
    if-eqz v0, :cond_a

    .line 40
    .line 41
    check-cast p1, Landroid/app/Activity;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_1
    xor-int/2addr v0, v3

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/p;->b(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/p;->c(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/o;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_9

    .line 84
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->g:Lcom/bumptech/glide/manager/i;

    .line 86
    .line 87
    invoke-interface {v0}, Lcom/bumptech/glide/manager/i;->d()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p1}, Lcom/bumptech/glide/manager/p;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_6

    .line 105
    .line 106
    :cond_5
    const/4 v2, 0x1

    .line 107
    :cond_6
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/p;->d(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/o;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, v0, Lcom/bumptech/glide/manager/o;->d:Lcom/bumptech/glide/o;

    .line 112
    .line 113
    if-nez v1, :cond_8

    .line 114
    .line 115
    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v3, v0, Lcom/bumptech/glide/manager/o;->b:Lcom/bumptech/glide/manager/o$a;

    .line 120
    .line 121
    iget-object v4, p0, Lcom/bumptech/glide/manager/p;->e:Lcom/bumptech/glide/manager/p$b;

    .line 122
    .line 123
    check-cast v4, Lcom/bumptech/glide/manager/p$a;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    new-instance v4, Lcom/bumptech/glide/o;

    .line 129
    .line 130
    iget-object v5, v0, Lcom/bumptech/glide/manager/o;->a:Lcom/bumptech/glide/manager/a;

    .line 131
    .line 132
    invoke-direct {v4, v1, v5, v3, p1}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/q;Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/bumptech/glide/o;->onStart()V

    .line 138
    .line 139
    .line 140
    :cond_7
    iput-object v4, v0, Lcom/bumptech/glide/manager/o;->d:Lcom/bumptech/glide/o;

    .line 141
    .line 142
    move-object p1, v4

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move-object p1, v1

    .line 145
    :goto_2
    return-object p1

    .line 146
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string v0, "You cannot start a load for a destroyed activity"

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_a
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 155
    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    move-object v0, p1

    .line 159
    check-cast v0, Landroid/content/ContextWrapper;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_b

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/p;->b(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    return-object p1

    .line 180
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->a:Lcom/bumptech/glide/o;

    .line 181
    .line 182
    if-nez v0, :cond_d

    .line 183
    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->a:Lcom/bumptech/glide/o;

    .line 186
    .line 187
    if-nez v0, :cond_c

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/bumptech/glide/manager/p;->e:Lcom/bumptech/glide/manager/p$b;

    .line 198
    .line 199
    new-instance v2, Lcom/bumptech/glide/manager/b;

    .line 200
    .line 201
    invoke-direct {v2}, Lcom/bumptech/glide/manager/b;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance v3, La6/a;

    .line 205
    .line 206
    invoke-direct {v3}, La6/a;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast v1, Lcom/bumptech/glide/manager/p$a;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v1, Lcom/bumptech/glide/o;

    .line 219
    .line 220
    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/q;Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    iput-object v1, p0, Lcom/bumptech/glide/manager/p;->a:Lcom/bumptech/glide/o;

    .line 224
    .line 225
    :cond_c
    monitor-exit p0

    .line 226
    goto :goto_3

    .line 227
    :catchall_0
    move-exception p1

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    throw p1

    .line 230
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/bumptech/glide/manager/p;->a:Lcom/bumptech/glide/o;

    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 234
    .line 235
    const-string v0, "You cannot start a load on a null Context"

    .line 236
    .line 237
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p1
.end method

.method public final c(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/o;
    .locals 8
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lq1/m;->a:[C

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    xor-int/2addr v0, v3

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/p;->b(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_9

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->g:Lcom/bumptech/glide/manager/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/bumptech/glide/manager/i;->d()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1}, Lcom/bumptech/glide/manager/p;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    :cond_2
    const/4 v2, 0x1

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/manager/p;->f:Lcom/bumptech/glide/i;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/bumptech/glide/i;->a:Ljava/util/Map;

    .line 61
    .line 62
    const-class v3, Lcom/bumptech/glide/f;

    .line 63
    .line 64
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v4, p0, Lcom/bumptech/glide/manager/p;->h:Lcom/bumptech/glide/manager/m;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lq1/m;->a()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lq1/m;->a()V

    .line 95
    .line 96
    .line 97
    iget-object v5, v4, Lcom/bumptech/glide/manager/m;->a:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lcom/bumptech/glide/o;

    .line 104
    .line 105
    if-nez v6, :cond_5

    .line 106
    .line 107
    new-instance v6, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    .line 108
    .line 109
    invoke-direct {v6, v3}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Lcom/bumptech/glide/manager/m$a;

    .line 113
    .line 114
    invoke-direct {v7, v4, p1}, Lcom/bumptech/glide/manager/m$a;-><init>(Lcom/bumptech/glide/manager/m;Landroidx/fragment/app/FragmentManager;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, v4, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/p$b;

    .line 118
    .line 119
    check-cast p1, Lcom/bumptech/glide/manager/p$a;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance p1, Lcom/bumptech/glide/o;

    .line 125
    .line 126
    invoke-direct {p1, v1, v6, v7, v0}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/q;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/bumptech/glide/manager/l;

    .line 133
    .line 134
    invoke-direct {v0, v4, v3}, Lcom/bumptech/glide/manager/l;-><init>(Lcom/bumptech/glide/manager/m;Landroidx/lifecycle/Lifecycle;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v0}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a(Lcom/bumptech/glide/manager/k;)V

    .line 138
    .line 139
    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/bumptech/glide/o;->onStart()V

    .line 143
    .line 144
    .line 145
    :cond_4
    move-object v6, p1

    .line 146
    :cond_5
    return-object v6

    .line 147
    :cond_6
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/p;->e(Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/manager/w;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v1, v0, Lcom/bumptech/glide/manager/w;->e:Lcom/bumptech/glide/o;

    .line 152
    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v3, p0, Lcom/bumptech/glide/manager/p;->e:Lcom/bumptech/glide/manager/p$b;

    .line 160
    .line 161
    check-cast v3, Lcom/bumptech/glide/manager/p$a;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    new-instance v3, Lcom/bumptech/glide/o;

    .line 167
    .line 168
    iget-object v4, v0, Lcom/bumptech/glide/manager/w;->a:Lcom/bumptech/glide/manager/a;

    .line 169
    .line 170
    iget-object v5, v0, Lcom/bumptech/glide/manager/w;->b:Lcom/bumptech/glide/manager/w$a;

    .line 171
    .line 172
    invoke-direct {v3, v1, v4, v5, p1}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/q;Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/bumptech/glide/o;->onStart()V

    .line 178
    .line 179
    .line 180
    :cond_7
    iput-object v3, v0, Lcom/bumptech/glide/manager/w;->e:Lcom/bumptech/glide/o;

    .line 181
    .line 182
    move-object v1, v3

    .line 183
    :cond_8
    return-object v1

    .line 184
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    const-string v0, "You cannot start a load for a destroyed activity"

    .line 187
    .line 188
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method public final d(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/o;
    .locals 4
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/bumptech/glide/manager/o;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "com.bumptech.glide.manager"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/bumptech/glide/manager/o;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/bumptech/glide/manager/o;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/bumptech/glide/manager/o;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-object v3, v2, Lcom/bumptech/glide/manager/o;->f:Landroid/app/Fragment;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->d:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    :cond_0
    move-object v1, v2

    .line 54
    :cond_1
    return-object v1
.end method

.method public final e(Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/manager/w;
    .locals 4
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/bumptech/glide/manager/w;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "com.bumptech.glide.manager"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/bumptech/glide/manager/w;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/bumptech/glide/manager/w;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/bumptech/glide/manager/w;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-object v3, v2, Lcom/bumptech/glide/manager/w;->f:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/manager/p;->d:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    :cond_0
    move-object v1, v2

    .line 54
    :cond_1
    return-object v1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget v5, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iget-object v6, v0, Lcom/bumptech/glide/manager/p;->d:Landroid/os/Handler;

    .line 17
    .line 18
    const-string v9, "We failed to add our Fragment the first time around, trying again..."

    .line 19
    .line 20
    const-string v10, " New: "

    .line 21
    .line 22
    const-string v11, "We\'ve added two fragments with requests! Old: "

    .line 23
    .line 24
    const-string v12, "com.bumptech.glide.manager"

    .line 25
    .line 26
    const-string v13, "RMRetriever"

    .line 27
    .line 28
    if-eq v5, v3, :cond_b

    .line 29
    .line 30
    const/4 v14, 0x2

    .line 31
    if-eq v5, v14, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    goto/16 :goto_c

    .line 35
    .line 36
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroidx/fragment/app/FragmentManager;

    .line 39
    .line 40
    iget-object v5, v0, Lcom/bumptech/glide/manager/p;->c:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v15

    .line 46
    check-cast v15, Lcom/bumptech/glide/manager/w;

    .line 47
    .line 48
    invoke-virtual {v1, v12}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    .line 51
    move-result-object v16

    .line 52
    move-object/from16 v8, v16

    .line 53
    .line 54
    check-cast v8, Lcom/bumptech/glide/manager/w;

    .line 55
    .line 56
    if-ne v8, v15, :cond_2

    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    if-eqz v8, :cond_4

    .line 61
    .line 62
    iget-object v7, v8, Lcom/bumptech/glide/manager/w;->e:Lcom/bumptech/glide/o;

    .line 63
    .line 64
    if-nez v7, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_4
    :goto_1
    if-nez v2, :cond_8

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2, v15, v12}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v8, :cond_6

    .line 109
    .line 110
    invoke-virtual {v2, v8}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v14, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 121
    .line 122
    .line 123
    const/4 v2, 0x3

    .line 124
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_7
    const/4 v2, 0x0

    .line 134
    goto :goto_5

    .line 135
    :cond_8
    :goto_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_9

    .line 140
    .line 141
    const/4 v2, 0x5

    .line 142
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_a

    .line 147
    .line 148
    const-string v2, "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled"

    .line 149
    .line 150
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    const/4 v2, 0x6

    .line 155
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_a

    .line 160
    .line 161
    const-string v2, "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you\'re starting loads in a unit test with an Activity that you haven\'t created and never create. If you\'re using Robolectric, create the Activity as part of your test setup"

    .line 162
    .line 163
    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_a
    :goto_3
    iget-object v2, v15, Lcom/bumptech/glide/manager/w;->a:Lcom/bumptech/glide/manager/a;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/a;->c()V

    .line 169
    .line 170
    .line 171
    :goto_4
    const/4 v2, 0x1

    .line 172
    :goto_5
    if-eqz v2, :cond_15

    .line 173
    .line 174
    goto/16 :goto_b

    .line 175
    .line 176
    :cond_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Landroid/app/FragmentManager;

    .line 179
    .line 180
    iget-object v5, v0, Lcom/bumptech/glide/manager/p;->b:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    check-cast v7, Lcom/bumptech/glide/manager/o;

    .line 187
    .line 188
    invoke-virtual {v1, v12}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    check-cast v8, Lcom/bumptech/glide/manager/o;

    .line 193
    .line 194
    if-ne v8, v7, :cond_c

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_c
    if-eqz v8, :cond_e

    .line 198
    .line 199
    iget-object v14, v8, Lcom/bumptech/glide/manager/o;->d:Lcom/bumptech/glide/o;

    .line 200
    .line 201
    if-nez v14, :cond_d

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    :cond_e
    :goto_6
    if-nez v2, :cond_12

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_f

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_f
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2, v7, v12}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz v8, :cond_10

    .line 246
    .line 247
    invoke-virtual {v2, v8}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 248
    .line 249
    .line 250
    :cond_10
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v3, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 258
    .line 259
    .line 260
    const/4 v2, 0x3

    .line 261
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_11

    .line 266
    .line 267
    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    :cond_11
    const/4 v2, 0x0

    .line 271
    goto :goto_a

    .line 272
    :cond_12
    :goto_7
    const/4 v2, 0x5

    .line 273
    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_14

    .line 278
    .line 279
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_13

    .line 284
    .line 285
    const-string v2, "Parent was destroyed before our Fragment could be added"

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_13
    const-string v2, "Tried adding Fragment twice and failed twice, giving up!"

    .line 289
    .line 290
    :goto_8
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_14
    iget-object v2, v7, Lcom/bumptech/glide/manager/o;->a:Lcom/bumptech/glide/manager/a;

    .line 294
    .line 295
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/a;->c()V

    .line 296
    .line 297
    .line 298
    :goto_9
    const/4 v2, 0x1

    .line 299
    :goto_a
    if-eqz v2, :cond_15

    .line 300
    .line 301
    :goto_b
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const/4 v4, 0x1

    .line 306
    goto :goto_d

    .line 307
    :cond_15
    :goto_c
    const/4 v1, 0x0

    .line 308
    move-object v2, v1

    .line 309
    move v4, v3

    .line 310
    const/4 v3, 0x0

    .line 311
    :goto_d
    const/4 v5, 0x5

    .line 312
    invoke-static {v13, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_16

    .line 317
    .line 318
    if-eqz v3, :cond_16

    .line 319
    .line 320
    if-nez v2, :cond_16

    .line 321
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v3, "Failed to remove expected request manager fragment, manager: "

    .line 325
    .line 326
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    :cond_16
    return v4
.end method
