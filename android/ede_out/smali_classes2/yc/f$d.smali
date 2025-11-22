.class public final Lyc/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc/q$c;
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyc/q$c;",
        "Lx9/a<",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lyc/q;

.field public final synthetic b:Lyc/f;


# direct methods
.method public constructor <init>(Lyc/f;Lyc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyc/q;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lyc/f$d;->b:Lyc/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyc/f$d;->a:Lyc/q;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, v0, Lyc/f;->D:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object p2, Lyc/b;->c:Lyc/b;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lyc/f;->j(ILyc/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    iget-object v1, v0, Lyc/f;->D:Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    iget-object v1, v0, Lyc/f;->k:Luc/c;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lyc/f;->d:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x5b

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, "] onRequest"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Lyc/m;

    .line 66
    .line 67
    invoke-direct {v3, v2, v0, p1, p2}, Lyc/m;-><init>(Ljava/lang/String;Lyc/f;ILjava/util/List;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 p1, 0x0

    .line 71
    .line 72
    invoke-virtual {v1, v3, p1, p2}, Luc/c;->c(Luc/a;J)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0

    .line 78
    throw p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(IILed/g;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    const-string v3, "source"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, Lyc/f$d;->b:Lyc/f;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    and-int/lit8 v5, v0, 0x1

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v5, 0x0

    .line 30
    :goto_0
    const-wide/16 v9, 0x0

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    iget-object v11, v1, Lyc/f$d;->b:Lyc/f;

    .line 35
    .line 36
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v6, Led/e;

    .line 40
    .line 41
    invoke-direct {v6}, Led/e;-><init>()V

    .line 42
    .line 43
    .line 44
    int-to-long v3, v7

    .line 45
    invoke-interface {v2, v3, v4}, Led/g;->l0(J)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v6, v3, v4}, Led/j0;->w(Led/e;J)J

    .line 49
    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v3, v11, Lyc/f;->d:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v3, 0x5b

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "] onData"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v12, Lyc/k;

    .line 79
    .line 80
    move-object v2, v12

    .line 81
    move-object v4, v11

    .line 82
    move/from16 v5, p1

    .line 83
    .line 84
    move/from16 v7, p2

    .line 85
    .line 86
    move/from16 v8, p4

    .line 87
    .line 88
    invoke-direct/range {v2 .. v8}, Lyc/k;-><init>(Ljava/lang/String;Lyc/f;ILed/e;IZ)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v11, Lyc/f;->k:Luc/c;

    .line 92
    .line 93
    invoke-virtual {v0, v12, v9, v10}, Luc/c;->c(Luc/a;J)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_1
    iget-object v5, v1, Lyc/f$d;->b:Lyc/f;

    .line 98
    .line 99
    invoke-virtual {v5, v0}, Lyc/f;->c(I)Lyc/r;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-nez v5, :cond_2

    .line 104
    .line 105
    iget-object v3, v1, Lyc/f$d;->b:Lyc/f;

    .line 106
    .line 107
    sget-object v4, Lyc/b;->c:Lyc/b;

    .line 108
    .line 109
    invoke-virtual {v3, v0, v4}, Lyc/f;->j(ILyc/b;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v1, Lyc/f$d;->b:Lyc/f;

    .line 113
    .line 114
    int-to-long v3, v7

    .line 115
    invoke-virtual {v0, v3, v4}, Lyc/f;->g(J)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v2, v3, v4}, Led/g;->skip(J)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    sget-object v0, Lsc/c;->a:[B

    .line 123
    .line 124
    iget-object v0, v5, Lyc/r;->g:Lyc/r$b;

    .line 125
    .line 126
    int-to-long v6, v7

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_1
    cmp-long v8, v6, v9

    .line 131
    .line 132
    if-lez v8, :cond_c

    .line 133
    .line 134
    iget-object v8, v0, Lyc/r$b;->f:Lyc/r;

    .line 135
    .line 136
    monitor-enter v8

    .line 137
    :try_start_0
    iget-boolean v11, v0, Lyc/r$b;->e:Z

    .line 138
    .line 139
    iget-object v12, v0, Lyc/r$b;->b:Led/e;

    .line 140
    .line 141
    iget-wide v12, v12, Led/e;->b:J

    .line 142
    .line 143
    add-long/2addr v12, v6

    .line 144
    iget-wide v14, v0, Lyc/r$b;->d:J

    .line 145
    .line 146
    cmp-long v16, v12, v14

    .line 147
    .line 148
    if-lez v16, :cond_4

    .line 149
    .line 150
    const/4 v12, 0x1

    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const/4 v12, 0x0

    .line 153
    :goto_2
    sget-object v13, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    .line 155
    monitor-exit v8

    .line 156
    if-eqz v12, :cond_5

    .line 157
    .line 158
    invoke-interface {v2, v6, v7}, Led/g;->skip(J)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Lyc/r$b;->f:Lyc/r;

    .line 162
    .line 163
    sget-object v2, Lyc/b;->e:Lyc/b;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lyc/r;->e(Lyc/b;)V

    .line 166
    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_5
    if-eqz v11, :cond_6

    .line 170
    .line 171
    invoke-interface {v2, v6, v7}, Led/g;->skip(J)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_6
    iget-object v8, v0, Lyc/r$b;->a:Led/e;

    .line 176
    .line 177
    invoke-interface {v2, v8, v6, v7}, Led/j0;->w(Led/e;J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v11

    .line 181
    const-wide/16 v13, -0x1

    .line 182
    .line 183
    cmp-long v8, v11, v13

    .line 184
    .line 185
    if-eqz v8, :cond_b

    .line 186
    .line 187
    sub-long/2addr v6, v11

    .line 188
    iget-object v8, v0, Lyc/r$b;->f:Lyc/r;

    .line 189
    .line 190
    monitor-enter v8

    .line 191
    :try_start_1
    iget-boolean v11, v0, Lyc/r$b;->c:Z

    .line 192
    .line 193
    if-eqz v11, :cond_7

    .line 194
    .line 195
    iget-object v11, v0, Lyc/r$b;->a:Led/e;

    .line 196
    .line 197
    iget-wide v12, v11, Led/e;->b:J

    .line 198
    .line 199
    invoke-virtual {v11}, Led/e;->b()V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_7
    iget-object v11, v0, Lyc/r$b;->b:Led/e;

    .line 204
    .line 205
    iget-wide v12, v11, Led/e;->b:J

    .line 206
    .line 207
    cmp-long v14, v12, v9

    .line 208
    .line 209
    if-nez v14, :cond_8

    .line 210
    .line 211
    const/4 v12, 0x1

    .line 212
    goto :goto_3

    .line 213
    :cond_8
    const/4 v12, 0x0

    .line 214
    :goto_3
    iget-object v13, v0, Lyc/r$b;->a:Led/e;

    .line 215
    .line 216
    invoke-virtual {v11, v13}, Led/e;->J(Led/j0;)V

    .line 217
    .line 218
    .line 219
    if-eqz v12, :cond_a

    .line 220
    .line 221
    iget-object v11, v0, Lyc/r$b;->f:Lyc/r;

    .line 222
    .line 223
    if-eqz v11, :cond_9

    .line 224
    .line 225
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 230
    .line 231
    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    .line 232
    .line 233
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :cond_a
    :goto_4
    move-wide v12, v9

    .line 238
    :goto_5
    monitor-exit v8

    .line 239
    cmp-long v8, v12, v9

    .line 240
    .line 241
    if-lez v8, :cond_3

    .line 242
    .line 243
    invoke-virtual {v0, v12, v13}, Lyc/r$b;->a(J)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    monitor-exit v8

    .line 249
    throw v0

    .line 250
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    .line 251
    .line 252
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 253
    .line 254
    .line 255
    throw v0

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    monitor-exit v8

    .line 258
    throw v0

    .line 259
    :cond_c
    :goto_6
    if-eqz p4, :cond_d

    .line 260
    .line 261
    sget-object v0, Lsc/c;->b:Lrc/q;

    .line 262
    .line 263
    invoke-virtual {v5, v0, v3}, Lyc/r;->j(Lrc/q;Z)V

    .line 264
    .line 265
    .line 266
    :cond_d
    return-void
.end method

.method public final d(Lyc/v;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 2
    .line 3
    iget-object v1, v0, Lyc/f;->j:Luc/c;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lyc/f;->d:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, " applyAndAckSettings"

    .line 13
    .line 14
    invoke-static {v2, v0, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Lyc/j;

    .line 19
    .line 20
    invoke-direct {v2, v0, p0, p1}, Lyc/j;-><init>(Ljava/lang/String;Lyc/f$d;Lyc/v;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3, v4}, Luc/c;->c(Luc/a;J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e(IJ)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lyc/f$d;->b:Lyc/f;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 7
    .line 8
    iget-wide v1, v0, Lyc/f;->z:J

    .line 9
    .line 10
    add-long/2addr v1, p2

    .line 11
    iput-wide v1, v0, Lyc/f;->z:J

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    sget-object p2, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    monitor-exit p1

    .line 21
    throw p2

    .line 22
    :cond_0
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lyc/f;->c(I)Lyc/r;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_1
    iget-wide v0, p1, Lyc/r;->d:J

    .line 32
    .line 33
    add-long/2addr v0, p2

    .line 34
    iput-wide v0, p1, Lyc/r;->d:J

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    cmp-long v2, p2, v0

    .line 39
    .line 40
    if-lez v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget-object p2, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    :goto_0
    monitor-exit p1

    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p2

    .line 50
    monitor-exit p1

    .line 51
    throw p2

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method public final g(IIZ)V
    .locals 4

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    iget-object p2, p0, Lyc/f$d;->b:Lyc/f;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    const/4 p3, 0x1

    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    if-eq p1, p3, :cond_2

    .line 10
    .line 11
    const/4 p3, 0x2

    .line 12
    if-eq p1, p3, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x3

    .line 15
    if-eq p1, p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object p1, p0, Lyc/f$d;->b:Lyc/f;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 24
    .line 25
    .line 26
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object p1, p0, Lyc/f$d;->b:Lyc/f;

    .line 30
    .line 31
    iget-wide v2, p1, Lyc/f;->r:J

    .line 32
    .line 33
    add-long/2addr v2, v0

    .line 34
    iput-wide v2, p1, Lyc/f;->r:J

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object p1, p0, Lyc/f$d;->b:Lyc/f;

    .line 38
    .line 39
    iget-wide v2, p1, Lyc/f;->p:J

    .line 40
    .line 41
    add-long/2addr v2, v0

    .line 42
    iput-wide v2, p1, Lyc/f;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    :goto_1
    monitor-exit p2

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p2

    .line 48
    throw p1

    .line 49
    :cond_3
    iget-object p3, p0, Lyc/f$d;->b:Lyc/f;

    .line 50
    .line 51
    iget-object p3, p3, Lyc/f;->j:Luc/c;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lyc/f$d;->b:Lyc/f;

    .line 59
    .line 60
    iget-object v1, v1, Lyc/f;->d:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, " ping"

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lyc/i;

    .line 69
    .line 70
    invoke-direct {v1, v0, p0, p1, p2}, Lyc/i;-><init>(Ljava/lang/String;Lyc/f$d;II)V

    .line 71
    .line 72
    .line 73
    const-wide/16 p1, 0x0

    .line 74
    .line 75
    invoke-virtual {p3, v1, p1, p2}, Luc/c;->c(Luc/a;J)V

    .line 76
    .line 77
    .line 78
    :goto_2
    return-void
.end method

.method public final h(ILyc/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    and-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lyc/f;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x5b

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "] onReset"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lyc/n;

    .line 45
    .line 46
    invoke-direct {v2, v1, v0, p1, p2}, Lyc/n;-><init>(Ljava/lang/String;Lyc/f;ILyc/b;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lyc/f;->k:Luc/c;

    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    invoke-virtual {p1, v2, v0, v1}, Luc/c;->c(Luc/a;J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-virtual {v0, p1}, Lyc/f;->e(I)Lyc/r;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lyc/r;->k(Lyc/b;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 2
    .line 3
    iget-object v1, p0, Lyc/f$d;->a:Lyc/q;

    .line 4
    .line 5
    sget-object v2, Lyc/b;->d:Lyc/b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v1, p0}, Lyc/q;->b(Lyc/q$c;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v4, p0}, Lyc/q;->a(ZLyc/q$c;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v4, Lyc/b;->b:Lyc/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :try_start_1
    sget-object v2, Lyc/b;->g:Lyc/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    invoke-virtual {v0, v4, v2, v3}, Lyc/f;->a(Lyc/b;Lyc/b;Ljava/io/IOException;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception v3

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception v4

    .line 30
    move-object v5, v4

    .line 31
    move-object v4, v2

    .line 32
    goto :goto_3

    .line 33
    :catch_1
    move-exception v3

    .line 34
    move-object v4, v2

    .line 35
    :goto_1
    :try_start_2
    sget-object v2, Lyc/b;->c:Lyc/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    invoke-virtual {v0, v2, v2, v3}, Lyc/f;->a(Lyc/b;Lyc/b;Ljava/io/IOException;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    invoke-static {v1}, Lsc/c;->c(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Ll9/m;->a:Ll9/m;

    .line 44
    .line 45
    return-object v0

    .line 46
    :catchall_1
    move-exception v5

    .line 47
    :goto_3
    invoke-virtual {v0, v4, v2, v3}, Lyc/f;->a(Lyc/b;Lyc/b;Ljava/io/IOException;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lsc/c;->c(Ljava/io/Closeable;)V

    .line 51
    .line 52
    .line 53
    throw v5
.end method

.method public final j(Ljava/util/List;ZI)V
    .locals 12

    .line 1
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    and-int/lit8 v0, p3, 0x1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    const/16 v3, 0x5b

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v5, v0, Lyc/f;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, "] onHeaders"

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-instance v3, Lyc/l;

    .line 52
    .line 53
    move-object v4, v3

    .line 54
    move-object v6, v0

    .line 55
    move v7, p3

    .line 56
    move-object v8, p1

    .line 57
    move v9, p2

    .line 58
    invoke-direct/range {v4 .. v9}, Lyc/l;-><init>(Ljava/lang/String;Lyc/f;ILjava/util/List;Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v0, Lyc/f;->k:Luc/c;

    .line 62
    .line 63
    invoke-virtual {p1, v3, v1, v2}, Luc/c;->c(Luc/a;J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lyc/f$d;->b:Lyc/f;

    .line 68
    .line 69
    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v4, p0, Lyc/f$d;->b:Lyc/f;

    .line 71
    .line 72
    invoke-virtual {v4, p3}, Lyc/f;->c(I)Lyc/r;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    iget-object v4, p0, Lyc/f$d;->b:Lyc/f;

    .line 79
    .line 80
    iget-boolean v5, v4, Lyc/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :cond_2
    :try_start_1
    iget v5, v4, Lyc/f;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    if-gt p3, v5, :cond_3

    .line 89
    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :cond_3
    :try_start_2
    rem-int/lit8 v5, p3, 0x2

    .line 93
    .line 94
    iget v4, v4, Lyc/f;->f:I

    .line 95
    .line 96
    rem-int/lit8 v4, v4, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    if-ne v5, v4, :cond_4

    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :cond_4
    :try_start_3
    invoke-static {p1}, Lsc/c;->t(Ljava/util/List;)Lrc/q;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    new-instance v4, Lyc/r;

    .line 107
    .line 108
    iget-object v8, p0, Lyc/f$d;->b:Lyc/f;

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    move-object v6, v4

    .line 112
    move v7, p3

    .line 113
    move v10, p2

    .line 114
    invoke-direct/range {v6 .. v11}, Lyc/r;-><init>(ILyc/f;ZZLrc/q;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lyc/f$d;->b:Lyc/f;

    .line 118
    .line 119
    iput p3, p2, Lyc/f;->e:I

    .line 120
    .line 121
    iget-object p2, p2, Lyc/f;->c:Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lyc/f$d;->b:Lyc/f;

    .line 131
    .line 132
    iget-object p2, p2, Lyc/f;->h:Luc/d;

    .line 133
    .line 134
    invoke-virtual {p2}, Luc/d;->f()Luc/c;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v6, p0, Lyc/f$d;->b:Lyc/f;

    .line 144
    .line 145
    iget-object v6, v6, Lyc/f;->d:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p3, "] onStream"

    .line 157
    .line 158
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    new-instance v3, Lyc/h;

    .line 166
    .line 167
    invoke-direct {v3, p3, v4, p0, p1}, Lyc/h;-><init>(Ljava/lang/String;Lyc/r;Lyc/f$d;Ljava/util/List;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v3, v1, v2}, Luc/c;->c(Luc/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 175
    :cond_5
    :try_start_4
    sget-object p3, Ll9/m;->a:Ll9/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    .line 177
    monitor-exit v0

    .line 178
    invoke-static {p1}, Lsc/c;->t(Ljava/util/List;)Lrc/q;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v4, p1, p2}, Lyc/r;->j(Lrc/q;Z)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :catchall_0
    move-exception p1

    .line 187
    monitor-exit v0

    .line 188
    throw p1
.end method

.method public final k(ILyc/b;Led/h;)V
    .locals 3

    .line 1
    const-string p2, "debugData"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Led/h;->r()I

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lyc/f$d;->b:Lyc/f;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p3, p0, Lyc/f$d;->b:Lyc/f;

    .line 13
    .line 14
    iget-object p3, p3, Lyc/f;->c:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const/4 v0, 0x0

    .line 21
    new-array v1, v0, [Lyc/r;

    .line 22
    .line 23
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    check-cast p3, [Lyc/r;

    .line 30
    .line 31
    iget-object v1, p0, Lyc/f$d;->b:Lyc/f;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, v1, Lyc/f;->g:Z

    .line 35
    .line 36
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    monitor-exit p2

    .line 39
    array-length p2, p3

    .line 40
    :goto_0
    if-ge v0, p2, :cond_1

    .line 41
    .line 42
    aget-object v1, p3, v0

    .line 43
    .line 44
    iget v2, v1, Lyc/r;->m:I

    .line 45
    .line 46
    if-le v2, p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Lyc/r;->h()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    sget-object v2, Lyc/b;->f:Lyc/b;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lyc/r;->k(Lyc/b;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lyc/f$d;->b:Lyc/f;

    .line 60
    .line 61
    iget v1, v1, Lyc/r;->m:I

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lyc/f;->e(I)Lyc/r;

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void

    .line 70
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    .line 73
    .line 74
    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p2

    .line 80
    throw p1
.end method

.method public final priority()V
    .locals 0

    return-void
.end method
