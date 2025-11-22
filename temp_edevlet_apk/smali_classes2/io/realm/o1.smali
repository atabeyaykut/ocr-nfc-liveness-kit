.class public final Lio/realm/o1;
.super Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/o1$a;
    }
.end annotation


# static fields
.field public static final e:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/o1$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lio/realm/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lio/realm/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;",
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
    const-string v0, "InstitutionModelRealm"

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
    const-string v1, "institutionId"

    .line 14
    .line 15
    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v11, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    move-object v0, v6

    .line 23
    move-object v2, v9

    .line 24
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 25
    .line 26
    .line 27
    const-string v1, "institutionCode"

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
    const-string v1, "institutionName"

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
    const-string v1, "serviceCount"

    .line 44
    .line 45
    move-object v2, v9

    .line 46
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 47
    .line 48
    .line 49
    const-string v1, "sectionCode"

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 52
    .line 53
    .line 54
    const-string v1, "cityCode"

    .line 55
    .line 56
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 57
    .line 58
    .line 59
    const-string v1, "categoryCode"

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 65
    .line 66
    const-string v1, "serviceList"

    .line 67
    .line 68
    const-string v2, "ServiceModelRealm"

    .line 69
    .line 70
    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "contactList"

    .line 74
    .line 75
    const-string v2, "InstitutionContactModelRealm"

    .line 76
    .line 77
    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "isOpened"

    .line 81
    .line 82
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 83
    .line 84
    move-object v0, v6

    .line 85
    move v3, v13

    .line 86
    move v4, v8

    .line 87
    move v5, v11

    .line 88
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 89
    .line 90
    .line 91
    const-string v1, "iconName"

    .line 92
    .line 93
    move-object v2, v14

    .line 94
    move v3, v12

    .line 95
    move v4, v7

    .line 96
    move v5, v10

    .line 97
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$a;->c()Lio/realm/internal/OsObjectSchemaInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lio/realm/o1;->e:Lio/realm/internal/OsObjectSchemaInfo;

    .line 105
    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;-><init>()V

    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Lio/realm/o1$a;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v10, p5

    .line 10
    .line 11
    instance-of v1, v8, Lio/realm/internal/n;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-static/range {p2 .. p2}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    move-object v1, v8

    .line 22
    check-cast v1, Lio/realm/internal/n;

    .line 23
    .line 24
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 37
    .line 38
    iget-wide v2, v1, Lio/realm/a;->b:J

    .line 39
    .line 40
    iget-wide v4, v0, Lio/realm/a;->b:J

    .line 41
    .line 42
    cmp-long v6, v2, v4

    .line 43
    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 47
    .line 48
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 51
    .line 52
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    return-object v8

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_1
    sget-object v11, Lio/realm/a;->h:Lio/realm/a$c;

    .line 70
    .line 71
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v12, v1

    .line 76
    check-cast v12, Lio/realm/a$b;

    .line 77
    .line 78
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lio/realm/internal/n;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_2
    const-class v14, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    if-eqz p3, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, v14}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-wide v3, v7, Lio/realm/o1$a;->e:J

    .line 99
    .line 100
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$institutionId()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    int-to-long v5, v5

    .line 105
    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    const-wide/16 v5, -0x1

    .line 110
    .line 111
    cmp-long v15, v3, v5

    .line 112
    .line 113
    if-nez v15, :cond_3

    .line 114
    .line 115
    move-object v12, v1

    .line 116
    const/4 v1, 0x0

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const/4 v5, 0x0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    move-object v1, v12

    .line 128
    move-object/from16 v2, p0

    .line 129
    .line 130
    move-object/from16 v4, p1

    .line 131
    .line 132
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Lio/realm/o1;

    .line 136
    .line 137
    invoke-direct {v1}, Lio/realm/o1;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_4
    :goto_0
    move-object v12, v1

    .line 153
    move/from16 v1, p3

    .line 154
    .line 155
    :goto_1
    const-class v15, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 156
    .line 157
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 158
    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    invoke-virtual {v0, v14}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v11, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 166
    .line 167
    invoke-direct {v11, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 168
    .line 169
    .line 170
    iget-wide v1, v7, Lio/realm/o1$a;->e:J

    .line 171
    .line 172
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$institutionId()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 181
    .line 182
    .line 183
    iget-wide v1, v7, Lio/realm/o1$a;->f:J

    .line 184
    .line 185
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$institutionCode()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 194
    .line 195
    .line 196
    iget-wide v1, v7, Lio/realm/o1$a;->g:J

    .line 197
    .line 198
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$institutionName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-wide v1, v7, Lio/realm/o1$a;->h:J

    .line 206
    .line 207
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$serviceCount()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 216
    .line 217
    .line 218
    iget-wide v1, v7, Lio/realm/o1$a;->i:J

    .line 219
    .line 220
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$sectionCode()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 229
    .line 230
    .line 231
    iget-wide v1, v7, Lio/realm/o1$a;->j:J

    .line 232
    .line 233
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$cityCode()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 242
    .line 243
    .line 244
    iget-wide v1, v7, Lio/realm/o1$a;->k:J

    .line 245
    .line 246
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$categoryCode()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 255
    .line 256
    .line 257
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$serviceList()Lio/realm/q0;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    iget-object v5, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 262
    .line 263
    if-eqz v14, :cond_7

    .line 264
    .line 265
    new-instance v4, Lio/realm/q0;

    .line 266
    .line 267
    invoke-direct {v4}, Lio/realm/q0;-><init>()V

    .line 268
    .line 269
    .line 270
    const/4 v3, 0x0

    .line 271
    :goto_2
    invoke-virtual {v14}, Lio/realm/q0;->size()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-ge v3, v1, :cond_6

    .line 276
    .line 277
    invoke-virtual {v14, v3}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    move-object v2, v1

    .line 282
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 283
    .line 284
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 289
    .line 290
    if-eqz v1, :cond_5

    .line 291
    .line 292
    move/from16 v16, v3

    .line 293
    .line 294
    move-object v13, v4

    .line 295
    move-object/from16 v19, v5

    .line 296
    .line 297
    move-object/from16 v17, v12

    .line 298
    .line 299
    move-object v12, v6

    .line 300
    goto :goto_3

    .line 301
    :cond_5
    invoke-virtual {v5, v6}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    move-object/from16 v16, v1

    .line 306
    .line 307
    check-cast v16, Lio/realm/u2$a;

    .line 308
    .line 309
    const/16 v17, 0x1

    .line 310
    .line 311
    move-object/from16 v1, p0

    .line 312
    .line 313
    move-object/from16 v18, v2

    .line 314
    .line 315
    move-object/from16 v2, v16

    .line 316
    .line 317
    move/from16 v16, v3

    .line 318
    .line 319
    move-object/from16 v3, v18

    .line 320
    .line 321
    move-object v13, v4

    .line 322
    move/from16 v4, v17

    .line 323
    .line 324
    move-object/from16 v19, v5

    .line 325
    .line 326
    move-object/from16 v5, p4

    .line 327
    .line 328
    move-object/from16 v17, v12

    .line 329
    .line 330
    move-object v12, v6

    .line 331
    move-object/from16 v6, p5

    .line 332
    .line 333
    invoke-static/range {v1 .. v6}, Lio/realm/u2;->c(Lio/realm/g0;Lio/realm/u2$a;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    :goto_3
    invoke-virtual {v13, v1}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    add-int/lit8 v3, v16, 0x1

    .line 341
    .line 342
    move-object v6, v12

    .line 343
    move-object v4, v13

    .line 344
    move-object/from16 v12, v17

    .line 345
    .line 346
    move-object/from16 v5, v19

    .line 347
    .line 348
    goto :goto_2

    .line 349
    :cond_6
    move-object v13, v4

    .line 350
    move-object/from16 v19, v5

    .line 351
    .line 352
    move-object/from16 v17, v12

    .line 353
    .line 354
    iget-wide v1, v7, Lio/realm/o1$a;->l:J

    .line 355
    .line 356
    invoke-virtual {v11, v1, v2, v13}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLio/realm/q0;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_7
    move-object/from16 v19, v5

    .line 361
    .line 362
    move-object/from16 v17, v12

    .line 363
    .line 364
    iget-wide v1, v7, Lio/realm/o1$a;->l:J

    .line 365
    .line 366
    new-instance v3, Lio/realm/q0;

    .line 367
    .line 368
    invoke-direct {v3}, Lio/realm/q0;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v11, v1, v2, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLio/realm/q0;)V

    .line 372
    .line 373
    .line 374
    :goto_4
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$contactList()Lio/realm/q0;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    if-eqz v12, :cond_a

    .line 379
    .line 380
    new-instance v13, Lio/realm/q0;

    .line 381
    .line 382
    invoke-direct {v13}, Lio/realm/q0;-><init>()V

    .line 383
    .line 384
    .line 385
    const/4 v14, 0x0

    .line 386
    :goto_5
    invoke-virtual {v12}, Lio/realm/q0;->size()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-ge v14, v1, :cond_9

    .line 391
    .line 392
    invoke-virtual {v12, v14}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    move-object v3, v1

    .line 397
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 398
    .line 399
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 404
    .line 405
    if-eqz v1, :cond_8

    .line 406
    .line 407
    move-object/from16 v16, v19

    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_8
    move-object/from16 v6, v19

    .line 411
    .line 412
    invoke-virtual {v6, v15}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    move-object v2, v1

    .line 417
    check-cast v2, Lio/realm/m1$a;

    .line 418
    .line 419
    const/4 v4, 0x1

    .line 420
    move-object/from16 v1, p0

    .line 421
    .line 422
    move-object/from16 v5, p4

    .line 423
    .line 424
    move-object/from16 v16, v6

    .line 425
    .line 426
    move-object/from16 v6, p5

    .line 427
    .line 428
    invoke-static/range {v1 .. v6}, Lio/realm/m1;->c(Lio/realm/g0;Lio/realm/m1$a;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    :goto_6
    invoke-virtual {v13, v1}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    add-int/lit8 v14, v14, 0x1

    .line 436
    .line 437
    move-object/from16 v19, v16

    .line 438
    .line 439
    goto :goto_5

    .line 440
    :cond_9
    iget-wide v0, v7, Lio/realm/o1$a;->m:J

    .line 441
    .line 442
    invoke-virtual {v11, v0, v1, v13}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLio/realm/q0;)V

    .line 443
    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_a
    iget-wide v0, v7, Lio/realm/o1$a;->m:J

    .line 447
    .line 448
    new-instance v2, Lio/realm/q0;

    .line 449
    .line 450
    invoke-direct {v2}, Lio/realm/q0;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLio/realm/q0;)V

    .line 454
    .line 455
    .line 456
    :goto_7
    iget-wide v0, v7, Lio/realm/o1$a;->n:J

    .line 457
    .line 458
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$isOpened()Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v11, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 467
    .line 468
    .line 469
    iget-wide v0, v7, Lio/realm/o1$a;->o:J

    .line 470
    .line 471
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$iconName()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v11, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v11}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    .line 479
    .line 480
    .line 481
    move-object/from16 v12, v17

    .line 482
    .line 483
    goto/16 :goto_c

    .line 484
    .line 485
    :cond_b
    move-object v12, v6

    .line 486
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Lio/realm/internal/n;

    .line 491
    .line 492
    if-eqz v1, :cond_c

    .line 493
    .line 494
    move-object v12, v1

    .line 495
    check-cast v12, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 496
    .line 497
    goto/16 :goto_c

    .line 498
    .line 499
    :cond_c
    invoke-virtual {v0, v14}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 504
    .line 505
    invoke-direct {v2, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 506
    .line 507
    .line 508
    iget-wide v3, v7, Lio/realm/o1$a;->e:J

    .line 509
    .line 510
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$institutionId()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 519
    .line 520
    .line 521
    iget-wide v3, v7, Lio/realm/o1$a;->f:J

    .line 522
    .line 523
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$institutionCode()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 532
    .line 533
    .line 534
    iget-wide v3, v7, Lio/realm/o1$a;->g:J

    .line 535
    .line 536
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$institutionName()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-wide v3, v7, Lio/realm/o1$a;->h:J

    .line 544
    .line 545
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$serviceCount()I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 554
    .line 555
    .line 556
    iget-wide v3, v7, Lio/realm/o1$a;->i:J

    .line 557
    .line 558
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$sectionCode()I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 567
    .line 568
    .line 569
    iget-wide v3, v7, Lio/realm/o1$a;->j:J

    .line 570
    .line 571
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$cityCode()I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 580
    .line 581
    .line 582
    iget-wide v3, v7, Lio/realm/o1$a;->k:J

    .line 583
    .line 584
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$categoryCode()I

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 593
    .line 594
    .line 595
    iget-wide v3, v7, Lio/realm/o1$a;->n:J

    .line 596
    .line 597
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$isOpened()Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 606
    .line 607
    .line 608
    iget-wide v3, v7, Lio/realm/o1$a;->o:J

    .line 609
    .line 610
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$iconName()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    move-object v7, v1

    .line 626
    check-cast v7, Lio/realm/a$b;

    .line 627
    .line 628
    iget-object v11, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 629
    .line 630
    invoke-virtual {v11, v14}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    const/4 v5, 0x0

    .line 635
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    move-object v1, v7

    .line 640
    move-object/from16 v2, p0

    .line 641
    .line 642
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 643
    .line 644
    .line 645
    new-instance v13, Lio/realm/o1;

    .line 646
    .line 647
    invoke-direct {v13}, Lio/realm/o1;-><init>()V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v7}, Lio/realm/a$b;->a()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$serviceList()Lio/realm/q0;

    .line 657
    .line 658
    .line 659
    move-result-object v7

    .line 660
    if-eqz v7, :cond_e

    .line 661
    .line 662
    invoke-virtual {v13}, Lio/realm/o1;->realmGet$serviceList()Lio/realm/q0;

    .line 663
    .line 664
    .line 665
    move-result-object v14

    .line 666
    invoke-virtual {v14}, Lio/realm/q0;->clear()V

    .line 667
    .line 668
    .line 669
    const/4 v6, 0x0

    .line 670
    :goto_8
    invoke-virtual {v7}, Lio/realm/q0;->size()I

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    if-ge v6, v1, :cond_e

    .line 675
    .line 676
    invoke-virtual {v7, v6}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    move-object v3, v1

    .line 681
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 682
    .line 683
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 688
    .line 689
    if-eqz v1, :cond_d

    .line 690
    .line 691
    move/from16 v16, v6

    .line 692
    .line 693
    goto :goto_9

    .line 694
    :cond_d
    invoke-virtual {v11, v12}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    move-object v2, v1

    .line 699
    check-cast v2, Lio/realm/u2$a;

    .line 700
    .line 701
    move-object/from16 v1, p0

    .line 702
    .line 703
    move/from16 v4, p3

    .line 704
    .line 705
    move-object/from16 v5, p4

    .line 706
    .line 707
    move/from16 v16, v6

    .line 708
    .line 709
    move-object/from16 v6, p5

    .line 710
    .line 711
    invoke-static/range {v1 .. v6}, Lio/realm/u2;->c(Lio/realm/g0;Lio/realm/u2$a;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    :goto_9
    invoke-virtual {v14, v1}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    add-int/lit8 v6, v16, 0x1

    .line 719
    .line 720
    goto :goto_8

    .line 721
    :cond_e
    invoke-interface/range {p2 .. p2}, Lio/realm/p1;->realmGet$contactList()Lio/realm/q0;

    .line 722
    .line 723
    .line 724
    move-result-object v7

    .line 725
    if-eqz v7, :cond_10

    .line 726
    .line 727
    invoke-virtual {v13}, Lio/realm/o1;->realmGet$contactList()Lio/realm/q0;

    .line 728
    .line 729
    .line 730
    move-result-object v8

    .line 731
    invoke-virtual {v8}, Lio/realm/q0;->clear()V

    .line 732
    .line 733
    .line 734
    const/4 v12, 0x0

    .line 735
    :goto_a
    invoke-virtual {v7}, Lio/realm/q0;->size()I

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-ge v12, v1, :cond_10

    .line 740
    .line 741
    invoke-virtual {v7, v12}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    move-object v3, v1

    .line 746
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 747
    .line 748
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 753
    .line 754
    if-eqz v1, :cond_f

    .line 755
    .line 756
    goto :goto_b

    .line 757
    :cond_f
    invoke-virtual {v11, v15}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    move-object v2, v1

    .line 762
    check-cast v2, Lio/realm/m1$a;

    .line 763
    .line 764
    move-object/from16 v1, p0

    .line 765
    .line 766
    move/from16 v4, p3

    .line 767
    .line 768
    move-object/from16 v5, p4

    .line 769
    .line 770
    move-object/from16 v6, p5

    .line 771
    .line 772
    invoke-static/range {v1 .. v6}, Lio/realm/m1;->c(Lio/realm/g0;Lio/realm/m1$a;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    :goto_b
    invoke-virtual {v8, v1}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    add-int/lit8 v12, v12, 0x1

    .line 780
    .line 781
    goto :goto_a

    .line 782
    :cond_10
    move-object v12, v13

    .line 783
    :goto_c
    return-object v12
.end method

.method public static d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Ljava/util/HashMap;)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v1, Lio/realm/internal/n;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    move-object v3, v1

    .line 18
    check-cast v3, Lio/realm/internal/n;

    .line 19
    .line 20
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v4, v4, Lio/realm/f0;->e:Lio/realm/a;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v4, v4, Lio/realm/f0;->e:Lio/realm/a;

    .line 33
    .line 34
    iget-object v4, v4, Lio/realm/a;->c:Lio/realm/o0;

    .line 35
    .line 36
    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 39
    .line 40
    iget-object v5, v5, Lio/realm/o0;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 53
    .line 54
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    return-wide v0

    .line 59
    :cond_0
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-wide v14, v4, Lio/realm/internal/Table;->a:J

    .line 66
    .line 67
    iget-object v5, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 68
    .line 69
    invoke-virtual {v5, v3}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lio/realm/o1$a;

    .line 74
    .line 75
    iget-wide v11, v3, Lio/realm/o1$a;->e:J

    .line 76
    .line 77
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$institutionId()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-wide/16 v16, -0x1

    .line 86
    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$institutionId()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    int-to-long v9, v5

    .line 94
    move-wide v5, v14

    .line 95
    move-wide v7, v11

    .line 96
    invoke-static/range {v5 .. v10}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move-wide/from16 v5, v16

    .line 102
    .line 103
    :goto_0
    cmp-long v7, v5, v16

    .line 104
    .line 105
    if-nez v7, :cond_2

    .line 106
    .line 107
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$institutionId()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v4, v11, v12, v5}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    :cond_2
    move-wide v11, v5

    .line 120
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    iget-wide v7, v3, Lio/realm/o1$a;->f:J

    .line 128
    .line 129
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$institutionCode()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    int-to-long v9, v5

    .line 134
    const/4 v13, 0x0

    .line 135
    move-wide v5, v14

    .line 136
    move-wide/from16 v16, v9

    .line 137
    .line 138
    move-wide v9, v11

    .line 139
    move-wide/from16 v18, v11

    .line 140
    .line 141
    move-wide/from16 v11, v16

    .line 142
    .line 143
    invoke-static/range {v5 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 144
    .line 145
    .line 146
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$institutionName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    iget-wide v7, v3, Lio/realm/o1$a;->g:J

    .line 151
    .line 152
    if-eqz v11, :cond_3

    .line 153
    .line 154
    const/4 v12, 0x0

    .line 155
    move-wide v5, v14

    .line 156
    move-wide/from16 v9, v18

    .line 157
    .line 158
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    const/4 v11, 0x0

    .line 163
    move-wide v5, v14

    .line 164
    move-wide/from16 v9, v18

    .line 165
    .line 166
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 167
    .line 168
    .line 169
    :goto_1
    iget-wide v7, v3, Lio/realm/o1$a;->h:J

    .line 170
    .line 171
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$serviceCount()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    int-to-long v11, v5

    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    const/4 v13, 0x0

    .line 179
    move-wide v5, v14

    .line 180
    move-wide/from16 v9, v18

    .line 181
    .line 182
    invoke-static/range {v5 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 183
    .line 184
    .line 185
    iget-wide v7, v3, Lio/realm/o1$a;->i:J

    .line 186
    .line 187
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$sectionCode()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    int-to-long v11, v5

    .line 192
    move-wide v5, v14

    .line 193
    invoke-static/range {v5 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 194
    .line 195
    .line 196
    iget-wide v7, v3, Lio/realm/o1$a;->j:J

    .line 197
    .line 198
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$cityCode()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    int-to-long v11, v5

    .line 203
    move-wide v5, v14

    .line 204
    invoke-static/range {v5 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 205
    .line 206
    .line 207
    iget-wide v7, v3, Lio/realm/o1$a;->k:J

    .line 208
    .line 209
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$categoryCode()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    int-to-long v11, v5

    .line 214
    move-wide v5, v14

    .line 215
    move/from16 v13, v16

    .line 216
    .line 217
    invoke-static/range {v5 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 218
    .line 219
    .line 220
    new-instance v5, Lio/realm/internal/OsList;

    .line 221
    .line 222
    move-wide/from16 v12, v18

    .line 223
    .line 224
    invoke-virtual {v4, v12, v13}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    iget-wide v7, v3, Lio/realm/o1$a;->l:J

    .line 229
    .line 230
    invoke-direct {v5, v6, v7, v8}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 231
    .line 232
    .line 233
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$serviceList()Lio/realm/q0;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    if-eqz v6, :cond_5

    .line 238
    .line 239
    invoke-virtual {v6}, Lio/realm/q0;->size()I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    int-to-long v8, v8

    .line 244
    invoke-virtual {v5}, Lio/realm/internal/OsList;->W()J

    .line 245
    .line 246
    .line 247
    move-result-wide v10

    .line 248
    cmp-long v16, v8, v10

    .line 249
    .line 250
    if-nez v16, :cond_5

    .line 251
    .line 252
    invoke-virtual {v6}, Lio/realm/q0;->size()I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    const/4 v9, 0x0

    .line 257
    :goto_2
    if-ge v9, v8, :cond_7

    .line 258
    .line 259
    invoke-virtual {v6, v9}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 264
    .line 265
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    check-cast v11, Ljava/lang/Long;

    .line 270
    .line 271
    if-nez v11, :cond_4

    .line 272
    .line 273
    invoke-static {v0, v10, v2}, Lio/realm/u2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/HashMap;)J

    .line 274
    .line 275
    .line 276
    move-result-wide v10

    .line 277
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    :cond_4
    move/from16 v16, v8

    .line 282
    .line 283
    int-to-long v7, v9

    .line 284
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 285
    .line 286
    .line 287
    move-result-wide v10

    .line 288
    invoke-virtual {v5, v7, v8, v10, v11}, Lio/realm/internal/OsList;->T(JJ)V

    .line 289
    .line 290
    .line 291
    add-int/lit8 v9, v9, 0x1

    .line 292
    .line 293
    move/from16 v8, v16

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_5
    invoke-virtual {v5}, Lio/realm/internal/OsList;->I()V

    .line 297
    .line 298
    .line 299
    if-eqz v6, :cond_7

    .line 300
    .line 301
    invoke-virtual {v6}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_7

    .line 310
    .line 311
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 316
    .line 317
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    check-cast v8, Ljava/lang/Long;

    .line 322
    .line 323
    if-nez v8, :cond_6

    .line 324
    .line 325
    invoke-static {v0, v7, v2}, Lio/realm/u2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/HashMap;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v7

    .line 329
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 334
    .line 335
    .line 336
    move-result-wide v7

    .line 337
    invoke-virtual {v5, v7, v8}, Lio/realm/internal/OsList;->k(J)V

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_7
    new-instance v5, Lio/realm/internal/OsList;

    .line 342
    .line 343
    invoke-virtual {v4, v12, v13}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    iget-wide v6, v3, Lio/realm/o1$a;->m:J

    .line 348
    .line 349
    invoke-direct {v5, v4, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 350
    .line 351
    .line 352
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$contactList()Lio/realm/q0;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    if-eqz v4, :cond_9

    .line 357
    .line 358
    invoke-virtual {v4}, Lio/realm/q0;->size()I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    int-to-long v6, v6

    .line 363
    invoke-virtual {v5}, Lio/realm/internal/OsList;->W()J

    .line 364
    .line 365
    .line 366
    move-result-wide v8

    .line 367
    cmp-long v10, v6, v8

    .line 368
    .line 369
    if-nez v10, :cond_9

    .line 370
    .line 371
    invoke-virtual {v4}, Lio/realm/q0;->size()I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    const/4 v7, 0x0

    .line 376
    :goto_4
    if-ge v7, v6, :cond_b

    .line 377
    .line 378
    invoke-virtual {v4, v7}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 383
    .line 384
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    check-cast v9, Ljava/lang/Long;

    .line 389
    .line 390
    if-nez v9, :cond_8

    .line 391
    .line 392
    invoke-static {v0, v8, v2}, Lio/realm/m1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;Ljava/util/HashMap;)J

    .line 393
    .line 394
    .line 395
    move-result-wide v8

    .line 396
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    :cond_8
    int-to-long v10, v7

    .line 401
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 402
    .line 403
    .line 404
    move-result-wide v8

    .line 405
    invoke-virtual {v5, v10, v11, v8, v9}, Lio/realm/internal/OsList;->T(JJ)V

    .line 406
    .line 407
    .line 408
    add-int/lit8 v7, v7, 0x1

    .line 409
    .line 410
    goto :goto_4

    .line 411
    :cond_9
    invoke-virtual {v5}, Lio/realm/internal/OsList;->I()V

    .line 412
    .line 413
    .line 414
    if-eqz v4, :cond_b

    .line 415
    .line 416
    invoke-virtual {v4}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-eqz v6, :cond_b

    .line 425
    .line 426
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 431
    .line 432
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    check-cast v7, Ljava/lang/Long;

    .line 437
    .line 438
    if-nez v7, :cond_a

    .line 439
    .line 440
    invoke-static {v0, v6, v2}, Lio/realm/m1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;Ljava/util/HashMap;)J

    .line 441
    .line 442
    .line 443
    move-result-wide v6

    .line 444
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 449
    .line 450
    .line 451
    move-result-wide v6

    .line 452
    invoke-virtual {v5, v6, v7}, Lio/realm/internal/OsList;->k(J)V

    .line 453
    .line 454
    .line 455
    goto :goto_5

    .line 456
    :cond_b
    iget-wide v7, v3, Lio/realm/o1$a;->n:J

    .line 457
    .line 458
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$isOpened()Z

    .line 459
    .line 460
    .line 461
    move-result v11

    .line 462
    const/4 v0, 0x0

    .line 463
    move-wide v5, v14

    .line 464
    move-wide v9, v12

    .line 465
    move-wide/from16 v16, v12

    .line 466
    .line 467
    move v12, v0

    .line 468
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 469
    .line 470
    .line 471
    invoke-interface/range {p1 .. p1}, Lio/realm/p1;->realmGet$iconName()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v11

    .line 475
    iget-wide v7, v3, Lio/realm/o1$a;->o:J

    .line 476
    .line 477
    if-eqz v11, :cond_c

    .line 478
    .line 479
    const/4 v12, 0x0

    .line 480
    move-wide v5, v14

    .line 481
    move-wide/from16 v9, v16

    .line 482
    .line 483
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 484
    .line 485
    .line 486
    goto :goto_6

    .line 487
    :cond_c
    const/4 v11, 0x0

    .line 488
    move-wide v5, v14

    .line 489
    move-wide/from16 v9, v16

    .line 490
    .line 491
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 492
    .line 493
    .line 494
    :goto_6
    return-wide v16
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
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

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
    check-cast v2, Lio/realm/o1$a;

    .line 20
    .line 21
    iget-wide v10, v2, Lio/realm/o1$a;->e:J

    .line 22
    .line 23
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_f

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
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

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
    invoke-interface {v15}, Lio/realm/p1;->realmGet$institutionId()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-wide/16 v16, -0x1

    .line 111
    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-interface {v15}, Lio/realm/p1;->realmGet$institutionId()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    int-to-long v8, v4

    .line 119
    move-wide v4, v13

    .line 120
    move-wide v6, v10

    .line 121
    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    move-wide/from16 v4, v16

    .line 127
    .line 128
    :goto_1
    cmp-long v6, v4, v16

    .line 129
    .line 130
    if-nez v6, :cond_3

    .line 131
    .line 132
    invoke-interface {v15}, Lio/realm/p1;->realmGet$institutionId()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v3, v10, v11, v4}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    :cond_3
    move-wide v8, v4

    .line 145
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v1, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-wide v6, v2, Lio/realm/o1$a;->f:J

    .line 153
    .line 154
    invoke-interface {v15}, Lio/realm/p1;->realmGet$institutionCode()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    int-to-long v4, v4

    .line 159
    const/4 v12, 0x0

    .line 160
    move-wide/from16 v16, v4

    .line 161
    .line 162
    move-wide v4, v13

    .line 163
    move-wide/from16 v18, v8

    .line 164
    .line 165
    move-wide/from16 v20, v10

    .line 166
    .line 167
    move-wide/from16 v10, v16

    .line 168
    .line 169
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v15}, Lio/realm/p1;->realmGet$institutionName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    iget-wide v6, v2, Lio/realm/o1$a;->g:J

    .line 177
    .line 178
    if-eqz v10, :cond_4

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    move-wide v4, v13

    .line 182
    move-wide/from16 v8, v18

    .line 183
    .line 184
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    const/4 v10, 0x0

    .line 189
    move-wide v4, v13

    .line 190
    move-wide/from16 v8, v18

    .line 191
    .line 192
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 193
    .line 194
    .line 195
    :goto_2
    iget-wide v6, v2, Lio/realm/o1$a;->h:J

    .line 196
    .line 197
    invoke-interface {v15}, Lio/realm/p1;->realmGet$serviceCount()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    int-to-long v10, v4

    .line 202
    const/16 v16, 0x0

    .line 203
    .line 204
    const/4 v12, 0x0

    .line 205
    move-wide v4, v13

    .line 206
    move-wide/from16 v8, v18

    .line 207
    .line 208
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 209
    .line 210
    .line 211
    iget-wide v6, v2, Lio/realm/o1$a;->i:J

    .line 212
    .line 213
    invoke-interface {v15}, Lio/realm/p1;->realmGet$sectionCode()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    int-to-long v10, v4

    .line 218
    move-wide v4, v13

    .line 219
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 220
    .line 221
    .line 222
    iget-wide v6, v2, Lio/realm/o1$a;->j:J

    .line 223
    .line 224
    invoke-interface {v15}, Lio/realm/p1;->realmGet$cityCode()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    int-to-long v10, v4

    .line 229
    move-wide v4, v13

    .line 230
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 231
    .line 232
    .line 233
    iget-wide v6, v2, Lio/realm/o1$a;->k:J

    .line 234
    .line 235
    invoke-interface {v15}, Lio/realm/p1;->realmGet$categoryCode()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    int-to-long v10, v4

    .line 240
    move-wide v4, v13

    .line 241
    move/from16 v12, v16

    .line 242
    .line 243
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 244
    .line 245
    .line 246
    new-instance v4, Lio/realm/internal/OsList;

    .line 247
    .line 248
    move-wide/from16 v11, v18

    .line 249
    .line 250
    invoke-virtual {v3, v11, v12}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    iget-wide v6, v2, Lio/realm/o1$a;->l:J

    .line 255
    .line 256
    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v15}, Lio/realm/p1;->realmGet$serviceList()Lio/realm/q0;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    if-eqz v5, :cond_6

    .line 264
    .line 265
    invoke-virtual {v5}, Lio/realm/q0;->size()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    int-to-long v7, v7

    .line 270
    invoke-virtual {v4}, Lio/realm/internal/OsList;->W()J

    .line 271
    .line 272
    .line 273
    move-result-wide v9

    .line 274
    cmp-long v16, v7, v9

    .line 275
    .line 276
    if-nez v16, :cond_6

    .line 277
    .line 278
    invoke-virtual {v5}, Lio/realm/q0;->size()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    const/4 v8, 0x0

    .line 283
    :goto_3
    if-ge v8, v7, :cond_8

    .line 284
    .line 285
    invoke-virtual {v5, v8}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    check-cast v9, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 290
    .line 291
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    check-cast v10, Ljava/lang/Long;

    .line 296
    .line 297
    if-nez v10, :cond_5

    .line 298
    .line 299
    invoke-static {v0, v9, v1}, Lio/realm/u2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/HashMap;)J

    .line 300
    .line 301
    .line 302
    move-result-wide v9

    .line 303
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    :cond_5
    move/from16 v16, v7

    .line 308
    .line 309
    int-to-long v6, v8

    .line 310
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 311
    .line 312
    .line 313
    move-result-wide v9

    .line 314
    invoke-virtual {v4, v6, v7, v9, v10}, Lio/realm/internal/OsList;->T(JJ)V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v8, v8, 0x1

    .line 318
    .line 319
    move/from16 v7, v16

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_6
    invoke-virtual {v4}, Lio/realm/internal/OsList;->I()V

    .line 323
    .line 324
    .line 325
    if-eqz v5, :cond_8

    .line 326
    .line 327
    invoke-virtual {v5}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    if-eqz v6, :cond_8

    .line 336
    .line 337
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 342
    .line 343
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    check-cast v7, Ljava/lang/Long;

    .line 348
    .line 349
    if-nez v7, :cond_7

    .line 350
    .line 351
    invoke-static {v0, v6, v1}, Lio/realm/u2;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/HashMap;)J

    .line 352
    .line 353
    .line 354
    move-result-wide v6

    .line 355
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v6

    .line 363
    invoke-virtual {v4, v6, v7}, Lio/realm/internal/OsList;->k(J)V

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_8
    new-instance v4, Lio/realm/internal/OsList;

    .line 368
    .line 369
    invoke-virtual {v3, v11, v12}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    iget-wide v6, v2, Lio/realm/o1$a;->m:J

    .line 374
    .line 375
    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v15}, Lio/realm/p1;->realmGet$contactList()Lio/realm/q0;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    if-eqz v5, :cond_b

    .line 383
    .line 384
    invoke-virtual {v5}, Lio/realm/q0;->size()I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    int-to-long v6, v6

    .line 389
    invoke-virtual {v4}, Lio/realm/internal/OsList;->W()J

    .line 390
    .line 391
    .line 392
    move-result-wide v8

    .line 393
    cmp-long v10, v6, v8

    .line 394
    .line 395
    if-nez v10, :cond_b

    .line 396
    .line 397
    invoke-virtual {v5}, Lio/realm/q0;->size()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    const/4 v7, 0x0

    .line 402
    :goto_5
    if-ge v7, v6, :cond_a

    .line 403
    .line 404
    invoke-virtual {v5, v7}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 409
    .line 410
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    check-cast v9, Ljava/lang/Long;

    .line 415
    .line 416
    if-nez v9, :cond_9

    .line 417
    .line 418
    invoke-static {v0, v8, v1}, Lio/realm/m1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;Ljava/util/HashMap;)J

    .line 419
    .line 420
    .line 421
    move-result-wide v8

    .line 422
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    :cond_9
    move-wide/from16 v18, v11

    .line 427
    .line 428
    int-to-long v10, v7

    .line 429
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 430
    .line 431
    .line 432
    move-result-wide v8

    .line 433
    invoke-virtual {v4, v10, v11, v8, v9}, Lio/realm/internal/OsList;->T(JJ)V

    .line 434
    .line 435
    .line 436
    add-int/lit8 v7, v7, 0x1

    .line 437
    .line 438
    move-wide/from16 v11, v18

    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_a
    move-wide/from16 v18, v11

    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_b
    move-wide/from16 v18, v11

    .line 445
    .line 446
    invoke-virtual {v4}, Lio/realm/internal/OsList;->I()V

    .line 447
    .line 448
    .line 449
    if-eqz v5, :cond_d

    .line 450
    .line 451
    invoke-virtual {v5}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    if-eqz v6, :cond_d

    .line 460
    .line 461
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 466
    .line 467
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    check-cast v7, Ljava/lang/Long;

    .line 472
    .line 473
    if-nez v7, :cond_c

    .line 474
    .line 475
    invoke-static {v0, v6, v1}, Lio/realm/m1;->d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;Ljava/util/HashMap;)J

    .line 476
    .line 477
    .line 478
    move-result-wide v6

    .line 479
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 484
    .line 485
    .line 486
    move-result-wide v6

    .line 487
    invoke-virtual {v4, v6, v7}, Lio/realm/internal/OsList;->k(J)V

    .line 488
    .line 489
    .line 490
    goto :goto_6

    .line 491
    :cond_d
    :goto_7
    iget-wide v6, v2, Lio/realm/o1$a;->n:J

    .line 492
    .line 493
    invoke-interface {v15}, Lio/realm/p1;->realmGet$isOpened()Z

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    const/4 v11, 0x0

    .line 498
    move-wide v4, v13

    .line 499
    move-wide/from16 v8, v18

    .line 500
    .line 501
    move-wide/from16 v16, v18

    .line 502
    .line 503
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 504
    .line 505
    .line 506
    invoke-interface {v15}, Lio/realm/p1;->realmGet$iconName()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v10

    .line 510
    iget-wide v6, v2, Lio/realm/o1$a;->o:J

    .line 511
    .line 512
    if-eqz v10, :cond_e

    .line 513
    .line 514
    const/4 v11, 0x0

    .line 515
    move-wide v4, v13

    .line 516
    move-wide/from16 v8, v16

    .line 517
    .line 518
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 519
    .line 520
    .line 521
    goto :goto_8

    .line 522
    :cond_e
    const/4 v10, 0x0

    .line 523
    move-wide v4, v13

    .line 524
    move-wide/from16 v8, v16

    .line 525
    .line 526
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 527
    .line 528
    .line 529
    :goto_8
    move-wide/from16 v10, v20

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_f
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    check-cast v1, Lio/realm/o1$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/o1;->b:Lio/realm/f0;

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

    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    const-class v2, Lio/realm/o1;

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
    check-cast p1, Lio/realm/o1;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v3, p1, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object p1, p1, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->b:Lio/realm/f0;

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

.method public final realmGet$categoryCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->k:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v1, v0

    .line 21
    return v1
.end method

.method public final realmGet$cityCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->j:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v1, v0

    .line 21
    return v1
.end method

.method public final realmGet$contactList()Lio/realm/q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->d:Lio/realm/q0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 14
    .line 15
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 16
    .line 17
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 18
    .line 19
    iget-wide v1, v1, Lio/realm/o1$a;->m:J

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->z(J)Lio/realm/internal/OsList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lio/realm/q0;

    .line 26
    .line 27
    iget-object v2, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 28
    .line 29
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 30
    .line 31
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 32
    .line 33
    invoke-direct {v1, v2, v0, v3}, Lio/realm/q0;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lio/realm/o1;->d:Lio/realm/q0;

    .line 37
    .line 38
    return-object v1
.end method

.method public final realmGet$iconName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->o:J

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

.method public final realmGet$institutionCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->f:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v1, v0

    .line 21
    return v1
.end method

.method public final realmGet$institutionId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->e:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v1, v0

    .line 21
    return v1
.end method

.method public final realmGet$institutionName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->g:J

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

.method public final realmGet$isOpened()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->n:J

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

.method public final realmGet$sectionCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->i:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v1, v0

    .line 21
    return v1
.end method

.method public final realmGet$serviceCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/o1$a;->h:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v1, v0

    .line 21
    return v1
.end method

.method public final realmGet$serviceList()Lio/realm/q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/o1;->c:Lio/realm/q0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 14
    .line 15
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 16
    .line 17
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 18
    .line 19
    iget-wide v1, v1, Lio/realm/o1$a;->l:J

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->z(J)Lio/realm/internal/OsList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lio/realm/q0;

    .line 26
    .line 27
    iget-object v2, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 28
    .line 29
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 30
    .line 31
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 32
    .line 33
    invoke-direct {v1, v2, v0, v3}, Lio/realm/q0;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lio/realm/o1;->c:Lio/realm/q0;

    .line 37
    .line 38
    return-object v1
.end method

.method public final realmSet$categoryCode(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/o1$a;->k:J

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    int-to-long v6, p1

    .line 27
    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->v(JJJ)V

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
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/o1$a;->k:J

    .line 43
    .line 44
    int-to-long v3, p1

    .line 45
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final realmSet$cityCode(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/o1$a;->j:J

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    int-to-long v6, p1

    .line 27
    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->v(JJJ)V

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
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/o1$a;->j:J

    .line 43
    .line 44
    int-to-long v3, p1

    .line 45
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final realmSet$contactList(Lio/realm/q0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->g:Ljava/util/List;

    .line 14
    .line 15
    const-string v1, "contactList"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-eqz p1, :cond_5

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/realm/q0;->x()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_5

    .line 31
    .line 32
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 33
    .line 34
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 35
    .line 36
    check-cast v0, Lio/realm/g0;

    .line 37
    .line 38
    new-instance v1, Lio/realm/q0;

    .line 39
    .line 40
    invoke-direct {v1}, Lio/realm/q0;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-static {v3}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-array v4, v2, [Lio/realm/v;

    .line 69
    .line 70
    invoke-virtual {v0, v3, v4}, Lio/realm/g0;->p(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 75
    .line 76
    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move-object p1, v1

    .line 81
    :cond_5
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 82
    .line 83
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 84
    .line 85
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 89
    .line 90
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 93
    .line 94
    iget-wide v3, v1, Lio/realm/o1$a;->m:J

    .line 95
    .line 96
    invoke-interface {v0, v3, v4}, Lio/realm/internal/p;->z(J)Lio/realm/internal/OsList;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    int-to-long v3, v1

    .line 107
    invoke-virtual {v0}, Lio/realm/internal/OsList;->W()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    cmp-long v1, v3, v5

    .line 112
    .line 113
    if-nez v1, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    :goto_2
    if-ge v2, v1, :cond_8

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 126
    .line 127
    iget-object v4, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 128
    .line 129
    invoke-virtual {v4, v3}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 130
    .line 131
    .line 132
    int-to-long v4, v2

    .line 133
    check-cast v3, Lio/realm/internal/n;

    .line 134
    .line 135
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 140
    .line 141
    invoke-interface {v3}, Lio/realm/internal/p;->Y()J

    .line 142
    .line 143
    .line 144
    move-result-wide v6

    .line 145
    invoke-virtual {v0, v4, v5, v6, v7}, Lio/realm/internal/OsList;->T(JJ)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->I()V

    .line 152
    .line 153
    .line 154
    if-nez p1, :cond_7

    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    :goto_3
    if-ge v2, v1, :cond_8

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 168
    .line 169
    iget-object v4, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 170
    .line 171
    invoke-virtual {v4, v3}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 172
    .line 173
    .line 174
    check-cast v3, Lio/realm/internal/n;

    .line 175
    .line 176
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 181
    .line 182
    invoke-interface {v3}, Lio/realm/internal/p;->Y()J

    .line 183
    .line 184
    .line 185
    move-result-wide v3

    .line 186
    invoke-virtual {v0, v3, v4}, Lio/realm/internal/OsList;->k(J)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_8
    return-void
.end method

.method public final realmSet$iconName(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    const-string v2, "Trying to set non-nullable field \'iconName\' to null."

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 23
    .line 24
    iget-wide v4, v1, Lio/realm/o1$a;->o:J

    .line 25
    .line 26
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    move-object v8, p1

    .line 31
    invoke-virtual/range {v3 .. v8}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 42
    .line 43
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 49
    .line 50
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 51
    .line 52
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 53
    .line 54
    iget-wide v1, v1, Lio/realm/o1$a;->o:J

    .line 55
    .line 56
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final realmSet$institutionCode(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/o1$a;->f:J

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    int-to-long v6, p1

    .line 27
    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->v(JJJ)V

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
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/o1$a;->f:J

    .line 43
    .line 44
    int-to-long v3, p1

    .line 45
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final realmSet$institutionId(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    const-string v0, "Primary key field \'institutionId\' cannot be changed after object was created."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final realmSet$institutionName(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    const-string v2, "Trying to set non-nullable field \'institutionName\' to null."

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 23
    .line 24
    iget-wide v4, v1, Lio/realm/o1$a;->g:J

    .line 25
    .line 26
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    move-object v8, p1

    .line 31
    invoke-virtual/range {v3 .. v8}, Lio/realm/internal/Table;->x(JJLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 42
    .line 43
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 49
    .line 50
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 51
    .line 52
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 53
    .line 54
    iget-wide v1, v1, Lio/realm/o1$a;->g:J

    .line 55
    .line 56
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final realmSet$isOpened(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/o1$a;->n:J

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
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/o1$a;->n:J

    .line 43
    .line 44
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->t(JZ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final realmSet$sectionCode(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/o1$a;->i:J

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    int-to-long v6, p1

    .line 27
    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->v(JJJ)V

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
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/o1$a;->i:J

    .line 43
    .line 44
    int-to-long v3, p1

    .line 45
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final realmSet$serviceCount(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/o1$a;->h:J

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    int-to-long v6, p1

    .line 27
    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->v(JJJ)V

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
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/o1$a;->h:J

    .line 43
    .line 44
    int-to-long v3, p1

    .line 45
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final realmSet$serviceList(Lio/realm/q0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->g:Ljava/util/List;

    .line 14
    .line 15
    const-string v1, "serviceList"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-eqz p1, :cond_5

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/realm/q0;->x()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_5

    .line 31
    .line 32
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 33
    .line 34
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 35
    .line 36
    check-cast v0, Lio/realm/g0;

    .line 37
    .line 38
    new-instance v1, Lio/realm/q0;

    .line 39
    .line 40
    invoke-direct {v1}, Lio/realm/q0;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-static {v3}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-array v4, v2, [Lio/realm/v;

    .line 69
    .line 70
    invoke-virtual {v0, v3, v4}, Lio/realm/g0;->p(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 75
    .line 76
    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move-object p1, v1

    .line 81
    :cond_5
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 82
    .line 83
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 84
    .line 85
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 89
    .line 90
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    iget-object v1, p0, Lio/realm/o1;->a:Lio/realm/o1$a;

    .line 93
    .line 94
    iget-wide v3, v1, Lio/realm/o1$a;->l:J

    .line 95
    .line 96
    invoke-interface {v0, v3, v4}, Lio/realm/internal/p;->z(J)Lio/realm/internal/OsList;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    int-to-long v3, v1

    .line 107
    invoke-virtual {v0}, Lio/realm/internal/OsList;->W()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    cmp-long v1, v3, v5

    .line 112
    .line 113
    if-nez v1, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    :goto_2
    if-ge v2, v1, :cond_8

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 126
    .line 127
    iget-object v4, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 128
    .line 129
    invoke-virtual {v4, v3}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 130
    .line 131
    .line 132
    int-to-long v4, v2

    .line 133
    check-cast v3, Lio/realm/internal/n;

    .line 134
    .line 135
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 140
    .line 141
    invoke-interface {v3}, Lio/realm/internal/p;->Y()J

    .line 142
    .line 143
    .line 144
    move-result-wide v6

    .line 145
    invoke-virtual {v0, v4, v5, v6, v7}, Lio/realm/internal/OsList;->T(JJ)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {v0}, Lio/realm/internal/OsList;->I()V

    .line 152
    .line 153
    .line 154
    if-nez p1, :cond_7

    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    :goto_3
    if-ge v2, v1, :cond_8

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 168
    .line 169
    iget-object v4, p0, Lio/realm/o1;->b:Lio/realm/f0;

    .line 170
    .line 171
    invoke-virtual {v4, v3}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 172
    .line 173
    .line 174
    check-cast v3, Lio/realm/internal/n;

    .line 175
    .line 176
    invoke-interface {v3}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 181
    .line 182
    invoke-interface {v3}, Lio/realm/internal/p;->Y()J

    .line 183
    .line 184
    .line 185
    move-result-wide v3

    .line 186
    invoke-virtual {v0, v3, v4}, Lio/realm/internal/OsList;->k(J)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstitutionModelRealm = proxy[{institutionId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$institutionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{institutionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$institutionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{institutionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$institutionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{serviceCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$serviceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{sectionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$sectionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{cityCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$cityCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{categoryCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$categoryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{serviceList:RealmList<ServiceModelRealm>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$serviceList()Lio/realm/q0;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/q0;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]},{contactList:RealmList<InstitutionContactModelRealm>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$contactList()Lio/realm/q0;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/q0;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]},{isOpened:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$isOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{iconName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/o1;->realmGet$iconName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
