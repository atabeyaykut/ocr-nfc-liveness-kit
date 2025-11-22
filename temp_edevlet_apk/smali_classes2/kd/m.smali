.class public final Lkd/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public transient b:Lkd/e;

.field public c:Ljava/util/HashSet;

.field public d:Lkd/c;

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public transient j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

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
    iput-object v0, p0, Lkd/m;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lkd/m;->c:Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v0, Lkd/c;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lkd/c;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lkd/m;->d:Lkd/c;

    .line 25
    .line 26
    iput-object p1, p0, Lkd/m;->j:Landroid/content/Context;

    .line 27
    .line 28
    return-void
.end method

.method public static d(Landroid/content/Context;)Lkd/m;
    .locals 11

    .line 1
    const-string v0, "Scan state restore regions: monitored="

    .line 2
    .line 3
    const-class v1, Lkd/m;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string v4, "android-beacon-library-scan-state"

    .line 9
    .line 10
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    .line 15
    .line 16
    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lkd/m;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 24
    .line 25
    :try_start_3
    iput-object p0, v6, Lkd/m;->j:Landroid/content/Context;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 30
    .line 31
    .line 32
    goto/16 :goto_a

    .line 33
    .line 34
    :catch_0
    move-exception v3

    .line 35
    goto :goto_5

    .line 36
    :catch_1
    move-exception v3

    .line 37
    goto :goto_5

    .line 38
    :catch_2
    move-exception v3

    .line 39
    goto :goto_5

    .line 40
    :catch_3
    move-exception v6

    .line 41
    goto :goto_0

    .line 42
    :catch_4
    move-exception v6

    .line 43
    goto :goto_0

    .line 44
    :catch_5
    move-exception v6

    .line 45
    :goto_0
    move-object v10, v6

    .line 46
    move-object v6, v3

    .line 47
    move-object v3, v10

    .line 48
    goto :goto_5

    .line 49
    :catch_6
    move-object v6, v3

    .line 50
    :catch_7
    move-object v3, v5

    .line 51
    goto :goto_3

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :goto_1
    move-object v0, v3

    .line 54
    move-object v3, v4

    .line 55
    goto/16 :goto_c

    .line 56
    .line 57
    :catch_8
    move-exception v5

    .line 58
    goto :goto_2

    .line 59
    :catch_9
    move-exception v5

    .line 60
    goto :goto_2

    .line 61
    :catch_a
    move-exception v5

    .line 62
    :goto_2
    move-object v6, v3

    .line 63
    move-object v3, v5

    .line 64
    move-object v5, v6

    .line 65
    goto :goto_5

    .line 66
    :catch_b
    move-object v6, v3

    .line 67
    :goto_3
    move-object v10, v4

    .line 68
    move-object v4, v3

    .line 69
    move-object v3, v10

    .line 70
    goto :goto_8

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    move-object v0, v3

    .line 73
    goto/16 :goto_c

    .line 74
    .line 75
    :catch_c
    move-exception v4

    .line 76
    goto :goto_4

    .line 77
    :catch_d
    move-exception v4

    .line 78
    goto :goto_4

    .line 79
    :catch_e
    move-exception v4

    .line 80
    :goto_4
    move-object v5, v3

    .line 81
    move-object v6, v5

    .line 82
    move-object v3, v4

    .line 83
    move-object v4, v6

    .line 84
    :goto_5
    :try_start_5
    instance-of v7, v3, Ljava/io/InvalidClassException;

    .line 85
    .line 86
    if-eqz v7, :cond_0

    .line 87
    .line 88
    const-string v3, "m"

    .line 89
    .line 90
    const-string v7, "Serialized ScanState has wrong class. Just ignoring saved state..."

    .line 91
    .line 92
    new-array v8, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {v3, v7, v8}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_0
    const-string v7, "m"

    .line 99
    .line 100
    const-string v8, "Deserialization exception"

    .line 101
    .line 102
    new-array v9, v2, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v7, v8, v9}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const-string v7, "m"

    .line 108
    .line 109
    const-string v8, "error: "

    .line 110
    .line 111
    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 112
    .line 113
    .line 114
    :goto_6
    if-eqz v4, :cond_1

    .line 115
    .line 116
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 117
    .line 118
    .line 119
    goto :goto_7

    .line 120
    :catch_f
    nop

    .line 121
    :cond_1
    :goto_7
    if-eqz v5, :cond_4

    .line 122
    .line 123
    goto :goto_a

    .line 124
    :catchall_2
    move-exception p0

    .line 125
    move-object v3, v5

    .line 126
    goto :goto_1

    .line 127
    :catch_10
    move-object v4, v3

    .line 128
    move-object v6, v4

    .line 129
    :goto_8
    :try_start_7
    const-string v5, "m"

    .line 130
    .line 131
    const-string v7, "Serialized ScanState does not exist.  This may be normal on first run."

    .line 132
    .line 133
    new-array v8, v2, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-static {v5, v7, v8}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 136
    .line 137
    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 141
    .line 142
    .line 143
    goto :goto_9

    .line 144
    :catch_11
    nop

    .line 145
    :cond_2
    :goto_9
    if-eqz v4, :cond_4

    .line 146
    .line 147
    move-object v5, v4

    .line 148
    :catch_12
    :cond_3
    :goto_a
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 149
    .line 150
    .line 151
    goto :goto_b

    .line 152
    :catch_13
    nop

    .line 153
    :cond_4
    :goto_b
    if-nez v6, :cond_5

    .line 154
    .line 155
    :try_start_a
    new-instance v6, Lkd/m;

    .line 156
    .line 157
    invoke-direct {v6, p0}, Lkd/m;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    iget-object v3, v6, Lkd/m;->d:Lkd/c;

    .line 161
    .line 162
    if-nez v3, :cond_6

    .line 163
    .line 164
    new-instance v3, Lkd/c;

    .line 165
    .line 166
    const/4 v4, 0x1

    .line 167
    invoke-direct {v3, v4}, Lkd/c;-><init>(Z)V

    .line 168
    .line 169
    .line 170
    iput-object v3, v6, Lkd/m;->d:Lkd/c;

    .line 171
    .line 172
    :cond_6
    invoke-static {p0}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    iput-object p0, v6, Lkd/m;->b:Lkd/e;

    .line 177
    .line 178
    const-string p0, "m"

    .line 179
    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, v6, Lkd/m;->b:Lkd/e;

    .line 186
    .line 187
    invoke-virtual {v0}, Lkd/e;->f()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v0, " ranged="

    .line 199
    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v0, v6, Lkd/m;->a:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-array v2, v2, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-static {p0, v0, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 226
    return-object v6

    .line 227
    :catchall_3
    move-exception p0

    .line 228
    move-object v0, v4

    .line 229
    :goto_c
    if-eqz v3, :cond_7

    .line 230
    .line 231
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_14
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 232
    .line 233
    .line 234
    goto :goto_d

    .line 235
    :catchall_4
    move-exception p0

    .line 236
    goto :goto_e

    .line 237
    :catch_14
    nop

    .line 238
    :cond_7
    :goto_d
    if-eqz v0, :cond_8

    .line 239
    .line 240
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 241
    .line 242
    .line 243
    :catch_15
    :cond_8
    :try_start_d
    throw p0

    .line 244
    :goto_e
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 245
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lkd/m;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lkd/m;->g:J

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lkd/m;->e:J

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-wide v0, p0, Lkd/m;->f:J

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    add-long/2addr v2, v0

    .line 49
    const v0, 0x493e0

    .line 50
    .line 51
    .line 52
    int-to-long v4, v0

    .line 53
    cmp-long v1, v2, v4

    .line 54
    .line 55
    if-lez v1, :cond_1

    .line 56
    .line 57
    long-to-int v0, v2

    .line 58
    :cond_1
    return v0
.end method

.method public final c()I
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScanState says background mode for ScanJob is "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v2, "m"

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-wide v0, p0, Lkd/m;->g:J

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v0, p0, Lkd/m;->f:J

    .line 45
    .line 46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    invoke-virtual {p0}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    const v2, 0x493e0

    .line 65
    .line 66
    .line 67
    int-to-long v3, v2

    .line 68
    cmp-long v5, v0, v3

    .line 69
    .line 70
    if-gez v5, :cond_1

    .line 71
    .line 72
    return v2

    .line 73
    :cond_1
    long-to-int v1, v0

    .line 74
    return v1
.end method

.method public final e()V
    .locals 11

    const-string v0, "Perm file is "

    const-string v1, "Temp file is "

    const-class v2, Lkd/m;

    monitor-enter v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lkd/m;->j:Landroid/content/Context;

    const-string v6, "android-beacon-library-scan-state-temp"

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catch_0
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v4

    goto/16 :goto_4

    :catch_2
    move-exception v6

    move-object v10, v6

    move-object v6, v4

    move-object v4, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v4

    goto/16 :goto_5

    :catch_3
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    move-object v5, v6

    :goto_1
    :try_start_5
    const-string v7, "m"

    const-string v8, "Error while saving scan status to file: "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v7, v8, v9}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_4
    nop

    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    goto :goto_0

    :catch_5
    :cond_2
    :goto_3
    :try_start_7
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lkd/m;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "android-beacon-library-scan-state"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lkd/m;->j:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "android-beacon-library-scan-state-temp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "m"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "m"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v6}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "m"

    const-string v1, "Error while saving scan status to file: Cannot delete existing file."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "m"

    const-string v1, "Error while saving scan status to file: Cannot rename temp file."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lkd/m;->b:Lkd/e;

    invoke-virtual {v0}, Lkd/e;->i()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :catchall_2
    move-exception v0

    :goto_4
    move-object v4, v5

    :goto_5
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_6
    nop

    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    :try_start_9
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_7
    :cond_6
    :try_start_a
    throw v0

    :goto_7
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method
