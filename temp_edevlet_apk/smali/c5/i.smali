.class public final Lc5/i;
.super Lc5/j7;
.source "SourceFile"


# static fields
.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;

.field public static final n:[Ljava/lang/String;


# instance fields
.field public final d:Lc5/h;

.field public final e:Lc5/f7;


# direct methods
.method public static constructor <clinit>()V
    .locals 55

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const-string v10, "current_session_count"

    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->f:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->g:[Ljava/lang/String;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const-string v47, "dynamite_version"

    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    const-string v49, "safelisted_events"

    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    const-string v51, "ga_app_id"

    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    const-string v53, "config_last_modified_time"

    const-string v54, "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"

    filled-new-array/range {v1 .. v54}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->h:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->j:[Ljava/lang/String;

    const-string v0, "retry_count"

    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    const-string v2, "has_realtime"

    const-string v3, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->k:[Ljava/lang/String;

    const-string v0, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    const-string v1, "session_scoped"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->l:[Ljava/lang/String;

    const-string v0, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->m:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc5/i;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc5/o7;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc5/j7;-><init>(Lc5/o7;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lc5/f7;

    .line 5
    .line 6
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    check-cast v0, Lc5/i4;

    .line 9
    .line 10
    iget-object v0, v0, Lc5/i4;->p:Lc5/w;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lc5/f7;-><init>(Lw3/a;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lc5/i;->e:Lc5/f7;

    .line 16
    .line 17
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    check-cast p1, Lc5/i4;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lc5/h;

    .line 25
    .line 26
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 27
    .line 28
    check-cast v0, Lc5/i4;

    .line 29
    .line 30
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {p1, p0, v0}, Lc5/h;-><init>(Lc5/i;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lc5/i;->d:Lc5/h;

    .line 36
    .line 37
    return-void
.end method

.method public static final w(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "value"

    invoke-static {v0}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_1
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)J
    .locals 18
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    const-string v0, "select first_open_count from app2 where app_id=?"

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "first_open_count"

    .line 13
    .line 14
    invoke-static {v4}, Lr3/r;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 28
    .line 29
    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const/16 v9, 0x30

    .line 35
    .line 36
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    new-array v9, v0, [Ljava/lang/String;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    aput-object v2, v9, v10

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-wide/16 v11, -0x1

    .line 53
    .line 54
    invoke-virtual {v1, v8, v9, v11, v12}, Lc5/i;->z(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const-string v13, "app2"

    .line 59
    .line 60
    const-string v14, "app_id"

    .line 61
    .line 62
    cmp-long v15, v8, v11

    .line 63
    .line 64
    if-nez v15, :cond_1

    .line 65
    .line 66
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    .line 67
    .line 68
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v8, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    .line 80
    .line 81
    const-string v15, "previous_install_count"

    .line 82
    .line 83
    invoke-virtual {v8, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v15, 0x5

    .line 88
    invoke-virtual {v5, v13, v9, v8, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    cmp-long v15, v8, v11

    .line 93
    .line 94
    if-nez v15, :cond_0

    .line 95
    .line 96
    move-object v0, v3

    .line 97
    check-cast v0, Lc5/i4;

    .line 98
    .line 99
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 100
    .line 101
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 105
    .line 106
    const-string v8, "Failed to insert column (got -1). appId"

    .line 107
    .line 108
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v0, v9, v8, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 116
    .line 117
    .line 118
    return-wide v11

    .line 119
    :cond_0
    move-wide v8, v6

    .line 120
    :cond_1
    :try_start_2
    new-instance v15, Landroid/content/ContentValues;

    .line 121
    .line 122
    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v15, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-wide/16 v16, 0x1

    .line 129
    .line 130
    add-long v16, v8, v16

    .line 131
    .line 132
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    invoke-virtual {v15, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    .line 138
    .line 139
    new-array v0, v0, [Ljava/lang/String;

    .line 140
    .line 141
    aput-object v2, v0, v10

    .line 142
    .line 143
    const-string v10, "app_id = ?"

    .line 144
    .line 145
    invoke-virtual {v5, v13, v15, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    int-to-long v13, v0

    .line 150
    cmp-long v0, v13, v6

    .line 151
    .line 152
    if-nez v0, :cond_2

    .line 153
    .line 154
    move-object v0, v3

    .line 155
    check-cast v0, Lc5/i4;

    .line 156
    .line 157
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 158
    .line 159
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 163
    .line 164
    const-string v6, "Failed to update column (got 0). appId"

    .line 165
    .line 166
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v0, v7, v6, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 174
    .line 175
    .line 176
    return-wide v11

    .line 177
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    move-wide v6, v8

    .line 186
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    goto :goto_2

    .line 189
    :catch_1
    move-exception v0

    .line 190
    :goto_0
    :try_start_4
    check-cast v3, Lc5/i4;

    .line 191
    .line 192
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 193
    .line 194
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 198
    .line 199
    const-string v8, "Error inserting column. appId"

    .line 200
    .line 201
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v3, v8, v2, v4, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 209
    .line 210
    .line 211
    move-wide v8, v6

    .line 212
    :goto_1
    return-wide v8

    .line 213
    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    .line 215
    .line 216
    throw v0
.end method

.method public final B(Ljava/lang/String;)J
    .locals 3

    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lc5/i;->z(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lc5/i;->d:Lc5/h;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc5/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 13
    .line 14
    check-cast v1, Lc5/i4;

    .line 15
    .line 16
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 17
    .line 18
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "Error opening database"

    .line 22
    .line 23
    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final D(Ljava/lang/String;)Lc5/m4;
    .locals 34
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "app_instance_id"

    .line 22
    .line 23
    const-string v7, "gmp_app_id"

    .line 24
    .line 25
    const-string v8, "resettable_device_id_hash"

    .line 26
    .line 27
    const-string v9, "last_bundle_index"

    .line 28
    .line 29
    const-string v10, "last_bundle_start_timestamp"

    .line 30
    .line 31
    const-string v11, "last_bundle_end_timestamp"

    .line 32
    .line 33
    const-string v12, "app_version"

    .line 34
    .line 35
    const-string v13, "app_store"

    .line 36
    .line 37
    const-string v14, "gmp_version"

    .line 38
    .line 39
    const-string v15, "dev_cert_hash"

    .line 40
    .line 41
    const-string v16, "measurement_enabled"

    .line 42
    .line 43
    const-string v17, "day"

    .line 44
    .line 45
    const-string v18, "daily_public_events_count"

    .line 46
    .line 47
    const-string v19, "daily_events_count"

    .line 48
    .line 49
    const-string v20, "daily_conversions_count"

    .line 50
    .line 51
    const-string v21, "config_fetched_time"

    .line 52
    .line 53
    const-string v22, "failed_config_fetch_time"

    .line 54
    .line 55
    const-string v23, "app_version_int"

    .line 56
    .line 57
    const-string v24, "firebase_instance_id"

    .line 58
    .line 59
    const-string v25, "daily_error_events_count"

    .line 60
    .line 61
    const-string v26, "daily_realtime_events_count"

    .line 62
    .line 63
    const-string v27, "health_monitor_sample"

    .line 64
    .line 65
    const-string v28, "android_id"

    .line 66
    .line 67
    const-string v29, "adid_reporting_enabled"

    .line 68
    .line 69
    const-string v30, "admob_app_id"

    .line 70
    .line 71
    const-string v31, "dynamite_version"

    .line 72
    .line 73
    const-string v32, "safelisted_events"

    .line 74
    .line 75
    const-string v33, "ga_app_id"

    .line 76
    .line 77
    filled-new-array/range {v6 .. v33}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const/4 v0, 0x1

    .line 82
    new-array v9, v0, [Ljava/lang/String;

    .line 83
    .line 84
    const/4 v13, 0x0

    .line 85
    aput-object v2, v9, v13

    .line 86
    .line 87
    const-string v6, "apps"

    .line 88
    .line 89
    const-string v8, "app_id=?"

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    const/4 v12, 0x0

    .line 94
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 95
    .line 96
    .line 97
    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    .line 100
    .line 101
    move-result v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    if-nez v6, :cond_0

    .line 103
    .line 104
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 105
    .line 106
    .line 107
    return-object v4

    .line 108
    :cond_0
    :try_start_2
    new-instance v6, Lc5/m4;

    .line 109
    .line 110
    iget-object v7, v1, Lc5/i7;->b:Lc5/o7;

    .line 111
    .line 112
    iget-object v7, v7, Lc5/o7;->m:Lc5/i4;

    .line 113
    .line 114
    invoke-direct {v6, v7, v2}, Lc5/m4;-><init>(Lc5/i4;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v7, v6, Lc5/m4;->a:Lc5/i4;

    .line 118
    .line 119
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v6, v8}, Lc5/m4;->c(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v6, v8}, Lc5/m4;->r(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v8, 0x2

    .line 134
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v6, v8}, Lc5/m4;->y(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 v8, 0x3

    .line 142
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    invoke-virtual {v6, v8, v9}, Lc5/m4;->v(J)V

    .line 147
    .line 148
    .line 149
    const/4 v8, 0x4

    .line 150
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v8

    .line 154
    invoke-virtual {v6, v8, v9}, Lc5/m4;->w(J)V

    .line 155
    .line 156
    .line 157
    const/4 v8, 0x5

    .line 158
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v8

    .line 162
    invoke-virtual {v6, v8, v9}, Lc5/m4;->u(J)V

    .line 163
    .line 164
    .line 165
    const/4 v8, 0x6

    .line 166
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v6, v8}, Lc5/m4;->e(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 v8, 0x7

    .line 174
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v6, v8}, Lc5/m4;->d(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const/16 v8, 0x8

    .line 182
    .line 183
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    invoke-virtual {v6, v8, v9}, Lc5/m4;->s(J)V

    .line 188
    .line 189
    .line 190
    const/16 v8, 0x9

    .line 191
    .line 192
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    invoke-virtual {v6, v8, v9}, Lc5/m4;->n(J)V

    .line 197
    .line 198
    .line 199
    const/16 v8, 0xa

    .line 200
    .line 201
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-nez v9, :cond_2

    .line 206
    .line 207
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_1

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_1
    const/4 v8, 0x0

    .line 215
    goto :goto_1

    .line 216
    :cond_2
    :goto_0
    const/4 v8, 0x1

    .line 217
    :goto_1
    invoke-virtual {v6, v8}, Lc5/m4;->x(Z)V

    .line 218
    .line 219
    .line 220
    const/16 v8, 0xb

    .line 221
    .line 222
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 223
    .line 224
    .line 225
    move-result-wide v8

    .line 226
    invoke-virtual {v6, v8, v9}, Lc5/m4;->m(J)V

    .line 227
    .line 228
    .line 229
    const/16 v8, 0xc

    .line 230
    .line 231
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 232
    .line 233
    .line 234
    move-result-wide v8

    .line 235
    invoke-virtual {v6, v8, v9}, Lc5/m4;->k(J)V

    .line 236
    .line 237
    .line 238
    const/16 v8, 0xd

    .line 239
    .line 240
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 241
    .line 242
    .line 243
    move-result-wide v8

    .line 244
    invoke-virtual {v6, v8, v9}, Lc5/m4;->j(J)V

    .line 245
    .line 246
    .line 247
    const/16 v8, 0xe

    .line 248
    .line 249
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    invoke-virtual {v6, v8, v9}, Lc5/m4;->h(J)V

    .line 254
    .line 255
    .line 256
    const/16 v8, 0xf

    .line 257
    .line 258
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 259
    .line 260
    .line 261
    move-result-wide v8

    .line 262
    invoke-virtual {v6, v8, v9}, Lc5/m4;->g(J)V

    .line 263
    .line 264
    .line 265
    const/16 v8, 0x10

    .line 266
    .line 267
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 268
    .line 269
    .line 270
    move-result-wide v8

    .line 271
    iget-object v10, v7, Lc5/i4;->k:Lc5/h4;

    .line 272
    .line 273
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v10}, Lc5/h4;->b()V

    .line 277
    .line 278
    .line 279
    iget-boolean v10, v6, Lc5/m4;->D:Z

    .line 280
    .line 281
    iget-wide v11, v6, Lc5/m4;->F:J

    .line 282
    .line 283
    cmp-long v14, v11, v8

    .line 284
    .line 285
    if-eqz v14, :cond_3

    .line 286
    .line 287
    const/4 v11, 0x1

    .line 288
    goto :goto_2

    .line 289
    :cond_3
    const/4 v11, 0x0

    .line 290
    :goto_2
    or-int/2addr v10, v11

    .line 291
    iput-boolean v10, v6, Lc5/m4;->D:Z

    .line 292
    .line 293
    iput-wide v8, v6, Lc5/m4;->F:J

    .line 294
    .line 295
    const/16 v8, 0x11

    .line 296
    .line 297
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    if-eqz v9, :cond_4

    .line 302
    .line 303
    const-wide/32 v8, -0x80000000

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_4
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    int-to-long v8, v8

    .line 312
    :goto_3
    invoke-virtual {v6, v8, v9}, Lc5/m4;->f(J)V

    .line 313
    .line 314
    .line 315
    const/16 v8, 0x12

    .line 316
    .line 317
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    invoke-virtual {v6, v8}, Lc5/m4;->p(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const/16 v8, 0x13

    .line 325
    .line 326
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v8

    .line 330
    invoke-virtual {v6, v8, v9}, Lc5/m4;->i(J)V

    .line 331
    .line 332
    .line 333
    const/16 v8, 0x14

    .line 334
    .line 335
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v8

    .line 339
    invoke-virtual {v6, v8, v9}, Lc5/m4;->l(J)V

    .line 340
    .line 341
    .line 342
    const/16 v8, 0x15

    .line 343
    .line 344
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    invoke-virtual {v6, v8}, Lc5/m4;->t(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    move-object v8, v3

    .line 352
    check-cast v8, Lc5/i4;

    .line 353
    .line 354
    iget-object v8, v8, Lc5/i4;->g:Lc5/e;

    .line 355
    .line 356
    sget-object v9, Lc5/r2;->l0:Lc5/q2;

    .line 357
    .line 358
    invoke-virtual {v8, v4, v9}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    const-wide/16 v9, 0x0

    .line 363
    .line 364
    if-nez v8, :cond_6

    .line 365
    .line 366
    const/16 v8, 0x16

    .line 367
    .line 368
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    if-eqz v11, :cond_5

    .line 373
    .line 374
    move-wide v11, v9

    .line 375
    goto :goto_4

    .line 376
    :cond_5
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 377
    .line 378
    .line 379
    move-result-wide v11

    .line 380
    :goto_4
    invoke-virtual {v6, v11, v12}, Lc5/m4;->b(J)V

    .line 381
    .line 382
    .line 383
    :cond_6
    const/16 v8, 0x17

    .line 384
    .line 385
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 386
    .line 387
    .line 388
    move-result v11

    .line 389
    if-nez v11, :cond_8

    .line 390
    .line 391
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    if-eqz v8, :cond_7

    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_7
    const/4 v8, 0x0

    .line 399
    goto :goto_6

    .line 400
    :cond_8
    :goto_5
    const/4 v8, 0x1

    .line 401
    :goto_6
    iget-object v11, v7, Lc5/i4;->k:Lc5/h4;

    .line 402
    .line 403
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v11}, Lc5/h4;->b()V

    .line 407
    .line 408
    .line 409
    iget-boolean v11, v6, Lc5/m4;->D:Z

    .line 410
    .line 411
    iget-boolean v12, v6, Lc5/m4;->q:Z

    .line 412
    .line 413
    if-eq v12, v8, :cond_9

    .line 414
    .line 415
    goto :goto_7

    .line 416
    :cond_9
    const/4 v0, 0x0

    .line 417
    :goto_7
    or-int/2addr v0, v11

    .line 418
    iput-boolean v0, v6, Lc5/m4;->D:Z

    .line 419
    .line 420
    iput-boolean v8, v6, Lc5/m4;->q:Z

    .line 421
    .line 422
    const/16 v0, 0x18

    .line 423
    .line 424
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v6, v0}, Lc5/m4;->a(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const/16 v0, 0x19

    .line 432
    .line 433
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 434
    .line 435
    .line 436
    move-result v8

    .line 437
    if-eqz v8, :cond_a

    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 441
    .line 442
    .line 443
    move-result-wide v9

    .line 444
    :goto_8
    invoke-virtual {v6, v9, v10}, Lc5/m4;->o(J)V

    .line 445
    .line 446
    .line 447
    const/16 v0, 0x1a

    .line 448
    .line 449
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-nez v8, :cond_b

    .line 454
    .line 455
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    const-string v8, ","

    .line 460
    .line 461
    const/4 v9, -0x1

    .line 462
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v6, v0}, Lc5/m4;->z(Ljava/util/List;)V

    .line 471
    .line 472
    .line 473
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 474
    .line 475
    .line 476
    move-object v0, v3

    .line 477
    check-cast v0, Lc5/i4;

    .line 478
    .line 479
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 480
    .line 481
    sget-object v8, Lc5/r2;->c0:Lc5/q2;

    .line 482
    .line 483
    invoke-virtual {v0, v2, v8}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_c

    .line 488
    .line 489
    const/16 v0, 0x1b

    .line 490
    .line 491
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v6, v0}, Lc5/m4;->q(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_c
    iget-object v0, v7, Lc5/i4;->k:Lc5/h4;

    .line 499
    .line 500
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 504
    .line 505
    .line 506
    iput-boolean v13, v6, Lc5/m4;->D:Z

    .line 507
    .line 508
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_d

    .line 513
    .line 514
    move-object v0, v3

    .line 515
    check-cast v0, Lc5/i4;

    .line 516
    .line 517
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 518
    .line 519
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 520
    .line 521
    .line 522
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 523
    .line 524
    const-string v7, "Got multiple records for app, expected one. appId"

    .line 525
    .line 526
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 527
    .line 528
    .line 529
    move-result-object v8

    .line 530
    invoke-virtual {v0, v8, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 531
    .line 532
    .line 533
    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 534
    .line 535
    .line 536
    return-object v6

    .line 537
    :catch_0
    move-exception v0

    .line 538
    goto :goto_9

    .line 539
    :catchall_0
    move-exception v0

    .line 540
    goto :goto_a

    .line 541
    :catch_1
    move-exception v0

    .line 542
    move-object v5, v4

    .line 543
    :goto_9
    :try_start_3
    check-cast v3, Lc5/i4;

    .line 544
    .line 545
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 546
    .line 547
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 548
    .line 549
    .line 550
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 551
    .line 552
    const-string v6, "Error querying app. appId"

    .line 553
    .line 554
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-virtual {v3, v2, v6, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 559
    .line 560
    .line 561
    if-eqz v5, :cond_e

    .line 562
    .line 563
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 564
    .line 565
    .line 566
    :cond_e
    return-object v4

    .line 567
    :catchall_1
    move-exception v0

    .line 568
    move-object v4, v5

    .line 569
    :goto_a
    if-eqz v4, :cond_f

    .line 570
    .line 571
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 572
    .line 573
    .line 574
    :cond_f
    throw v0
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;)Lc5/b;
    .locals 31
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    iget-object v0, v1, Lc5/i7;->b:Lc5/o7;

    .line 6
    .line 7
    iget-object v9, v1, Lc5/x4;->a:Lc5/z4;

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    .line 19
    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    const-string v12, "origin"

    .line 27
    .line 28
    const-string v13, "value"

    .line 29
    .line 30
    const-string v14, "active"

    .line 31
    .line 32
    const-string v15, "trigger_event_name"

    .line 33
    .line 34
    const-string v16, "trigger_timeout"

    .line 35
    .line 36
    const-string v17, "timed_out_event"

    .line 37
    .line 38
    const-string v18, "creation_timestamp"

    .line 39
    .line 40
    const-string v19, "triggered_event"

    .line 41
    .line 42
    const-string v20, "triggered_timestamp"

    .line 43
    .line 44
    const-string v21, "time_to_live"

    .line 45
    .line 46
    const-string v22, "expired_event"

    .line 47
    .line 48
    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    const/4 v2, 0x2

    .line 53
    new-array v15, v2, [Ljava/lang/String;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    aput-object p1, v15, v3

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    aput-object v8, v15, v4

    .line 60
    .line 61
    const-string v12, "conditional_properties"

    .line 62
    .line 63
    const-string v14, "app_id=? and name=?"

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 72
    .line 73
    .line 74
    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    .line 77
    .line 78
    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    if-nez v5, :cond_0

    .line 80
    .line 81
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 82
    .line 83
    .line 84
    return-object v10

    .line 85
    :cond_0
    :try_start_2
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-nez v5, :cond_1

    .line 90
    .line 91
    const-string v5, ""

    .line 92
    .line 93
    :cond_1
    move-object/from16 v18, v5

    .line 94
    .line 95
    invoke-virtual {v1, v11, v4}, Lc5/i;->J(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    const/16 v22, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const/16 v22, 0x0

    .line 109
    .line 110
    :goto_0
    const/4 v2, 0x3

    .line 111
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v23

    .line 115
    const/4 v2, 0x4

    .line 116
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v25

    .line 120
    iget-object v2, v0, Lc5/o7;->g:Lc5/q7;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    .line 122
    iget-object v0, v0, Lc5/o7;->g:Lc5/q7;

    .line 123
    .line 124
    :try_start_3
    invoke-static {v2}, Lc5/o7;->I(Lc5/j7;)V

    .line 125
    .line 126
    .line 127
    const/4 v3, 0x5

    .line 128
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    sget-object v4, Lc5/s;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 133
    .line 134
    invoke-virtual {v2, v3, v4}, Lc5/q7;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object/from16 v24, v2

    .line 139
    .line 140
    check-cast v24, Lc5/s;

    .line 141
    .line 142
    const/4 v2, 0x6

    .line 143
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v20

    .line 147
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 148
    .line 149
    .line 150
    const/4 v2, 0x7

    .line 151
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v2, v4}, Lc5/q7;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object/from16 v27, v2

    .line 160
    .line 161
    check-cast v27, Lc5/s;

    .line 162
    .line 163
    const/16 v2, 0x8

    .line 164
    .line 165
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v6

    .line 169
    const/16 v2, 0x9

    .line 170
    .line 171
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v28

    .line 175
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 176
    .line 177
    .line 178
    const/16 v2, 0xa

    .line 179
    .line 180
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v0, v2, v4}, Lc5/q7;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    move-object/from16 v30, v0

    .line 189
    .line 190
    check-cast v30, Lc5/s;

    .line 191
    .line 192
    new-instance v19, Lc5/r7;

    .line 193
    .line 194
    move-object/from16 v2, v19

    .line 195
    .line 196
    move-wide v3, v6

    .line 197
    move-object/from16 v6, p2

    .line 198
    .line 199
    move-object/from16 v7, v18

    .line 200
    .line 201
    invoke-direct/range {v2 .. v7}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lc5/b;

    .line 205
    .line 206
    move-object/from16 v16, v0

    .line 207
    .line 208
    move-object/from16 v17, p1

    .line 209
    .line 210
    invoke-direct/range {v16 .. v30}, Lc5/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lc5/r7;JZLjava/lang/String;Lc5/s;JLc5/s;JLc5/s;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_3

    .line 218
    .line 219
    move-object v2, v9

    .line 220
    check-cast v2, Lc5/i4;

    .line 221
    .line 222
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 223
    .line 224
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 228
    .line 229
    const-string v3, "Got multiple records for conditional property, expected one"

    .line 230
    .line 231
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    move-object v5, v9

    .line 236
    check-cast v5, Lc5/i4;

    .line 237
    .line 238
    iget-object v5, v5, Lc5/i4;->n:Lc5/z2;

    .line 239
    .line 240
    invoke-virtual {v5, v8}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v2, v4, v3, v5}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .line 246
    .line 247
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 248
    .line 249
    .line 250
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    goto :goto_1

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    goto :goto_2

    .line 255
    :catch_1
    move-exception v0

    .line 256
    move-object v11, v10

    .line 257
    :goto_1
    :try_start_4
    move-object v2, v9

    .line 258
    check-cast v2, Lc5/i4;

    .line 259
    .line 260
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 261
    .line 262
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 263
    .line 264
    .line 265
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 266
    .line 267
    const-string v3, "Error querying conditional property"

    .line 268
    .line 269
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    check-cast v9, Lc5/i4;

    .line 274
    .line 275
    iget-object v5, v9, Lc5/i4;->n:Lc5/z2;

    .line 276
    .line 277
    invoke-virtual {v5, v8}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-virtual {v2, v3, v4, v5, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    .line 283
    .line 284
    if-eqz v11, :cond_4

    .line 285
    .line 286
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 287
    .line 288
    .line 289
    :cond_4
    return-object v10

    .line 290
    :catchall_1
    move-exception v0

    .line 291
    move-object v10, v11

    .line 292
    :goto_2
    if-eqz v10, :cond_5

    .line 293
    .line 294
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 295
    .line 296
    .line 297
    :cond_5
    throw v0
.end method

.method public final F(JLjava/lang/String;ZZ)Lc5/g;
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v8, p4

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lc5/i;->G(JLjava/lang/String;JZZZZZ)Lc5/g;

    move-result-object v0

    return-object v0
.end method

.method public final G(JLjava/lang/String;JZZZZZ)Lc5/g;
    .locals 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    invoke-static/range {p3 .. p3}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    new-instance v5, Lc5/g;

    invoke-direct {v5}, Lc5/g;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v7, "day"

    const-string v8, "daily_events_count"

    const-string v9, "daily_public_events_count"

    const-string v10, "daily_conversions_count"

    const-string v11, "daily_error_events_count"

    const-string v12, "daily_realtime_events_count"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v9

    new-array v11, v0, [Ljava/lang/String;

    aput-object p3, v11, v4

    const-string v8, "apps"

    const-string v10, "app_id=?"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v15

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v0, v2

    check-cast v0, Lc5/i4;

    .line 1
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 2
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 3
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v3, "Not updating daily counts, app is not known. appId"

    .line 4
    invoke-static/range {p3 .. p3}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v5

    :cond_0
    :try_start_1
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v4, v7, p1

    if-nez v4, :cond_1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lc5/g;->b:J

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lc5/g;->a:J

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lc5/g;->c:J

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lc5/g;->d:J

    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lc5/g;->e:J

    :cond_1
    if-eqz p6, :cond_2

    iget-wide v7, v5, Lc5/g;->b:J

    add-long v7, v7, p4

    iput-wide v7, v5, Lc5/g;->b:J

    :cond_2
    if-eqz p7, :cond_3

    iget-wide v7, v5, Lc5/g;->a:J

    add-long v7, v7, p4

    iput-wide v7, v5, Lc5/g;->a:J

    :cond_3
    if-eqz p8, :cond_4

    iget-wide v7, v5, Lc5/g;->c:J

    add-long v7, v7, p4

    iput-wide v7, v5, Lc5/g;->c:J

    :cond_4
    if-eqz p9, :cond_5

    iget-wide v7, v5, Lc5/g;->d:J

    add-long v7, v7, p4

    iput-wide v7, v5, Lc5/g;->d:J

    :cond_5
    if-eqz p10, :cond_6

    iget-wide v7, v5, Lc5/g;->e:J

    add-long v7, v7, p4

    iput-wide v7, v5, Lc5/g;->e:J

    :cond_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "day"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_public_events_count"

    iget-wide v7, v5, Lc5/g;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_events_count"

    iget-wide v7, v5, Lc5/g;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_conversions_count"

    iget-wide v7, v5, Lc5/g;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_error_events_count"

    iget-wide v7, v5, Lc5/g;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "daily_realtime_events_count"

    iget-wide v7, v5, Lc5/g;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "apps"

    const-string v7, "app_id=?"

    invoke-virtual {v15, v4, v0, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    check-cast v2, Lc5/i4;

    .line 5
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 6
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 7
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    const-string v3, "Error updating daily counts. appId"

    .line 8
    invoke-static/range {p3 .. p3}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v5

    :goto_0
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;)Lc5/o;
    .locals 27
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v15, p2

    .line 4
    .line 5
    iget-object v13, v1, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    const-string v2, "lifetime_count"

    .line 22
    .line 23
    const-string v3, "current_bundle_count"

    .line 24
    .line 25
    const-string v4, "last_fire_timestamp"

    .line 26
    .line 27
    const-string v5, "last_bundled_timestamp"

    .line 28
    .line 29
    const-string v6, "last_bundled_day"

    .line 30
    .line 31
    const-string v7, "last_sampled_complex_event_id"

    .line 32
    .line 33
    const-string v8, "last_sampling_rate"

    .line 34
    .line 35
    const-string v9, "last_exempt_from_sampling"

    .line 36
    .line 37
    const-string v10, "current_session_count"

    .line 38
    .line 39
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    const/16 v19, 0x0

    .line 51
    .line 52
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v10, 0x0

    .line 57
    new-array v3, v10, [Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    move-object v4, v0

    .line 64
    check-cast v4, [Ljava/lang/String;

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    new-array v6, v0, [Ljava/lang/String;

    .line 68
    .line 69
    aput-object p1, v6, v10

    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    aput-object v15, v6, v11

    .line 73
    .line 74
    const-string v3, "events"

    .line 75
    .line 76
    const-string v5, "app_id=? and name=?"

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    .line 83
    .line 84
    move-result-object v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    .line 87
    .line 88
    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    if-nez v2, :cond_0

    .line 90
    .line 91
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 92
    .line 93
    .line 94
    return-object v19

    .line 95
    :cond_0
    :try_start_2
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v16

    .line 107
    const/4 v0, 0x3

    .line 108
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const-wide/16 v3, 0x0

    .line 113
    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    move-wide/from16 v20, v3

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v20

    .line 123
    :goto_0
    const/4 v0, 0x4

    .line 124
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    move-object/from16 v0, v19

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v22

    .line 137
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_1
    const/4 v2, 0x5

    .line 142
    invoke-interface {v14, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-eqz v9, :cond_3

    .line 147
    .line 148
    move-object/from16 v18, v19

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_3
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 152
    .line 153
    .line 154
    move-result-wide v22

    .line 155
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object/from16 v18, v2

    .line 160
    .line 161
    :goto_2
    const/4 v2, 0x6

    .line 162
    invoke-interface {v14, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_4

    .line 167
    .line 168
    move-object/from16 v22, v19

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v22

    .line 175
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    move-object/from16 v22, v2

    .line 180
    .line 181
    :goto_3
    const/4 v2, 0x7

    .line 182
    invoke-interface {v14, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-nez v9, :cond_6

    .line 187
    .line 188
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v23

    .line 192
    const-wide/16 v25, 0x1

    .line 193
    .line 194
    cmp-long v2, v23, v25

    .line 195
    .line 196
    if-nez v2, :cond_5

    .line 197
    .line 198
    const/4 v10, 0x1

    .line 199
    :cond_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    move-object/from16 v23, v2

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_6
    move-object/from16 v23, v19

    .line 207
    .line 208
    :goto_4
    const/16 v2, 0x8

    .line 209
    .line 210
    invoke-interface {v14, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_7

    .line 215
    .line 216
    move-wide v9, v3

    .line 217
    goto :goto_5

    .line 218
    :cond_7
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 219
    .line 220
    .line 221
    move-result-wide v2

    .line 222
    move-wide v9, v2

    .line 223
    :goto_5
    new-instance v24, Lc5/o;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    .line 225
    move-object/from16 v2, v24

    .line 226
    .line 227
    move-object/from16 v3, p1

    .line 228
    .line 229
    move-object/from16 v4, p2

    .line 230
    .line 231
    move-wide/from16 v11, v16

    .line 232
    .line 233
    move-object/from16 v26, v13

    .line 234
    .line 235
    move-object/from16 v25, v14

    .line 236
    .line 237
    move-wide/from16 v13, v20

    .line 238
    .line 239
    move-object v1, v15

    .line 240
    move-object v15, v0

    .line 241
    move-object/from16 v16, v18

    .line 242
    .line 243
    move-object/from16 v17, v22

    .line 244
    .line 245
    move-object/from16 v18, v23

    .line 246
    .line 247
    :try_start_3
    invoke-direct/range {v2 .. v18}, Lc5/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 248
    .line 249
    .line 250
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_8

    .line 255
    .line 256
    move-object/from16 v13, v26

    .line 257
    .line 258
    check-cast v13, Lc5/i4;

    .line 259
    .line 260
    iget-object v0, v13, Lc5/i4;->j:Lc5/e3;

    .line 261
    .line 262
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 266
    .line 267
    const-string v2, "Got multiple records for event aggregates, expected one. appId"

    .line 268
    .line 269
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v0, v3, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    .line 275
    .line 276
    :cond_8
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 277
    .line 278
    .line 279
    return-object v24

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    goto :goto_6

    .line 282
    :catch_0
    move-exception v0

    .line 283
    goto :goto_7

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    move-object/from16 v25, v14

    .line 286
    .line 287
    :goto_6
    move-object/from16 v19, v25

    .line 288
    .line 289
    goto :goto_9

    .line 290
    :catch_1
    move-exception v0

    .line 291
    move-object/from16 v26, v13

    .line 292
    .line 293
    move-object/from16 v25, v14

    .line 294
    .line 295
    move-object v1, v15

    .line 296
    :goto_7
    move-object/from16 v14, v25

    .line 297
    .line 298
    goto :goto_8

    .line 299
    :catchall_2
    move-exception v0

    .line 300
    goto :goto_9

    .line 301
    :catch_2
    move-exception v0

    .line 302
    move-object/from16 v26, v13

    .line 303
    .line 304
    move-object v1, v15

    .line 305
    move-object/from16 v14, v19

    .line 306
    .line 307
    :goto_8
    :try_start_4
    move-object/from16 v13, v26

    .line 308
    .line 309
    check-cast v13, Lc5/i4;

    .line 310
    .line 311
    iget-object v2, v13, Lc5/i4;->j:Lc5/e3;

    .line 312
    .line 313
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 314
    .line 315
    .line 316
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 317
    .line 318
    const-string v3, "Error querying events. appId"

    .line 319
    .line 320
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    move-object/from16 v13, v26

    .line 325
    .line 326
    check-cast v13, Lc5/i4;

    .line 327
    .line 328
    iget-object v5, v13, Lc5/i4;->n:Lc5/z2;

    .line 329
    .line 330
    invoke-virtual {v5, v1}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v2, v3, v4, v1, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 335
    .line 336
    .line 337
    if-eqz v14, :cond_9

    .line 338
    .line 339
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 340
    .line 341
    .line 342
    :cond_9
    return-object v19

    .line 343
    :catchall_3
    move-exception v0

    .line 344
    move-object/from16 v19, v14

    .line 345
    .line 346
    :goto_9
    if-eqz v19, :cond_a

    .line 347
    .line 348
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 349
    .line 350
    .line 351
    :cond_a
    throw v0
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;
    .locals 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    iget-object v10, v1, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    .line 17
    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object v12

    .line 24
    const-string v0, "set_timestamp"

    .line 25
    .line 26
    const-string v2, "value"

    .line 27
    .line 28
    const-string v3, "origin"

    .line 29
    .line 30
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v14

    .line 34
    const/4 v0, 0x2

    .line 35
    new-array v2, v0, [Ljava/lang/String;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object p1, v2, v3

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    aput-object v9, v2, v4

    .line 42
    .line 43
    const-string v13, "user_attributes"

    .line 44
    .line 45
    const-string v15, "app_id=? and name=?"

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const/16 v18, 0x0

    .line 50
    .line 51
    const/16 v19, 0x0

    .line 52
    .line 53
    move-object/from16 v16, v2

    .line 54
    .line 55
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    .line 57
    .line 58
    move-result-object v12
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    .line 61
    .line 62
    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 66
    .line 67
    .line 68
    return-object v11

    .line 69
    :cond_0
    :try_start_2
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    invoke-virtual {v1, v12, v4}, Lc5/i;->J(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v8
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    if-nez v8, :cond_1

    .line 78
    .line 79
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 80
    .line 81
    .line 82
    return-object v11

    .line 83
    :cond_1
    :try_start_3
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    new-instance v0, Lc5/t7;

    .line 88
    .line 89
    move-object v2, v0

    .line 90
    move-object/from16 v3, p1

    .line 91
    .line 92
    move-object/from16 v5, p2

    .line 93
    .line 94
    invoke-direct/range {v2 .. v8}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    move-object v2, v10

    .line 104
    check-cast v2, Lc5/i4;

    .line 105
    .line 106
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 107
    .line 108
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 112
    .line 113
    const-string v3, "Got multiple records for user property, expected one. appId"

    .line 114
    .line 115
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v2, v4, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    move-object v12, v11

    .line 132
    :goto_0
    :try_start_4
    move-object v2, v10

    .line 133
    check-cast v2, Lc5/i4;

    .line 134
    .line 135
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 136
    .line 137
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 141
    .line 142
    const-string v3, "Error querying user property. appId"

    .line 143
    .line 144
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v10, Lc5/i4;

    .line 149
    .line 150
    iget-object v5, v10, Lc5/i4;->n:Lc5/z2;

    .line 151
    .line 152
    invoke-virtual {v5, v9}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v2, v3, v4, v5, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    .line 158
    .line 159
    if-eqz v12, :cond_3

    .line 160
    .line 161
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 162
    .line 163
    .line 164
    :cond_3
    return-object v11

    .line 165
    :catchall_1
    move-exception v0

    .line 166
    move-object v11, v12

    .line 167
    :goto_1
    if-eqz v11, :cond_4

    .line 168
    .line 169
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 170
    .line 171
    .line 172
    :cond_4
    throw v0
.end method

.method public final J(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v3, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    check-cast v2, Lc5/i4;

    .line 20
    .line 21
    const/4 p1, 0x4

    .line 22
    if-eq v0, p1, :cond_0

    .line 23
    .line 24
    iget-object p1, v2, Lc5/i4;->j:Lc5/e3;

    .line 25
    .line 26
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 34
    .line 35
    const-string v0, "Loaded invalid unknown value type, ignoring it"

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    iget-object p1, v2, Lc5/i4;->j:Lc5/e3;

    .line 42
    .line 43
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 44
    .line 45
    .line 46
    const-string p2, "Loaded invalid blob type value, ignoring it"

    .line 47
    .line 48
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_4
    check-cast v2, Lc5/i4;

    .line 78
    .line 79
    iget-object p1, v2, Lc5/i4;->j:Lc5/e3;

    .line 80
    .line 81
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 82
    .line 83
    .line 84
    const-string p2, "Loaded invalid null value from database"

    .line 85
    .line 86
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v1
.end method

.method public final K()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :catch_0
    move-exception v2

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :catch_1
    move-exception v0

    .line 36
    move-object v2, v0

    .line 37
    move-object v0, v1

    .line 38
    :goto_0
    :try_start_2
    iget-object v3, p0, Lc5/x4;->a:Lc5/z4;

    .line 39
    .line 40
    check-cast v3, Lc5/i4;

    .line 41
    .line 42
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 43
    .line 44
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 48
    .line 49
    const-string v4, "Database error getting next bundle app id"

    .line 50
    .line 51
    invoke-virtual {v3, v2, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-object v1

    .line 60
    :catchall_1
    move-exception v1

    .line 61
    move-object v5, v1

    .line 62
    move-object v1, v0

    .line 63
    move-object v0, v5

    .line 64
    :goto_1
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 67
    .line 68
    .line 69
    :cond_2
    throw v0
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc5/b;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc5/x4;->b()V

    invoke-virtual {p0}, Lc5/j7;->c()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lc5/i;->M(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final M(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc5/b;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lc5/i7;->b:Lc5/o7;

    .line 4
    .line 5
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v12, "1001"

    .line 19
    .line 20
    const/4 v13, 0x0

    .line 21
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "conditional_properties"

    .line 26
    .line 27
    const-string v14, "app_id"

    .line 28
    .line 29
    const-string v15, "origin"

    .line 30
    .line 31
    const-string v16, "name"

    .line 32
    .line 33
    const-string v17, "value"

    .line 34
    .line 35
    const-string v18, "active"

    .line 36
    .line 37
    const-string v19, "trigger_event_name"

    .line 38
    .line 39
    const-string v20, "trigger_timeout"

    .line 40
    .line 41
    const-string v21, "timed_out_event"

    .line 42
    .line 43
    const-string v22, "creation_timestamp"

    .line 44
    .line 45
    const-string v23, "triggered_event"

    .line 46
    .line 47
    const-string v24, "triggered_timestamp"

    .line 48
    .line 49
    const-string v25, "time_to_live"

    .line 50
    .line 51
    const-string v26, "expired_event"

    .line 52
    .line 53
    filled-new-array/range {v14 .. v26}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const-string v11, "rowid"

    .line 58
    .line 59
    move-object v7, v2

    .line 60
    check-cast v7, Lc5/i4;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    move-object/from16 v7, p1

    .line 68
    .line 69
    move-object/from16 v8, p2

    .line 70
    .line 71
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    move-object v5, v2

    .line 86
    check-cast v5, Lc5/i4;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/16 v5, 0x3e8

    .line 92
    .line 93
    if-lt v4, v5, :cond_1

    .line 94
    .line 95
    move-object v0, v2

    .line 96
    check-cast v0, Lc5/i4;

    .line 97
    .line 98
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 99
    .line 100
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 104
    .line 105
    const-string v4, "Read more than the max allowed conditional properties, ignoring extra"

    .line 106
    .line 107
    move-object v6, v2

    .line 108
    check-cast v6, Lc5/i4;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v0, v5, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_1
    const/4 v4, 0x0

    .line 123
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    const/4 v5, 0x1

    .line 128
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v16

    .line 132
    const/4 v6, 0x2

    .line 133
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    const/4 v6, 0x3

    .line 138
    invoke-virtual {v1, v13, v6}, Lc5/i;->J(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    const/4 v6, 0x4

    .line 143
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_2

    .line 148
    .line 149
    const/16 v20, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_2
    const/16 v20, 0x0

    .line 153
    .line 154
    :goto_0
    const/4 v4, 0x5

    .line 155
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v21

    .line 159
    const/4 v4, 0x6

    .line 160
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 161
    .line 162
    .line 163
    move-result-wide v23

    .line 164
    iget-object v4, v0, Lc5/o7;->g:Lc5/q7;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    iget-object v5, v0, Lc5/o7;->g:Lc5/q7;

    .line 167
    .line 168
    :try_start_1
    invoke-static {v4}, Lc5/o7;->I(Lc5/j7;)V

    .line 169
    .line 170
    .line 171
    const/4 v6, 0x7

    .line 172
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    sget-object v7, Lc5/s;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    .line 178
    invoke-virtual {v4, v6, v7}, Lc5/q7;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    move-object/from16 v22, v4

    .line 183
    .line 184
    check-cast v22, Lc5/s;

    .line 185
    .line 186
    const/16 v4, 0x8

    .line 187
    .line 188
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v18

    .line 192
    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    .line 193
    .line 194
    .line 195
    const/16 v4, 0x9

    .line 196
    .line 197
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getBlob(I)[B

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v5, v4, v7}, Lc5/q7;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    move-object/from16 v25, v4

    .line 206
    .line 207
    check-cast v25, Lc5/s;

    .line 208
    .line 209
    const/16 v4, 0xa

    .line 210
    .line 211
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v11

    .line 215
    const/16 v4, 0xb

    .line 216
    .line 217
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 218
    .line 219
    .line 220
    move-result-wide v26

    .line 221
    invoke-static {v5}, Lc5/o7;->I(Lc5/j7;)V

    .line 222
    .line 223
    .line 224
    const/16 v4, 0xc

    .line 225
    .line 226
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getBlob(I)[B

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v5, v4, v7}, Lc5/q7;->y([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    move-object/from16 v28, v4

    .line 235
    .line 236
    check-cast v28, Lc5/s;

    .line 237
    .line 238
    new-instance v17, Lc5/r7;

    .line 239
    .line 240
    move-object/from16 v6, v17

    .line 241
    .line 242
    move-wide v7, v11

    .line 243
    move-object/from16 v11, v16

    .line 244
    .line 245
    invoke-direct/range {v6 .. v11}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v4, Lc5/b;

    .line 249
    .line 250
    move-object v14, v4

    .line 251
    invoke-direct/range {v14 .. v28}, Lc5/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lc5/r7;JZLjava/lang/String;Lc5/s;JLc5/s;JLc5/s;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 258
    .line 259
    .line 260
    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    if-nez v4, :cond_0

    .line 262
    .line 263
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 264
    .line 265
    .line 266
    return-object v3

    .line 267
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    return-object v3

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    goto :goto_2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    :try_start_2
    check-cast v2, Lc5/i4;

    .line 275
    .line 276
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 277
    .line 278
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 279
    .line 280
    .line 281
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 282
    .line 283
    const-string v3, "Error querying conditional user property value"

    .line 284
    .line 285
    invoke-virtual {v2, v0, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    if-eqz v13, :cond_4

    .line 293
    .line 294
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 295
    .line 296
    .line 297
    :cond_4
    return-object v0

    .line 298
    :goto_2
    if-eqz v13, :cond_5

    .line 299
    .line 300
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 301
    .line 302
    .line 303
    :cond_5
    throw v0
.end method

.method public final N(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc5/t7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v10, "1000"

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "user_attributes"

    .line 25
    .line 26
    const-string v4, "name"

    .line 27
    .line 28
    const-string v5, "origin"

    .line 29
    .line 30
    const-string v6, "set_timestamp"

    .line 31
    .line 32
    const-string v7, "value"

    .line 33
    .line 34
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "app_id=?"

    .line 39
    .line 40
    const/4 v12, 0x1

    .line 41
    new-array v6, v12, [Ljava/lang/String;

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    aput-object p1, v6, v13

    .line 45
    .line 46
    const-string v9, "rowid"

    .line 47
    .line 48
    move-object v7, v0

    .line 49
    check-cast v7, Lc5/i4;

    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    :cond_0
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    const-string v2, ""

    .line 77
    .line 78
    :cond_1
    move-object v5, v2

    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-virtual {p0, v11, v2}, Lc5/i;->J(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    if-nez v9, :cond_2

    .line 90
    .line 91
    move-object v2, v0

    .line 92
    check-cast v2, Lc5/i4;

    .line 93
    .line 94
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 95
    .line 96
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 100
    .line 101
    const-string v3, "Read invalid user property value, ignoring it. appId"

    .line 102
    .line 103
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v2, v4, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-instance v2, Lc5/t7;

    .line 112
    .line 113
    move-object v3, v2

    .line 114
    move-object v4, p1

    .line 115
    invoke-direct/range {v3 .. v9}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 122
    .line 123
    .line 124
    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-nez v2, :cond_0

    .line 126
    .line 127
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 138
    :try_start_1
    check-cast v0, Lc5/i4;

    .line 139
    .line 140
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 141
    .line 142
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 146
    .line 147
    const-string v2, "Error querying user properties. appId"

    .line 148
    .line 149
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1, v2, v1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    if-eqz v11, :cond_4

    .line 161
    .line 162
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 163
    .line 164
    .line 165
    :cond_4
    return-object p1

    .line 166
    :goto_1
    if-eqz v11, :cond_5

    .line 167
    .line 168
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 169
    .line 170
    .line 171
    :cond_5
    throw p1
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc5/t7;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v11, "1001"

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v13, 0x3

    .line 25
    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    move-object/from16 v14, p1

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v5, "app_id=?"

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    move-object/from16 v15, p2

    .line 45
    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    :try_start_2
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v5, " and origin=?"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "*"

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    const-string v5, " and name glob ?"

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    new-array v5, v5, [Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    move-object v7, v3

    .line 91
    check-cast v7, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string v5, "user_attributes"

    .line 98
    .line 99
    const-string v6, "name"

    .line 100
    .line 101
    const-string v8, "set_timestamp"

    .line 102
    .line 103
    const-string v9, "value"

    .line 104
    .line 105
    const-string v10, "origin"

    .line 106
    .line 107
    filled-new-array {v6, v8, v9, v10}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const-string v10, "rowid"

    .line 116
    .line 117
    move-object v4, v2

    .line 118
    check-cast v4, Lc5/i4;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const/4 v9, 0x0

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    move-object v4, v5

    .line 127
    move-object v5, v6

    .line 128
    move-object v6, v8

    .line 129
    move-object v8, v9

    .line 130
    move-object/from16 v9, v16

    .line 131
    .line 132
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    .line 138
    .line 139
    move-result v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    if-nez v3, :cond_2

    .line 141
    .line 142
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    move-object v4, v2

    .line 151
    check-cast v4, Lc5/i4;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    const/16 v4, 0x3e8

    .line 157
    .line 158
    if-lt v3, v4, :cond_3

    .line 159
    .line 160
    move-object v3, v2

    .line 161
    check-cast v3, Lc5/i4;

    .line 162
    .line 163
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 164
    .line 165
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 169
    .line 170
    const-string v5, "Read more than the max allowed user properties, ignoring excess"

    .line 171
    .line 172
    move-object v6, v2

    .line 173
    check-cast v6, Lc5/i4;

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v3, v4, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    const/4 v3, 0x0

    .line 187
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    const/4 v3, 0x1

    .line 192
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    const/4 v3, 0x2

    .line 197
    invoke-virtual {v1, v12, v3}, Lc5/i;->J(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v15

    .line 205
    if-nez v10, :cond_4

    .line 206
    .line 207
    move-object v3, v2

    .line 208
    check-cast v3, Lc5/i4;

    .line 209
    .line 210
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 211
    .line 212
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 213
    .line 214
    .line 215
    iget-object v3, v3, Lc5/e3;->f:Lc5/c3;

    .line 216
    .line 217
    const-string v4, "(2)Read invalid user property value, ignoring it"

    .line 218
    .line 219
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    move-object/from16 v11, p3

    .line 224
    .line 225
    invoke-virtual {v3, v4, v5, v15, v11}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_4
    move-object/from16 v11, p3

    .line 230
    .line 231
    new-instance v3, Lc5/t7;

    .line 232
    .line 233
    move-object v4, v3

    .line 234
    move-object/from16 v5, p1

    .line 235
    .line 236
    move-object v6, v15

    .line 237
    invoke-direct/range {v4 .. v10}, Lc5/t7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 244
    .line 245
    .line 246
    move-result v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    if-eqz v3, :cond_5

    .line 248
    .line 249
    goto :goto_0

    .line 250
    :cond_5
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 251
    .line 252
    .line 253
    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    goto :goto_4

    .line 256
    :catch_1
    move-exception v0

    .line 257
    :goto_3
    move-object/from16 v15, p2

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    goto :goto_5

    .line 262
    :catch_2
    move-exception v0

    .line 263
    move-object/from16 v14, p1

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :goto_4
    :try_start_4
    check-cast v2, Lc5/i4;

    .line 267
    .line 268
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 269
    .line 270
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 274
    .line 275
    const-string v3, "(2)Error querying user properties"

    .line 276
    .line 277
    invoke-static/range {p1 .. p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v2, v3, v4, v15, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 285
    .line 286
    .line 287
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    if-eqz v12, :cond_6

    .line 289
    .line 290
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 291
    .line 292
    .line 293
    :cond_6
    return-object v0

    .line 294
    :goto_5
    if-eqz v12, :cond_7

    .line 295
    .line 296
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 297
    .line 298
    .line 299
    :cond_7
    throw v0
.end method

.method public final P()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/j7;->c()V

    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final Q(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "rowid in ("

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v2, ","

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, ")"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v2, 0x0

    .line 61
    const-string v3, "raw_events"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eq v0, v1, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 74
    .line 75
    check-cast v1, Lc5/i4;

    .line 76
    .line 77
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 78
    .line 79
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 95
    .line 96
    const-string v2, "Deleted fewer rows from raw events table than expected"

    .line 97
    .line 98
    invoke-virtual {v1, v0, v2, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method public final R()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/j7;->c()V

    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final S(Ljava/util/List;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    .line 2
    .line 3
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lc5/i;->r()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v1, ","

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x2

    .line 39
    .line 40
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .line 42
    .line 43
    const-string v1, "("

    .line 44
    .line 45
    const-string v3, ")"

    .line 46
    .line 47
    invoke-static {v2, v1, p1, v3}, Landroid/support/v4/media/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    add-int/lit8 v2, v2, 0x50

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const-string v2, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    .line 63
    .line 64
    const-string v3, " AND retry_count =  2147483647 LIMIT 1"

    .line 65
    .line 66
    invoke-static {v1, v2, p1, v3}, Landroid/support/v4/media/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0, v1, v2}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    const-wide/16 v3, 0x0

    .line 76
    .line 77
    iget-object v5, p0, Lc5/x4;->a:Lc5/z4;

    .line 78
    .line 79
    cmp-long v6, v1, v3

    .line 80
    .line 81
    if-lez v6, :cond_1

    .line 82
    .line 83
    move-object v1, v5

    .line 84
    check-cast v1, Lc5/i4;

    .line 85
    .line 86
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 87
    .line 88
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 92
    .line 93
    iget-object v1, v1, Lc5/e3;->j:Lc5/c3;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    add-int/lit8 v2, v2, 0x7f

    .line 107
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    .line 112
    .line 113
    const-string v2, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catch_0
    move-exception p1

    .line 133
    check-cast v5, Lc5/i4;

    .line 134
    .line 135
    iget-object v0, v5, Lc5/i4;->j:Lc5/e3;

    .line 136
    .line 137
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 138
    .line 139
    .line 140
    const-string v1, "Error incrementing retry count. error"

    .line 141
    .line 142
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 143
    .line 144
    invoke-virtual {v0, p1, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v0, "Given Integer is zero"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/i;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lc5/i7;->b:Lc5/o7;

    .line 14
    .line 15
    iget-object v1, v0, Lc5/o7;->j:Lc5/u6;

    .line 16
    .line 17
    iget-object v1, v1, Lc5/u6;->g:Lc5/o3;

    .line 18
    .line 19
    invoke-virtual {v1}, Lc5/o3;->a()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iget-object v3, p0, Lc5/x4;->a:Lc5/z4;

    .line 24
    .line 25
    check-cast v3, Lc5/i4;

    .line 26
    .line 27
    iget-object v4, v3, Lc5/i4;->p:Lc5/w;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    sub-long v1, v4, v1

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v6, Lc5/r2;->y:Lc5/q2;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    invoke-virtual {v6, v7}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    cmp-long v6, v1, v8

    .line 59
    .line 60
    if-lez v6, :cond_1

    .line 61
    .line 62
    iget-object v0, v0, Lc5/o7;->j:Lc5/u6;

    .line 63
    .line 64
    iget-object v0, v0, Lc5/u6;->g:Lc5/o3;

    .line 65
    .line 66
    invoke-virtual {v0, v4, v5}, Lc5/o3;->b(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lc5/i;->r()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x2

    .line 87
    new-array v1, v1, [Ljava/lang/String;

    .line 88
    .line 89
    iget-object v2, v3, Lc5/i4;->p:Lc5/w;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const/4 v4, 0x0

    .line 103
    aput-object v2, v1, v4

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v2, Lc5/r2;->D:Lc5/q2;

    .line 109
    .line 110
    invoke-virtual {v2, v7}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const/4 v4, 0x1

    .line 125
    aput-object v2, v1, v4

    .line 126
    .line 127
    const-string v2, "queue"

    .line 128
    .line 129
    const-string v4, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lez v0, :cond_1

    .line 136
    .line 137
    iget-object v1, v3, Lc5/i4;->j:Lc5/e3;

    .line 138
    .line 139
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 147
    .line 148
    const-string v2, "Deleted stale rows. rowsDeleted"

    .line 149
    .line 150
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object p1, v1, v2

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object p2, v1, v2

    .line 25
    .line 26
    const-string v2, "user_attributes"

    .line 27
    .line 28
    const-string v3, "app_id=? and name=?"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 36
    .line 37
    check-cast v1, Lc5/i4;

    .line 38
    .line 39
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 40
    .line 41
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, v1, Lc5/i4;->n:Lc5/z2;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object v1, v2, Lc5/e3;->f:Lc5/c3;

    .line 55
    .line 56
    const-string v2, "Error deleting user property. appId"

    .line 57
    .line 58
    invoke-virtual {v1, v2, p1, p2, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final n()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/j7;->c()V

    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final o(Lc5/m4;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const-string v0, "apps"

    .line 2
    .line 3
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lc5/m4;->F()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "app_id"

    .line 22
    .line 23
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "app_instance_id"

    .line 27
    .line 28
    invoke-virtual {p1}, Lc5/m4;->G()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "gmp_app_id"

    .line 36
    .line 37
    invoke-virtual {p1}, Lc5/m4;->K()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p1, Lc5/m4;->a:Lc5/i4;

    .line 45
    .line 46
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 47
    .line 48
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 52
    .line 53
    .line 54
    iget-object v4, p1, Lc5/m4;->e:Ljava/lang/String;

    .line 55
    .line 56
    const-string v5, "resettable_device_id_hash"

    .line 57
    .line 58
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 62
    .line 63
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 67
    .line 68
    .line 69
    iget-wide v4, p1, Lc5/m4;->g:J

    .line 70
    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "last_bundle_index"

    .line 76
    .line 77
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 81
    .line 82
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 86
    .line 87
    .line 88
    iget-wide v4, p1, Lc5/m4;->h:J

    .line 89
    .line 90
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "last_bundle_start_timestamp"

    .line 95
    .line 96
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    .line 98
    .line 99
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 100
    .line 101
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 105
    .line 106
    .line 107
    iget-wide v4, p1, Lc5/m4;->i:J

    .line 108
    .line 109
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v5, "last_bundle_end_timestamp"

    .line 114
    .line 115
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    .line 117
    .line 118
    const-string v4, "app_version"

    .line 119
    .line 120
    invoke-virtual {p1}, Lc5/m4;->H()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 128
    .line 129
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 133
    .line 134
    .line 135
    iget-object v4, p1, Lc5/m4;->l:Ljava/lang/String;

    .line 136
    .line 137
    const-string v5, "app_store"

    .line 138
    .line 139
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 143
    .line 144
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 148
    .line 149
    .line 150
    iget-wide v4, p1, Lc5/m4;->m:J

    .line 151
    .line 152
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    const-string v5, "gmp_version"

    .line 157
    .line 158
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    .line 160
    .line 161
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 162
    .line 163
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 167
    .line 168
    .line 169
    iget-wide v4, p1, Lc5/m4;->n:J

    .line 170
    .line 171
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    const-string v5, "dev_cert_hash"

    .line 176
    .line 177
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    .line 179
    .line 180
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 181
    .line 182
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 186
    .line 187
    .line 188
    iget-boolean v4, p1, Lc5/m4;->o:Z

    .line 189
    .line 190
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    const-string v5, "measurement_enabled"

    .line 195
    .line 196
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 197
    .line 198
    .line 199
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 200
    .line 201
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 205
    .line 206
    .line 207
    iget-wide v4, p1, Lc5/m4;->w:J

    .line 208
    .line 209
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    const-string v5, "day"

    .line 214
    .line 215
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    .line 217
    .line 218
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 219
    .line 220
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 224
    .line 225
    .line 226
    iget-wide v5, p1, Lc5/m4;->x:J

    .line 227
    .line 228
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    const-string v6, "daily_public_events_count"

    .line 233
    .line 234
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 241
    .line 242
    .line 243
    iget-wide v5, p1, Lc5/m4;->y:J

    .line 244
    .line 245
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const-string v6, "daily_events_count"

    .line 250
    .line 251
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 258
    .line 259
    .line 260
    iget-wide v5, p1, Lc5/m4;->z:J

    .line 261
    .line 262
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    const-string v6, "daily_conversions_count"

    .line 267
    .line 268
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    .line 270
    .line 271
    iget-object v5, v3, Lc5/i4;->k:Lc5/h4;

    .line 272
    .line 273
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Lc5/h4;->b()V

    .line 277
    .line 278
    .line 279
    iget-wide v5, p1, Lc5/m4;->E:J

    .line 280
    .line 281
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    const-string v6, "config_fetched_time"

    .line 286
    .line 287
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    .line 289
    .line 290
    iget-object v5, v3, Lc5/i4;->k:Lc5/h4;

    .line 291
    .line 292
    invoke-static {v5}, Lc5/i4;->e(Lc5/y4;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Lc5/h4;->b()V

    .line 296
    .line 297
    .line 298
    iget-wide v5, p1, Lc5/m4;->F:J

    .line 299
    .line 300
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    const-string v6, "failed_config_fetch_time"

    .line 305
    .line 306
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Lc5/m4;->B()J

    .line 310
    .line 311
    .line 312
    move-result-wide v5

    .line 313
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    const-string v6, "app_version_int"

    .line 318
    .line 319
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    .line 321
    .line 322
    const-string v5, "firebase_instance_id"

    .line 323
    .line 324
    invoke-virtual {p1}, Lc5/m4;->I()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 335
    .line 336
    .line 337
    iget-wide v5, p1, Lc5/m4;->A:J

    .line 338
    .line 339
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    const-string v6, "daily_error_events_count"

    .line 344
    .line 345
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    .line 347
    .line 348
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 352
    .line 353
    .line 354
    iget-wide v5, p1, Lc5/m4;->B:J

    .line 355
    .line 356
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    const-string v6, "daily_realtime_events_count"

    .line 361
    .line 362
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    .line 364
    .line 365
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 369
    .line 370
    .line 371
    iget-object v4, p1, Lc5/m4;->C:Ljava/lang/String;

    .line 372
    .line 373
    const-string v5, "health_monitor_sample"

    .line 374
    .line 375
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v4, v3, Lc5/i4;->k:Lc5/h4;

    .line 379
    .line 380
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4}, Lc5/h4;->b()V

    .line 384
    .line 385
    .line 386
    iget-wide v4, p1, Lc5/m4;->p:J

    .line 387
    .line 388
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    const-string v5, "android_id"

    .line 393
    .line 394
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1}, Lc5/m4;->A()Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    const-string v5, "adid_reporting_enabled"

    .line 406
    .line 407
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    .line 409
    .line 410
    const-string v4, "admob_app_id"

    .line 411
    .line 412
    invoke-virtual {p1}, Lc5/m4;->D()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1}, Lc5/m4;->C()J

    .line 420
    .line 421
    .line 422
    move-result-wide v4

    .line 423
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    const-string v5, "dynamite_version"

    .line 428
    .line 429
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    .line 431
    .line 432
    iget-object v3, v3, Lc5/i4;->k:Lc5/h4;

    .line 433
    .line 434
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3}, Lc5/h4;->b()V

    .line 438
    .line 439
    .line 440
    iget-object v3, p1, Lc5/m4;->u:Ljava/util/ArrayList;

    .line 441
    .line 442
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 443
    .line 444
    if-eqz v3, :cond_1

    .line 445
    .line 446
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-nez v5, :cond_0

    .line 451
    .line 452
    move-object v3, v4

    .line 453
    check-cast v3, Lc5/i4;

    .line 454
    .line 455
    iget-object v3, v3, Lc5/i4;->j:Lc5/e3;

    .line 456
    .line 457
    invoke-static {v3}, Lc5/i4;->e(Lc5/y4;)V

    .line 458
    .line 459
    .line 460
    const-string v5, "Safelisted events should not be an empty list. appId"

    .line 461
    .line 462
    iget-object v3, v3, Lc5/e3;->j:Lc5/c3;

    .line 463
    .line 464
    invoke-virtual {v3, v1, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto :goto_0

    .line 468
    :cond_0
    const-string v5, ","

    .line 469
    .line 470
    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    const-string v5, "safelisted_events"

    .line 475
    .line 476
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 480
    .line 481
    .line 482
    move-object v3, v4

    .line 483
    check-cast v3, Lc5/i4;

    .line 484
    .line 485
    iget-object v5, v3, Lc5/i4;->g:Lc5/e;

    .line 486
    .line 487
    sget-object v6, Lc5/r2;->c0:Lc5/q2;

    .line 488
    .line 489
    invoke-virtual {v5, v1, v6}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    if-eqz v5, :cond_2

    .line 494
    .line 495
    const-string v5, "ga_app_id"

    .line 496
    .line 497
    invoke-virtual {p1}, Lc5/m4;->J()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    const/4 v5, 0x1

    .line 509
    new-array v5, v5, [Ljava/lang/String;

    .line 510
    .line 511
    const/4 v6, 0x0

    .line 512
    aput-object v1, v5, v6

    .line 513
    .line 514
    const-string v6, "app_id = ?"

    .line 515
    .line 516
    invoke-virtual {p1, v0, v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    int-to-long v5, v5

    .line 521
    const-wide/16 v7, 0x0

    .line 522
    .line 523
    cmp-long v9, v5, v7

    .line 524
    .line 525
    if-nez v9, :cond_3

    .line 526
    .line 527
    const/4 v5, 0x0

    .line 528
    const/4 v6, 0x5

    .line 529
    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 530
    .line 531
    .line 532
    move-result-wide v5

    .line 533
    const-wide/16 v7, -0x1

    .line 534
    .line 535
    cmp-long p1, v5, v7

    .line 536
    .line 537
    if-nez p1, :cond_3

    .line 538
    .line 539
    check-cast v4, Lc5/i4;

    .line 540
    .line 541
    iget-object p1, v4, Lc5/i4;->j:Lc5/e3;

    .line 542
    .line 543
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 544
    .line 545
    .line 546
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 547
    .line 548
    const-string v0, "Failed to insert/update app (got -1). appId"

    .line 549
    .line 550
    invoke-static {v1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    invoke-virtual {p1, v2, v0}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .line 556
    .line 557
    :cond_3
    return-void

    .line 558
    :catch_0
    move-exception p1

    .line 559
    iget-object v0, v3, Lc5/i4;->j:Lc5/e3;

    .line 560
    .line 561
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 562
    .line 563
    .line 564
    invoke-static {v1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 569
    .line 570
    const-string v2, "Error storing app. appId"

    .line 571
    .line 572
    invoke-virtual {v0, v1, v2, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    return-void
.end method

.method public final p(Lc5/o;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "app_id"

    .line 18
    .line 19
    iget-object v3, p1, Lc5/o;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "name"

    .line 25
    .line 26
    iget-object v4, p1, Lc5/o;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-wide v4, p1, Lc5/o;->c:J

    .line 32
    .line 33
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v4, "lifetime_count"

    .line 38
    .line 39
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    .line 41
    .line 42
    iget-wide v4, p1, Lc5/o;->d:J

    .line 43
    .line 44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v4, "current_bundle_count"

    .line 49
    .line 50
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    .line 52
    .line 53
    iget-wide v4, p1, Lc5/o;->f:J

    .line 54
    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v4, "last_fire_timestamp"

    .line 60
    .line 61
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    .line 63
    .line 64
    iget-wide v4, p1, Lc5/o;->g:J

    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v4, "last_bundled_timestamp"

    .line 71
    .line 72
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "last_bundled_day"

    .line 76
    .line 77
    iget-object v4, p1, Lc5/o;->h:Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    .line 81
    .line 82
    const-string v2, "last_sampled_complex_event_id"

    .line 83
    .line 84
    iget-object v4, p1, Lc5/o;->i:Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    .line 88
    .line 89
    const-string v2, "last_sampling_rate"

    .line 90
    .line 91
    iget-object v4, p1, Lc5/o;->j:Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    .line 95
    .line 96
    iget-wide v4, p1, Lc5/o;->e:J

    .line 97
    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v4, "current_session_count"

    .line 103
    .line 104
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    iget-object p1, p1, Lc5/o;->k:Ljava/lang/Boolean;

    .line 109
    .line 110
    if-eqz p1, :cond_0

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_0

    .line 117
    .line 118
    const-wide/16 v4, 0x1

    .line 119
    .line 120
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    move-object p1, v2

    .line 126
    :goto_0
    const-string v4, "last_exempt_from_sampling"

    .line 127
    .line 128
    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    .line 130
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v4, "events"

    .line 136
    .line 137
    const/4 v5, 0x5

    .line 138
    invoke-virtual {p1, v4, v2, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    const-wide/16 v4, -0x1

    .line 143
    .line 144
    cmp-long p1, v1, v4

    .line 145
    .line 146
    if-nez p1, :cond_1

    .line 147
    .line 148
    move-object p1, v0

    .line 149
    check-cast p1, Lc5/i4;

    .line 150
    .line 151
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 152
    .line 153
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 157
    .line 158
    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    .line 159
    .line 160
    invoke-static {v3}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p1, v2, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    :cond_1
    return-void

    .line 168
    :catch_0
    move-exception p1

    .line 169
    check-cast v0, Lc5/i4;

    .line 170
    .line 171
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 172
    .line 173
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 181
    .line 182
    const-string v2, "Error storing event aggregates. appId"

    .line 183
    .line 184
    invoke-virtual {v0, v1, v2, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final q([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    invoke-static {p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "remote_config"

    .line 18
    .line 19
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 20
    .line 21
    .line 22
    const-string p1, "config_last_modified_time"

    .line 23
    .line 24
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p3, 0x1

    .line 32
    new-array p3, p3, [Ljava/lang/String;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object p2, p3, v2

    .line 36
    .line 37
    const-string v2, "apps"

    .line 38
    .line 39
    const-string v3, "app_id = ?"

    .line 40
    .line 41
    invoke-virtual {p1, v2, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-long v1, p1

    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long p1, v1, v3

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    move-object p1, v0

    .line 53
    check-cast p1, Lc5/i4;

    .line 54
    .line 55
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 56
    .line 57
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 61
    .line 62
    const-string p3, "Failed to update remote config (got 0). appId"

    .line 63
    .line 64
    invoke-static {p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void

    .line 72
    :catch_0
    move-exception p1

    .line 73
    check-cast v0, Lc5/i4;

    .line 74
    .line 75
    iget-object p3, v0, Lc5/i4;->j:Lc5/e3;

    .line 76
    .line 77
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p3, p3, Lc5/e3;->f:Lc5/c3;

    .line 85
    .line 86
    const-string v0, "Error storing remote config. appId"

    .line 87
    .line 88
    invoke-virtual {p3, p2, v0, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lc5/i4;

    .line 5
    .line 6
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 7
    .line 8
    check-cast v0, Lc5/i4;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "google_app_measurement.db"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/h3;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 5
    .line 6
    .line 7
    invoke-static {p5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/l5;->i()[B

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lc5/i4;

    .line 21
    .line 22
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 23
    .line 24
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v1, Lc5/i4;->n:Lc5/z2;

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Lc5/z2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    array-length v4, p5

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v2, v2, Lc5/e3;->p:Lc5/c3;

    .line 39
    .line 40
    const-string v5, "Saving complex main event, appId, data size"

    .line 41
    .line 42
    invoke-virtual {v2, v3, v5, v4}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Landroid/content/ContentValues;

    .line 46
    .line 47
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "app_id"

    .line 51
    .line 52
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "event_id"

    .line 56
    .line 57
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    .line 59
    .line 60
    const-string p2, "children_to_process"

    .line 61
    .line 62
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    .line 68
    .line 69
    const-string p2, "main_event"

    .line 70
    .line 71
    invoke-virtual {v2, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 72
    .line 73
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const-string p3, "main_event_params"

    .line 79
    .line 80
    const/4 p4, 0x0

    .line 81
    const/4 p5, 0x5

    .line 82
    invoke-virtual {p2, p3, p4, v2, p5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 83
    .line 84
    .line 85
    move-result-wide p2

    .line 86
    const-wide/16 p4, -0x1

    .line 87
    .line 88
    cmp-long v2, p2, p4

    .line 89
    .line 90
    if-nez v2, :cond_0

    .line 91
    .line 92
    check-cast v0, Lc5/i4;

    .line 93
    .line 94
    iget-object p2, v0, Lc5/i4;->j:Lc5/e3;

    .line 95
    .line 96
    invoke-static {p2}, Lc5/i4;->e(Lc5/y4;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p2, Lc5/e3;->f:Lc5/c3;

    .line 100
    .line 101
    const-string p3, "Failed to insert complex main event (got -1). appId"

    .line 102
    .line 103
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    invoke-virtual {p2, p4, p3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    :cond_0
    return-void

    .line 111
    :catch_0
    move-exception p2

    .line 112
    iget-object p3, v1, Lc5/i4;->j:Lc5/e3;

    .line 113
    .line 114
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p3, p3, Lc5/e3;->f:Lc5/c3;

    .line 122
    .line 123
    const-string p4, "Error storing complex main event. appId"

    .line 124
    .line 125
    invoke-virtual {p3, p1, p4, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final t(Lc5/b;)Z
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lc5/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lc5/b;->c:Lc5/r7;

    .line 13
    .line 14
    iget-object v1, v1, Lc5/r7;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    iget-object v3, p0, Lc5/x4;->a:Lc5/z4;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-array v1, v2, [Ljava/lang/String;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v0, v1, v4

    .line 29
    .line 30
    const-string v5, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 31
    .line 32
    invoke-virtual {p0, v5, v1}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    move-object v1, v3

    .line 37
    check-cast v1, Lc5/i4;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-wide/16 v7, 0x3e8

    .line 43
    .line 44
    cmp-long v1, v5, v7

    .line 45
    .line 46
    if-gez v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return v4

    .line 50
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "app_id"

    .line 56
    .line 57
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v4, "origin"

    .line 61
    .line 62
    iget-object v5, p1, Lc5/b;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p1, Lc5/b;->c:Lc5/r7;

    .line 68
    .line 69
    iget-object v4, v4, Lc5/r7;->b:Ljava/lang/String;

    .line 70
    .line 71
    const-string v5, "name"

    .line 72
    .line 73
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, p1, Lc5/b;->c:Lc5/r7;

    .line 77
    .line 78
    invoke-virtual {v4}, Lc5/r7;->E()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v4}, Lc5/i;->w(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v4, p1, Lc5/b;->e:Z

    .line 89
    .line 90
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "active"

    .line 95
    .line 96
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    .line 98
    .line 99
    const-string v4, "trigger_event_name"

    .line 100
    .line 101
    iget-object v5, p1, Lc5/b;->f:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-wide v4, p1, Lc5/b;->h:J

    .line 107
    .line 108
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const-string v5, "trigger_timeout"

    .line 113
    .line 114
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    .line 116
    .line 117
    move-object v4, v3

    .line 118
    check-cast v4, Lc5/i4;

    .line 119
    .line 120
    iget-object v5, v4, Lc5/i4;->m:Lc5/v7;

    .line 121
    .line 122
    invoke-static {v5}, Lc5/i4;->c(Lc5/y4;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v5, p1, Lc5/b;->g:Lc5/s;

    .line 129
    .line 130
    invoke-static {v5}, Lc5/v7;->Y(Landroid/os/Parcelable;)[B

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const-string v6, "timed_out_event"

    .line 135
    .line 136
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 137
    .line 138
    .line 139
    iget-wide v5, p1, Lc5/b;->d:J

    .line 140
    .line 141
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const-string v6, "creation_timestamp"

    .line 146
    .line 147
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    .line 149
    .line 150
    iget-object v5, v4, Lc5/i4;->m:Lc5/v7;

    .line 151
    .line 152
    invoke-static {v5}, Lc5/i4;->c(Lc5/y4;)V

    .line 153
    .line 154
    .line 155
    iget-object v6, p1, Lc5/b;->j:Lc5/s;

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {v6}, Lc5/v7;->Y(Landroid/os/Parcelable;)[B

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    const-string v6, "triggered_event"

    .line 165
    .line 166
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 167
    .line 168
    .line 169
    iget-object v5, p1, Lc5/b;->c:Lc5/r7;

    .line 170
    .line 171
    iget-wide v5, v5, Lc5/r7;->c:J

    .line 172
    .line 173
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    const-string v6, "triggered_timestamp"

    .line 178
    .line 179
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    .line 181
    .line 182
    iget-wide v5, p1, Lc5/b;->k:J

    .line 183
    .line 184
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    const-string v6, "time_to_live"

    .line 189
    .line 190
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    .line 192
    .line 193
    iget-object v5, v4, Lc5/i4;->m:Lc5/v7;

    .line 194
    .line 195
    invoke-static {v5}, Lc5/i4;->c(Lc5/y4;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object p1, p1, Lc5/b;->l:Lc5/s;

    .line 202
    .line 203
    invoke-static {p1}, Lc5/v7;->Y(Landroid/os/Parcelable;)[B

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string v5, "expired_event"

    .line 208
    .line 209
    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 210
    .line 211
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string v5, "conditional_properties"

    .line 217
    .line 218
    const/4 v6, 0x0

    .line 219
    const/4 v7, 0x5

    .line 220
    invoke-virtual {p1, v5, v6, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 221
    .line 222
    .line 223
    move-result-wide v5

    .line 224
    const-wide/16 v7, -0x1

    .line 225
    .line 226
    cmp-long p1, v5, v7

    .line 227
    .line 228
    if-nez p1, :cond_2

    .line 229
    .line 230
    check-cast v3, Lc5/i4;

    .line 231
    .line 232
    iget-object p1, v3, Lc5/i4;->j:Lc5/e3;

    .line 233
    .line 234
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 238
    .line 239
    const-string v1, "Failed to insert/update conditional user property (got -1)"

    .line 240
    .line 241
    invoke-static {v0}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {p1, v3, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :catch_0
    move-exception p1

    .line 250
    iget-object v1, v4, Lc5/i4;->j:Lc5/e3;

    .line 251
    .line 252
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v0}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 260
    .line 261
    const-string v3, "Error storing conditional user property"

    .line 262
    .line 263
    invoke-virtual {v1, v0, v3, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_2
    :goto_1
    return v2
.end method

.method public final u(Lc5/t7;)Z
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lc5/t7;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Lc5/t7;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lc5/i;->I(Ljava/lang/String;Ljava/lang/String;)Lc5/t7;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 17
    .line 18
    iget-object v5, p1, Lc5/t7;->b:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-static {v1}, Lc5/v7;->T(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v6, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    new-array v2, v3, [Ljava/lang/String;

    .line 30
    .line 31
    aput-object v0, v2, v6

    .line 32
    .line 33
    const-string v7, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 34
    .line 35
    invoke-virtual {p0, v7, v2}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    move-object v2, v4

    .line 40
    check-cast v2, Lc5/i4;

    .line 41
    .line 42
    iget-object v2, v2, Lc5/i4;->g:Lc5/e;

    .line 43
    .line 44
    sget-object v9, Lc5/r2;->G:Lc5/q2;

    .line 45
    .line 46
    invoke-virtual {v2, v0, v9}, Lc5/e;->e(Ljava/lang/String;Lc5/q2;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/16 v9, 0x64

    .line 51
    .line 52
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/16 v9, 0x19

    .line 57
    .line 58
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    int-to-long v9, v2

    .line 63
    cmp-long v2, v7, v9

    .line 64
    .line 65
    if-gez v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return v6

    .line 69
    :cond_1
    const-string v2, "_npa"

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    new-array v2, v2, [Ljava/lang/String;

    .line 79
    .line 80
    aput-object v0, v2, v6

    .line 81
    .line 82
    aput-object v5, v2, v3

    .line 83
    .line 84
    const-string v7, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    .line 85
    .line 86
    invoke-virtual {p0, v7, v2}, Lc5/i;->y(Ljava/lang/String;[Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v7

    .line 90
    move-object v2, v4

    .line 91
    check-cast v2, Lc5/i4;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-wide/16 v9, 0x19

    .line 97
    .line 98
    cmp-long v2, v7, v9

    .line 99
    .line 100
    if-ltz v2, :cond_2

    .line 101
    .line 102
    return v6

    .line 103
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    .line 104
    .line 105
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "app_id"

    .line 109
    .line 110
    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v6, "origin"

    .line 114
    .line 115
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v5, "name"

    .line 119
    .line 120
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-wide v5, p1, Lc5/t7;->d:J

    .line 124
    .line 125
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v5, "set_timestamp"

    .line 130
    .line 131
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p1, Lc5/t7;->e:Ljava/lang/Object;

    .line 135
    .line 136
    invoke-static {v2, p1}, Lc5/i;->w(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v1, "user_attributes"

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    const/4 v6, 0x5

    .line 147
    invoke-virtual {p1, v1, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    const-wide/16 v5, -0x1

    .line 152
    .line 153
    cmp-long p1, v1, v5

    .line 154
    .line 155
    if-nez p1, :cond_3

    .line 156
    .line 157
    move-object p1, v4

    .line 158
    check-cast p1, Lc5/i4;

    .line 159
    .line 160
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 161
    .line 162
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 166
    .line 167
    const-string v1, "Failed to insert/update user property (got -1). appId"

    .line 168
    .line 169
    invoke-static {v0}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p1, v2, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catch_0
    move-exception p1

    .line 178
    check-cast v4, Lc5/i4;

    .line 179
    .line 180
    iget-object v1, v4, Lc5/i4;->j:Lc5/e3;

    .line 181
    .line 182
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 190
    .line 191
    const-string v2, "Error storing user property. appId"

    .line 192
    .line 193
    invoke-virtual {v1, v0, v2, p1}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_3
    :goto_1
    return v3
.end method

.method public final v(JJLc5/n7;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    iget-object v3, v1, Lc5/x4;->a:Lc5/z4;

    invoke-virtual/range {p0 .. p0}, Lc5/x4;->b()V

    invoke-virtual/range {p0 .. p0}, Lc5/j7;->c()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    const-string v6, ""

    if-eqz v5, :cond_3

    cmp-long v5, p3, v14

    if-eqz v5, :cond_0

    :try_start_1
    new-array v7, v11, [Ljava/lang/String;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    goto :goto_0

    :cond_0
    new-array v7, v12, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    if-eqz v5, :cond_1

    const-string v6, "rowid <= ? and "

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x94

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v6, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    :try_start_4
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :cond_3
    cmp-long v5, p3, v14

    if-eqz v5, :cond_4

    :try_start_5
    new-array v7, v11, [Ljava/lang/String;

    aput-object v4, v7, v13

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    goto :goto_1

    :cond_4
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    if-eqz v5, :cond_5

    const-string v6, " and rowid <= ?"

    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " order by rowid limit 1;"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v6, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :cond_6
    :try_start_8
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :try_start_9
    const-string v5, "metadata"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/String;

    aput-object v4, v9, v13

    aput-object v17, v9, v12

    const-string v6, "raw_events_metadata"

    const-string v8, "app_id = ? and metadata_fingerprint = ?"

    const/4 v10, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object v5, v0

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    const/4 v14, 0x0

    move-object/from16 v13, v20

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_7

    move-object v0, v3

    check-cast v0, Lc5/i4;

    .line 1
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 2
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 3
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    const-string v2, "Raw event metadata record is missing. appId"

    .line 4
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :try_start_b
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->y1()Lcom/google/android/gms/internal/measurement/p3;

    move-result-object v6

    invoke-static {v6, v5}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v3

    check-cast v6, Lc5/i4;

    .line 5
    iget-object v6, v6, Lc5/i4;->j:Lc5/e3;

    .line 6
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 7
    iget-object v6, v6, Lc5/e3;->j:Lc5/c3;

    const-string v7, "Get multiple raw event metadata records, expected one. appId"

    .line 8
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    iput-object v5, v2, Lc5/n7;->a:Lcom/google/android/gms/internal/measurement/q3;

    const/4 v13, 0x3

    const-wide/16 v5, -0x1

    cmp-long v7, p3, v5

    if-eqz v7, :cond_9

    const-string v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v6, v13, [Ljava/lang/String;

    aput-object v4, v6, v14

    const/4 v12, 0x1

    aput-object v17, v6, v12

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v6, v11

    goto :goto_3

    :cond_9
    const/4 v11, 0x2

    const/4 v12, 0x1

    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    new-array v6, v11, [Ljava/lang/String;

    aput-object v4, v6, v14

    aput-object v17, v6, v12

    :goto_3
    move-object v8, v5

    move-object v9, v6

    const-string v5, "rowid"

    const-string v6, "name"

    const-string v7, "timestamp"

    const-string v10, "data"

    filled-new-array {v5, v6, v7, v10}, [Ljava/lang/String;

    move-result-object v7

    const-string v6, "raw_events"

    const/4 v10, 0x0

    const/16 v16, 0x0

    const-string v17, "rowid"
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/16 v18, 0x0

    move-object v5, v0

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    :try_start_e
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->v()Lcom/google/android/gms/internal/measurement/g3;

    move-result-object v9

    invoke-static {v9, v0}, Lc5/q7;->A(Lcom/google/android/gms/internal/measurement/n6;[B)Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/g3;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v9, 0x1

    :try_start_11
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/g3;->s(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 9
    iget-boolean v13, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v13, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    iput-boolean v14, v0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_b
    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/h3;->G(JLcom/google/android/gms/internal/measurement/h3;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v2, v6, v7, v0}, Lc5/n7;->a(JLcom/google/android/gms/internal/measurement/h3;)Z

    move-result v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-nez v0, :cond_c

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :catch_0
    move-exception v0

    const/4 v9, 0x1

    const/4 v10, 0x2

    :try_start_12
    move-object v6, v3

    check-cast v6, Lc5/i4;

    .line 11
    iget-object v6, v6, Lc5/i4;->j:Lc5/e3;

    .line 12
    invoke-static {v6}, Lc5/i4;->e(Lc5/y4;)V

    .line 13
    iget-object v6, v6, Lc5/e3;->f:Lc5/c3;

    const-string v7, "Data loss. Failed to merge raw event. appId"

    .line 14
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v11

    invoke-virtual {v6, v11, v7, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-nez v0, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :cond_d
    :try_start_13
    move-object v0, v3

    check-cast v0, Lc5/i4;

    .line 15
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 16
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 17
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v2, "Raw event data disappeared while in transaction. appId"

    .line 18
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_14
    move-object v2, v3

    check-cast v2, Lc5/i4;

    .line 19
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 20
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 21
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    const-string v5, "Data loss. Failed to merge raw event metadata. appId"

    .line 22
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v16, v15

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v16, v15

    goto :goto_6

    :goto_4
    move-object v4, v15

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v4, v16

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_6
    move-object/from16 v15, v16

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v15, v5

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v15, v4

    :goto_7
    :try_start_15
    check-cast v3, Lc5/i4;

    .line 23
    iget-object v2, v3, Lc5/i4;->j:Lc5/e3;

    .line 24
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 25
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    const-string v3, "Data loss. Error selecting raw event. appId"

    .line 26
    invoke-static {v4}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    if-eqz v15, :cond_e

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :catchall_4
    move-exception v0

    goto :goto_4

    :goto_8
    if-eqz v4, :cond_f

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lr3/r;->f(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/x4;->b()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object p1, v1, v2

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object p2, v1, v2

    .line 25
    .line 26
    const-string v2, "conditional_properties"

    .line 27
    .line 28
    const-string v3, "app_id=? and name=?"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lc5/x4;->a:Lc5/z4;

    .line 36
    .line 37
    check-cast v1, Lc5/i4;

    .line 38
    .line 39
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 40
    .line 41
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, v1, Lc5/i4;->n:Lc5/z2;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Lc5/z2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object v1, v2, Lc5/e3;->f:Lc5/c3;

    .line 55
    .line 56
    const-string v2, "Error deleting conditional property"

    .line 57
    .line 58
    invoke-virtual {v1, v2, p1, p2, v0}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final y(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    .line 23
    .line 24
    return-wide p1

    .line 25
    :cond_0
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    .line 26
    .line 27
    const-string v0, "Database returned empty set"

    .line 28
    .line 29
    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p2

    .line 36
    :try_start_2
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 37
    .line 38
    check-cast v0, Lc5/i4;

    .line 39
    .line 40
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 41
    .line 42
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 46
    .line 47
    const-string v2, "Database error"

    .line 48
    .line 49
    invoke-virtual {v0, p1, v2, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    .line 57
    .line 58
    :cond_1
    throw p1
.end method

.method public final z(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/i;->C()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    .line 23
    .line 24
    return-wide p1

    .line 25
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 26
    .line 27
    .line 28
    return-wide p3

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p2

    .line 32
    :try_start_1
    iget-object p3, p0, Lc5/x4;->a:Lc5/z4;

    .line 33
    .line 34
    check-cast p3, Lc5/i4;

    .line 35
    .line 36
    iget-object p3, p3, Lc5/i4;->j:Lc5/e3;

    .line 37
    .line 38
    invoke-static {p3}, Lc5/i4;->e(Lc5/y4;)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p3, Lc5/e3;->f:Lc5/c3;

    .line 42
    .line 43
    const-string p4, "Database error"

    .line 44
    .line 45
    invoke-virtual {p3, p1, p4, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    :cond_1
    throw p1
.end method
