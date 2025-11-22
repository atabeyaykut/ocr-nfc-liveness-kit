.class public final Lio/realm/e2;
.super Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/e2$a;
    }
.end annotation


# static fields
.field public static final d:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/e2$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lio/realm/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$a;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x0

    .line 5
    const-string v0, "MKTAccidentReport"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;-><init>(Ljava/lang/String;ZI)V

    .line 11
    .line 12
    .line 13
    const-string v1, "id"

    .line 14
    .line 15
    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

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
    const-string v1, "nameSurname"

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
    const-string v1, "phoneNumber"

    .line 36
    .line 37
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 38
    .line 39
    .line 40
    const-string v1, "role"

    .line 41
    .line 42
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 43
    .line 44
    .line 45
    const-string v1, "dashPointId"

    .line 46
    .line 47
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 48
    .line 49
    .line 50
    const-string v1, "dashPoint"

    .line 51
    .line 52
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 53
    .line 54
    .line 55
    const-string v1, "scenarioId"

    .line 56
    .line 57
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 58
    .line 59
    .line 60
    const-string v1, "accidentComment"

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 63
    .line 64
    .line 65
    const-string v1, "status"

    .line 66
    .line 67
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 68
    .line 69
    .line 70
    const-string v1, "consolidatedStatus"

    .line 71
    .line 72
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 73
    .line 74
    .line 75
    const-string v1, "createdDate"

    .line 76
    .line 77
    move v3, v13

    .line 78
    move v4, v8

    .line 79
    move v5, v11

    .line 80
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 81
    .line 82
    .line 83
    const-string v1, "expiredDate"

    .line 84
    .line 85
    move v3, v12

    .line 86
    move v4, v7

    .line 87
    move v5, v10

    .line 88
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 92
    .line 93
    const-string v1, "driver"

    .line 94
    .line 95
    const-string v2, "AccidentReportDriver"

    .line 96
    .line 97
    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "location"

    .line 101
    .line 102
    const-string v2, "AccidentReportLocation"

    .line 103
    .line 104
    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "vehicle"

    .line 108
    .line 109
    const-string v2, "AccidentReportVehicle"

    .line 110
    .line 111
    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "report"

    .line 115
    .line 116
    const-string v2, "AccidentMergedReport"

    .line 117
    .line 118
    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 122
    .line 123
    const-string v1, "AccidentReportMedia"

    .line 124
    .line 125
    const-string v2, "media"

    .line 126
    .line 127
    invoke-virtual {v6, v2, v0, v1}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$a;->c()Lio/realm/internal/OsObjectSchemaInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lio/realm/e2;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 135
    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;-><init>()V

    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Lio/realm/e2$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;
    .locals 23

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
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_2
    const-class v15, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 90
    .line 91
    if-eqz p3, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0, v15}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-wide v2, v7, Lio/realm/e2$a;->e:J

    .line 98
    .line 99
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$id()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-wide v5, v1, Lio/realm/internal/Table;->a:J

    .line 111
    .line 112
    invoke-static {v5, v6, v2, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    :goto_0
    const-wide/16 v4, -0x1

    .line 117
    .line 118
    cmp-long v6, v2, v4

    .line 119
    .line 120
    if-nez v6, :cond_4

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const/4 v5, 0x0

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    move-object v1, v12

    .line 134
    move-object/from16 v2, p0

    .line 135
    .line 136
    move-object/from16 v4, p1

    .line 137
    .line 138
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lio/realm/e2;

    .line 142
    .line 143
    invoke-direct {v1}, Lio/realm/e2;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 150
    .line 151
    .line 152
    move-object v2, v1

    .line 153
    move/from16 v1, p3

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_5
    move/from16 v1, p3

    .line 162
    .line 163
    :goto_1
    const/4 v2, 0x0

    .line 164
    :goto_2
    const-class v12, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 165
    .line 166
    const-string v6, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cachemedia.toString()"

    .line 167
    .line 168
    const-class v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 169
    .line 170
    const-string v4, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cachereport.toString()"

    .line 171
    .line 172
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 173
    .line 174
    const-string v13, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cachevehicle.toString()"

    .line 175
    .line 176
    const-class v14, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 177
    .line 178
    move-object/from16 v16, v11

    .line 179
    .line 180
    const-string v11, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cachelocation.toString()"

    .line 181
    .line 182
    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 183
    .line 184
    move-object/from16 p3, v11

    .line 185
    .line 186
    const-string v11, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cachedriver.toString()"

    .line 187
    .line 188
    if-eqz v1, :cond_11

    .line 189
    .line 190
    invoke-virtual {v0, v15}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    new-instance v15, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 195
    .line 196
    invoke-direct {v15, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 197
    .line 198
    .line 199
    move-object/from16 v18, v11

    .line 200
    .line 201
    move-object/from16 v17, v12

    .line 202
    .line 203
    iget-wide v11, v7, Lio/realm/e2$a;->e:J

    .line 204
    .line 205
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$id()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-wide v11, v7, Lio/realm/e2$a;->f:J

    .line 213
    .line 214
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$nameSurname()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-wide v11, v7, Lio/realm/e2$a;->g:J

    .line 222
    .line 223
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$phoneNumber()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-wide v11, v7, Lio/realm/e2$a;->h:J

    .line 231
    .line 232
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$role()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-wide v11, v7, Lio/realm/e2$a;->i:J

    .line 240
    .line 241
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$dashPointId()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-wide v11, v7, Lio/realm/e2$a;->j:J

    .line 249
    .line 250
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$dashPoint()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-wide v11, v7, Lio/realm/e2$a;->k:J

    .line 258
    .line 259
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$scenarioId()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-wide v11, v7, Lio/realm/e2$a;->l:J

    .line 267
    .line 268
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$accidentComment()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-wide v11, v7, Lio/realm/e2$a;->m:J

    .line 276
    .line 277
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$status()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-wide v11, v7, Lio/realm/e2$a;->n:J

    .line 285
    .line 286
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$consolidatedStatus()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-wide v11, v7, Lio/realm/e2$a;->o:J

    .line 294
    .line 295
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$createdDate()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-wide v11, v7, Lio/realm/e2$a;->p:J

    .line 303
    .line 304
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$expiredDate()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v15, v11, v12, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    if-nez v1, :cond_6

    .line 316
    .line 317
    iget-wide v11, v7, Lio/realm/e2$a;->q:J

    .line 318
    .line 319
    invoke-virtual {v15, v11, v12}, Lio/realm/internal/objectstore/OsObjectBuilder;->d(J)V

    .line 320
    .line 321
    .line 322
    move-object/from16 v20, v4

    .line 323
    .line 324
    move-object/from16 v19, v13

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_6
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    check-cast v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 332
    .line 333
    if-nez v11, :cond_10

    .line 334
    .line 335
    iget-object v11, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 336
    .line 337
    iget-object v11, v11, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 338
    .line 339
    move-object/from16 v19, v13

    .line 340
    .line 341
    iget-wide v12, v7, Lio/realm/e2$a;->q:J

    .line 342
    .line 343
    move-object/from16 v20, v4

    .line 344
    .line 345
    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 346
    .line 347
    invoke-interface {v11, v12, v13, v4}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 348
    .line 349
    .line 350
    move-result-wide v11

    .line 351
    invoke-virtual {v0, v8}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v4, v11, v12}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-static {v0, v4}, Lio/realm/s1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/s1;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    invoke-static {v0, v1, v4, v10}, Lio/realm/s1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/Set;)V

    .line 367
    .line 368
    .line 369
    :goto_3
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    if-nez v1, :cond_7

    .line 374
    .line 375
    iget-wide v11, v7, Lio/realm/e2$a;->r:J

    .line 376
    .line 377
    invoke-virtual {v15, v11, v12}, Lio/realm/internal/objectstore/OsObjectBuilder;->d(J)V

    .line 378
    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_7
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 386
    .line 387
    if-nez v4, :cond_f

    .line 388
    .line 389
    iget-object v4, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 390
    .line 391
    iget-object v4, v4, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 392
    .line 393
    iget-wide v11, v7, Lio/realm/e2$a;->r:J

    .line 394
    .line 395
    sget-object v8, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 396
    .line 397
    invoke-interface {v4, v11, v12, v8}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 398
    .line 399
    .line 400
    move-result-wide v11

    .line 401
    invoke-virtual {v0, v14}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-virtual {v4, v11, v12}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-static {v0, v4}, Lio/realm/u1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/u1;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    invoke-static {v0, v1, v4, v10}, Lio/realm/u1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/Set;)V

    .line 417
    .line 418
    .line 419
    :goto_4
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    if-nez v1, :cond_8

    .line 424
    .line 425
    iget-wide v3, v7, Lio/realm/e2$a;->s:J

    .line 426
    .line 427
    invoke-virtual {v15, v3, v4}, Lio/realm/internal/objectstore/OsObjectBuilder;->d(J)V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_8
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 436
    .line 437
    if-nez v4, :cond_e

    .line 438
    .line 439
    iget-object v4, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 440
    .line 441
    iget-object v4, v4, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 442
    .line 443
    iget-wide v11, v7, Lio/realm/e2$a;->s:J

    .line 444
    .line 445
    sget-object v8, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 446
    .line 447
    invoke-interface {v4, v11, v12, v8}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 448
    .line 449
    .line 450
    move-result-wide v11

    .line 451
    invoke-virtual {v0, v3}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-virtual {v3, v11, v12}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static {v0, v3}, Lio/realm/c2;->d(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/c2;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    invoke-static {v0, v1, v3, v9, v10}, Lio/realm/c2;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 467
    .line 468
    .line 469
    :goto_5
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    if-nez v1, :cond_9

    .line 474
    .line 475
    iget-wide v3, v7, Lio/realm/e2$a;->t:J

    .line 476
    .line 477
    invoke-virtual {v15, v3, v4}, Lio/realm/internal/objectstore/OsObjectBuilder;->d(J)V

    .line 478
    .line 479
    .line 480
    goto :goto_6

    .line 481
    :cond_9
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 486
    .line 487
    if-nez v3, :cond_d

    .line 488
    .line 489
    iget-object v3, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 490
    .line 491
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 492
    .line 493
    iget-wide v11, v7, Lio/realm/e2$a;->t:J

    .line 494
    .line 495
    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 496
    .line 497
    invoke-interface {v3, v11, v12, v4}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 498
    .line 499
    .line 500
    move-result-wide v3

    .line 501
    invoke-virtual {v0, v5}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-virtual {v5, v3, v4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-static {v0, v3}, Lio/realm/q1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/q1;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    invoke-static {v0, v1, v3, v9, v10}, Lio/realm/q1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 517
    .line 518
    .line 519
    :goto_6
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$media()Lio/realm/q0;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    if-eqz v1, :cond_b

    .line 524
    .line 525
    new-instance v3, Lio/realm/q0;

    .line 526
    .line 527
    invoke-direct {v3}, Lio/realm/q0;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Lio/realm/e2;->realmGet$media()Lio/realm/q0;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    iget-object v4, v4, Lio/realm/q0;->b:Lio/realm/x;

    .line 535
    .line 536
    iget-object v4, v4, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 537
    .line 538
    invoke-virtual {v4}, Lio/realm/internal/OsList;->q()V

    .line 539
    .line 540
    .line 541
    const/4 v13, 0x0

    .line 542
    :goto_7
    invoke-virtual {v1}, Lio/realm/q0;->size()I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-ge v13, v5, :cond_c

    .line 547
    .line 548
    invoke-virtual {v1, v13}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 553
    .line 554
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    check-cast v7, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 559
    .line 560
    if-nez v7, :cond_a

    .line 561
    .line 562
    invoke-virtual {v4}, Lio/realm/internal/OsList;->n()J

    .line 563
    .line 564
    .line 565
    move-result-wide v7

    .line 566
    move-object/from16 v11, v17

    .line 567
    .line 568
    invoke-virtual {v0, v11}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 569
    .line 570
    .line 571
    move-result-object v10

    .line 572
    invoke-virtual {v10, v7, v8}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    invoke-static {v0, v7}, Lio/realm/w1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/w1;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    invoke-virtual {v9, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v7}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    new-instance v8, Ljava/util/HashMap;

    .line 587
    .line 588
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 589
    .line 590
    .line 591
    sget-object v8, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 592
    .line 593
    invoke-static {v0, v5, v7, v8}, Lio/realm/w1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/Set;)V

    .line 594
    .line 595
    .line 596
    add-int/lit8 v13, v13, 0x1

    .line 597
    .line 598
    goto :goto_7

    .line 599
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 600
    .line 601
    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    throw v0

    .line 605
    :cond_b
    iget-wide v0, v7, Lio/realm/e2$a;->u:J

    .line 606
    .line 607
    new-instance v3, Lio/realm/q0;

    .line 608
    .line 609
    invoke-direct {v3}, Lio/realm/q0;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v15, v0, v1, v3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLio/realm/q0;)V

    .line 613
    .line 614
    .line 615
    :cond_c
    invoke-virtual {v15}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_d

    .line 619
    .line 620
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 621
    .line 622
    move-object/from16 v4, v20

    .line 623
    .line 624
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    throw v0

    .line 628
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 629
    .line 630
    move-object/from16 v8, v19

    .line 631
    .line 632
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    throw v0

    .line 636
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 637
    .line 638
    move-object/from16 v12, p3

    .line 639
    .line 640
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    throw v0

    .line 644
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 645
    .line 646
    move-object/from16 v13, v18

    .line 647
    .line 648
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw v0

    .line 652
    :cond_11
    move-object/from16 v2, p2

    .line 653
    .line 654
    move-object v1, v8

    .line 655
    move-object v8, v13

    .line 656
    move-object v13, v11

    .line 657
    move-object v11, v12

    .line 658
    move-object/from16 v12, p3

    .line 659
    .line 660
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v17

    .line 664
    check-cast v17, Lio/realm/internal/n;

    .line 665
    .line 666
    if-eqz v17, :cond_12

    .line 667
    .line 668
    move-object/from16 v2, v17

    .line 669
    .line 670
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 671
    .line 672
    goto/16 :goto_d

    .line 673
    .line 674
    :cond_12
    move-object/from16 p3, v1

    .line 675
    .line 676
    invoke-virtual {v0, v15}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 681
    .line 682
    invoke-direct {v2, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 683
    .line 684
    .line 685
    move-object/from16 v17, v3

    .line 686
    .line 687
    move-object/from16 v20, v4

    .line 688
    .line 689
    iget-wide v3, v7, Lio/realm/e2$a;->e:J

    .line 690
    .line 691
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$id()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 696
    .line 697
    .line 698
    iget-wide v3, v7, Lio/realm/e2$a;->f:J

    .line 699
    .line 700
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$nameSurname()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 705
    .line 706
    .line 707
    iget-wide v3, v7, Lio/realm/e2$a;->g:J

    .line 708
    .line 709
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$phoneNumber()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 714
    .line 715
    .line 716
    iget-wide v3, v7, Lio/realm/e2$a;->h:J

    .line 717
    .line 718
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$role()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 723
    .line 724
    .line 725
    iget-wide v3, v7, Lio/realm/e2$a;->i:J

    .line 726
    .line 727
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$dashPointId()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 732
    .line 733
    .line 734
    iget-wide v3, v7, Lio/realm/e2$a;->j:J

    .line 735
    .line 736
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$dashPoint()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 741
    .line 742
    .line 743
    iget-wide v3, v7, Lio/realm/e2$a;->k:J

    .line 744
    .line 745
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$scenarioId()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-wide v3, v7, Lio/realm/e2$a;->l:J

    .line 753
    .line 754
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$accidentComment()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 759
    .line 760
    .line 761
    iget-wide v3, v7, Lio/realm/e2$a;->m:J

    .line 762
    .line 763
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$status()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 768
    .line 769
    .line 770
    iget-wide v3, v7, Lio/realm/e2$a;->n:J

    .line 771
    .line 772
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$consolidatedStatus()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 777
    .line 778
    .line 779
    iget-wide v3, v7, Lio/realm/e2$a;->o:J

    .line 780
    .line 781
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$createdDate()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 786
    .line 787
    .line 788
    iget-wide v3, v7, Lio/realm/e2$a;->p:J

    .line 789
    .line 790
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$expiredDate()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    move-object/from16 v16, v1

    .line 806
    .line 807
    check-cast v16, Lio/realm/a$b;

    .line 808
    .line 809
    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 810
    .line 811
    invoke-virtual {v1, v15}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 812
    .line 813
    .line 814
    move-result-object v4

    .line 815
    const/4 v15, 0x0

    .line 816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 817
    .line 818
    .line 819
    move-result-object v18

    .line 820
    move-object/from16 v2, p3

    .line 821
    .line 822
    move-object/from16 v1, v16

    .line 823
    .line 824
    move-object/from16 v21, v2

    .line 825
    .line 826
    move-object/from16 v2, p0

    .line 827
    .line 828
    move-object/from16 v22, v17

    .line 829
    .line 830
    move-object/from16 v17, v13

    .line 831
    .line 832
    move-object/from16 v13, v20

    .line 833
    .line 834
    move-object/from16 p3, v12

    .line 835
    .line 836
    move-object v12, v5

    .line 837
    move v5, v15

    .line 838
    move-object v15, v6

    .line 839
    move-object/from16 v6, v18

    .line 840
    .line 841
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 842
    .line 843
    .line 844
    new-instance v2, Lio/realm/e2;

    .line 845
    .line 846
    invoke-direct {v2}, Lio/realm/e2;-><init>()V

    .line 847
    .line 848
    .line 849
    invoke-virtual/range {v16 .. v16}, Lio/realm/a$b;->a()V

    .line 850
    .line 851
    .line 852
    move-object/from16 v1, p2

    .line 853
    .line 854
    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    if-nez v3, :cond_13

    .line 862
    .line 863
    const/4 v4, 0x0

    .line 864
    invoke-virtual {v2, v4}, Lio/realm/e2;->realmSet$driver(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V

    .line 865
    .line 866
    .line 867
    goto :goto_8

    .line 868
    :cond_13
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 873
    .line 874
    if-nez v4, :cond_1c

    .line 875
    .line 876
    iget-object v4, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 877
    .line 878
    iget-object v4, v4, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 879
    .line 880
    iget-wide v5, v7, Lio/realm/e2$a;->q:J

    .line 881
    .line 882
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 883
    .line 884
    invoke-interface {v4, v5, v6, v1}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 885
    .line 886
    .line 887
    move-result-wide v4

    .line 888
    move-object/from16 v1, v21

    .line 889
    .line 890
    invoke-virtual {v0, v1}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    invoke-virtual {v1, v4, v5}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    invoke-static {v0, v1}, Lio/realm/s1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/s1;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    invoke-static {v0, v3, v1, v10}, Lio/realm/s1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/Set;)V

    .line 906
    .line 907
    .line 908
    :goto_8
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    if-nez v1, :cond_14

    .line 913
    .line 914
    const/4 v3, 0x0

    .line 915
    invoke-virtual {v2, v3}, Lio/realm/e2;->realmSet$location(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V

    .line 916
    .line 917
    .line 918
    goto :goto_9

    .line 919
    :cond_14
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 924
    .line 925
    if-nez v3, :cond_1b

    .line 926
    .line 927
    iget-object v3, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 928
    .line 929
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 930
    .line 931
    iget-wide v4, v7, Lio/realm/e2$a;->r:J

    .line 932
    .line 933
    sget-object v6, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 934
    .line 935
    invoke-interface {v3, v4, v5, v6}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 936
    .line 937
    .line 938
    move-result-wide v3

    .line 939
    invoke-virtual {v0, v14}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    invoke-virtual {v5, v3, v4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    invoke-static {v0, v3}, Lio/realm/u1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/u1;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    invoke-static {v0, v1, v3, v10}, Lio/realm/u1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/Set;)V

    .line 955
    .line 956
    .line 957
    :goto_9
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    if-nez v1, :cond_15

    .line 962
    .line 963
    const/4 v3, 0x0

    .line 964
    invoke-virtual {v2, v3}, Lio/realm/e2;->realmSet$vehicle(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V

    .line 965
    .line 966
    .line 967
    goto :goto_a

    .line 968
    :cond_15
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 973
    .line 974
    if-nez v3, :cond_1a

    .line 975
    .line 976
    iget-object v3, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 977
    .line 978
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 979
    .line 980
    iget-wide v4, v7, Lio/realm/e2$a;->s:J

    .line 981
    .line 982
    sget-object v6, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 983
    .line 984
    invoke-interface {v3, v4, v5, v6}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 985
    .line 986
    .line 987
    move-result-wide v3

    .line 988
    move-object/from16 v5, v22

    .line 989
    .line 990
    invoke-virtual {v0, v5}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    invoke-virtual {v5, v3, v4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    invoke-static {v0, v3}, Lio/realm/c2;->d(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/c2;

    .line 999
    .line 1000
    .line 1001
    move-result-object v3

    .line 1002
    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v0, v1, v3, v9, v10}, Lio/realm/c2;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 1006
    .line 1007
    .line 1008
    :goto_a
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    if-nez v1, :cond_16

    .line 1013
    .line 1014
    const/4 v3, 0x0

    .line 1015
    invoke-virtual {v2, v3}, Lio/realm/e2;->realmSet$report(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V

    .line 1016
    .line 1017
    .line 1018
    goto :goto_b

    .line 1019
    :cond_16
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v3

    .line 1023
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 1024
    .line 1025
    if-nez v3, :cond_19

    .line 1026
    .line 1027
    iget-object v3, v2, Lio/realm/e2;->b:Lio/realm/f0;

    .line 1028
    .line 1029
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 1030
    .line 1031
    iget-wide v4, v7, Lio/realm/e2$a;->t:J

    .line 1032
    .line 1033
    sget-object v6, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 1034
    .line 1035
    invoke-interface {v3, v4, v5, v6}, Lio/realm/internal/p;->r(JLio/realm/RealmFieldType;)J

    .line 1036
    .line 1037
    .line 1038
    move-result-wide v3

    .line 1039
    invoke-virtual {v0, v12}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    invoke-virtual {v5, v3, v4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v3

    .line 1047
    invoke-static {v0, v3}, Lio/realm/q1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/q1;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    invoke-static {v0, v1, v3, v9, v10}, Lio/realm/q1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 1055
    .line 1056
    .line 1057
    :goto_b
    invoke-interface/range {p2 .. p2}, Lio/realm/f2;->realmGet$media()Lio/realm/q0;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    if-eqz v1, :cond_18

    .line 1062
    .line 1063
    invoke-virtual {v2}, Lio/realm/e2;->realmGet$media()Lio/realm/q0;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v3

    .line 1067
    invoke-virtual {v3}, Lio/realm/q0;->clear()V

    .line 1068
    .line 1069
    .line 1070
    const/4 v13, 0x0

    .line 1071
    :goto_c
    invoke-virtual {v1}, Lio/realm/q0;->size()I

    .line 1072
    .line 1073
    .line 1074
    move-result v4

    .line 1075
    if-ge v13, v4, :cond_18

    .line 1076
    .line 1077
    invoke-virtual {v1, v13}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 1082
    .line 1083
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v5

    .line 1087
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 1088
    .line 1089
    if-nez v5, :cond_17

    .line 1090
    .line 1091
    iget-object v5, v3, Lio/realm/q0;->b:Lio/realm/x;

    .line 1092
    .line 1093
    iget-object v5, v5, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 1094
    .line 1095
    invoke-virtual {v5}, Lio/realm/internal/OsList;->n()J

    .line 1096
    .line 1097
    .line 1098
    move-result-wide v5

    .line 1099
    invoke-virtual {v0, v11}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v7

    .line 1103
    invoke-virtual {v7, v5, v6}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v5

    .line 1107
    invoke-static {v0, v5}, Lio/realm/w1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/w1;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v5

    .line 1111
    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    new-instance v6, Ljava/util/HashMap;

    .line 1115
    .line 1116
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1117
    .line 1118
    .line 1119
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 1120
    .line 1121
    invoke-static {v0, v4, v5, v6}, Lio/realm/w1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/Set;)V

    .line 1122
    .line 1123
    .line 1124
    add-int/lit8 v13, v13, 0x1

    .line 1125
    .line 1126
    goto :goto_c

    .line 1127
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1128
    .line 1129
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    throw v0

    .line 1133
    :cond_18
    :goto_d
    return-object v2

    .line 1134
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1135
    .line 1136
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    throw v0

    .line 1140
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1141
    .line 1142
    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    throw v0

    .line 1146
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1147
    .line 1148
    move-object/from16 v1, p3

    .line 1149
    .line 1150
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    throw v0

    .line 1154
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1155
    .line 1156
    move-object/from16 v1, v17

    .line 1157
    .line 1158
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    throw v0
.end method

.method public static d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;Ljava/util/HashMap;)J
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    instance-of v0, v9, Lio/realm/internal/n;

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v9

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 5
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 6
    iget-object v2, v8, Lio/realm/a;->c:Lio/realm/o0;

    .line 7
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 10
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {v8, v0}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v11

    .line 11
    iget-wide v5, v11, Lio/realm/internal/Table;->a:J

    .line 12
    iget-object v1, v8, Lio/realm/g0;->j:Lio/realm/u;

    .line 13
    invoke-virtual {v1, v0}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/e2$a;

    iget-wide v1, v0, Lio/realm/e2$a;->e:J

    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v5, v6, v1, v2}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v12

    goto :goto_0

    :cond_1
    invoke-static {v5, v6, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v12

    :goto_0
    const-wide/16 v14, -0x1

    cmp-long v4, v12, v14

    if-nez v4, :cond_2

    invoke-static {v11, v1, v2, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v12

    :cond_2
    move-wide v3, v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$nameSurname()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    iget-wide v14, v0, Lio/realm/e2$a;->f:J

    const/16 v19, 0x0

    move-wide v12, v5

    move-wide/from16 v16, v3

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v3

    move-wide/from16 v20, v5

    goto :goto_1

    :cond_3
    iget-wide v12, v0, Lio/realm/e2$a;->f:J

    const/4 v7, 0x0

    move-wide v1, v5

    move-wide v14, v3

    move-wide v3, v12

    move-wide/from16 v20, v5

    move-wide v5, v14

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_1
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    iget-wide v1, v0, Lio/realm/e2$a;->g:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_2

    :cond_4
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->g:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_2
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$role()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    iget-wide v1, v0, Lio/realm/e2$a;->h:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_3

    :cond_5
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->h:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$dashPointId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    iget-wide v1, v0, Lio/realm/e2$a;->i:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_4

    :cond_6
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->i:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_4
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$dashPoint()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    iget-wide v1, v0, Lio/realm/e2$a;->j:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_5

    :cond_7
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->j:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$scenarioId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    iget-wide v1, v0, Lio/realm/e2$a;->k:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_6

    :cond_8
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->k:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_6
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$accidentComment()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    iget-wide v1, v0, Lio/realm/e2$a;->l:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_7

    :cond_9
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->l:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_7
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$status()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    iget-wide v1, v0, Lio/realm/e2$a;->m:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_8

    :cond_a
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->m:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_8
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    iget-wide v1, v0, Lio/realm/e2$a;->n:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_9

    :cond_b
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->n:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_9
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$createdDate()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    iget-wide v1, v0, Lio/realm/e2$a;->o:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v14, v5

    goto :goto_a

    :cond_c
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->o:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_a
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$expiredDate()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_d

    iget-wide v1, v0, Lio/realm/e2$a;->p:J

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide v5, v14

    move-wide v14, v1

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    move-wide v12, v5

    goto :goto_b

    :cond_d
    move-wide v5, v14

    iget-wide v3, v0, Lio/realm/e2$a;->p:J

    const/4 v7, 0x0

    move-wide/from16 v1, v20

    move-wide v12, v5

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_b
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    move-result-object v6

    const-string v14, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: "

    if-eqz v6, :cond_f

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_e

    iget-wide v2, v0, Lio/realm/e2$a;->q:J

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v4, v12

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lio/realm/s1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/HashMap;)V

    goto :goto_c

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v15, v0

    iget-wide v3, v15, Lio/realm/e2$a;->q:J

    move-wide/from16 v1, v20

    move-wide v5, v12

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_c
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_10

    iget-wide v2, v15, Lio/realm/e2$a;->r:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v4, v12

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lio/realm/u1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/HashMap;)V

    goto :goto_d

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    iget-wide v3, v15, Lio/realm/e2$a;->r:J

    move-wide/from16 v1, v20

    move-wide v5, v12

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_d
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_12

    iget-wide v2, v15, Lio/realm/e2$a;->s:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v4, v12

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lio/realm/c2;->c(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ljava/util/HashMap;)V

    goto :goto_e

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iget-wide v3, v15, Lio/realm/e2$a;->s:J

    move-wide/from16 v1, v20

    move-wide v5, v12

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_e
    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_14

    iget-wide v2, v15, Lio/realm/e2$a;->t:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v4, v12

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lio/realm/q1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;)V

    goto :goto_f

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    iget-wide v3, v15, Lio/realm/e2$a;->t:J

    move-wide/from16 v1, v20

    move-wide v5, v12

    invoke-static/range {v1 .. v6}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    :goto_f
    new-instance v0, Lio/realm/internal/OsList;

    invoke-virtual {v11, v12, v13}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    move-result-object v1

    iget-wide v2, v15, Lio/realm/e2$a;->u:J

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    invoke-interface/range {p1 .. p1}, Lio/realm/f2;->realmGet$media()Lio/realm/q0;

    move-result-object v1

    invoke-virtual {v0}, Lio/realm/internal/OsList;->I()V

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_16

    iget-wide v2, v15, Lio/realm/e2$a;->u:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v4, v12

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lio/realm/w1;->d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/HashMap;)V

    goto :goto_10

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    return-wide v12
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    check-cast v1, Lio/realm/e2$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/e2;->b:Lio/realm/f0;

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

    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    const-class v2, Lio/realm/e2;

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
    check-cast p1, Lio/realm/e2;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v3, p1, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object p1, p1, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/e2;->b:Lio/realm/f0;

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

.method public final realmGet$accidentComment()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->l:J

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

.method public final realmGet$consolidatedStatus()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->n:J

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

.method public final realmGet$createdDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->o:J

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

.method public final realmGet$dashPoint()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->j:J

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

.method public final realmGet$dashPointId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->i:J

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

.method public final realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->q:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->L(J)Z

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
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 29
    .line 30
    iget-object v2, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 31
    .line 32
    iget-wide v2, v2, Lio/realm/e2$a;->q:J

    .line 33
    .line 34
    invoke-interface {v0, v2, v3}, Lio/realm/internal/p;->P(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 43
    .line 44
    invoke-virtual {v1, v4, v2, v3, v0}, Lio/realm/a;->e(Ljava/lang/Class;JLjava/util/List;)Lio/realm/s0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 49
    .line 50
    return-object v0
.end method

.method public final realmGet$expiredDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->p:J

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

.method public final realmGet$id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->e:J

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

.method public final realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->r:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->L(J)Z

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
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 29
    .line 30
    iget-object v2, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 31
    .line 32
    iget-wide v2, v2, Lio/realm/e2$a;->r:J

    .line 33
    .line 34
    invoke-interface {v0, v2, v3}, Lio/realm/internal/p;->P(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 43
    .line 44
    invoke-virtual {v1, v4, v2, v3, v0}, Lio/realm/a;->e(Ljava/lang/Class;JLjava/util/List;)Lio/realm/s0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 49
    .line 50
    return-object v0
.end method

.method public final realmGet$media()Lio/realm/q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->c:Lio/realm/q0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 14
    .line 15
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 16
    .line 17
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 18
    .line 19
    iget-wide v1, v1, Lio/realm/e2$a;->u:J

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
    iget-object v2, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 28
    .line 29
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 30
    .line 31
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 32
    .line 33
    invoke-direct {v1, v2, v0, v3}, Lio/realm/q0;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lio/realm/e2;->c:Lio/realm/q0;

    .line 37
    .line 38
    return-object v1
.end method

.method public final realmGet$nameSurname()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->f:J

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

.method public final realmGet$phoneNumber()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->g:J

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

.method public final realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->t:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->L(J)Z

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
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 29
    .line 30
    iget-object v2, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 31
    .line 32
    iget-wide v2, v2, Lio/realm/e2$a;->t:J

    .line 33
    .line 34
    invoke-interface {v0, v2, v3}, Lio/realm/internal/p;->P(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 43
    .line 44
    invoke-virtual {v1, v4, v2, v3, v0}, Lio/realm/a;->e(Ljava/lang/Class;JLjava/util/List;)Lio/realm/s0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 49
    .line 50
    return-object v0
.end method

.method public final realmGet$role()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->h:J

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

.method public final realmGet$scenarioId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->k:J

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

.method public final realmGet$status()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->m:J

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

.method public final realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/e2$a;->s:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->L(J)Z

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
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 29
    .line 30
    iget-object v2, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 31
    .line 32
    iget-wide v2, v2, Lio/realm/e2$a;->s:J

    .line 33
    .line 34
    invoke-interface {v0, v2, v3}, Lio/realm/internal/p;->P(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 43
    .line 44
    invoke-virtual {v1, v4, v2, v3, v0}, Lio/realm/a;->e(Ljava/lang/Class;JLjava/util/List;)Lio/realm/s0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 49
    .line 50
    return-object v0
.end method

.method public final realmSet$accidentComment(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->l:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->l:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->l:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->l:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$consolidatedStatus(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->n:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->n:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->n:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->n:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$createdDate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->o:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->o:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->o:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->o:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$dashPoint(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->j:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->j:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->j:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->j:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$dashPointId(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->i:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->i:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->i:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->i:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$driver(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lio/realm/g0;

    .line 7
    .line 8
    iget-boolean v3, v0, Lio/realm/f0;->b:Z

    .line 9
    .line 10
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 11
    .line 12
    const-string v5, "driver"

    .line 13
    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->g:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 43
    .line 44
    new-instance v1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 50
    .line 51
    invoke-static {v2, p1, v0, v1}, Lio/realm/s1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :cond_2
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 56
    .line 57
    iget-object v1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 62
    .line 63
    iget-wide v2, p1, Lio/realm/e2$a;->q:J

    .line 64
    .line 65
    invoke-interface {v1, v2, v3}, Lio/realm/internal/p;->E(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 77
    .line 78
    iget-wide v5, v0, Lio/realm/e2$a;->q:J

    .line 79
    .line 80
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    check-cast p1, Lio/realm/internal/n;

    .line 85
    .line 86
    invoke-interface {p1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    invoke-virtual/range {v4 .. v10}, Lio/realm/internal/Table;->u(JJJ)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 101
    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 106
    .line 107
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 108
    .line 109
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 110
    .line 111
    iget-wide v0, v0, Lio/realm/e2$a;->q:J

    .line 112
    .line 113
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->E(J)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    .line 133
    .line 134
    new-instance v1, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    .line 138
    .line 139
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 140
    .line 141
    invoke-static {v2, p1, v0, v1}, Lio/realm/s1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;Ljava/util/Set;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final realmSet$expiredDate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->p:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->p:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->p:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->p:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$id(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final realmSet$location(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lio/realm/g0;

    .line 7
    .line 8
    iget-boolean v3, v0, Lio/realm/f0;->b:Z

    .line 9
    .line 10
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 11
    .line 12
    const-string v5, "location"

    .line 13
    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->g:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 43
    .line 44
    new-instance v1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 50
    .line 51
    invoke-static {v2, p1, v0, v1}, Lio/realm/u1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :cond_2
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 56
    .line 57
    iget-object v1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 62
    .line 63
    iget-wide v2, p1, Lio/realm/e2$a;->r:J

    .line 64
    .line 65
    invoke-interface {v1, v2, v3}, Lio/realm/internal/p;->E(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 77
    .line 78
    iget-wide v5, v0, Lio/realm/e2$a;->r:J

    .line 79
    .line 80
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    check-cast p1, Lio/realm/internal/n;

    .line 85
    .line 86
    invoke-interface {p1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    invoke-virtual/range {v4 .. v10}, Lio/realm/internal/Table;->u(JJJ)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 101
    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 106
    .line 107
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 108
    .line 109
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 110
    .line 111
    iget-wide v0, v0, Lio/realm/e2$a;->r:J

    .line 112
    .line 113
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->E(J)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 133
    .line 134
    new-instance v1, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    .line 138
    .line 139
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 140
    .line 141
    invoke-static {v2, p1, v0, v1}, Lio/realm/u1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;Ljava/util/Set;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final realmSet$media(Lio/realm/q0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    const-string v1, "media"

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
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

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
    invoke-virtual {v0, v3, v4}, Lio/realm/g0;->o(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

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
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 82
    .line 83
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 84
    .line 85
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 89
    .line 90
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 93
    .line 94
    iget-wide v3, v1, Lio/realm/e2$a;->u:J

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
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 126
    .line 127
    iget-object v4, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 168
    .line 169
    iget-object v4, p0, Lio/realm/e2;->b:Lio/realm/f0;

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

.method public final realmSet$nameSurname(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->f:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->f:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->f:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->f:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$phoneNumber(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->g:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->g:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->g:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->g:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$report(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lio/realm/g0;

    .line 7
    .line 8
    iget-boolean v3, v0, Lio/realm/f0;->b:Z

    .line 9
    .line 10
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 11
    .line 12
    const-string v5, "report"

    .line 13
    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->g:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 43
    .line 44
    new-instance v1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 50
    .line 51
    invoke-static {v2, p1, v0, v1, v3}, Lio/realm/q1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :cond_2
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 56
    .line 57
    iget-object v1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 62
    .line 63
    iget-wide v2, p1, Lio/realm/e2$a;->t:J

    .line 64
    .line 65
    invoke-interface {v1, v2, v3}, Lio/realm/internal/p;->E(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 77
    .line 78
    iget-wide v5, v0, Lio/realm/e2$a;->t:J

    .line 79
    .line 80
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    check-cast p1, Lio/realm/internal/n;

    .line 85
    .line 86
    invoke-interface {p1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    invoke-virtual/range {v4 .. v10}, Lio/realm/internal/Table;->u(JJJ)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 101
    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 106
    .line 107
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 108
    .line 109
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 110
    .line 111
    iget-wide v0, v0, Lio/realm/e2$a;->t:J

    .line 112
    .line 113
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->E(J)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 133
    .line 134
    new-instance v1, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    .line 138
    .line 139
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 140
    .line 141
    invoke-static {v2, p1, v0, v1, v3}, Lio/realm/q1;->f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final realmSet$role(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->h:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->h:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->h:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->h:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$scenarioId(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->k:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->k:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->k:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->k:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$status(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/e2$a;->m:J

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
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/e2$a;->m:J

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
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/e2$a;->m:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/e2$a;->m:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$vehicle(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lio/realm/g0;

    .line 7
    .line 8
    iget-boolean v3, v0, Lio/realm/f0;->b:Z

    .line 9
    .line 10
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 11
    .line 12
    const-string v5, "vehicle"

    .line 13
    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->g:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 43
    .line 44
    new-instance v1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 50
    .line 51
    invoke-static {v2, p1, v0, v1, v3}, Lio/realm/c2;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :cond_2
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 56
    .line 57
    iget-object v1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 62
    .line 63
    iget-wide v2, p1, Lio/realm/e2$a;->s:J

    .line 64
    .line 65
    invoke-interface {v1, v2, v3}, Lio/realm/internal/p;->E(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 77
    .line 78
    iget-wide v5, v0, Lio/realm/e2$a;->s:J

    .line 79
    .line 80
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    check-cast p1, Lio/realm/internal/n;

    .line 85
    .line 86
    invoke-interface {p1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    invoke-virtual/range {v4 .. v10}, Lio/realm/internal/Table;->u(JJJ)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 101
    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    iget-object p1, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 106
    .line 107
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 108
    .line 109
    iget-object v0, p0, Lio/realm/e2;->a:Lio/realm/e2$a;

    .line 110
    .line 111
    iget-wide v0, v0, Lio/realm/e2$a;->s:J

    .line 112
    .line 113
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->E(J)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lio/realm/e2;->b:Lio/realm/f0;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lio/realm/f0;->a(Lio/realm/s0;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {v2, v4, p0, v5}, Lio/realm/g0;->q(Ljava/lang/Class;Lio/realm/s0;Ljava/lang/String;)Lio/realm/s0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 133
    .line 134
    new-instance v1, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    .line 138
    .line 139
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 140
    .line 141
    invoke-static {v2, p1, v0, v1, v3}, Lio/realm/c2;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 142
    .line 143
    .line 144
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

    const-string v1, "MKTAccidentReport = proxy[{id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{nameSurname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$nameSurname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$nameSurname()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{phoneNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$phoneNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$role()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$role()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{dashPointId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$dashPointId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$dashPointId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{dashPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$dashPoint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$dashPoint()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{scenarioId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$scenarioId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$scenarioId()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{accidentComment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$accidentComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$accidentComment()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{consolidatedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{createdDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$createdDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$createdDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{expiredDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$expiredDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$expiredDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{driver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$driver()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v1, "AccidentReportDriver"

    goto :goto_c

    :cond_d
    move-object v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$location()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v1, "AccidentReportLocation"

    goto :goto_d

    :cond_e
    move-object v1, v2

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{vehicle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$vehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v1, "AccidentReportVehicle"

    goto :goto_e

    :cond_f
    move-object v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{report:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$report()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "AccidentMergedReport"

    :cond_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{media:RealmList<AccidentReportMedia>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/e2;->realmGet$media()Lio/realm/q0;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/q0;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
