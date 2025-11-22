.class public final Lio/realm/i1;
.super Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/i1$a;
    }
.end annotation


# static fields
.field public static final c:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/i1$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-static {v3, v4}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-string v5, "cityId"

    .line 15
    .line 16
    const-string v6, ""

    .line 17
    .line 18
    invoke-static {v5, v6, v3, v4, v1}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v7

    .line 22
    aput-wide v7, v0, v1

    .line 23
    .line 24
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 25
    .line 26
    invoke-static {v3, v4}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const-string v5, "cityName"

    .line 31
    .line 32
    invoke-static {v5, v6, v3, v1, v1}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    aput-wide v7, v0, v4

    .line 37
    .line 38
    new-instance v3, Lio/realm/internal/OsObjectSchemaInfo;

    .line 39
    .line 40
    const-string v4, "MyCityListDBModel"

    .line 41
    .line 42
    invoke-direct {v3, v6, v4, v1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-wide v4, v3, Lio/realm/internal/OsObjectSchemaInfo;->a:J

    .line 46
    .line 47
    invoke-static {v4, v5, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo;->a(J[J[J)V

    .line 48
    .line 49
    .line 50
    sput-object v3, Lio/realm/i1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;-><init>()V

    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Lio/realm/i1$a;Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;
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
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_2
    const-class v13, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz p3, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-wide v3, v7, Lio/realm/i1$a;->e:J

    .line 98
    .line 99
    invoke-interface/range {p2 .. p2}, Lio/realm/j1;->realmGet$cityId()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    int-to-long v5, v5

    .line 104
    invoke-virtual {v2, v3, v4, v5, v6}, Lio/realm/internal/Table;->c(JJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    const-wide/16 v5, -0x1

    .line 109
    .line 110
    cmp-long v14, v3, v5

    .line 111
    .line 112
    if-nez v14, :cond_3

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    move-object v1, v12

    .line 126
    move-object v2, p0

    .line 127
    move-object/from16 v4, p1

    .line 128
    .line 129
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Lio/realm/i1;

    .line 133
    .line 134
    invoke-direct {v1}, Lio/realm/i1;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    invoke-virtual {v12}, Lio/realm/a$b;->a()V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_4
    :goto_0
    move/from16 v2, p3

    .line 150
    .line 151
    :goto_1
    if-eqz v2, :cond_5

    .line 152
    .line 153
    invoke-virtual {p0, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 158
    .line 159
    invoke-direct {v2, v0, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 160
    .line 161
    .line 162
    iget-wide v3, v7, Lio/realm/i1$a;->e:J

    .line 163
    .line 164
    invoke-interface/range {p2 .. p2}, Lio/realm/j1;->realmGet$cityId()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 173
    .line 174
    .line 175
    iget-wide v3, v7, Lio/realm/i1$a;->f:J

    .line 176
    .line 177
    invoke-interface/range {p2 .. p2}, Lio/realm/j1;->realmGet$cityName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lio/realm/internal/n;

    .line 193
    .line 194
    if-eqz v1, :cond_6

    .line 195
    .line 196
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    invoke-virtual {p0, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 204
    .line 205
    invoke-direct {v2, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 206
    .line 207
    .line 208
    iget-wide v3, v7, Lio/realm/i1$a;->e:J

    .line 209
    .line 210
    invoke-interface/range {p2 .. p2}, Lio/realm/j1;->realmGet$cityId()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 219
    .line 220
    .line 221
    iget-wide v3, v7, Lio/realm/i1$a;->f:J

    .line 222
    .line 223
    invoke-interface/range {p2 .. p2}, Lio/realm/j1;->realmGet$cityName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    move-object v7, v1

    .line 239
    check-cast v7, Lio/realm/a$b;

    .line 240
    .line 241
    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 242
    .line 243
    invoke-virtual {v1, v13}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    const/4 v5, 0x0

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    move-object v1, v7

    .line 253
    move-object v2, p0

    .line 254
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Lio/realm/i1;

    .line 258
    .line 259
    invoke-direct {v1}, Lio/realm/i1;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7}, Lio/realm/a$b;->a()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    :goto_2
    return-object v1
.end method

.method public static d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;Ljava/util/HashMap;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lio/realm/internal/n;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Lio/realm/internal/n;

    .line 17
    .line 18
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 31
    .line 32
    iget-object v3, v3, Lio/realm/a;->c:Lio/realm/o0;

    .line 33
    .line 34
    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 37
    .line 38
    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 51
    .line 52
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    return-wide v0

    .line 57
    :cond_0
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-wide v10, v3, Lio/realm/internal/Table;->a:J

    .line 64
    .line 65
    iget-object v0, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lio/realm/i1$a;

    .line 72
    .line 73
    iget-wide v12, v0, Lio/realm/i1$a;->e:J

    .line 74
    .line 75
    invoke-interface/range {p1 .. p1}, Lio/realm/j1;->realmGet$cityId()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-wide/16 v14, -0x1

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-interface/range {p1 .. p1}, Lio/realm/j1;->realmGet$cityId()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    int-to-long v8, v2

    .line 92
    move-wide v4, v10

    .line 93
    move-wide v6, v12

    .line 94
    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move-wide v4, v14

    .line 100
    :goto_0
    cmp-long v2, v4, v14

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    invoke-interface/range {p1 .. p1}, Lio/realm/j1;->realmGet$cityId()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v3, v12, v13, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    :cond_2
    move-wide v2, v4

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    move-object/from16 v5, p2

    .line 122
    .line 123
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-interface/range {p1 .. p1}, Lio/realm/j1;->realmGet$cityName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-wide v6, v0, Lio/realm/i1$a;->f:J

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    move-wide v4, v10

    .line 136
    move-wide v8, v2

    .line 137
    move-object v10, v1

    .line 138
    move v11, v0

    .line 139
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const/4 v0, 0x0

    .line 144
    move-wide v4, v10

    .line 145
    move-wide v8, v2

    .line 146
    move v10, v0

    .line 147
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 148
    .line 149
    .line 150
    :goto_1
    return-wide v2
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

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
    check-cast v1, Lio/realm/i1$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/i1;->a:Lio/realm/i1$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/i1;->b:Lio/realm/f0;

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

    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

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
    const-class v2, Lio/realm/i1;

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
    check-cast p1, Lio/realm/i1;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/i1;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/i1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/i1;->b:Lio/realm/f0;

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
    iget-object v3, p1, Lio/realm/i1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/i1;->b:Lio/realm/f0;

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
    iget-object p1, p1, Lio/realm/i1;->b:Lio/realm/f0;

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
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/i1;->b:Lio/realm/f0;

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

.method public final realmGet$cityId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/i1;->a:Lio/realm/i1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/i1$a;->e:J

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

.method public final realmGet$cityName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/i1;->a:Lio/realm/i1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/i1$a;->f:J

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

.method public final realmSet$cityId(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/i1;->b:Lio/realm/f0;

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
    const-string v0, "Primary key field \'cityId\' cannot be changed after object was created."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final realmSet$cityName(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    const-string v2, "Trying to set non-nullable field \'cityName\' to null."

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
    iget-object v1, p0, Lio/realm/i1;->a:Lio/realm/i1$a;

    .line 23
    .line 24
    iget-wide v4, v1, Lio/realm/i1$a;->f:J

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
    iget-object v0, p0, Lio/realm/i1;->b:Lio/realm/f0;

    .line 49
    .line 50
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 51
    .line 52
    iget-object v1, p0, Lio/realm/i1;->a:Lio/realm/i1$a;

    .line 53
    .line 54
    iget-wide v1, v1, Lio/realm/i1$a;->f:J

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

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyCityListDBModel = proxy[{cityId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/i1;->realmGet$cityId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{cityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/i1;->realmGet$cityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
