.class public final Lio/realm/m1;
.super Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/m1$a;
    }
.end annotation


# static fields
.field public static final c:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/m1$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;",
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
    const-string v0, "InstitutionContactModelRealm"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;-><init>(Ljava/lang/String;ZI)V

    .line 11
    .line 12
    .line 13
    const-string v1, "contactId"

    .line 14
    .line 15
    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v0, v6

    .line 22
    move-object v2, v9

    .line 23
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 24
    .line 25
    .line 26
    const-string v1, "institutionCode"

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    move v5, v10

    .line 32
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 33
    .line 34
    .line 35
    const-string v1, "contactAddress"

    .line 36
    .line 37
    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v2, v9

    .line 43
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 44
    .line 45
    .line 46
    const-string v1, "contactEmail"

    .line 47
    .line 48
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 49
    .line 50
    .line 51
    const-string v1, "contactName"

    .line 52
    .line 53
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 54
    .line 55
    .line 56
    const-string v1, "contactWebsite"

    .line 57
    .line 58
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 59
    .line 60
    .line 61
    const-string v1, "contactPhone"

    .line 62
    .line 63
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 64
    .line 65
    .line 66
    const-string v1, "contactLongitude"

    .line 67
    .line 68
    move v5, v13

    .line 69
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 70
    .line 71
    .line 72
    const-string v1, "contactLatitude"

    .line 73
    .line 74
    move v3, v12

    .line 75
    move v4, v8

    .line 76
    move v5, v10

    .line 77
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 78
    .line 79
    .line 80
    const-string v1, "isMainInstitution"

    .line 81
    .line 82
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    move v3, v11

    .line 86
    move v4, v7

    .line 87
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$a;->c()Lio/realm/internal/OsObjectSchemaInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lio/realm/m1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;-><init>()V

    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Lio/realm/m1$a;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;ZLjava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;
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
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_2
    const-class v13, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

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
    iget-wide v3, v7, Lio/realm/m1$a;->e:J

    .line 98
    .line 99
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactId()I

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
    new-instance v1, Lio/realm/m1;

    .line 133
    .line 134
    invoke-direct {v1}, Lio/realm/m1;-><init>()V

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
    iget-wide v3, v7, Lio/realm/m1$a;->e:J

    .line 163
    .line 164
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactId()I

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
    iget-wide v3, v7, Lio/realm/m1$a;->f:J

    .line 176
    .line 177
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$institutionCode()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 186
    .line 187
    .line 188
    iget-wide v3, v7, Lio/realm/m1$a;->g:J

    .line 189
    .line 190
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactAddress()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-wide v3, v7, Lio/realm/m1$a;->h:J

    .line 198
    .line 199
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactEmail()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-wide v3, v7, Lio/realm/m1$a;->i:J

    .line 207
    .line 208
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-wide v3, v7, Lio/realm/m1$a;->j:J

    .line 216
    .line 217
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactWebsite()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-wide v3, v7, Lio/realm/m1$a;->k:J

    .line 225
    .line 226
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactPhone()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-wide v3, v7, Lio/realm/m1$a;->l:J

    .line 234
    .line 235
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactLongitude()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-wide v3, v7, Lio/realm/m1$a;->m:J

    .line 243
    .line 244
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactLatitude()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-wide v3, v7, Lio/realm/m1$a;->n:J

    .line 252
    .line 253
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$isMainInstitution()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v2, v3, v4, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->j()V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :cond_5
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    check-cast v1, Lio/realm/internal/n;

    .line 274
    .line 275
    if-eqz v1, :cond_6

    .line 276
    .line 277
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_6
    invoke-virtual {p0, v13}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 286
    .line 287
    invoke-direct {v2, v1, v10}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 288
    .line 289
    .line 290
    iget-wide v3, v7, Lio/realm/m1$a;->e:J

    .line 291
    .line 292
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactId()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 301
    .line 302
    .line 303
    iget-wide v3, v7, Lio/realm/m1$a;->f:J

    .line 304
    .line 305
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$institutionCode()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 314
    .line 315
    .line 316
    iget-wide v3, v7, Lio/realm/m1$a;->g:J

    .line 317
    .line 318
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactAddress()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-wide v3, v7, Lio/realm/m1$a;->h:J

    .line 326
    .line 327
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactEmail()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-wide v3, v7, Lio/realm/m1$a;->i:J

    .line 335
    .line 336
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-wide v3, v7, Lio/realm/m1$a;->j:J

    .line 344
    .line 345
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactWebsite()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-wide v3, v7, Lio/realm/m1$a;->k:J

    .line 353
    .line 354
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactPhone()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-wide v3, v7, Lio/realm/m1$a;->l:J

    .line 362
    .line 363
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactLongitude()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-wide v3, v7, Lio/realm/m1$a;->m:J

    .line 371
    .line 372
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$contactLatitude()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-wide v3, v7, Lio/realm/m1$a;->n:J

    .line 380
    .line 381
    invoke-interface/range {p2 .. p2}, Lio/realm/n1;->realmGet$isMainInstitution()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    move-object v7, v1

    .line 401
    check-cast v7, Lio/realm/a$b;

    .line 402
    .line 403
    iget-object v1, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 404
    .line 405
    invoke-virtual {v1, v13}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    const/4 v5, 0x0

    .line 410
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    move-object v1, v7

    .line 415
    move-object v2, p0

    .line 416
    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 417
    .line 418
    .line 419
    new-instance v1, Lio/realm/m1;

    .line 420
    .line 421
    invoke-direct {v1}, Lio/realm/m1;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7}, Lio/realm/a$b;->a()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    :goto_2
    return-object v1
.end method

.method public static d(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;Ljava/util/HashMap;)J
    .locals 17

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
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-wide v13, v3, Lio/realm/internal/Table;->a:J

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
    check-cast v0, Lio/realm/m1$a;

    .line 72
    .line 73
    iget-wide v10, v0, Lio/realm/m1$a;->e:J

    .line 74
    .line 75
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactId()I

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
    const-wide/16 v15, -0x1

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactId()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    int-to-long v8, v2

    .line 92
    move-wide v4, v13

    .line 93
    move-wide v6, v10

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
    move-wide v4, v15

    .line 100
    :goto_0
    cmp-long v2, v4, v15

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactId()I

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
    invoke-static {v3, v10, v11, v2}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

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
    iget-wide v6, v0, Lio/realm/m1$a;->f:J

    .line 127
    .line 128
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$institutionCode()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    int-to-long v10, v4

    .line 133
    const/4 v12, 0x0

    .line 134
    move-wide v4, v13

    .line 135
    move-wide v8, v2

    .line 136
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 137
    .line 138
    .line 139
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactAddress()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    iget-wide v6, v0, Lio/realm/m1$a;->g:J

    .line 144
    .line 145
    if-eqz v10, :cond_3

    .line 146
    .line 147
    const/4 v11, 0x0

    .line 148
    move-wide v4, v13

    .line 149
    move-wide v8, v2

    .line 150
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    const/4 v10, 0x0

    .line 155
    move-wide v4, v13

    .line 156
    move-wide v8, v2

    .line 157
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 158
    .line 159
    .line 160
    :goto_1
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactEmail()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    iget-wide v6, v0, Lio/realm/m1$a;->h:J

    .line 165
    .line 166
    if-eqz v10, :cond_4

    .line 167
    .line 168
    const/4 v11, 0x0

    .line 169
    move-wide v4, v13

    .line 170
    move-wide v8, v2

    .line 171
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    const/4 v10, 0x0

    .line 176
    move-wide v4, v13

    .line 177
    move-wide v8, v2

    .line 178
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 179
    .line 180
    .line 181
    :goto_2
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    iget-wide v6, v0, Lio/realm/m1$a;->i:J

    .line 186
    .line 187
    if-eqz v10, :cond_5

    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    move-wide v4, v13

    .line 191
    move-wide v8, v2

    .line 192
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_5
    const/4 v10, 0x0

    .line 197
    move-wide v4, v13

    .line 198
    move-wide v8, v2

    .line 199
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 200
    .line 201
    .line 202
    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactWebsite()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    iget-wide v6, v0, Lio/realm/m1$a;->j:J

    .line 207
    .line 208
    if-eqz v10, :cond_6

    .line 209
    .line 210
    const/4 v11, 0x0

    .line 211
    move-wide v4, v13

    .line 212
    move-wide v8, v2

    .line 213
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_6
    const/4 v10, 0x0

    .line 218
    move-wide v4, v13

    .line 219
    move-wide v8, v2

    .line 220
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 221
    .line 222
    .line 223
    :goto_4
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactPhone()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    iget-wide v6, v0, Lio/realm/m1$a;->k:J

    .line 228
    .line 229
    if-eqz v10, :cond_7

    .line 230
    .line 231
    const/4 v11, 0x0

    .line 232
    move-wide v4, v13

    .line 233
    move-wide v8, v2

    .line 234
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_7
    const/4 v10, 0x0

    .line 239
    move-wide v4, v13

    .line 240
    move-wide v8, v2

    .line 241
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 242
    .line 243
    .line 244
    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactLongitude()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    iget-wide v6, v0, Lio/realm/m1$a;->l:J

    .line 249
    .line 250
    if-eqz v10, :cond_8

    .line 251
    .line 252
    const/4 v11, 0x0

    .line 253
    move-wide v4, v13

    .line 254
    move-wide v8, v2

    .line 255
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_8
    const/4 v10, 0x0

    .line 260
    move-wide v4, v13

    .line 261
    move-wide v8, v2

    .line 262
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 263
    .line 264
    .line 265
    :goto_6
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$contactLatitude()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    iget-wide v6, v0, Lio/realm/m1$a;->m:J

    .line 270
    .line 271
    if-eqz v10, :cond_9

    .line 272
    .line 273
    const/4 v11, 0x0

    .line 274
    move-wide v4, v13

    .line 275
    move-wide v8, v2

    .line 276
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 277
    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_9
    const/4 v10, 0x0

    .line 281
    move-wide v4, v13

    .line 282
    move-wide v8, v2

    .line 283
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 284
    .line 285
    .line 286
    :goto_7
    iget-wide v6, v0, Lio/realm/m1$a;->n:J

    .line 287
    .line 288
    invoke-interface/range {p1 .. p1}, Lio/realm/n1;->realmGet$isMainInstitution()Z

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    const/4 v11, 0x0

    .line 293
    move-wide v4, v13

    .line 294
    move-wide v8, v2

    .line 295
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 296
    .line 297
    .line 298
    return-wide v2
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
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

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
    check-cast v2, Lio/realm/m1$a;

    .line 20
    .line 21
    iget-wide v10, v2, Lio/realm/m1$a;->e:J

    .line 22
    .line 23
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_b

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
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

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
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactId()I

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
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactId()I

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
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactId()I

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
    move-wide/from16 v16, v4

    .line 145
    .line 146
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v1, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-wide v6, v2, Lio/realm/m1$a;->f:J

    .line 154
    .line 155
    invoke-interface {v15}, Lio/realm/n1;->realmGet$institutionCode()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    int-to-long v8, v4

    .line 160
    const/4 v12, 0x0

    .line 161
    move-wide v4, v13

    .line 162
    move-wide/from16 v18, v8

    .line 163
    .line 164
    move-wide/from16 v8, v16

    .line 165
    .line 166
    move-wide/from16 v20, v10

    .line 167
    .line 168
    move-wide/from16 v10, v18

    .line 169
    .line 170
    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactAddress()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    iget-wide v6, v2, Lio/realm/m1$a;->g:J

    .line 178
    .line 179
    if-eqz v10, :cond_4

    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    move-wide v4, v13

    .line 183
    move-wide/from16 v8, v16

    .line 184
    .line 185
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    const/4 v10, 0x0

    .line 190
    move-wide v4, v13

    .line 191
    move-wide/from16 v8, v16

    .line 192
    .line 193
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactEmail()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    iget-wide v6, v2, Lio/realm/m1$a;->h:J

    .line 201
    .line 202
    if-eqz v10, :cond_5

    .line 203
    .line 204
    const/4 v11, 0x0

    .line 205
    move-wide v4, v13

    .line 206
    move-wide/from16 v8, v16

    .line 207
    .line 208
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_5
    const/4 v10, 0x0

    .line 213
    move-wide v4, v13

    .line 214
    move-wide/from16 v8, v16

    .line 215
    .line 216
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 217
    .line 218
    .line 219
    :goto_3
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    iget-wide v6, v2, Lio/realm/m1$a;->i:J

    .line 224
    .line 225
    if-eqz v10, :cond_6

    .line 226
    .line 227
    const/4 v11, 0x0

    .line 228
    move-wide v4, v13

    .line 229
    move-wide/from16 v8, v16

    .line 230
    .line 231
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_6
    const/4 v10, 0x0

    .line 236
    move-wide v4, v13

    .line 237
    move-wide/from16 v8, v16

    .line 238
    .line 239
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 240
    .line 241
    .line 242
    :goto_4
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactWebsite()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    iget-wide v6, v2, Lio/realm/m1$a;->j:J

    .line 247
    .line 248
    if-eqz v10, :cond_7

    .line 249
    .line 250
    const/4 v11, 0x0

    .line 251
    move-wide v4, v13

    .line 252
    move-wide/from16 v8, v16

    .line 253
    .line 254
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_7
    const/4 v10, 0x0

    .line 259
    move-wide v4, v13

    .line 260
    move-wide/from16 v8, v16

    .line 261
    .line 262
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 263
    .line 264
    .line 265
    :goto_5
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactPhone()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    iget-wide v6, v2, Lio/realm/m1$a;->k:J

    .line 270
    .line 271
    if-eqz v10, :cond_8

    .line 272
    .line 273
    const/4 v11, 0x0

    .line 274
    move-wide v4, v13

    .line 275
    move-wide/from16 v8, v16

    .line 276
    .line 277
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_8
    const/4 v10, 0x0

    .line 282
    move-wide v4, v13

    .line 283
    move-wide/from16 v8, v16

    .line 284
    .line 285
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 286
    .line 287
    .line 288
    :goto_6
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactLongitude()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    iget-wide v6, v2, Lio/realm/m1$a;->l:J

    .line 293
    .line 294
    if-eqz v10, :cond_9

    .line 295
    .line 296
    const/4 v11, 0x0

    .line 297
    move-wide v4, v13

    .line 298
    move-wide/from16 v8, v16

    .line 299
    .line 300
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_9
    const/4 v10, 0x0

    .line 305
    move-wide v4, v13

    .line 306
    move-wide/from16 v8, v16

    .line 307
    .line 308
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 309
    .line 310
    .line 311
    :goto_7
    invoke-interface {v15}, Lio/realm/n1;->realmGet$contactLatitude()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    iget-wide v6, v2, Lio/realm/m1$a;->m:J

    .line 316
    .line 317
    if-eqz v10, :cond_a

    .line 318
    .line 319
    const/4 v11, 0x0

    .line 320
    move-wide v4, v13

    .line 321
    move-wide/from16 v8, v16

    .line 322
    .line 323
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 324
    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_a
    const/4 v10, 0x0

    .line 328
    move-wide v4, v13

    .line 329
    move-wide/from16 v8, v16

    .line 330
    .line 331
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 332
    .line 333
    .line 334
    :goto_8
    iget-wide v6, v2, Lio/realm/m1$a;->n:J

    .line 335
    .line 336
    invoke-interface {v15}, Lio/realm/n1;->realmGet$isMainInstitution()Z

    .line 337
    .line 338
    .line 339
    move-result v10

    .line 340
    const/4 v11, 0x0

    .line 341
    move-wide v4, v13

    .line 342
    move-wide/from16 v8, v16

    .line 343
    .line 344
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 345
    .line 346
    .line 347
    move-wide/from16 v10, v20

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_b
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    check-cast v1, Lio/realm/m1$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/m1;->b:Lio/realm/f0;

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

    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    const-class v2, Lio/realm/m1;

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
    check-cast p1, Lio/realm/m1;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v3, p1, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object p1, p1, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/m1;->b:Lio/realm/f0;

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

.method public final realmGet$contactAddress()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->g:J

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

.method public final realmGet$contactEmail()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->h:J

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

.method public final realmGet$contactId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->e:J

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

.method public final realmGet$contactLatitude()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->m:J

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

.method public final realmGet$contactLongitude()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->l:J

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

.method public final realmGet$contactName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->i:J

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

.method public final realmGet$contactPhone()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->k:J

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

.method public final realmGet$contactWebsite()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->j:J

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
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->f:J

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

.method public final realmGet$isMainInstitution()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/m1$a;->n:J

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

.method public final realmSet$contactAddress(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/m1$a;->g:J

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/m1$a;->g:J

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
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/m1$a;->g:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/m1$a;->g:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$contactEmail(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/m1$a;->h:J

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/m1$a;->h:J

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
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/m1$a;->h:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/m1$a;->h:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$contactId(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    const-string v0, "Primary key field \'contactId\' cannot be changed after object was created."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final realmSet$contactLatitude(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/m1$a;->m:J

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/m1$a;->m:J

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
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/m1$a;->m:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/m1$a;->m:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$contactLongitude(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/m1$a;->l:J

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/m1$a;->l:J

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
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/m1$a;->l:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/m1$a;->l:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$contactName(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/m1$a;->i:J

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/m1$a;->i:J

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
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/m1$a;->i:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/m1$a;->i:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$contactPhone(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/m1$a;->k:J

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/m1$a;->k:J

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
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/m1$a;->k:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/m1$a;->k:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$contactWebsite(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/m1$a;->j:J

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
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/m1$a;->j:J

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
    iget-object p1, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/m1$a;->j:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/m1$a;->j:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$institutionCode(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/m1$a;->f:J

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
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/m1$a;->f:J

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

.method public final realmSet$isMainInstitution(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/m1$a;->n:J

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
    iget-object v0, p0, Lio/realm/m1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/m1;->a:Lio/realm/m1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/m1$a;->n:J

    .line 43
    .line 44
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->t(JZ)V

    .line 45
    .line 46
    .line 47
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

    const-string v1, "InstitutionContactModelRealm = proxy[{contactId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{institutionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$institutionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "},{contactAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{contactEmail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{contactName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{contactWebsite:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactWebsite()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactWebsite()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{contactPhone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactPhone()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{contactLongitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactLongitude()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactLongitude()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{contactLatitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactLatitude()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$contactLatitude()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{isMainInstitution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/m1;->realmGet$isMainInstitution()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
