.class public final Lio/realm/w1;
.super Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/w1$a;
    }
.end annotation


# static fields
.field public static final c:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/w1$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
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
    const-string v0, "AccidentReportMedia"

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x6

    .line 9
    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$a;-><init>(Ljava/lang/String;ZI)V

    .line 10
    .line 11
    .line 12
    const-string v1, "id"

    .line 13
    .line 14
    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, v6

    .line 24
    move-object v2, v9

    .line 25
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 26
    .line 27
    .line 28
    const-string v1, "name"

    .line 29
    .line 30
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 31
    .line 32
    .line 33
    const-string v1, "mediaType"

    .line 34
    .line 35
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 36
    .line 37
    .line 38
    const-string v1, "contentType"

    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 41
    .line 42
    .line 43
    const-string v1, "createDate"

    .line 44
    .line 45
    move v3, v12

    .line 46
    move v4, v8

    .line 47
    move v5, v13

    .line 48
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 49
    .line 50
    .line 51
    const-string v1, "updatedDate"

    .line 52
    .line 53
    move v3, v10

    .line 54
    move v4, v7

    .line 55
    move v5, v11

    .line 56
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$a;->b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$a;->c()Lio/realm/internal/OsObjectSchemaInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lio/realm/w1;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;-><init>()V

    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Lio/realm/w1$a;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/HashMap;Ljava/util/Set;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;
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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

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
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 96
    .line 97
    invoke-direct {v1, v0, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 98
    .line 99
    .line 100
    iget-wide v2, p1, Lio/realm/w1$a;->e:J

    .line 101
    .line 102
    invoke-interface {p2}, Lio/realm/x1;->realmGet$id()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-wide v2, p1, Lio/realm/w1$a;->f:J

    .line 110
    .line 111
    invoke-interface {p2}, Lio/realm/x1;->realmGet$name()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-wide v2, p1, Lio/realm/w1$a;->g:J

    .line 119
    .line 120
    invoke-interface {p2}, Lio/realm/x1;->realmGet$mediaType()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-wide v2, p1, Lio/realm/w1$a;->h:J

    .line 128
    .line 129
    invoke-interface {p2}, Lio/realm/x1;->realmGet$contentType()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-wide v2, p1, Lio/realm/w1$a;->i:J

    .line 137
    .line 138
    invoke-interface {p2}, Lio/realm/x1;->realmGet$createDate()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-virtual {v1, v2, v3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-wide v2, p1, Lio/realm/w1$a;->j:J

    .line 146
    .line 147
    invoke-interface {p2}, Lio/realm/x1;->realmGet$updatedDate()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()Lio/realm/internal/UncheckedRow;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p0, p1}, Lio/realm/w1;->e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/w1;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :goto_0
    return-object v0
.end method

.method public static d(Lio/realm/g0;Lio/realm/internal/Table;JJLtr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/HashMap;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    instance-of v2, v1, Lio/realm/internal/n;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-static/range {p6 .. p6}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lio/realm/internal/n;

    .line 16
    .line 17
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 30
    .line 31
    iget-object v3, v3, Lio/realm/a;->c:Lio/realm/o0;

    .line 32
    .line 33
    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 36
    .line 37
    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 50
    .line 51
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-wide v12, v3, Lio/realm/internal/Table;->a:J

    .line 62
    .line 63
    iget-object v0, v0, Lio/realm/g0;->j:Lio/realm/u;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lio/realm/w1$a;

    .line 70
    .line 71
    move-object v2, p1

    .line 72
    move-wide/from16 v3, p2

    .line 73
    .line 74
    move-wide/from16 v5, p4

    .line 75
    .line 76
    invoke-static {p1, v5, v6, v3, v4}, Lio/realm/internal/OsObject;->createEmbeddedObject(Lio/realm/internal/Table;JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    move-object/from16 v5, p7

    .line 85
    .line 86
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-interface/range {p6 .. p6}, Lio/realm/x1;->realmGet$id()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    iget-wide v6, v0, Lio/realm/w1$a;->e:J

    .line 94
    .line 95
    if-eqz v10, :cond_1

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    move-wide v4, v12

    .line 99
    move-wide v8, v2

    .line 100
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const/4 v10, 0x0

    .line 105
    move-wide v4, v12

    .line 106
    move-wide v8, v2

    .line 107
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-interface/range {p6 .. p6}, Lio/realm/x1;->realmGet$name()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    iget-wide v6, v0, Lio/realm/w1$a;->f:J

    .line 115
    .line 116
    if-eqz v10, :cond_2

    .line 117
    .line 118
    const/4 v11, 0x0

    .line 119
    move-wide v4, v12

    .line 120
    move-wide v8, v2

    .line 121
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const/4 v10, 0x0

    .line 126
    move-wide v4, v12

    .line 127
    move-wide v8, v2

    .line 128
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-interface/range {p6 .. p6}, Lio/realm/x1;->realmGet$mediaType()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    iget-wide v6, v0, Lio/realm/w1$a;->g:J

    .line 136
    .line 137
    if-eqz v10, :cond_3

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    move-wide v4, v12

    .line 141
    move-wide v8, v2

    .line 142
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    const/4 v10, 0x0

    .line 147
    move-wide v4, v12

    .line 148
    move-wide v8, v2

    .line 149
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-interface/range {p6 .. p6}, Lio/realm/x1;->realmGet$contentType()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    iget-wide v6, v0, Lio/realm/w1$a;->h:J

    .line 157
    .line 158
    if-eqz v10, :cond_4

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    move-wide v4, v12

    .line 162
    move-wide v8, v2

    .line 163
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    const/4 v10, 0x0

    .line 168
    move-wide v4, v12

    .line 169
    move-wide v8, v2

    .line 170
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 171
    .line 172
    .line 173
    :goto_3
    invoke-interface/range {p6 .. p6}, Lio/realm/x1;->realmGet$createDate()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    iget-wide v6, v0, Lio/realm/w1$a;->i:J

    .line 178
    .line 179
    if-eqz v10, :cond_5

    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    move-wide v4, v12

    .line 183
    move-wide v8, v2

    .line 184
    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    const/4 v10, 0x0

    .line 189
    move-wide v4, v12

    .line 190
    move-wide v8, v2

    .line 191
    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 192
    .line 193
    .line 194
    :goto_4
    invoke-interface/range {p6 .. p6}, Lio/realm/x1;->realmGet$updatedDate()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_6

    .line 199
    .line 200
    iget-wide v4, v0, Lio/realm/w1$a;->j:J

    .line 201
    .line 202
    const/4 v0, 0x0

    .line 203
    move-wide p0, v12

    .line 204
    move-wide/from16 p2, v4

    .line 205
    .line 206
    move-wide/from16 p4, v2

    .line 207
    .line 208
    move-object/from16 p6, v1

    .line 209
    .line 210
    move/from16 p7, v0

    .line 211
    .line 212
    invoke-static/range {p0 .. p7}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_6
    iget-wide v0, v0, Lio/realm/w1$a;->j:J

    .line 217
    .line 218
    const/4 v4, 0x0

    .line 219
    move-wide p0, v12

    .line 220
    move-wide/from16 p2, v0

    .line 221
    .line 222
    move-wide/from16 p4, v2

    .line 223
    .line 224
    move/from16 p6, v4

    .line 225
    .line 226
    invoke-static/range {p0 .. p6}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 227
    .line 228
    .line 229
    :goto_5
    return-void
.end method

.method public static e(Lio/realm/a;Lio/realm/internal/UncheckedRow;)Lio/realm/w1;
    .locals 7

    sget-object v0, Lio/realm/a;->h:Lio/realm/a$c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$b;

    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    move-result-object v1

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    invoke-virtual {v1, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$b;->b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V

    new-instance p0, Lio/realm/w1;

    invoke-direct {p0}, Lio/realm/w1;-><init>()V

    invoke-virtual {v0}, Lio/realm/a$b;->a()V

    return-object p0
.end method

.method public static f(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;Ljava/util/Set;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/g0;->j:Lio/realm/u;

    .line 2
    .line 3
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/realm/w1$a;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    .line 16
    .line 17
    invoke-direct {v1, p0, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    iget-wide v2, v0, Lio/realm/w1$a;->e:J

    .line 21
    .line 22
    invoke-interface {p1}, Lio/realm/x1;->realmGet$id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v2, v0, Lio/realm/w1$a;->f:J

    .line 30
    .line 31
    invoke-interface {p1}, Lio/realm/x1;->realmGet$name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-wide v2, v0, Lio/realm/w1$a;->g:J

    .line 39
    .line 40
    invoke-interface {p1}, Lio/realm/x1;->realmGet$mediaType()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-wide v2, v0, Lio/realm/w1$a;->h:J

    .line 48
    .line 49
    invoke-interface {p1}, Lio/realm/x1;->realmGet$contentType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide v2, v0, Lio/realm/w1$a;->i:J

    .line 57
    .line 58
    invoke-interface {p1}, Lio/realm/x1;->realmGet$createDate()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v2, v0, Lio/realm/w1$a;->j:J

    .line 66
    .line 67
    invoke-interface {p1}, Lio/realm/x1;->realmGet$updatedDate()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1, v2, v3, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f(JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    check-cast p2, Lio/realm/internal/n;

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->i(Lio/realm/internal/n;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    check-cast v1, Lio/realm/w1$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/w1;->b:Lio/realm/f0;

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

    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    const-class v2, Lio/realm/w1;

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
    check-cast p1, Lio/realm/w1;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v3, p1, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object p1, p1, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v2, p0, Lio/realm/w1;->b:Lio/realm/f0;

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

.method public final realmGet$contentType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/w1$a;->h:J

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
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/w1$a;->i:J

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
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/w1$a;->e:J

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

.method public final realmGet$mediaType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/w1$a;->g:J

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

.method public final realmGet$name()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/w1$a;->f:J

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

.method public final realmGet$updatedDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/w1$a;->j:J

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

.method public final realmSet$contentType(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/w1$a;->h:J

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/w1$a;->h:J

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
    iget-object p1, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/w1$a;->h:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/w1$a;->h:J

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
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/w1$a;->i:J

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/w1$a;->i:J

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
    iget-object p1, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/w1$a;->i:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/w1$a;->i:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$id(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/w1$a;->e:J

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/w1$a;->e:J

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
    iget-object p1, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/w1$a;->e:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/w1$a;->e:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$mediaType(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/w1$a;->g:J

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/w1$a;->g:J

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
    iget-object p1, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/w1$a;->g:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/w1$a;->g:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$name(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/w1$a;->f:J

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/w1$a;->f:J

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
    iget-object p1, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/w1$a;->f:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/w1$a;->f:J

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/p;->o(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final realmSet$updatedDate(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/w1$a;->j:J

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
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/w1$a;->j:J

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
    iget-object p1, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 57
    .line 58
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    .line 60
    iget-object v0, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 61
    .line 62
    iget-wide v0, v0, Lio/realm/w1$a;->j:J

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lio/realm/w1;->b:Lio/realm/f0;

    .line 69
    .line 70
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    .line 72
    iget-object v1, p0, Lio/realm/w1;->a:Lio/realm/w1$a;

    .line 73
    .line 74
    iget-wide v1, v1, Lio/realm/w1$a;->j:J

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

    .line 1
    invoke-static {p0}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Invalid object"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "AccidentReportMedia = proxy[{id:"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$id()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "null"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$id()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "},{name:"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v1, v2

    .line 51
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "},{mediaType:"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$mediaType()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$mediaType()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move-object v1, v2

    .line 71
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "},{contentType:"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$contentType()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$contentType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move-object v1, v2

    .line 91
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, "},{createDate:"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$createDate()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$createDate()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    move-object v1, v2

    .line 111
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, "},{updatedDate:"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$updatedDate()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {p0}, Lio/realm/w1;->realmGet$updatedDate()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_6
    const-string v1, "}]"

    .line 130
    .line 131
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method
