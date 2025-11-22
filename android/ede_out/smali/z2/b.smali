.class public final synthetic Lz2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b$a;
.implements Lb3/r$a;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz2/b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lz2/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lz2/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lz2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb3/r;

    .line 4
    .line 5
    iget-object v1, p0, Lz2/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    iget-object v2, p0, Lz2/b;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ly2/a$a;

    .line 12
    .line 13
    check-cast p1, Landroid/database/Cursor;

    .line 14
    .line 15
    sget-object v3, Lb3/r;->f:Lr2/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_8

    .line 26
    .line 27
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sget-object v6, Ly2/c$a;->b:Ly2/c$a;

    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-ne v5, v4, :cond_1

    .line 43
    .line 44
    sget-object v6, Ly2/c$a;->c:Ly2/c$a;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-ne v5, v7, :cond_2

    .line 48
    .line 49
    sget-object v6, Ly2/c$a;->d:Ly2/c$a;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v4, 0x3

    .line 53
    if-ne v5, v4, :cond_3

    .line 54
    .line 55
    sget-object v6, Ly2/c$a;->e:Ly2/c$a;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v4, 0x4

    .line 59
    if-ne v5, v4, :cond_4

    .line 60
    .line 61
    sget-object v6, Ly2/c$a;->f:Ly2/c$a;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    const/4 v4, 0x5

    .line 65
    if-ne v5, v4, :cond_5

    .line 66
    .line 67
    sget-object v6, Ly2/c$a;->g:Ly2/c$a;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    const/4 v4, 0x6

    .line 71
    if-ne v5, v4, :cond_6

    .line 72
    .line 73
    sget-object v6, Ly2/c$a;->h:Ly2/c$a;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-string v5, "SQLiteEventStore"

    .line 81
    .line 82
    const-string v8, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 83
    .line 84
    invoke-static {v4, v5, v8}, Lc5/w;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_7

    .line 96
    .line 97
    new-instance v7, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ljava/util/List;

    .line 110
    .line 111
    new-instance v7, Ly2/c;

    .line 112
    .line 113
    invoke-direct {v7, v4, v5, v6}, Ly2/c;-><init>(JLy2/c$a;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_9

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    .line 140
    sget v3, Ly2/d;->c:I

    .line 141
    .line 142
    new-instance v3, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/lang/String;

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Ljava/util/List;

    .line 158
    .line 159
    new-instance v5, Ly2/d;

    .line 160
    .line 161
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {v5, v3, v1}, Ly2/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v2, Ly2/a$a;->b:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    iget-object p1, v0, Lb3/r;->b:Ld3/a;

    .line 175
    .line 176
    invoke-interface {p1}, Ld3/a;->a()J

    .line 177
    .line 178
    .line 179
    move-result-wide v5

    .line 180
    invoke-virtual {v0}, Lb3/r;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    .line 186
    .line 187
    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    .line 188
    .line 189
    const-string v3, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 190
    .line 191
    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    new-instance v3, Lb3/q;

    .line 196
    .line 197
    invoke-direct {v3, v5, v6}, Lb3/q;-><init>(J)V

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v3}, Lb3/r;->i(Landroid/database/Cursor;Lb3/r$a;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Ly2/f;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 210
    .line 211
    .line 212
    iput-object v1, v2, Ly2/a$a;->a:Ly2/f;

    .line 213
    .line 214
    invoke-virtual {v0}, Lb3/r;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const-string v1, "PRAGMA page_count"

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 225
    .line 226
    .line 227
    move-result-wide v3

    .line 228
    invoke-virtual {v0}, Lb3/r;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    const-string v1, "PRAGMA page_size"

    .line 233
    .line 234
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 239
    .line 240
    .line 241
    move-result-wide v5

    .line 242
    mul-long v5, v5, v3

    .line 243
    .line 244
    sget-object p1, Lb3/e;->a:Lb3/a;

    .line 245
    .line 246
    iget-wide v3, p1, Lb3/a;->b:J

    .line 247
    .line 248
    new-instance p1, Ly2/e;

    .line 249
    .line 250
    invoke-direct {p1, v5, v6, v3, v4}, Ly2/e;-><init>(JJ)V

    .line 251
    .line 252
    .line 253
    new-instance v1, Ly2/b;

    .line 254
    .line 255
    invoke-direct {v1, p1}, Ly2/b;-><init>(Ly2/e;)V

    .line 256
    .line 257
    .line 258
    iput-object v1, v2, Ly2/a$a;->c:Ly2/b;

    .line 259
    .line 260
    iget-object p1, v0, Lb3/r;->e:Lw2/a;

    .line 261
    .line 262
    invoke-interface {p1}, Lw2/a;->get()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Ljava/lang/String;

    .line 267
    .line 268
    iput-object p1, v2, Ly2/a$a;->d:Ljava/lang/String;

    .line 269
    .line 270
    new-instance p1, Ly2/a;

    .line 271
    .line 272
    iget-object v0, v2, Ly2/a$a;->a:Ly2/f;

    .line 273
    .line 274
    iget-object v1, v2, Ly2/a$a;->b:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-object v3, v2, Ly2/a$a;->c:Ly2/b;

    .line 281
    .line 282
    iget-object v2, v2, Ly2/a$a;->d:Ljava/lang/String;

    .line 283
    .line 284
    invoke-direct {p1, v0, v1, v3, v2}, Ly2/a;-><init>(Ly2/f;Ljava/util/List;Ly2/b;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    return-object p1

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 290
    .line 291
    .line 292
    throw v0
.end method

.method public final execute()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lz2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lz2/c;

    .line 4
    .line 5
    iget-object v1, p0, Lz2/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lu2/s;

    .line 8
    .line 9
    iget-object v2, p0, Lz2/b;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lu2/n;

    .line 12
    .line 13
    iget-object v3, v0, Lz2/c;->d:Lb3/d;

    .line 14
    .line 15
    invoke-interface {v3, v1, v2}, Lb3/d;->Q(Lu2/s;Lu2/n;)Lb3/b;

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lz2/c;->a:La3/p;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-interface {v0, v1, v2}, La3/p;->b(Lu2/s;I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method
