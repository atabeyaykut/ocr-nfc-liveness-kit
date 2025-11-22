.class public final Lio/realm/q1;
.super Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/q1$a;
    }
.end annotation


# static fields
.field public static final d:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/q1$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lio/realm/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
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
    const-string v0, "AccidentMergedReport"

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x14

    .line 9
    .line 10
    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;-><init>(Ljava/lang/String;ZI)V

    .line 11
    .line 12
    .line 13
    const-string v1, "reportPartyStatus"

    .line 14
    .line 15
    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x0

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v0, v6

    .line 25
    move-object v2, v9

    .line 26
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 27
    .line 28
    .line 29
    const-string v1, "accidentDate"

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 32
    .line 33
    .line 34
    const-string v1, "role"

    .line 35
    .line 36
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 37
    .line 38
    .line 39
    const-string v1, "reportId"

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 42
    .line 43
    .line 44
    const-string v1, "city"

    .line 45
    .line 46
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 47
    .line 48
    .line 49
    const-string v1, "district"

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 52
    .line 53
    .line 54
    const-string v1, "reportStatus"

    .line 55
    .line 56
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 57
    .line 58
    .line 59
    const-string v1, "plate"

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 62
    .line 63
    .line 64
    const-string v1, "expireDate"

    .line 65
    .line 66
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 67
    .line 68
    .line 69
    const-string v1, "reportPartyId"

    .line 70
    .line 71
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 72
    .line 73
    .line 74
    const-string v1, "id"

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 77
    .line 78
    .line 79
    const-string v1, "consolidatedStatus"

    .line 80
    .line 81
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 82
    .line 83
    .line 84
    const-string v1, "updateDate"

    .line 85
    .line 86
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 87
    .line 88
    .line 89
    const-string v1, "createDate"

    .line 90
    .line 91
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 92
    .line 93
    .line 94
    const-string v1, "status"

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 97
    .line 98
    .line 99
    const-string v1, "reportNumber"

    .line 100
    .line 101
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 102
    .line 103
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 104
    .line 105
    .line 106
    const-string v1, "vehiclePlateNumber"

    .line 107
    .line 108
    move-object v2, v9

    .line 109
    move v5, v13

    .line 110
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 111
    .line 112
    .line 113
    const-string v1, "vehiclePlateCityCode"

    .line 114
    .line 115
    move v3, v12

    .line 116
    move v4, v8

    .line 117
    move v5, v11

    .line 118
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 119
    .line 120
    .line 121
    const-string v1, "hasPdf"

    .line 122
    .line 123
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 124
    .line 125
    const/4 v5, 0x1

    .line 126
    move v3, v10

    .line 127
    move v4, v7

    .line 128
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 132
    .line 133
    const-string v1, "participants"

    .line 134
    .line 135
    const-string v2, "AccidentReportParticipant"

    .line 136
    .line 137
    invoke-virtual {v6, v1, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;->a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$a;->c()Lio/realm/internal/OsObjectSchemaInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lio/realm/q1;->d:Lio/realm/internal/OsObjectSchemaInfo;

    .line 145
    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;-><init>()V

    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Lio/realm/q1$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;
    .locals 6

    .line 1
    instance-of v0, p2, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p2}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    move-object v0, p2

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
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-wide v1, v0, Lio/realm/a;->b:J

    .line 29
    .line 30
    iget-wide v3, p0, Lio/realm/a;->b:J

    .line 31
    .line 32
    cmp-long v5, v1, v3

    .line 33
    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 41
    .line 42
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    return-object p2

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    sget-object v0, Lio/realm/a;->h:Lio/realm/a$c;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lio/realm/a$b;

    .line 66
    .line 67
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lio/realm/internal/n;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_2
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lio/realm/internal/n;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_3
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v0, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 99
    .line 100
    .line 101
    iget-wide v2, p1, Lio/realm/q1$a;->e:J

    .line 102
    .line 103
    invoke-interface {p2}, Lio/realm/r1;->realmGet$reportPartyStatus()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-wide v2, p1, Lio/realm/q1$a;->f:J

    .line 111
    .line 112
    invoke-interface {p2}, Lio/realm/r1;->realmGet$accidentDate()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-wide v2, p1, Lio/realm/q1$a;->g:J

    .line 120
    .line 121
    invoke-interface {p2}, Lio/realm/r1;->realmGet$role()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-wide v2, p1, Lio/realm/q1$a;->h:J

    .line 129
    .line 130
    invoke-interface {p2}, Lio/realm/r1;->realmGet$reportId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-wide v2, p1, Lio/realm/q1$a;->i:J

    .line 138
    .line 139
    invoke-interface {p2}, Lio/realm/r1;->realmGet$city()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-wide v2, p1, Lio/realm/q1$a;->j:J

    .line 147
    .line 148
    invoke-interface {p2}, Lio/realm/r1;->realmGet$district()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-wide v2, p1, Lio/realm/q1$a;->k:J

    .line 156
    .line 157
    invoke-interface {p2}, Lio/realm/r1;->realmGet$reportStatus()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-wide v2, p1, Lio/realm/q1$a;->l:J

    .line 165
    .line 166
    invoke-interface {p2}, Lio/realm/r1;->realmGet$plate()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-wide v2, p1, Lio/realm/q1$a;->m:J

    .line 174
    .line 175
    invoke-interface {p2}, Lio/realm/r1;->realmGet$expireDate()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-wide v2, p1, Lio/realm/q1$a;->n:J

    .line 183
    .line 184
    invoke-interface {p2}, Lio/realm/r1;->realmGet$reportPartyId()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p4

    .line 188
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-wide v2, p1, Lio/realm/q1$a;->o:J

    .line 192
    .line 193
    invoke-interface {p2}, Lio/realm/r1;->realmGet$id()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p4

    .line 197
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-wide v2, p1, Lio/realm/q1$a;->p:J

    .line 201
    .line 202
    invoke-interface {p2}, Lio/realm/r1;->realmGet$consolidatedStatus()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p4

    .line 206
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-wide v2, p1, Lio/realm/q1$a;->q:J

    .line 210
    .line 211
    invoke-interface {p2}, Lio/realm/r1;->realmGet$updateDate()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p4

    .line 215
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-wide v2, p1, Lio/realm/q1$a;->r:J

    .line 219
    .line 220
    invoke-interface {p2}, Lio/realm/r1;->realmGet$createDate()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p4

    .line 224
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-wide v2, p1, Lio/realm/q1$a;->s:J

    .line 228
    .line 229
    invoke-interface {p2}, Lio/realm/r1;->realmGet$status()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p4

    .line 233
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-wide v2, p1, Lio/realm/q1$a;->t:J

    .line 237
    .line 238
    invoke-interface {p2}, Lio/realm/r1;->realmGet$reportNumber()Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object p4

    .line 242
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 243
    .line 244
    .line 245
    iget-wide v2, p1, Lio/realm/q1$a;->u:J

    .line 246
    .line 247
    invoke-interface {p2}, Lio/realm/r1;->realmGet$vehiclePlateNumber()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p4

    .line 251
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-wide v2, p1, Lio/realm/q1$a;->v:J

    .line 255
    .line 256
    invoke-interface {p2}, Lio/realm/r1;->realmGet$vehiclePlateCityCode()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p4

    .line 260
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-wide v2, p1, Lio/realm/q1$a;->w:J

    .line 264
    .line 265
    invoke-interface {p2}, Lio/realm/r1;->realmGet$hasPdf()Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {p0, p1}, Lio/realm/q1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/q1;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-interface {p2}, Lio/realm/r1;->realmGet$participants()Lio/realm/q0;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    if-eqz p1, :cond_5

    .line 292
    .line 293
    invoke-virtual {v0}, Lio/realm/q1;->realmGet$participants()Lio/realm/q0;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p2}, Lio/realm/q0;->clear()V

    .line 298
    .line 299
    .line 300
    const/4 p4, 0x0

    .line 301
    :goto_0
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-ge p4, v1, :cond_5

    .line 306
    .line 307
    invoke-virtual {p1, p4}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 312
    .line 313
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 318
    .line 319
    if-nez v2, :cond_4

    .line 320
    .line 321
    iget-object v2, p2, Lio/realm/q0;->b:Lio/realm/x;

    .line 322
    .line 323
    iget-object v2, v2, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 324
    .line 325
    invoke-virtual {v2}, Lio/realm/internal/OsList;->n()J

    .line 326
    .line 327
    .line 328
    move-result-wide v2

    .line 329
    const-class v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 330
    .line 331
    invoke-virtual {p0, v4}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-static {p0, v2}, Lio/realm/y1;->d(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/y1;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    new-instance v3, Ljava/util/HashMap;

    .line 347
    .line 348
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 349
    .line 350
    .line 351
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 352
    .line 353
    invoke-static {p0, v1, v2, v3}, Lio/realm/y1;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;Ljava/util/Set;)V

    .line 354
    .line 355
    .line 356
    add-int/lit8 p4, p4, 0x1

    .line 357
    .line 358
    goto :goto_0

    .line 359
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 360
    .line 361
    const-string p1, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cacheparticipants.toString()"

    .line 362
    .line 363
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw p0

    .line 367
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p7

    .line 6
    .line 7
    instance-of v3, v1, Lio/realm/internal/n;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static/range {p6 .. p6}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

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
    return-void

    .line 58
    :cond_0
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-wide v14, v4, Lio/realm/internal/Table;->a:J

    .line 65
    .line 66
    iget-object v13, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 67
    .line 68
    invoke-virtual {v13, v3}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lio/realm/q1$a;

    .line 73
    .line 74
    move-object/from16 v5, p1

    .line 75
    .line 76
    move-wide/from16 v6, p2

    .line 77
    .line 78
    move-wide/from16 v8, p4

    .line 79
    .line 80
    invoke-static {v5, v8, v9, v6, v7}, Lio/realm/internal/OsObject;->createEmbeddedObject(Lio/realm/internal/Table;JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v11

    .line 84
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$reportPartyStatus()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    if-eqz v16, :cond_1

    .line 96
    .line 97
    iget-wide v7, v3, Lio/realm/q1$a;->e:J

    .line 98
    .line 99
    const/16 v17, 0x0

    .line 100
    .line 101
    move-wide v5, v14

    .line 102
    move-wide v9, v11

    .line 103
    move-wide/from16 p1, v11

    .line 104
    .line 105
    move-object/from16 v11, v16

    .line 106
    .line 107
    move/from16 v12, v17

    .line 108
    .line 109
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    move-wide/from16 p1, v11

    .line 114
    .line 115
    iget-wide v7, v3, Lio/realm/q1$a;->e:J

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    move-wide v5, v14

    .line 119
    move-wide/from16 v9, p1

    .line 120
    .line 121
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$accidentDate()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    iget-wide v7, v3, Lio/realm/q1$a;->f:J

    .line 129
    .line 130
    if-eqz v11, :cond_2

    .line 131
    .line 132
    const/4 v12, 0x0

    .line 133
    move-wide v5, v14

    .line 134
    move-wide/from16 v9, p1

    .line 135
    .line 136
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const/4 v11, 0x0

    .line 141
    move-wide v5, v14

    .line 142
    move-wide/from16 v9, p1

    .line 143
    .line 144
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$role()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    iget-wide v7, v3, Lio/realm/q1$a;->g:J

    .line 152
    .line 153
    if-eqz v11, :cond_3

    .line 154
    .line 155
    const/4 v12, 0x0

    .line 156
    move-wide v5, v14

    .line 157
    move-wide/from16 v9, p1

    .line 158
    .line 159
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    const/4 v11, 0x0

    .line 164
    move-wide v5, v14

    .line 165
    move-wide/from16 v9, p1

    .line 166
    .line 167
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 168
    .line 169
    .line 170
    :goto_2
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$reportId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    iget-wide v7, v3, Lio/realm/q1$a;->h:J

    .line 175
    .line 176
    if-eqz v11, :cond_4

    .line 177
    .line 178
    const/4 v12, 0x0

    .line 179
    move-wide v5, v14

    .line 180
    move-wide/from16 v9, p1

    .line 181
    .line 182
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_4
    const/4 v11, 0x0

    .line 187
    move-wide v5, v14

    .line 188
    move-wide/from16 v9, p1

    .line 189
    .line 190
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 191
    .line 192
    .line 193
    :goto_3
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$city()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    iget-wide v7, v3, Lio/realm/q1$a;->i:J

    .line 198
    .line 199
    if-eqz v11, :cond_5

    .line 200
    .line 201
    const/4 v12, 0x0

    .line 202
    move-wide v5, v14

    .line 203
    move-wide/from16 v9, p1

    .line 204
    .line 205
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_5
    const/4 v11, 0x0

    .line 210
    move-wide v5, v14

    .line 211
    move-wide/from16 v9, p1

    .line 212
    .line 213
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 214
    .line 215
    .line 216
    :goto_4
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$district()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    iget-wide v7, v3, Lio/realm/q1$a;->j:J

    .line 221
    .line 222
    if-eqz v11, :cond_6

    .line 223
    .line 224
    const/4 v12, 0x0

    .line 225
    move-wide v5, v14

    .line 226
    move-wide/from16 v9, p1

    .line 227
    .line 228
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_6
    const/4 v11, 0x0

    .line 233
    move-wide v5, v14

    .line 234
    move-wide/from16 v9, p1

    .line 235
    .line 236
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 237
    .line 238
    .line 239
    :goto_5
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$reportStatus()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    iget-wide v7, v3, Lio/realm/q1$a;->k:J

    .line 244
    .line 245
    if-eqz v11, :cond_7

    .line 246
    .line 247
    const/4 v12, 0x0

    .line 248
    move-wide v5, v14

    .line 249
    move-wide/from16 v9, p1

    .line 250
    .line 251
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_7
    const/4 v11, 0x0

    .line 256
    move-wide v5, v14

    .line 257
    move-wide/from16 v9, p1

    .line 258
    .line 259
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 260
    .line 261
    .line 262
    :goto_6
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$plate()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    iget-wide v7, v3, Lio/realm/q1$a;->l:J

    .line 267
    .line 268
    if-eqz v11, :cond_8

    .line 269
    .line 270
    const/4 v12, 0x0

    .line 271
    move-wide v5, v14

    .line 272
    move-wide/from16 v9, p1

    .line 273
    .line 274
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_8
    const/4 v11, 0x0

    .line 279
    move-wide v5, v14

    .line 280
    move-wide/from16 v9, p1

    .line 281
    .line 282
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 283
    .line 284
    .line 285
    :goto_7
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$expireDate()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    iget-wide v7, v3, Lio/realm/q1$a;->m:J

    .line 290
    .line 291
    if-eqz v11, :cond_9

    .line 292
    .line 293
    const/4 v12, 0x0

    .line 294
    move-wide v5, v14

    .line 295
    move-wide/from16 v9, p1

    .line 296
    .line 297
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_9
    const/4 v11, 0x0

    .line 302
    move-wide v5, v14

    .line 303
    move-wide/from16 v9, p1

    .line 304
    .line 305
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 306
    .line 307
    .line 308
    :goto_8
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$reportPartyId()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    iget-wide v7, v3, Lio/realm/q1$a;->n:J

    .line 313
    .line 314
    if-eqz v11, :cond_a

    .line 315
    .line 316
    const/4 v12, 0x0

    .line 317
    move-wide v5, v14

    .line 318
    move-wide/from16 v9, p1

    .line 319
    .line 320
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 321
    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_a
    const/4 v11, 0x0

    .line 325
    move-wide v5, v14

    .line 326
    move-wide/from16 v9, p1

    .line 327
    .line 328
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 329
    .line 330
    .line 331
    :goto_9
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$id()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    iget-wide v7, v3, Lio/realm/q1$a;->o:J

    .line 336
    .line 337
    if-eqz v11, :cond_b

    .line 338
    .line 339
    const/4 v12, 0x0

    .line 340
    move-wide v5, v14

    .line 341
    move-wide/from16 v9, p1

    .line 342
    .line 343
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_b
    const/4 v11, 0x0

    .line 348
    move-wide v5, v14

    .line 349
    move-wide/from16 v9, p1

    .line 350
    .line 351
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 352
    .line 353
    .line 354
    :goto_a
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$consolidatedStatus()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v11

    .line 358
    iget-wide v7, v3, Lio/realm/q1$a;->p:J

    .line 359
    .line 360
    if-eqz v11, :cond_c

    .line 361
    .line 362
    const/4 v12, 0x0

    .line 363
    move-wide v5, v14

    .line 364
    move-wide/from16 v9, p1

    .line 365
    .line 366
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_c
    const/4 v11, 0x0

    .line 371
    move-wide v5, v14

    .line 372
    move-wide/from16 v9, p1

    .line 373
    .line 374
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 375
    .line 376
    .line 377
    :goto_b
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$updateDate()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    iget-wide v7, v3, Lio/realm/q1$a;->q:J

    .line 382
    .line 383
    if-eqz v11, :cond_d

    .line 384
    .line 385
    const/4 v12, 0x0

    .line 386
    move-wide v5, v14

    .line 387
    move-wide/from16 v9, p1

    .line 388
    .line 389
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 390
    .line 391
    .line 392
    goto :goto_c

    .line 393
    :cond_d
    const/4 v11, 0x0

    .line 394
    move-wide v5, v14

    .line 395
    move-wide/from16 v9, p1

    .line 396
    .line 397
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 398
    .line 399
    .line 400
    :goto_c
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$createDate()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    iget-wide v7, v3, Lio/realm/q1$a;->r:J

    .line 405
    .line 406
    if-eqz v11, :cond_e

    .line 407
    .line 408
    const/4 v12, 0x0

    .line 409
    move-wide v5, v14

    .line 410
    move-wide/from16 v9, p1

    .line 411
    .line 412
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 413
    .line 414
    .line 415
    goto :goto_d

    .line 416
    :cond_e
    const/4 v11, 0x0

    .line 417
    move-wide v5, v14

    .line 418
    move-wide/from16 v9, p1

    .line 419
    .line 420
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 421
    .line 422
    .line 423
    :goto_d
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$status()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v11

    .line 427
    iget-wide v7, v3, Lio/realm/q1$a;->s:J

    .line 428
    .line 429
    if-eqz v11, :cond_f

    .line 430
    .line 431
    const/4 v12, 0x0

    .line 432
    move-wide v5, v14

    .line 433
    move-wide/from16 v9, p1

    .line 434
    .line 435
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 436
    .line 437
    .line 438
    goto :goto_e

    .line 439
    :cond_f
    const/4 v11, 0x0

    .line 440
    move-wide v5, v14

    .line 441
    move-wide/from16 v9, p1

    .line 442
    .line 443
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 444
    .line 445
    .line 446
    :goto_e
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$reportNumber()Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    if-eqz v5, :cond_10

    .line 451
    .line 452
    iget-wide v7, v3, Lio/realm/q1$a;->t:J

    .line 453
    .line 454
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 455
    .line 456
    .line 457
    move-result-wide v11

    .line 458
    const/16 v16, 0x0

    .line 459
    .line 460
    move-wide v5, v14

    .line 461
    move-wide/from16 v9, p1

    .line 462
    .line 463
    move-object v1, v13

    .line 464
    move/from16 v13, v16

    .line 465
    .line 466
    invoke-static/range {v5 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 467
    .line 468
    .line 469
    goto :goto_f

    .line 470
    :cond_10
    move-object v1, v13

    .line 471
    iget-wide v7, v3, Lio/realm/q1$a;->t:J

    .line 472
    .line 473
    const/4 v11, 0x0

    .line 474
    move-wide v5, v14

    .line 475
    move-wide/from16 v9, p1

    .line 476
    .line 477
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 478
    .line 479
    .line 480
    :goto_f
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$vehiclePlateNumber()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    iget-wide v7, v3, Lio/realm/q1$a;->u:J

    .line 485
    .line 486
    if-eqz v11, :cond_11

    .line 487
    .line 488
    const/4 v12, 0x0

    .line 489
    move-wide v5, v14

    .line 490
    move-wide/from16 v9, p1

    .line 491
    .line 492
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 493
    .line 494
    .line 495
    goto :goto_10

    .line 496
    :cond_11
    const/4 v11, 0x0

    .line 497
    move-wide v5, v14

    .line 498
    move-wide/from16 v9, p1

    .line 499
    .line 500
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 501
    .line 502
    .line 503
    :goto_10
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$vehiclePlateCityCode()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    iget-wide v7, v3, Lio/realm/q1$a;->v:J

    .line 508
    .line 509
    if-eqz v11, :cond_12

    .line 510
    .line 511
    const/4 v12, 0x0

    .line 512
    move-wide v5, v14

    .line 513
    move-wide/from16 v9, p1

    .line 514
    .line 515
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 516
    .line 517
    .line 518
    goto :goto_11

    .line 519
    :cond_12
    const/4 v11, 0x0

    .line 520
    move-wide v5, v14

    .line 521
    move-wide/from16 v9, p1

    .line 522
    .line 523
    invoke-static/range {v5 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 524
    .line 525
    .line 526
    :goto_11
    iget-wide v7, v3, Lio/realm/q1$a;->w:J

    .line 527
    .line 528
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$hasPdf()Z

    .line 529
    .line 530
    .line 531
    move-result v11

    .line 532
    const/4 v12, 0x0

    .line 533
    move-wide v5, v14

    .line 534
    move-wide/from16 v9, p1

    .line 535
    .line 536
    invoke-static/range {v5 .. v12}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 537
    .line 538
    .line 539
    new-instance v5, Lio/realm/internal/OsList;

    .line 540
    .line 541
    move-wide/from16 v6, p1

    .line 542
    .line 543
    invoke-virtual {v4, v6, v7}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    iget-wide v9, v3, Lio/realm/q1$a;->x:J

    .line 548
    .line 549
    invoke-direct {v5, v8, v9, v10}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 550
    .line 551
    .line 552
    invoke-interface/range {p6 .. p6}, Lio/realm/r1;->realmGet$participants()Lio/realm/q0;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    invoke-virtual {v5}, Lio/realm/internal/OsList;->I()V

    .line 557
    .line 558
    .line 559
    if-eqz v8, :cond_1d

    .line 560
    .line 561
    invoke-virtual {v8}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v8

    .line 569
    if-eqz v8, :cond_1d

    .line 570
    .line 571
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v8

    .line 575
    check-cast v8, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 576
    .line 577
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v9

    .line 581
    check-cast v9, Ljava/lang/Long;

    .line 582
    .line 583
    if-nez v9, :cond_1c

    .line 584
    .line 585
    iget-wide v9, v3, Lio/realm/q1$a;->x:J

    .line 586
    .line 587
    sget-object v11, Lio/realm/y1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 588
    .line 589
    instance-of v11, v8, Lio/realm/internal/n;

    .line 590
    .line 591
    if-eqz v11, :cond_13

    .line 592
    .line 593
    invoke-static {v8}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 594
    .line 595
    .line 596
    move-result v11

    .line 597
    if-nez v11, :cond_13

    .line 598
    .line 599
    move-object v11, v8

    .line 600
    check-cast v11, Lio/realm/internal/n;

    .line 601
    .line 602
    invoke-interface {v11}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 603
    .line 604
    .line 605
    move-result-object v12

    .line 606
    iget-object v12, v12, Lio/realm/f0;->e:Lio/realm/a;

    .line 607
    .line 608
    if-eqz v12, :cond_13

    .line 609
    .line 610
    invoke-interface {v11}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 611
    .line 612
    .line 613
    move-result-object v12

    .line 614
    iget-object v12, v12, Lio/realm/f0;->e:Lio/realm/a;

    .line 615
    .line 616
    iget-object v12, v12, Lio/realm/a;->c:Lio/realm/o0;

    .line 617
    .line 618
    iget-object v12, v12, Lio/realm/o0;->c:Ljava/lang/String;

    .line 619
    .line 620
    iget-object v13, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 621
    .line 622
    iget-object v13, v13, Lio/realm/o0;->c:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v12

    .line 628
    if-eqz v12, :cond_13

    .line 629
    .line 630
    invoke-interface {v11}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 631
    .line 632
    .line 633
    move-result-object v8

    .line 634
    iget-object v8, v8, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 635
    .line 636
    invoke-interface {v8}, Lio/realm/internal/p;->Y()J

    .line 637
    .line 638
    .line 639
    goto :goto_12

    .line 640
    :cond_13
    const-class v11, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 641
    .line 642
    invoke-virtual {v0, v11}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 643
    .line 644
    .line 645
    move-result-object v12

    .line 646
    iget-wide v12, v12, Lio/realm/internal/Table;->a:J

    .line 647
    .line 648
    invoke-virtual {v1, v11}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    check-cast v11, Lio/realm/y1$a;

    .line 653
    .line 654
    invoke-static {v4, v6, v7, v9, v10}, Lio/realm/internal/OsObject;->createEmbeddedObject(Lio/realm/internal/Table;JJ)J

    .line 655
    .line 656
    .line 657
    move-result-wide v9

    .line 658
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 659
    .line 660
    .line 661
    move-result-object v14

    .line 662
    invoke-virtual {v2, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    invoke-interface {v8}, Lio/realm/z1;->realmGet$reportPartyId()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v19

    .line 669
    iget-wide v14, v11, Lio/realm/y1$a;->e:J

    .line 670
    .line 671
    if-eqz v19, :cond_14

    .line 672
    .line 673
    const/16 v20, 0x0

    .line 674
    .line 675
    move-wide/from16 v21, v12

    .line 676
    .line 677
    move-wide v15, v14

    .line 678
    move-wide/from16 v13, v21

    .line 679
    .line 680
    move-wide/from16 v17, v9

    .line 681
    .line 682
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 683
    .line 684
    .line 685
    goto :goto_13

    .line 686
    :cond_14
    move-wide/from16 v21, v12

    .line 687
    .line 688
    move-wide v15, v14

    .line 689
    const/16 v19, 0x0

    .line 690
    .line 691
    move-wide/from16 v13, v21

    .line 692
    .line 693
    move-wide/from16 v17, v9

    .line 694
    .line 695
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 696
    .line 697
    .line 698
    :goto_13
    invoke-interface {v8}, Lio/realm/z1;->realmGet$identityType()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v19

    .line 702
    iget-wide v12, v11, Lio/realm/y1$a;->f:J

    .line 703
    .line 704
    if-eqz v19, :cond_15

    .line 705
    .line 706
    const/16 v20, 0x0

    .line 707
    .line 708
    move-wide v15, v12

    .line 709
    move-wide/from16 v13, v21

    .line 710
    .line 711
    move-wide/from16 v17, v9

    .line 712
    .line 713
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 714
    .line 715
    .line 716
    goto :goto_14

    .line 717
    :cond_15
    move-wide v15, v12

    .line 718
    const/16 v19, 0x0

    .line 719
    .line 720
    move-wide/from16 v13, v21

    .line 721
    .line 722
    move-wide/from16 v17, v9

    .line 723
    .line 724
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 725
    .line 726
    .line 727
    :goto_14
    invoke-interface {v8}, Lio/realm/z1;->realmGet$identityNumber()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v19

    .line 731
    iget-wide v12, v11, Lio/realm/y1$a;->g:J

    .line 732
    .line 733
    if-eqz v19, :cond_16

    .line 734
    .line 735
    const/16 v20, 0x0

    .line 736
    .line 737
    move-wide v15, v12

    .line 738
    move-wide/from16 v13, v21

    .line 739
    .line 740
    move-wide/from16 v17, v9

    .line 741
    .line 742
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 743
    .line 744
    .line 745
    goto :goto_15

    .line 746
    :cond_16
    move-wide v15, v12

    .line 747
    const/16 v19, 0x0

    .line 748
    .line 749
    move-wide/from16 v13, v21

    .line 750
    .line 751
    move-wide/from16 v17, v9

    .line 752
    .line 753
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 754
    .line 755
    .line 756
    :goto_15
    invoke-interface {v8}, Lio/realm/z1;->realmGet$partyRole()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v19

    .line 760
    iget-wide v12, v11, Lio/realm/y1$a;->h:J

    .line 761
    .line 762
    if-eqz v19, :cond_17

    .line 763
    .line 764
    const/16 v20, 0x0

    .line 765
    .line 766
    move-wide v15, v12

    .line 767
    move-wide/from16 v13, v21

    .line 768
    .line 769
    move-wide/from16 v17, v9

    .line 770
    .line 771
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 772
    .line 773
    .line 774
    goto :goto_16

    .line 775
    :cond_17
    move-wide v15, v12

    .line 776
    const/16 v19, 0x0

    .line 777
    .line 778
    move-wide/from16 v13, v21

    .line 779
    .line 780
    move-wide/from16 v17, v9

    .line 781
    .line 782
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 783
    .line 784
    .line 785
    :goto_16
    invoke-interface {v8}, Lio/realm/z1;->realmGet$name()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v19

    .line 789
    iget-wide v12, v11, Lio/realm/y1$a;->i:J

    .line 790
    .line 791
    if-eqz v19, :cond_18

    .line 792
    .line 793
    const/16 v20, 0x0

    .line 794
    .line 795
    move-wide v15, v12

    .line 796
    move-wide/from16 v13, v21

    .line 797
    .line 798
    move-wide/from16 v17, v9

    .line 799
    .line 800
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 801
    .line 802
    .line 803
    goto :goto_17

    .line 804
    :cond_18
    move-wide v15, v12

    .line 805
    const/16 v19, 0x0

    .line 806
    .line 807
    move-wide/from16 v13, v21

    .line 808
    .line 809
    move-wide/from16 v17, v9

    .line 810
    .line 811
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 812
    .line 813
    .line 814
    :goto_17
    invoke-interface {v8}, Lio/realm/z1;->realmGet$plate()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v19

    .line 818
    iget-wide v12, v11, Lio/realm/y1$a;->j:J

    .line 819
    .line 820
    if-eqz v19, :cond_19

    .line 821
    .line 822
    const/16 v20, 0x0

    .line 823
    .line 824
    move-wide v15, v12

    .line 825
    move-wide/from16 v13, v21

    .line 826
    .line 827
    move-wide/from16 v17, v9

    .line 828
    .line 829
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 830
    .line 831
    .line 832
    goto :goto_18

    .line 833
    :cond_19
    move-wide v15, v12

    .line 834
    const/16 v19, 0x0

    .line 835
    .line 836
    move-wide/from16 v13, v21

    .line 837
    .line 838
    move-wide/from16 v17, v9

    .line 839
    .line 840
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 841
    .line 842
    .line 843
    :goto_18
    invoke-interface {v8}, Lio/realm/z1;->realmGet$comment()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v19

    .line 847
    iget-wide v12, v11, Lio/realm/y1$a;->k:J

    .line 848
    .line 849
    if-eqz v19, :cond_1a

    .line 850
    .line 851
    const/16 v20, 0x0

    .line 852
    .line 853
    move-wide v15, v12

    .line 854
    move-wide/from16 v13, v21

    .line 855
    .line 856
    move-wide/from16 v17, v9

    .line 857
    .line 858
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 859
    .line 860
    .line 861
    goto :goto_19

    .line 862
    :cond_1a
    move-wide v15, v12

    .line 863
    const/16 v19, 0x0

    .line 864
    .line 865
    move-wide/from16 v13, v21

    .line 866
    .line 867
    move-wide/from16 v17, v9

    .line 868
    .line 869
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 870
    .line 871
    .line 872
    :goto_19
    invoke-interface {v8}, Lio/realm/z1;->realmGet$status()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v19

    .line 876
    iget-wide v11, v11, Lio/realm/y1$a;->l:J

    .line 877
    .line 878
    if-eqz v19, :cond_1b

    .line 879
    .line 880
    const/16 v20, 0x0

    .line 881
    .line 882
    move-wide/from16 v13, v21

    .line 883
    .line 884
    move-wide v15, v11

    .line 885
    move-wide/from16 v17, v9

    .line 886
    .line 887
    invoke-static/range {v13 .. v20}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 888
    .line 889
    .line 890
    goto/16 :goto_12

    .line 891
    .line 892
    :cond_1b
    const/16 v19, 0x0

    .line 893
    .line 894
    move-wide/from16 v13, v21

    .line 895
    .line 896
    move-wide v15, v11

    .line 897
    move-wide/from16 v17, v9

    .line 898
    .line 899
    invoke-static/range {v13 .. v19}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_12

    .line 903
    .line 904
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 905
    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    .line 907
    .line 908
    const-string v2, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: "

    .line 909
    .line 910
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    throw v0

    .line 928
    :cond_1d
    return-void
.end method

.method public static e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/q1;
    .locals 7

    sget-object v0, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$b;

    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    move-result-object v1

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    invoke-virtual {v1, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance p0, Lio/realm/q1;

    invoke-direct {p0}, Lio/realm/q1;-><init>()V

    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    return-object p0
.end method

.method public static f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;Ljava/util/HashMap;Ljava/util/Set;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/g0;->j:Lio/realm/u;

    .line 2
    .line 3
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/realm/q1$a;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 16
    .line 17
    invoke-direct {v2, v1, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    iget-wide v3, v0, Lio/realm/q1$a;->e:J

    .line 21
    .line 22
    invoke-interface {p1}, Lio/realm/r1;->realmGet$reportPartyStatus()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v3, v0, Lio/realm/q1$a;->f:J

    .line 30
    .line 31
    invoke-interface {p1}, Lio/realm/r1;->realmGet$accidentDate()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-wide v3, v0, Lio/realm/q1$a;->g:J

    .line 39
    .line 40
    invoke-interface {p1}, Lio/realm/r1;->realmGet$role()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-wide v3, v0, Lio/realm/q1$a;->h:J

    .line 48
    .line 49
    invoke-interface {p1}, Lio/realm/r1;->realmGet$reportId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide v3, v0, Lio/realm/q1$a;->i:J

    .line 57
    .line 58
    invoke-interface {p1}, Lio/realm/r1;->realmGet$city()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v3, v0, Lio/realm/q1$a;->j:J

    .line 66
    .line 67
    invoke-interface {p1}, Lio/realm/r1;->realmGet$district()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-wide v3, v0, Lio/realm/q1$a;->k:J

    .line 75
    .line 76
    invoke-interface {p1}, Lio/realm/r1;->realmGet$reportStatus()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-wide v3, v0, Lio/realm/q1$a;->l:J

    .line 84
    .line 85
    invoke-interface {p1}, Lio/realm/r1;->realmGet$plate()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-wide v3, v0, Lio/realm/q1$a;->m:J

    .line 93
    .line 94
    invoke-interface {p1}, Lio/realm/r1;->realmGet$expireDate()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-wide v3, v0, Lio/realm/q1$a;->n:J

    .line 102
    .line 103
    invoke-interface {p1}, Lio/realm/r1;->realmGet$reportPartyId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-wide v3, v0, Lio/realm/q1$a;->o:J

    .line 111
    .line 112
    invoke-interface {p1}, Lio/realm/r1;->realmGet$id()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-wide v3, v0, Lio/realm/q1$a;->p:J

    .line 120
    .line 121
    invoke-interface {p1}, Lio/realm/r1;->realmGet$consolidatedStatus()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-wide v3, v0, Lio/realm/q1$a;->q:J

    .line 129
    .line 130
    invoke-interface {p1}, Lio/realm/r1;->realmGet$updateDate()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-wide v3, v0, Lio/realm/q1$a;->r:J

    .line 138
    .line 139
    invoke-interface {p1}, Lio/realm/r1;->realmGet$createDate()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-wide v3, v0, Lio/realm/q1$a;->s:J

    .line 147
    .line 148
    invoke-interface {p1}, Lio/realm/r1;->realmGet$status()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-wide v3, v0, Lio/realm/q1$a;->t:J

    .line 156
    .line 157
    invoke-interface {p1}, Lio/realm/r1;->realmGet$reportNumber()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Integer;)V

    .line 162
    .line 163
    .line 164
    iget-wide v3, v0, Lio/realm/q1$a;->u:J

    .line 165
    .line 166
    invoke-interface {p1}, Lio/realm/r1;->realmGet$vehiclePlateNumber()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-wide v3, v0, Lio/realm/q1$a;->v:J

    .line 174
    .line 175
    invoke-interface {p1}, Lio/realm/r1;->realmGet$vehiclePlateCityCode()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-wide v3, v0, Lio/realm/q1$a;->w:J

    .line 183
    .line 184
    invoke-interface {p1}, Lio/realm/r1;->realmGet$hasPdf()Z

    .line 185
    .line 186
    .line 187
    move-result p4

    .line 188
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object p4

    .line 192
    invoke-virtual {v2, v3, v4, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p1}, Lio/realm/r1;->realmGet$participants()Lio/realm/q0;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_1

    .line 200
    .line 201
    new-instance p4, Lio/realm/q0;

    .line 202
    .line 203
    invoke-direct {p4}, Lio/realm/q0;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-interface {p2}, Lio/realm/r1;->realmGet$participants()Lio/realm/q0;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v0, v0, Lio/realm/q0;->b:Lio/realm/x;

    .line 211
    .line 212
    iget-object v0, v0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 213
    .line 214
    invoke-virtual {v0}, Lio/realm/internal/OsList;->q()V

    .line 215
    .line 216
    .line 217
    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-virtual {p1}, Lio/realm/q0;->size()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-ge v1, v3, :cond_2

    .line 223
    .line 224
    invoke-virtual {p1, v1}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 229
    .line 230
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 235
    .line 236
    if-nez v4, :cond_0

    .line 237
    .line 238
    invoke-virtual {v0}, Lio/realm/internal/OsList;->n()J

    .line 239
    .line 240
    .line 241
    move-result-wide v4

    .line 242
    const-class v6, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 243
    .line 244
    invoke-virtual {p0, v6}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v6, v4, v5}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {p0, v4}, Lio/realm/y1;->d(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/y1;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p4, v4}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    new-instance v5, Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 265
    .line 266
    .line 267
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 268
    .line 269
    invoke-static {p0, v3, v4, v5}, Lio/realm/y1;->e(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;Ljava/util/Set;)V

    .line 270
    .line 271
    .line 272
    add-int/lit8 v1, v1, 0x1

    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 276
    .line 277
    const-string p1, "Embedded objects can only have one parent pointing to them. This object was already copied, so another object is pointing to it: cacheparticipants.toString()"

    .line 278
    .line 279
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p0

    .line 283
    :cond_1
    iget-wide p0, v0, Lio/realm/q1$a;->x:J

    .line 284
    .line 285
    new-instance p3, Lio/realm/q0;

    .line 286
    .line 287
    invoke-direct {p3}, Lio/realm/q0;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLio/realm/q0;)V

    .line 291
    .line 292
    .line 293
    :cond_2
    check-cast p2, Lio/realm/internal/n;

    .line 294
    .line 295
    invoke-virtual {v2, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->i(Lio/realm/internal/n;)V

    .line 296
    .line 297
    .line 298
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    check-cast v1, Lio/realm/q1$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/q1;->b:Lio/realm/f0;

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

    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    const-class v2, Lio/realm/q1;

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
    check-cast p1, Lio/realm/q1;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v3, p1, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object p1, p1, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/q1;->b:Lio/realm/f0;

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

.method public final realmGet$accidentDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->f:J

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

.method public final realmGet$city()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->i:J

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->p:J

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

.method public final realmGet$createDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->r:J

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

.method public final realmGet$district()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->j:J

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

.method public final realmGet$expireDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->m:J

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

.method public final realmGet$hasPdf()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->w:J

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

.method public final realmGet$id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->o:J

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

.method public final realmGet$participants()Lio/realm/q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->c:Lio/realm/q0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 14
    .line 15
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 16
    .line 17
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 18
    .line 19
    iget-wide v1, v1, Lio/realm/q1$a;->x:J

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
    iget-object v2, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 28
    .line 29
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 30
    .line 31
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 32
    .line 33
    invoke-direct {v1, v2, v0, v3}, Lio/realm/q0;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lio/realm/q1;->c:Lio/realm/q0;

    .line 37
    .line 38
    return-object v1
.end method

.method public final realmGet$plate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->l:J

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

.method public final realmGet$reportId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->h:J

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

.method public final realmGet$reportNumber()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->t:J

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    .line 28
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 29
    .line 30
    iget-wide v1, v1, Lio/realm/q1$a;->t:J

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

.method public final realmGet$reportPartyId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->n:J

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

.method public final realmGet$reportPartyStatus()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->e:J

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

.method public final realmGet$reportStatus()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->k:J

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

.method public final realmGet$role()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->g:J

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->s:J

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

.method public final realmGet$updateDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->q:J

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

.method public final realmGet$vehiclePlateCityCode()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->v:J

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

.method public final realmGet$vehiclePlateNumber()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/q1$a;->u:J

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

.method public final realmSet$accidentDate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->f:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->f:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->f:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->f:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$city(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->i:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->i:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->i:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->i:J

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->p:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->p:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->p:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->p:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$createDate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->r:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->r:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->r:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->r:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$district(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->j:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->j:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->j:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->j:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$expireDate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->m:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->m:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->m:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->m:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$hasPdf(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 19
    .line 20
    iget-wide v2, v2, Lio/realm/q1$a;->w:J

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 37
    .line 38
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    .line 40
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 41
    .line 42
    iget-wide v1, v1, Lio/realm/q1$a;->w:J

    .line 43
    .line 44
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->t(JZ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final realmSet$id(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->o:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->o:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->o:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->o:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$participants(Lio/realm/q0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    const-string v1, "participants"

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

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
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 82
    .line 83
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 84
    .line 85
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 89
    .line 90
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    .line 92
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 93
    .line 94
    iget-wide v3, v1, Lio/realm/q1$a;->x:J

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
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 126
    .line 127
    iget-object v4, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 168
    .line 169
    iget-object v4, p0, Lio/realm/q1;->b:Lio/realm/f0;

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

.method public final realmSet$plate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->l:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->l:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->l:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->l:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$reportId(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->h:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->h:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->h:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->h:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$reportNumber(Ljava/lang/Integer;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->t:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->t:J

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    iget-object p1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 63
    .line 64
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 65
    .line 66
    iget-wide v0, v0, Lio/realm/q1$a;->t:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 75
    .line 76
    iget-wide v1, v1, Lio/realm/q1$a;->t:J

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

.method public final realmSet$reportPartyId(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->n:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->n:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->n:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->n:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$reportPartyStatus(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->e:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->e:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->e:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->e:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$reportStatus(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->k:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->k:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->k:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->k:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$role(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->g:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->g:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->g:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->g:J

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
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->s:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->s:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->s:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->s:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$updateDate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->q:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->q:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->q:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->q:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$vehiclePlateCityCode(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->v:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->v:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->v:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->v:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$vehiclePlateNumber(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/q1$a;->u:J

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
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/q1$a;->u:J

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
    iget-object p1, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/q1$a;->u:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/q1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/q1;->a:Lio/realm/q1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/q1$a;->u:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
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

    const-string v1, "AccidentMergedReport = proxy[{reportPartyStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportPartyStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportPartyStatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{accidentDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$accidentDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$accidentDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$role()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$role()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{reportId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{city:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$city()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$city()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{district:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$district()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$district()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{reportStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportStatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{plate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$plate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$plate()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{expireDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{reportPartyId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportPartyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportPartyId()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{consolidatedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$consolidatedStatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{updateDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$updateDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$updateDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_d
    move-object v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{createDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$createDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$createDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_e
    move-object v1, v2

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_f
    move-object v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{reportNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportNumber()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$reportNumber()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_f

    :cond_10
    move-object v1, v2

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "},{vehiclePlateNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$vehiclePlateNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$vehiclePlateNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_11
    move-object v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{vehiclePlateCityCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$vehiclePlateCityCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$vehiclePlateCityCode()Ljava/lang/String;

    move-result-object v2

    :cond_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},{hasPdf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$hasPdf()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "},{participants:RealmList<AccidentReportParticipant>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/q1;->realmGet$participants()Lio/realm/q0;

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
