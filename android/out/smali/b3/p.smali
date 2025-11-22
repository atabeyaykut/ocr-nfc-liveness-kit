.class public final synthetic Lb3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r$a;


# instance fields
.field public final synthetic a:Lb3/r;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lu2/s;


# direct methods
.method public synthetic constructor <init>(Lb3/r;Ljava/util/ArrayList;Lu2/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/p;->a:Lb3/r;

    iput-object p2, p0, Lb3/p;->b:Ljava/util/List;

    iput-object p3, p0, Lb3/p;->c:Lu2/s;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    check-cast v0, Landroid/database/Cursor;

    .line 6
    .line 7
    iget-object v2, v1, Lb3/p;->a:Lb3/r;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_7

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    const/4 v6, 0x7

    .line 24
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v6, 0x0

    .line 34
    :goto_1
    new-instance v8, Lu2/h$a;

    .line 35
    .line 36
    invoke-direct {v8}, Lu2/h$a;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v9, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v9, v8, Lu2/h$a;->f:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v8, v9}, Lu2/h$a;->d(Ljava/lang/String;)Lu2/h$a;

    .line 51
    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    iput-object v9, v8, Lu2/h$a;->d:Ljava/lang/Long;

    .line 63
    .line 64
    const/4 v9, 0x3

    .line 65
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    iput-object v9, v8, Lu2/h$a;->e:Ljava/lang/Long;

    .line 74
    .line 75
    const/4 v9, 0x4

    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    new-instance v3, Lu2/m;

    .line 79
    .line 80
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-nez v6, :cond_1

    .line 85
    .line 86
    sget-object v6, Lb3/r;->f:Lr2/b;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    new-instance v7, Lr2/b;

    .line 90
    .line 91
    invoke-direct {v7, v6}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v6, v7

    .line 95
    :goto_2
    const/4 v7, 0x5

    .line 96
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-direct {v3, v6, v7}, Lu2/m;-><init>(Lr2/b;[B)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v3}, Lu2/h$a;->c(Lu2/m;)Lu2/h$a;

    .line 104
    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_2
    new-instance v6, Lu2/m;

    .line 108
    .line 109
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-nez v9, :cond_3

    .line 114
    .line 115
    sget-object v9, Lb3/r;->f:Lr2/b;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    new-instance v10, Lr2/b;

    .line 119
    .line 120
    invoke-direct {v10, v9}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-object v9, v10

    .line 124
    :goto_3
    invoke-virtual {v2}, Lb3/r;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const-string v11, "event_payloads"

    .line 129
    .line 130
    const-string v12, "bytes"

    .line 131
    .line 132
    filled-new-array {v12}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    const-string v13, "event_id = ?"

    .line 137
    .line 138
    new-array v14, v7, [Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    aput-object v7, v14, v3

    .line 145
    .line 146
    const/4 v15, 0x0

    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const-string v17, "sequence_num"

    .line 150
    .line 151
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    :try_start_0
    sget-object v10, Lb3/r;->f:Lr2/b;

    .line 156
    .line 157
    new-instance v10, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    const/4 v11, 0x0

    .line 163
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    if-eqz v12, :cond_4

    .line 168
    .line 169
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    array-length v12, v12

    .line 177
    add-int/2addr v11, v12

    .line 178
    goto :goto_4

    .line 179
    :cond_4
    new-array v11, v11, [B

    .line 180
    .line 181
    const/4 v12, 0x0

    .line 182
    const/4 v13, 0x0

    .line 183
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-ge v12, v14, :cond_5

    .line 188
    .line 189
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    check-cast v14, [B

    .line 194
    .line 195
    array-length v15, v14

    .line 196
    invoke-static {v14, v3, v11, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    .line 198
    .line 199
    array-length v14, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    add-int/2addr v13, v14

    .line 201
    add-int/lit8 v12, v12, 0x1

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    goto :goto_7

    .line 206
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 207
    .line 208
    .line 209
    invoke-direct {v6, v9, v11}, Lu2/m;-><init>(Lr2/b;[B)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v6}, Lu2/h$a;->c(Lu2/m;)Lu2/h$a;

    .line 213
    .line 214
    .line 215
    :goto_6
    const/4 v3, 0x6

    .line 216
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-nez v6, :cond_6

    .line 221
    .line 222
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    iput-object v3, v8, Lu2/h$a;->b:Ljava/lang/Integer;

    .line 231
    .line 232
    :cond_6
    invoke-virtual {v8}, Lu2/h$a;->b()Lu2/h;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    new-instance v6, Lb3/b;

    .line 237
    .line 238
    iget-object v7, v1, Lb3/p;->c:Lu2/s;

    .line 239
    .line 240
    invoke-direct {v6, v4, v5, v7, v3}, Lb3/b;-><init>(JLu2/s;Lu2/n;)V

    .line 241
    .line 242
    .line 243
    iget-object v3, v1, Lb3/p;->b:Ljava/util/List;

    .line 244
    .line 245
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_7
    const/4 v0, 0x0

    .line 255
    return-object v0
.end method
