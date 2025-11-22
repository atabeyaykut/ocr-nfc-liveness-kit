.class public final Lio/realm/k1;
.super Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/k1$a;
    }
.end annotation


# static fields
.field public static final c:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/k1$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$a;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x0

    .line 5
    const-string v0, "InfoMessageModelRealm"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;-><init>(Ljava/lang/String;ZI)V

    .line 11
    .line 12
    .line 13
    const-string v1, "messageId"

    .line 14
    .line 15
    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    move-object v0, v6

    .line 23
    move-object v2, v9

    .line 24
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 25
    .line 26
    .line 27
    const-string v1, "messageType"

    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 33
    .line 34
    .line 35
    const-string v1, "messageTitle"

    .line 36
    .line 37
    sget-object v14, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 38
    .line 39
    move-object v2, v14

    .line 40
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 41
    .line 42
    .line 43
    const-string v1, "messageContent"

    .line 44
    .line 45
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 46
    .line 47
    .line 48
    const-string v1, "messageServiceCode"

    .line 49
    .line 50
    move-object v2, v9

    .line 51
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 52
    .line 53
    .line 54
    const-string v1, "messageLink"

    .line 55
    .line 56
    move-object v2, v14

    .line 57
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 58
    .line 59
    .line 60
    const-string v1, "messageIconLink"

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 63
    .line 64
    .line 65
    const-string v1, "messageFolder"

    .line 66
    .line 67
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 68
    .line 69
    .line 70
    const-string v1, "messageFolderTitle"

    .line 71
    .line 72
    move v5, v11

    .line 73
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 74
    .line 75
    .line 76
    const-string v1, "messageButtonText"

    .line 77
    .line 78
    move v3, v13

    .line 79
    move v4, v8

    .line 80
    move v5, v10

    .line 81
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 82
    .line 83
    .line 84
    const-string v1, "isMessageShown"

    .line 85
    .line 86
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    move v3, v12

    .line 90
    move v4, v7

    .line 91
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$a;->c()Lio/realm/internal/OsObjectSchemaInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lio/realm/k1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 99
    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;-><init>()V

    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Lio/realm/k1$a;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    instance-of v1, v8, Lio/realm/internal/n;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static/range {p2 .. p2}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    move-object v1, v8

    .line 21
    check-cast v1, Lio/realm/internal/n;

    .line 22
    .line 23
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 36
    .line 37
    iget-wide v2, v1, Lio/realm/a;->b:J

    .line 38
    .line 39
    iget-wide v4, v0, Lio/realm/a;->b:J

    .line 40
    .line 41
    cmp-long v6, v2, v4

    .line 42
    .line 43
    if-nez v6, :cond_0

    .line 44
    .line 45
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 46
    .line 47
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 50
    .line 51
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    return-object v8

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    .line 69
    .line 70
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v12, v1

    .line 75
    check-cast v12, Lio/realm/a$b;

    .line 76
    .line 77
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lio/realm/internal/n;

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_2
    const-class v13, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz p3, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-wide v3, v7, Lio/realm/k1$a;->e:J

    .line 98
    .line 99
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-nez v5, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->d(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    :goto_0
    const-wide/16 v5, -0x1

    .line 119
    .line 120
    cmp-long v14, v3, v5

    .line 121
    .line 122
    if-nez v14, :cond_4

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    move-object v1, v12

    .line 136
    move-object v2, p0

    .line 137
    move-object/from16 v4, p1

    .line 138
    .line 139
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lio/realm/k1;

    .line 143
    .line 144
    invoke-direct {v1}, Lio/realm/k1;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_5
    :goto_1
    move/from16 v2, p3

    .line 160
    .line 161
    :goto_2
    if-eqz v2, :cond_6

    .line 162
    .line 163
    invoke-virtual {p0, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 168
    .line 169
    invoke-direct {v2, v0, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 170
    .line 171
    .line 172
    iget-wide v3, v7, Lio/realm/k1$a;->e:J

    .line 173
    .line 174
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 179
    .line 180
    .line 181
    iget-wide v3, v7, Lio/realm/k1$a;->f:J

    .line 182
    .line 183
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageType()Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 188
    .line 189
    .line 190
    iget-wide v3, v7, Lio/realm/k1$a;->g:J

    .line 191
    .line 192
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageTitle()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-wide v3, v7, Lio/realm/k1$a;->h:J

    .line 200
    .line 201
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageContent()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-wide v3, v7, Lio/realm/k1$a;->i:J

    .line 209
    .line 210
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageServiceCode()Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 215
    .line 216
    .line 217
    iget-wide v3, v7, Lio/realm/k1$a;->j:J

    .line 218
    .line 219
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageLink()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-wide v3, v7, Lio/realm/k1$a;->k:J

    .line 227
    .line 228
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageIconLink()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-wide v3, v7, Lio/realm/k1$a;->l:J

    .line 236
    .line 237
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageFolder()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-wide v3, v7, Lio/realm/k1$a;->m:J

    .line 245
    .line 246
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageFolderTitle()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-wide v3, v7, Lio/realm/k1$a;->n:J

    .line 254
    .line 255
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageButtonText()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-wide v3, v7, Lio/realm/k1$a;->o:J

    .line 263
    .line 264
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$isMessageShown()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :cond_6
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Lio/realm/internal/n;

    .line 285
    .line 286
    if-eqz v1, :cond_7

    .line 287
    .line 288
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :cond_7
    invoke-virtual {p0, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 297
    .line 298
    invoke-direct {v2, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 299
    .line 300
    .line 301
    iget-wide v3, v7, Lio/realm/k1$a;->e:J

    .line 302
    .line 303
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 308
    .line 309
    .line 310
    iget-wide v3, v7, Lio/realm/k1$a;->f:J

    .line 311
    .line 312
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageType()Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 317
    .line 318
    .line 319
    iget-wide v3, v7, Lio/realm/k1$a;->g:J

    .line 320
    .line 321
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageTitle()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-wide v3, v7, Lio/realm/k1$a;->h:J

    .line 329
    .line 330
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageContent()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-wide v3, v7, Lio/realm/k1$a;->i:J

    .line 338
    .line 339
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageServiceCode()Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 344
    .line 345
    .line 346
    iget-wide v3, v7, Lio/realm/k1$a;->j:J

    .line 347
    .line 348
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageLink()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-wide v3, v7, Lio/realm/k1$a;->k:J

    .line 356
    .line 357
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageIconLink()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-wide v3, v7, Lio/realm/k1$a;->l:J

    .line 365
    .line 366
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageFolder()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-wide v3, v7, Lio/realm/k1$a;->m:J

    .line 374
    .line 375
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageFolderTitle()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-wide v3, v7, Lio/realm/k1$a;->n:J

    .line 383
    .line 384
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$messageButtonText()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-wide v3, v7, Lio/realm/k1$a;->o:J

    .line 392
    .line 393
    invoke-interface/range {p2 .. p2}, Lio/realm/l1;->realmGet$isMessageShown()Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    move-object v7, v1

    .line 413
    check-cast v7, Lio/realm/a$b;

    .line 414
    .line 415
    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 416
    .line 417
    invoke-virtual {v1, v13}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    const/4 v5, 0x0

    .line 422
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    move-object v1, v7

    .line 427
    move-object v2, p0

    .line 428
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 429
    .line 430
    .line 431
    new-instance v1, Lio/realm/k1;

    .line 432
    .line 433
    invoke-direct {v1}, Lio/realm/k1;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v7}, Lio/realm/a$b;->a()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    :goto_3
    return-object v1
.end method

.method public static d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;Ljava/util/HashMap;)J
    .locals 13

    .line 1
    instance-of v0, p1, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lio/realm/internal/n;

    .line 13
    .line 14
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 29
    .line 30
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 33
    .line 34
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-object p0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 47
    .line 48
    invoke-interface {p0}, Lio/realm/internal/p;->Y()J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    return-wide p0

    .line 53
    :cond_0
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-wide v11, v1, Lio/realm/internal/Table;->a:J

    .line 60
    .line 61
    iget-object p0, p0, Lio/realm/g0;->j:Lio/realm/u;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Lio/realm/k1$a;

    .line 68
    .line 69
    iget-wide v8, p0, Lio/realm/k1$a;->e:J

    .line 70
    .line 71
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    invoke-static {v11, v12, v8, v9}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    int-to-long v6, v0

    .line 91
    move-wide v2, v11

    .line 92
    move-wide v4, v8

    .line 93
    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    :goto_0
    const-wide/16 v4, -0x1

    .line 98
    .line 99
    cmp-long v0, v2, v4

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v8, v9, v0}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    :cond_2
    move-wide v0, v2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageType()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-wide v4, p0, Lio/realm/k1$a;->f:J

    .line 124
    .line 125
    if-eqz p2, :cond_3

    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    const/4 v10, 0x0

    .line 132
    move-wide v2, v11

    .line 133
    move-wide v6, v0

    .line 134
    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const/4 v8, 0x0

    .line 139
    move-wide v2, v11

    .line 140
    move-wide v6, v0

    .line 141
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageTitle()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    iget-wide v4, p0, Lio/realm/k1$a;->g:J

    .line 149
    .line 150
    if-eqz v8, :cond_4

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    move-wide v2, v11

    .line 154
    move-wide v6, v0

    .line 155
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    const/4 v8, 0x0

    .line 160
    move-wide v2, v11

    .line 161
    move-wide v6, v0

    .line 162
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 163
    .line 164
    .line 165
    :goto_2
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageContent()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    iget-wide v4, p0, Lio/realm/k1$a;->h:J

    .line 170
    .line 171
    if-eqz v8, :cond_5

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    move-wide v2, v11

    .line 175
    move-wide v6, v0

    .line 176
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    const/4 v8, 0x0

    .line 181
    move-wide v2, v11

    .line 182
    move-wide v6, v0

    .line 183
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 184
    .line 185
    .line 186
    :goto_3
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageServiceCode()Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    iget-wide v4, p0, Lio/realm/k1$a;->i:J

    .line 191
    .line 192
    if-eqz p2, :cond_6

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 195
    .line 196
    .line 197
    move-result-wide v8

    .line 198
    const/4 v10, 0x0

    .line 199
    move-wide v2, v11

    .line 200
    move-wide v6, v0

    .line 201
    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_6
    const/4 v8, 0x0

    .line 206
    move-wide v2, v11

    .line 207
    move-wide v6, v0

    .line 208
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 209
    .line 210
    .line 211
    :goto_4
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageLink()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    iget-wide v4, p0, Lio/realm/k1$a;->j:J

    .line 216
    .line 217
    if-eqz v8, :cond_7

    .line 218
    .line 219
    const/4 v9, 0x0

    .line 220
    move-wide v2, v11

    .line 221
    move-wide v6, v0

    .line 222
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_7
    const/4 v8, 0x0

    .line 227
    move-wide v2, v11

    .line 228
    move-wide v6, v0

    .line 229
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 230
    .line 231
    .line 232
    :goto_5
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageIconLink()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    iget-wide v4, p0, Lio/realm/k1$a;->k:J

    .line 237
    .line 238
    if-eqz v8, :cond_8

    .line 239
    .line 240
    const/4 v9, 0x0

    .line 241
    move-wide v2, v11

    .line 242
    move-wide v6, v0

    .line 243
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 244
    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_8
    const/4 v8, 0x0

    .line 248
    move-wide v2, v11

    .line 249
    move-wide v6, v0

    .line 250
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 251
    .line 252
    .line 253
    :goto_6
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageFolder()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    iget-wide v4, p0, Lio/realm/k1$a;->l:J

    .line 258
    .line 259
    if-eqz v8, :cond_9

    .line 260
    .line 261
    const/4 v9, 0x0

    .line 262
    move-wide v2, v11

    .line 263
    move-wide v6, v0

    .line 264
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_9
    const/4 v8, 0x0

    .line 269
    move-wide v2, v11

    .line 270
    move-wide v6, v0

    .line 271
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 272
    .line 273
    .line 274
    :goto_7
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageFolderTitle()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    iget-wide v4, p0, Lio/realm/k1$a;->m:J

    .line 279
    .line 280
    if-eqz v8, :cond_a

    .line 281
    .line 282
    const/4 v9, 0x0

    .line 283
    move-wide v2, v11

    .line 284
    move-wide v6, v0

    .line 285
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 286
    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_a
    const/4 v8, 0x0

    .line 290
    move-wide v2, v11

    .line 291
    move-wide v6, v0

    .line 292
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 293
    .line 294
    .line 295
    :goto_8
    invoke-interface {p1}, Lio/realm/l1;->realmGet$messageButtonText()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    iget-wide v4, p0, Lio/realm/k1$a;->n:J

    .line 300
    .line 301
    if-eqz v8, :cond_b

    .line 302
    .line 303
    const/4 v9, 0x0

    .line 304
    move-wide v2, v11

    .line 305
    move-wide v6, v0

    .line 306
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_b
    const/4 v8, 0x0

    .line 311
    move-wide v2, v11

    .line 312
    move-wide v6, v0

    .line 313
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 314
    .line 315
    .line 316
    :goto_9
    iget-wide v4, p0, Lio/realm/k1$a;->o:J

    .line 317
    .line 318
    invoke-interface {p1}, Lio/realm/l1;->realmGet$isMessageShown()Z

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    const/4 v9, 0x0

    .line 323
    move-wide v2, v11

    .line 324
    move-wide v6, v0

    .line 325
    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 326
    .line 327
    .line 328
    return-wide v0
.end method

.method public static e(Lio/realm/g0;Ljava/util/Iterator;Ljava/util/HashMap;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-wide v13, v3, Lio/realm/internal/Table;->a:J

    .line 12
    .line 13
    iget-object v4, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 14
    .line 15
    invoke-virtual {v4, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lio/realm/k1$a;

    .line 20
    .line 21
    iget-wide v10, v2, Lio/realm/k1$a;->e:J

    .line 22
    .line 23
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_d

    .line 28
    .line 29
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    move-object v15, v4

    .line 34
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;

    .line 35
    .line 36
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    instance-of v4, v15, Lio/realm/internal/n;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-static {v15}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    move-object v4, v15

    .line 54
    check-cast v4, Lio/realm/internal/n;

    .line 55
    .line 56
    invoke-interface {v4}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v5, v5, Lio/realm/f0;->e:Lio/realm/a;

    .line 61
    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    invoke-interface {v4}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iget-object v5, v5, Lio/realm/f0;->e:Lio/realm/a;

    .line 69
    .line 70
    iget-object v5, v5, Lio/realm/a;->c:Lio/realm/o0;

    .line 71
    .line 72
    iget-object v5, v5, Lio/realm/o0;->c:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v6, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 75
    .line 76
    iget-object v6, v6, Lio/realm/o0;->c:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    invoke-interface {v4}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v4, v4, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 89
    .line 90
    invoke-interface {v4}, Lio/realm/internal/p;->Y()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v1, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    invoke-static {v13, v14, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    int-to-long v8, v4

    .line 122
    move-wide v4, v13

    .line 123
    move-wide v6, v10

    .line 124
    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    :goto_1
    const-wide/16 v6, -0x1

    .line 129
    .line 130
    cmp-long v8, v4, v6

    .line 131
    .line 132
    if-nez v8, :cond_3

    .line 133
    .line 134
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageId()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v3, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    :cond_3
    move-wide/from16 v16, v4

    .line 143
    .line 144
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v1, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageType()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    if-eqz v4, :cond_4

    .line 156
    .line 157
    iget-wide v6, v2, Lio/realm/k1$a;->f:J

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 160
    .line 161
    .line 162
    move-result-wide v18

    .line 163
    const/4 v12, 0x0

    .line 164
    move-wide v4, v13

    .line 165
    move-wide/from16 v8, v16

    .line 166
    .line 167
    move-wide/from16 v20, v10

    .line 168
    .line 169
    move-wide/from16 v10, v18

    .line 170
    .line 171
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    move-wide/from16 v20, v10

    .line 176
    .line 177
    iget-wide v6, v2, Lio/realm/k1$a;->f:J

    .line 178
    .line 179
    const/4 v10, 0x0

    .line 180
    move-wide v4, v13

    .line 181
    move-wide/from16 v8, v16

    .line 182
    .line 183
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 184
    .line 185
    .line 186
    :goto_2
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageTitle()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    iget-wide v6, v2, Lio/realm/k1$a;->g:J

    .line 191
    .line 192
    if-eqz v10, :cond_5

    .line 193
    .line 194
    const/4 v11, 0x0

    .line 195
    move-wide v4, v13

    .line 196
    move-wide/from16 v8, v16

    .line 197
    .line 198
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_5
    const/4 v10, 0x0

    .line 203
    move-wide v4, v13

    .line 204
    move-wide/from16 v8, v16

    .line 205
    .line 206
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 207
    .line 208
    .line 209
    :goto_3
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageContent()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    iget-wide v6, v2, Lio/realm/k1$a;->h:J

    .line 214
    .line 215
    if-eqz v10, :cond_6

    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    move-wide v4, v13

    .line 219
    move-wide/from16 v8, v16

    .line 220
    .line 221
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_6
    const/4 v10, 0x0

    .line 226
    move-wide v4, v13

    .line 227
    move-wide/from16 v8, v16

    .line 228
    .line 229
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 230
    .line 231
    .line 232
    :goto_4
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageServiceCode()Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    iget-wide v6, v2, Lio/realm/k1$a;->i:J

    .line 237
    .line 238
    if-eqz v4, :cond_7

    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 241
    .line 242
    .line 243
    move-result-wide v10

    .line 244
    const/4 v12, 0x0

    .line 245
    move-wide v4, v13

    .line 246
    move-wide/from16 v8, v16

    .line 247
    .line 248
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_7
    const/4 v10, 0x0

    .line 253
    move-wide v4, v13

    .line 254
    move-wide/from16 v8, v16

    .line 255
    .line 256
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 257
    .line 258
    .line 259
    :goto_5
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageLink()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    iget-wide v6, v2, Lio/realm/k1$a;->j:J

    .line 264
    .line 265
    if-eqz v10, :cond_8

    .line 266
    .line 267
    const/4 v11, 0x0

    .line 268
    move-wide v4, v13

    .line 269
    move-wide/from16 v8, v16

    .line 270
    .line 271
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_8
    const/4 v10, 0x0

    .line 276
    move-wide v4, v13

    .line 277
    move-wide/from16 v8, v16

    .line 278
    .line 279
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 280
    .line 281
    .line 282
    :goto_6
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageIconLink()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    iget-wide v6, v2, Lio/realm/k1$a;->k:J

    .line 287
    .line 288
    if-eqz v10, :cond_9

    .line 289
    .line 290
    const/4 v11, 0x0

    .line 291
    move-wide v4, v13

    .line 292
    move-wide/from16 v8, v16

    .line 293
    .line 294
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_9
    const/4 v10, 0x0

    .line 299
    move-wide v4, v13

    .line 300
    move-wide/from16 v8, v16

    .line 301
    .line 302
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 303
    .line 304
    .line 305
    :goto_7
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageFolder()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    iget-wide v6, v2, Lio/realm/k1$a;->l:J

    .line 310
    .line 311
    if-eqz v10, :cond_a

    .line 312
    .line 313
    const/4 v11, 0x0

    .line 314
    move-wide v4, v13

    .line 315
    move-wide/from16 v8, v16

    .line 316
    .line 317
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_a
    const/4 v10, 0x0

    .line 322
    move-wide v4, v13

    .line 323
    move-wide/from16 v8, v16

    .line 324
    .line 325
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 326
    .line 327
    .line 328
    :goto_8
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageFolderTitle()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    iget-wide v6, v2, Lio/realm/k1$a;->m:J

    .line 333
    .line 334
    if-eqz v10, :cond_b

    .line 335
    .line 336
    const/4 v11, 0x0

    .line 337
    move-wide v4, v13

    .line 338
    move-wide/from16 v8, v16

    .line 339
    .line 340
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_b
    const/4 v10, 0x0

    .line 345
    move-wide v4, v13

    .line 346
    move-wide/from16 v8, v16

    .line 347
    .line 348
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 349
    .line 350
    .line 351
    :goto_9
    invoke-interface {v15}, Lio/realm/l1;->realmGet$messageButtonText()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    iget-wide v6, v2, Lio/realm/k1$a;->n:J

    .line 356
    .line 357
    if-eqz v10, :cond_c

    .line 358
    .line 359
    const/4 v11, 0x0

    .line 360
    move-wide v4, v13

    .line 361
    move-wide/from16 v8, v16

    .line 362
    .line 363
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 364
    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_c
    const/4 v10, 0x0

    .line 368
    move-wide v4, v13

    .line 369
    move-wide/from16 v8, v16

    .line 370
    .line 371
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 372
    .line 373
    .line 374
    :goto_a
    iget-wide v6, v2, Lio/realm/k1$a;->o:J

    .line 375
    .line 376
    invoke-interface {v15}, Lio/realm/l1;->realmGet$isMessageShown()Z

    .line 377
    .line 378
    .line 379
    move-result v10

    .line 380
    const/4 v11, 0x0

    .line 381
    move-wide v4, v13

    .line 382
    move-wide/from16 v8, v16

    .line 383
    .line 384
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 385
    .line 386
    .line 387
    move-wide/from16 v10, v20

    .line 388
    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :cond_d
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lio/realm/a;->h:Lio/realm/a$c;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/realm/a$b;

    .line 13
    .line 14
    iget-object v1, v0, Lio/realm/a$b;->c:Lio/realm/internal/c;

    .line 15
    .line 16
    check-cast v1, Lio/realm/k1$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 26
    .line 27
    iget-object v2, v0, Lio/realm/a$b;->a:Lio/realm/a;

    .line 28
    .line 29
    iput-object v2, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 30
    .line 31
    iget-object v2, v0, Lio/realm/a$b;->b:Lio/realm/internal/p;

    .line 32
    .line 33
    iput-object v2, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 34
    .line 35
    iget-boolean v2, v0, Lio/realm/a$b;->d:Z

    .line 36
    .line 37
    iput-boolean v2, v1, Lio/realm/f0;->f:Z

    .line 38
    .line 39
    iget-object v0, v0, Lio/realm/a$b;->e:Ljava/util/List;

    .line 40
    .line 41
    iput-object v0, v1, Lio/realm/f0;->g:Ljava/util/List;

    .line 42
    .line 43
    return-void
.end method

.method public final b()Lio/realm/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/f0<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 7
    .line 8
    const-class v2, Lio/realm/k1;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lio/realm/k1;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/k1;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v4, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 29
    .line 30
    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, v3, Lio/realm/a;->c:Lio/realm/o0;

    .line 33
    .line 34
    iget-object v5, v5, Lio/realm/o0;->c:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v5, :cond_3

    .line 46
    .line 47
    :goto_0
    return v1

    .line 48
    :cond_3
    invoke-virtual {v2}, Lio/realm/a;->j()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v3}, Lio/realm/a;->j()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eq v4, v5, :cond_4

    .line 57
    .line 58
    return v1

    .line 59
    :cond_4
    iget-object v2, v2, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 60
    .line 61
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v3, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 66
    .line 67
    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$a;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_5

    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    iget-object v2, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 79
    .line 80
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 81
    .line 82
    invoke-interface {v2}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, p1, Lio/realm/k1;->b:Lio/realm/f0;

    .line 91
    .line 92
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 93
    .line 94
    invoke-interface {v3}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v2, :cond_6

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    if-eqz v3, :cond_7

    .line 112
    .line 113
    :goto_1
    return v1

    .line 114
    :cond_7
    iget-object v2, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 115
    .line 116
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 117
    .line 118
    invoke-interface {v2}, Lio/realm/internal/p;->Y()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    iget-object p1, p1, Lio/realm/k1;->b:Lio/realm/f0;

    .line 123
    .line 124
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 125
    .line 126
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    cmp-long p1, v2, v4

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    return v1

    .line 135
    :cond_8
    return v0

    .line 136
    :cond_9
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 6
    .line 7
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 10
    .line 11
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 20
    .line 21
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 22
    .line 23
    invoke-interface {v2}, Lio/realm/internal/p;->Y()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    const/16 v5, 0x20f

    .line 37
    .line 38
    add-int/2addr v5, v1

    .line 39
    mul-int/lit8 v5, v5, 0x1f

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    :cond_1
    add-int/2addr v5, v4

    .line 48
    mul-int/lit8 v5, v5, 0x1f

    .line 49
    .line 50
    const/16 v0, 0x20

    .line 51
    .line 52
    ushr-long v0, v2, v0

    .line 53
    .line 54
    xor-long/2addr v0, v2

    .line 55
    long-to-int v1, v0

    .line 56
    add-int/2addr v5, v1

    .line 57
    return v5
.end method

.method public final realmGet$isMessageShown()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->o:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->x(J)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final realmGet$messageButtonText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->n:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final realmGet$messageContent()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->h:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final realmGet$messageFolder()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->l:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final realmGet$messageFolderTitle()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->m:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final realmGet$messageIconLink()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->k:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final realmGet$messageId()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->e:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->C(J)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    .line 28
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 29
    .line 30
    iget-wide v1, v1, Lio/realm/k1$a;->e:J

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    long-to-int v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final realmGet$messageLink()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->j:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final realmGet$messageServiceCode()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->i:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->C(J)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    .line 28
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 29
    .line 30
    iget-wide v1, v1, Lio/realm/k1$a;->i:J

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    long-to-int v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final realmGet$messageTitle()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->g:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final realmGet$messageType()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/k1$a;->f:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->C(J)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    .line 28
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 29
    .line 30
    iget-wide v1, v1, Lio/realm/k1$a;->f:J

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    long-to-int v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final realmSet$isMessageShown(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/k1$a;->o:J

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    move v6, p1

    .line 27
    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->s(JJZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/k1$a;->o:J

    .line 43
    .line 44
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->t(JZ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final realmSet$messageButtonText(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->n:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->n:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    move-object v10, p1

    .line 45
    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/k1$a;->n:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/k1$a;->n:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$messageContent(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->h:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->h:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    move-object v10, p1

    .line 45
    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/k1$a;->h:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/k1$a;->h:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$messageFolder(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->l:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->l:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    move-object v10, p1

    .line 45
    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/k1$a;->l:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/k1$a;->l:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$messageFolderTitle(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->m:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->m:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    move-object v10, p1

    .line 45
    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/k1$a;->m:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/k1$a;->m:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$messageIconLink(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->k:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->k:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    move-object v10, p1

    .line 45
    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/k1$a;->k:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/k1$a;->k:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$messageId(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v0, p1, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lio/realm/f0;->e:Lio/realm/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/realm/a;->b()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lio/realm/exceptions/RealmException;

    .line 14
    .line 15
    const-string v0, "Primary key field \'messageId\' cannot be changed after object was created."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final realmSet$messageLink(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->j:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->j:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    move-object v10, p1

    .line 45
    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/k1$a;->j:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/k1$a;->j:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$messageServiceCode(Ljava/lang/Integer;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->i:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->i:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-long v10, p1

    .line 49
    invoke-virtual/range {v5 .. v11}, Lio/realm/internal/Table;->v(JJJ)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    iget-object p1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 63
    .line 64
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 65
    .line 66
    iget-wide v0, v0, Lio/realm/k1$a;->i:J

    .line 67
    .line 68
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 73
    .line 74
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 75
    .line 76
    iget-wide v1, v1, Lio/realm/k1$a;->i:J

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-long v3, p1

    .line 83
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final realmSet$messageTitle(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->g:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->g:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    move-object v10, p1

    .line 45
    invoke-virtual/range {v5 .. v10}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 52
    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/k1$a;->g:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/k1$a;->g:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$messageType(Ljava/lang/Integer;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/k1$a;->f:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/k1$a;->f:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-long v10, p1

    .line 49
    invoke-virtual/range {v5 .. v11}, Lio/realm/internal/Table;->v(JJJ)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/realm/k1;->b:Lio/realm/f0;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    iget-object p1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 63
    .line 64
    iget-object v0, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 65
    .line 66
    iget-wide v0, v0, Lio/realm/k1$a;->f:J

    .line 67
    .line 68
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 73
    .line 74
    iget-object v1, p0, Lio/realm/k1;->a:Lio/realm/k1$a;

    .line 75
    .line 76
    iget-wide v1, v1, Lio/realm/k1$a;->f:J

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-long v3, p1

    .line 83
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InfoMessageModelRealm = proxy[{messageId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageId()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageType()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageContent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageServiceCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageServiceCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageServiceCode()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageIconLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageIconLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageIconLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageFolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageFolder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageFolder()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageFolderTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageFolderTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageFolderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{messageButtonText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageButtonText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$messageButtonText()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{isMessageShown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/k1;->realmGet$isMessageShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
