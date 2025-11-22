.class public final Lz5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5/a;


# static fields
.field public static volatile c:Lz5/c;


# instance fields
.field public final a:Lb5/a;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lb5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lz5/c;->a:Lb5/a;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lz5/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, La6/b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, La6/b;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, La6/b;->d:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    :goto_0
    const/4 v0, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 v0, 0x1

    .line 49
    :goto_1
    if-nez v0, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    const-string v0, "_cmp"

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_5
    sget-object v0, La6/b;->c:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    xor-int/2addr v0, v1

    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    sget-object v0, La6/b;->d:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_8

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const v3, 0x18b50

    .line 102
    .line 103
    .line 104
    const/4 v4, 0x2

    .line 105
    if-eq v0, v3, :cond_b

    .line 106
    .line 107
    const v3, 0x18b6e

    .line 108
    .line 109
    .line 110
    if-eq v0, v3, :cond_a

    .line 111
    .line 112
    const v3, 0x2ff42f

    .line 113
    .line 114
    .line 115
    if-eq v0, v3, :cond_9

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_9
    const-string v0, "fiam"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_c

    .line 125
    .line 126
    const/4 v0, 0x2

    .line 127
    goto :goto_3

    .line 128
    :cond_a
    const-string v0, "fdl"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_c

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    goto :goto_3

    .line 138
    :cond_b
    const-string v0, "fcm"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_c

    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    goto :goto_3

    .line 148
    :cond_c
    :goto_2
    const/4 v0, -0x1

    .line 149
    :goto_3
    if-eqz v0, :cond_f

    .line 150
    .line 151
    if-eq v0, v1, :cond_e

    .line 152
    .line 153
    if-eq v0, v4, :cond_d

    .line 154
    .line 155
    :goto_4
    const/4 v1, 0x0

    .line 156
    goto :goto_6

    .line 157
    :cond_d
    const-string v0, "fiam_integration"

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_e
    const-string v0, "fdl_integration"

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_f
    const-string v0, "fcm_integration"

    .line 164
    .line 165
    :goto_5
    const-string v2, "_cis"

    .line 166
    .line 167
    invoke-virtual {p3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :goto_6
    if-nez v1, :cond_10

    .line 171
    .line 172
    return-void

    .line 173
    :cond_10
    const-string v0, "clx"

    .line 174
    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_11

    .line 180
    .line 181
    const-string v0, "_ae"

    .line 182
    .line 183
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_11

    .line 188
    .line 189
    const-string v0, "_r"

    .line 190
    .line 191
    const-wide/16 v1, 0x1

    .line 192
    .line 193
    invoke-virtual {p3, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 194
    .line 195
    .line 196
    :cond_11
    iget-object v0, p0, Lz5/c;->a:Lb5/a;

    .line 197
    .line 198
    iget-object v0, v0, Lb5/a;->a:Lcom/google/android/gms/internal/measurement/d2;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    const/4 v6, 0x1

    .line 204
    new-instance v7, Lcom/google/android/gms/internal/measurement/w1;

    .line 205
    .line 206
    move-object v1, v7

    .line 207
    move-object v2, v0

    .line 208
    move-object v3, p1

    .line 209
    move-object v4, p2

    .line 210
    move-object v5, p3

    .line 211
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/d2;->b(Lcom/google/android/gms/internal/measurement/y1;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final b(Ljava/lang/String;Ld6/b;)Lz5/b;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld6/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, La6/b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v3, p0, Lz5/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-eqz v1, :cond_2

    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_2
    const-string v0, "fiam"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lz5/c;->a:Lb5/a;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance v0, La6/d;

    .line 49
    .line 50
    invoke-direct {v0, v1, p2}, La6/d;-><init>(Lb5/a;Ld6/b;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const-string v0, "crash"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    const-string v0, "clx"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    move-object v0, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    :goto_1
    new-instance v0, La6/f;

    .line 74
    .line 75
    invoke-direct {v0, v1, p2}, La6/f;-><init>(Lb5/a;Ld6/b;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    new-instance p1, Lz5/b;

    .line 84
    .line 85
    invoke-direct {p1}, Lz5/b;-><init>()V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_6
    return-object v2
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, La6/b;->c:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "fcm"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lz5/c;->a:Lb5/a;

    .line 15
    .line 16
    iget-object v0, v0, Lb5/a;->a:Lcom/google/android/gms/internal/measurement/d2;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/measurement/x1;

    .line 22
    .line 23
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/x1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/d2;->b(Lcom/google/android/gms/internal/measurement/y1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
