.class public final Lyc/j;
.super Luc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lyc/f$d;

.field public final synthetic f:Z

.field public final synthetic g:Lyc/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyc/f$d;Lyc/v;)V
    .locals 0

    iput-object p2, p0, Lyc/j;->e:Lyc/f$d;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lyc/j;->f:Z

    iput-object p3, p0, Lyc/j;->g:Lyc/v;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Luc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 14

    .line 1
    iget-object v0, p0, Lyc/j;->e:Lyc/f$d;

    .line 2
    .line 3
    iget-boolean v1, p0, Lyc/j;->f:Z

    .line 4
    .line 5
    iget-object v2, p0, Lyc/j;->g:Lyc/v;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v3, "settings"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lkotlin/jvm/internal/v;

    .line 16
    .line 17
    invoke-direct {v3}, Lkotlin/jvm/internal/v;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lkotlin/jvm/internal/v;

    .line 21
    .line 22
    invoke-direct {v4}, Lkotlin/jvm/internal/v;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v5, v0, Lyc/f$d;->b:Lyc/f;

    .line 26
    .line 27
    iget-object v5, v5, Lyc/f;->B:Lyc/s;

    .line 28
    .line 29
    monitor-enter v5

    .line 30
    :try_start_0
    iget-object v6, v0, Lyc/f$d;->b:Lyc/f;

    .line 31
    .line 32
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    iget-object v7, v0, Lyc/f$d;->b:Lyc/f;

    .line 34
    .line 35
    iget-object v7, v7, Lyc/f;->v:Lyc/v;

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_6

    .line 41
    :cond_0
    new-instance v1, Lyc/v;

    .line 42
    .line 43
    invoke-direct {v1}, Lyc/v;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v9, "other"

    .line 47
    .line 48
    invoke-static {v7, v9}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    :goto_0
    const/16 v10, 0xa

    .line 53
    .line 54
    const/4 v11, 0x1

    .line 55
    if-ge v9, v10, :cond_3

    .line 56
    .line 57
    shl-int v10, v11, v9

    .line 58
    .line 59
    iget v12, v7, Lyc/v;->a:I

    .line 60
    .line 61
    and-int/2addr v10, v12

    .line 62
    if-eqz v10, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v11, 0x0

    .line 66
    :goto_1
    if-nez v11, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iget-object v10, v7, Lyc/v;->b:[I

    .line 70
    .line 71
    aget v10, v10, v9

    .line 72
    .line 73
    invoke-virtual {v1, v9, v10}, Lyc/v;->b(II)V

    .line 74
    .line 75
    .line 76
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_b

    .line 81
    .line 82
    :cond_3
    const/4 v9, 0x0

    .line 83
    :goto_3
    if-ge v9, v10, :cond_6

    .line 84
    .line 85
    shl-int v12, v11, v9

    .line 86
    .line 87
    iget v13, v2, Lyc/v;->a:I

    .line 88
    .line 89
    and-int/2addr v12, v13

    .line 90
    if-eqz v12, :cond_4

    .line 91
    .line 92
    const/4 v12, 0x1

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    const/4 v12, 0x0

    .line 95
    :goto_4
    if-nez v12, :cond_5

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_5
    iget-object v12, v2, Lyc/v;->b:[I

    .line 99
    .line 100
    aget v12, v12, v9

    .line 101
    .line 102
    invoke-virtual {v1, v9, v12}, Lyc/v;->b(II)V

    .line 103
    .line 104
    .line 105
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    sget-object v2, Ll9/m;->a:Ll9/m;

    .line 109
    .line 110
    move-object v2, v1

    .line 111
    :goto_6
    iput-object v2, v4, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 112
    .line 113
    invoke-virtual {v2}, Lyc/v;->a()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    int-to-long v1, v1

    .line 118
    invoke-virtual {v7}, Lyc/v;->a()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    int-to-long v9, v7

    .line 123
    sub-long/2addr v1, v9

    .line 124
    const-wide/16 v9, 0x0

    .line 125
    .line 126
    cmp-long v7, v1, v9

    .line 127
    .line 128
    if-eqz v7, :cond_9

    .line 129
    .line 130
    iget-object v7, v0, Lyc/f$d;->b:Lyc/f;

    .line 131
    .line 132
    iget-object v7, v7, Lyc/f;->c:Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_7
    iget-object v7, v0, Lyc/f$d;->b:Lyc/f;

    .line 142
    .line 143
    iget-object v7, v7, Lyc/f;->c:Ljava/util/LinkedHashMap;

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    new-array v11, v8, [Lyc/r;

    .line 150
    .line 151
    invoke-interface {v7, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    if-eqz v7, :cond_8

    .line 156
    .line 157
    check-cast v7, [Lyc/r;

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 161
    .line 162
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_9
    :goto_7
    const/4 v7, 0x0

    .line 169
    :goto_8
    iput-object v7, v3, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 170
    .line 171
    iget-object v7, v0, Lyc/f$d;->b:Lyc/f;

    .line 172
    .line 173
    iget-object v11, v4, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v11, Lyc/v;

    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const-string v12, "<set-?>"

    .line 181
    .line 182
    invoke-static {v11, v12}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iput-object v11, v7, Lyc/f;->v:Lyc/v;

    .line 186
    .line 187
    iget-object v7, v0, Lyc/f$d;->b:Lyc/f;

    .line 188
    .line 189
    iget-object v7, v7, Lyc/f;->l:Luc/c;

    .line 190
    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v12, v0, Lyc/f$d;->b:Lyc/f;

    .line 197
    .line 198
    iget-object v12, v12, Lyc/f;->d:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v12, " onSettings"

    .line 204
    .line 205
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    new-instance v12, Lyc/g;

    .line 213
    .line 214
    invoke-direct {v12, v11, v0, v4}, Lyc/g;-><init>(Ljava/lang/String;Lyc/f$d;Lkotlin/jvm/internal/v;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v12, v9, v10}, Luc/c;->c(Luc/a;J)V

    .line 218
    .line 219
    .line 220
    sget-object v7, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .line 222
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    :try_start_3
    iget-object v6, v0, Lyc/f$d;->b:Lyc/f;

    .line 224
    .line 225
    iget-object v6, v6, Lyc/f;->B:Lyc/s;

    .line 226
    .line 227
    iget-object v4, v4, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v4, Lyc/v;

    .line 230
    .line 231
    invoke-virtual {v6, v4}, Lyc/s;->a(Lyc/v;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    .line 233
    .line 234
    goto :goto_9

    .line 235
    :catch_0
    move-exception v4

    .line 236
    :try_start_4
    iget-object v0, v0, Lyc/f$d;->b:Lyc/f;

    .line 237
    .line 238
    invoke-virtual {v0, v4}, Lyc/f;->b(Ljava/io/IOException;)V

    .line 239
    .line 240
    .line 241
    :goto_9
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 242
    .line 243
    monitor-exit v5

    .line 244
    iget-object v0, v3, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, [Lyc/r;

    .line 247
    .line 248
    if-eqz v0, :cond_b

    .line 249
    .line 250
    array-length v3, v0

    .line 251
    :goto_a
    if-ge v8, v3, :cond_b

    .line 252
    .line 253
    aget-object v4, v0, v8

    .line 254
    .line 255
    monitor-enter v4

    .line 256
    :try_start_5
    iget-wide v5, v4, Lyc/r;->d:J

    .line 257
    .line 258
    add-long/2addr v5, v1

    .line 259
    iput-wide v5, v4, Lyc/r;->d:J

    .line 260
    .line 261
    cmp-long v5, v1, v9

    .line 262
    .line 263
    if-lez v5, :cond_a

    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 266
    .line 267
    .line 268
    :cond_a
    sget-object v5, Ll9/m;->a:Ll9/m;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 269
    .line 270
    monitor-exit v4

    .line 271
    add-int/lit8 v8, v8, 0x1

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    monitor-exit v4

    .line 276
    throw v0

    .line 277
    :cond_b
    const-wide/16 v0, -0x1

    .line 278
    .line 279
    return-wide v0

    .line 280
    :goto_b
    :try_start_6
    monitor-exit v6

    .line 281
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 282
    :catchall_2
    move-exception v0

    .line 283
    monitor-exit v5

    .line 284
    throw v0
.end method
