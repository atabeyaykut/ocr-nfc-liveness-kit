.class public Lio/realm/internal/OsObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObject$a;,
        Lio/realm/internal/OsObject$b;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J

.field private observerPairs:Lio/realm/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/k<",
            "Lio/realm/internal/OsObject$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsObject;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/realm/internal/k;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/realm/internal/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p2, Lio/realm/internal/UncheckedRow;->c:J

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->nativeCreate(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    .line 22
    .line 23
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lio/realm/internal/h;->a(Lio/realm/internal/i;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 2
    .line 3
    new-instance v1, Lio/realm/internal/UncheckedRow;

    .line 4
    .line 5
    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 6
    .line 7
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 8
    .line 9
    invoke-static {v2, v3}, Lio/realm/internal/OsObject;->nativeCreateNewObject(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-direct {v1, v0, p0, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public static createEmbeddedObject(Lio/realm/internal/Table;JJ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->a:J

    .line 2
    .line 3
    move-wide v2, p1

    .line 4
    move-wide v4, p3

    .line 5
    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsObject;->nativeCreateEmbeddedObject(JJJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static createRow(Lio/realm/internal/Table;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Table;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lio/realm/internal/OsObject;->nativeCreateRow(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J
    .locals 12

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 6
    .line 7
    iget-object v2, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    instance-of v0, p3, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "Primary key value is not a String: "

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 43
    .line 44
    move-object v6, p3

    .line 45
    check-cast v6, Ljava/lang/String;

    .line 46
    .line 47
    move-wide v4, p1

    .line 48
    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    return-wide p0

    .line 53
    :cond_2
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 54
    .line 55
    if-ne v0, v1, :cond_5

    .line 56
    .line 57
    if-nez p3, :cond_3

    .line 58
    .line 59
    const-wide/16 v0, 0x0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    :goto_1
    move-wide v9, v0

    .line 71
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    iget-wide v5, p0, Lio/realm/internal/Table;->a:J

    .line 76
    .line 77
    if-nez p3, :cond_4

    .line 78
    .line 79
    const/4 p0, 0x1

    .line 80
    const/4 v11, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 p0, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    :goto_2
    move-wide v7, p1

    .line 85
    invoke-static/range {v3 .. v11}, Lio/realm/internal/OsObject;->nativeCreateRowWithLongPrimaryKey(JJJJZ)J

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    return-wide p0

    .line 90
    :cond_5
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    if-ne v0, v1, :cond_9

    .line 94
    .line 95
    if-eqz p3, :cond_7

    .line 96
    .line 97
    instance-of v0, p3, Lorg/bson/types/ObjectId;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string p2, "Primary key value is not an ObjectId: "

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_7
    :goto_3
    if-nez p3, :cond_8

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    :goto_4
    move-object v10, v3

    .line 130
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    iget-wide v6, p0, Lio/realm/internal/Table;->a:J

    .line 135
    .line 136
    move-wide v8, p1

    .line 137
    invoke-static/range {v4 .. v10}, Lio/realm/internal/OsObject;->nativeCreateRowWithObjectIdPrimaryKey(JJJLjava/lang/String;)J

    .line 138
    .line 139
    .line 140
    move-result-wide p0

    .line 141
    return-wide p0

    .line 142
    :cond_9
    sget-object v1, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    .line 143
    .line 144
    if-ne v0, v1, :cond_d

    .line 145
    .line 146
    if-eqz p3, :cond_b

    .line 147
    .line 148
    instance-of v0, p3, Ljava/util/UUID;

    .line 149
    .line 150
    if-eqz v0, :cond_a

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string p2, "Primary key value is not an UUID: "

    .line 158
    .line 159
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_b
    :goto_5
    if-nez p3, :cond_c

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_c
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :goto_6
    move-object v10, v3

    .line 181
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    iget-wide v6, p0, Lio/realm/internal/Table;->a:J

    .line 186
    .line 187
    move-wide v8, p1

    .line 188
    invoke-static/range {v4 .. v10}, Lio/realm/internal/OsObject;->nativeCreateRowWithUUIDPrimaryKey(JJJLjava/lang/String;)J

    .line 189
    .line 190
    .line 191
    move-result-wide p0

    .line 192
    return-wide p0

    .line 193
    :cond_d
    new-instance p0, Lio/realm/exceptions/RealmException;

    .line 194
    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string p2, "Cannot check for duplicate rows for unsupported primary key type: "

    .line 198
    .line 199
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0
.end method

.method public static createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;
    .locals 11

    .line 1
    invoke-static {p0}, Lio/realm/internal/OsObject;->getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 10
    .line 11
    iget-object v2, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    instance-of v0, p1, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Primary key value is not a String: "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    new-instance v7, Lio/realm/internal/UncheckedRow;

    .line 43
    .line 44
    iget-object v8, v2, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 45
    .line 46
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 51
    .line 52
    move-object v6, p1

    .line 53
    check-cast v6, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-direct {v7, v8, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 60
    .line 61
    .line 62
    return-object v7

    .line 63
    :cond_2
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 64
    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    const-wide/16 v0, 0x0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    :goto_1
    move-wide v6, v0

    .line 81
    new-instance v9, Lio/realm/internal/UncheckedRow;

    .line 82
    .line 83
    iget-object v10, v2, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 84
    .line 85
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 90
    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    const/4 v8, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    const/4 p1, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    :goto_2
    invoke-static/range {v0 .. v8}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    invoke-direct {v9, v10, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 103
    .line 104
    .line 105
    return-object v9

    .line 106
    :cond_5
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    if-ne v0, v1, :cond_7

    .line 110
    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    move-object v6, v3

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    move-object v6, p1

    .line 120
    :goto_3
    new-instance p1, Lio/realm/internal/UncheckedRow;

    .line 121
    .line 122
    iget-object v7, v2, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 123
    .line 124
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 129
    .line 130
    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithObjectIdPrimaryKey(JJJLjava/lang/String;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    invoke-direct {p1, v7, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_7
    sget-object v1, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    .line 139
    .line 140
    if-ne v0, v1, :cond_9

    .line 141
    .line 142
    if-nez p1, :cond_8

    .line 143
    .line 144
    move-object v6, v3

    .line 145
    goto :goto_4

    .line 146
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    move-object v6, p1

    .line 151
    :goto_4
    new-instance p1, Lio/realm/internal/UncheckedRow;

    .line 152
    .line 153
    iget-object v7, v2, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 154
    .line 155
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 160
    .line 161
    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithUUIDPrimaryKey(JJJLjava/lang/String;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    invoke-direct {p1, v7, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 166
    .line 167
    .line 168
    return-object p1

    .line 169
    :cond_9
    new-instance p0, Lio/realm/exceptions/RealmException;

    .line 170
    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v1, "Cannot check for duplicate rows for unsupported primary key type: "

    .line 174
    .line 175
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0
.end method

.method private static getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->b(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->h(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " has no primary key defined."

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method private static native nativeCreate(JJ)J
.end method

.method private static native nativeCreateEmbeddedObject(JJJ)J
.end method

.method private static native nativeCreateNewObject(J)J
.end method

.method private static native nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateNewObjectWithObjectIdPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateNewObjectWithUUIDPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateRow(J)J
.end method

.method private static native nativeCreateRowWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateRowWithObjectIdPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeCreateRowWithUUIDPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private notifyChangeListeners([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    new-instance v1, Lio/realm/internal/OsObject$a;

    invoke-direct {v1, p1}, Lio/realm/internal/OsObject$a;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/k;->b(Lio/realm/internal/k$a;)V

    return-void
.end method


# virtual methods
.method public addListener(Lio/realm/s0;Lio/realm/w0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/s0;",
            ">(TT;",
            "Lio/realm/w0<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {v0}, Lio/realm/internal/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    :cond_0
    new-instance v0, Lio/realm/internal/OsObject$b;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/OsObject$b;-><init>(Lio/realm/s0;Lio/realm/w0;)V

    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {p1, v0}, Lio/realm/internal/k;->a(Lio/realm/internal/k$b;)V

    return-void
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    return-wide v0
.end method

.method public removeListener(Lio/realm/s0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/s0;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {v0, p1}, Lio/realm/internal/k;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {p1}, Lio/realm/internal/k;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public removeListener(Lio/realm/s0;Lio/realm/w0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/s0;",
            ">(TT;",
            "Lio/realm/w0<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/k;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {p1}, Lio/realm/internal/k;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public setObserverPairs(Lio/realm/internal/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/k<",
            "Lio/realm/internal/OsObject$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {v0}, Lio/realm/internal/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/k;

    invoke-virtual {p1}, Lio/realm/internal/k;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'observerPairs\' is not empty. Listeners have been added before."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
