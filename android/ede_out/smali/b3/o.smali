.class public final synthetic Lb3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r$a;
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb3/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lb3/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lb3/o;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lb3/r;

    .line 6
    .line 7
    iget-object v2, v0, Lb3/o;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lu2/s;

    .line 10
    .line 11
    move-object/from16 v12, p1

    .line 12
    .line 13
    check-cast v12, Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v13, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v12, v2}, Lb3/r;->e(Landroid/database/sqlite/SQLiteDatabase;Lu2/s;)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v14, 0x0

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v4, "events"

    .line 32
    .line 33
    const-string v15, "_id"

    .line 34
    .line 35
    const-string v16, "transport_name"

    .line 36
    .line 37
    const-string v17, "timestamp_ms"

    .line 38
    .line 39
    const-string v18, "uptime_ms"

    .line 40
    .line 41
    const-string v19, "payload_encoding"

    .line 42
    .line 43
    const-string v20, "payload"

    .line 44
    .line 45
    const-string v21, "code"

    .line 46
    .line 47
    const-string v22, "inline"

    .line 48
    .line 49
    filled-new-array/range {v15 .. v22}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "context_id = ?"

    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    new-array v7, v7, [Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    aput-object v3, v7, v14

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    iget-object v3, v1, Lb3/r;->d:Lb3/e;

    .line 68
    .line 69
    invoke-virtual {v3}, Lb3/e;->c()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    move-object v3, v12

    .line 78
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-instance v4, Lb3/p;

    .line 83
    .line 84
    invoke-direct {v4, v1, v13, v2}, Lb3/p;-><init>(Lb3/r;Ljava/util/ArrayList;Lu2/s;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3, v4}, Lb3/r;->i(Landroid/database/Cursor;Lb3/r$a;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "event_id IN ("

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-ge v14, v3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lb3/j;

    .line 113
    .line 114
    invoke-virtual {v3}, Lb3/j;->b()J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    add-int/lit8 v3, v3, -0x1

    .line 126
    .line 127
    if-ge v14, v3, :cond_1

    .line 128
    .line 129
    const/16 v3, 0x2c

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    const/16 v3, 0x29

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v4, "event_metadata"

    .line 143
    .line 144
    const-string v3, "value"

    .line 145
    .line 146
    const-string v5, "event_id"

    .line 147
    .line 148
    const-string v6, "name"

    .line 149
    .line 150
    filled-new-array {v5, v6, v3}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const/4 v7, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v10, 0x0

    .line 162
    move-object v3, v12

    .line 163
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    new-instance v3, Landroidx/camera/core/impl/utils/futures/a;

    .line 168
    .line 169
    const/4 v4, 0x3

    .line 170
    invoke-direct {v3, v4, v1}, Landroidx/camera/core/impl/utils/futures/a;-><init>(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v3}, Lb3/r;->i(Landroid/database/Cursor;Lb3/r$a;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_5

    .line 185
    .line 186
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Lb3/j;

    .line 191
    .line 192
    invoke-virtual {v3}, Lb3/j;->b()J

    .line 193
    .line 194
    .line 195
    move-result-wide v4

    .line 196
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-nez v4, :cond_3

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_3
    invoke-virtual {v3}, Lb3/j;->a()Lu2/n;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lu2/n;->i()Lu2/h$a;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v3}, Lb3/j;->b()J

    .line 216
    .line 217
    .line 218
    move-result-wide v5

    .line 219
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Ljava/util/Set;

    .line 228
    .line 229
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_4

    .line 238
    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    check-cast v6, Lb3/r$b;

    .line 244
    .line 245
    iget-object v7, v6, Lb3/r$b;->a:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v6, v6, Lb3/r$b;->b:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v4, v7, v6}, Lu2/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_4
    invoke-virtual {v3}, Lb3/j;->b()J

    .line 254
    .line 255
    .line 256
    move-result-wide v5

    .line 257
    invoke-virtual {v3}, Lb3/j;->c()Lu2/s;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v4}, Lu2/h$a;->b()Lu2/h;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    new-instance v7, Lb3/b;

    .line 266
    .line 267
    invoke-direct {v7, v5, v6, v3, v4}, Lb3/b;-><init>(JLu2/s;Lu2/n;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v2, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_5
    return-object v13
.end method

.method public final d(Lio/realm/g0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 4
    .line 5
    iget-object v1, p0, Lb3/o;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->l:[Lda/m;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setScenarioId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
