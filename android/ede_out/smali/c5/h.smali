.class public final Lc5/h;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lc5/i;


# direct methods
.method public constructor <init>(Lc5/i;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lc5/h;->a:Lc5/i;

    const/4 p1, 0x1

    const-string v0, "google_app_measurement.db"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/h;->a:Lc5/i;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/i;->e:Lc5/f7;

    .line 4
    .line 5
    iget-object v2, v0, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    move-object v3, v2

    .line 8
    check-cast v3, Lc5/i4;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-wide v3, v1, Lc5/f7;->b:J

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v7, v3, v5

    .line 18
    .line 19
    if-nez v7, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v3, v1, Lc5/f7;->a:Lw3/a;

    .line 23
    .line 24
    check-cast v3, Lc5/w;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iget-wide v7, v1, Lc5/f7;->b:J

    .line 34
    .line 35
    sub-long/2addr v3, v7

    .line 36
    const-wide/32 v7, 0x36ee80

    .line 37
    .line 38
    .line 39
    cmp-long v1, v3, v7

    .line 40
    .line 41
    if-ltz v1, :cond_1

    .line 42
    .line 43
    :goto_0
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_1
    if-eqz v1, :cond_3

    .line 47
    .line 48
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-object v0

    .line 53
    :catch_0
    iget-object v0, v0, Lc5/i;->e:Lc5/f7;

    .line 54
    .line 55
    iget-object v1, v0, Lc5/f7;->a:Lw3/a;

    .line 56
    .line 57
    check-cast v1, Lc5/w;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    iput-wide v3, v0, Lc5/f7;->b:J

    .line 67
    .line 68
    move-object v1, v2

    .line 69
    check-cast v1, Lc5/i4;

    .line 70
    .line 71
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 72
    .line 73
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 74
    .line 75
    .line 76
    const-string v3, "Opening the database failed, dropping and recreating it"

    .line 77
    .line 78
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move-object v1, v2

    .line 84
    check-cast v1, Lc5/i4;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-object v1, v2

    .line 90
    check-cast v1, Lc5/i4;

    .line 91
    .line 92
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 93
    .line 94
    const-string v3, "google_app_measurement.db"

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_2

    .line 105
    .line 106
    move-object v1, v2

    .line 107
    check-cast v1, Lc5/i4;

    .line 108
    .line 109
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 110
    .line 111
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 112
    .line 113
    .line 114
    const-string v4, "Failed to delete corrupted db file"

    .line 115
    .line 116
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 117
    .line 118
    invoke-virtual {v1, v3, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-wide v5, v0, Lc5/f7;->b:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    return-object v1

    .line 128
    :catch_1
    move-exception v0

    .line 129
    check-cast v2, Lc5/i4;

    .line 130
    .line 131
    iget-object v1, v2, Lc5/i4;->j:Lc5/e3;

    .line 132
    .line 133
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "Failed to open freshly created database"

    .line 137
    .line 138
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 139
    .line 140
    invoke-virtual {v1, v0, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_3
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    .line 145
    .line 146
    const-string v1, "Database open failed"

    .line 147
    .line 148
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/h;->a:Lc5/i;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lc5/j;->c(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/h;->a:Lc5/i;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v1, Lc5/i4;

    .line 6
    .line 7
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "events"

    .line 13
    .line 14
    const-string v5, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 15
    .line 16
    const-string v6, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 17
    .line 18
    sget-object v7, Lc5/i;->f:[Ljava/lang/String;

    .line 19
    .line 20
    move-object v3, p1

    .line 21
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast v1, Lc5/i4;

    .line 27
    .line 28
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 29
    .line 30
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "conditional_properties"

    .line 34
    .line 35
    const-string v5, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    .line 36
    .line 37
    const-string v6, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    move-object v3, p1

    .line 41
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 45
    .line 46
    check-cast v1, Lc5/i4;

    .line 47
    .line 48
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 49
    .line 50
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 51
    .line 52
    .line 53
    const-string v4, "user_attributes"

    .line 54
    .line 55
    const-string v5, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 56
    .line 57
    const-string v6, "app_id,name,set_timestamp,value"

    .line 58
    .line 59
    sget-object v7, Lc5/i;->g:[Ljava/lang/String;

    .line 60
    .line 61
    move-object v3, p1

    .line 62
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 66
    .line 67
    check-cast v1, Lc5/i4;

    .line 68
    .line 69
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 70
    .line 71
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 72
    .line 73
    .line 74
    const-string v4, "apps"

    .line 75
    .line 76
    const-string v5, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    .line 77
    .line 78
    const-string v6, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 79
    .line 80
    sget-object v7, Lc5/i;->h:[Ljava/lang/String;

    .line 81
    .line 82
    move-object v3, p1

    .line 83
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 87
    .line 88
    check-cast v1, Lc5/i4;

    .line 89
    .line 90
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 91
    .line 92
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 93
    .line 94
    .line 95
    const-string v4, "queue"

    .line 96
    .line 97
    const-string v5, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 98
    .line 99
    const-string v6, "app_id,bundle_end_timestamp,data"

    .line 100
    .line 101
    sget-object v7, Lc5/i;->k:[Ljava/lang/String;

    .line 102
    .line 103
    move-object v3, p1

    .line 104
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 108
    .line 109
    check-cast v1, Lc5/i4;

    .line 110
    .line 111
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 112
    .line 113
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 114
    .line 115
    .line 116
    const-string v4, "raw_events_metadata"

    .line 117
    .line 118
    const-string v5, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    .line 119
    .line 120
    const-string v6, "app_id,metadata_fingerprint,metadata"

    .line 121
    .line 122
    const/4 v7, 0x0

    .line 123
    move-object v3, p1

    .line 124
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 128
    .line 129
    check-cast v1, Lc5/i4;

    .line 130
    .line 131
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 132
    .line 133
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 134
    .line 135
    .line 136
    const-string v4, "raw_events"

    .line 137
    .line 138
    const-string v5, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 139
    .line 140
    const-string v6, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 141
    .line 142
    sget-object v7, Lc5/i;->j:[Ljava/lang/String;

    .line 143
    .line 144
    move-object v3, p1

    .line 145
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 149
    .line 150
    check-cast v1, Lc5/i4;

    .line 151
    .line 152
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 153
    .line 154
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 155
    .line 156
    .line 157
    const-string v4, "event_filters"

    .line 158
    .line 159
    const-string v5, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    .line 160
    .line 161
    const-string v6, "app_id,audience_id,filter_id,event_name,data"

    .line 162
    .line 163
    sget-object v7, Lc5/i;->l:[Ljava/lang/String;

    .line 164
    .line 165
    move-object v3, p1

    .line 166
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 170
    .line 171
    check-cast v1, Lc5/i4;

    .line 172
    .line 173
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 174
    .line 175
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 176
    .line 177
    .line 178
    const-string v4, "property_filters"

    .line 179
    .line 180
    const-string v5, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    .line 181
    .line 182
    const-string v6, "app_id,audience_id,filter_id,property_name,data"

    .line 183
    .line 184
    sget-object v7, Lc5/i;->m:[Ljava/lang/String;

    .line 185
    .line 186
    move-object v3, p1

    .line 187
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 191
    .line 192
    check-cast v1, Lc5/i4;

    .line 193
    .line 194
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 195
    .line 196
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 197
    .line 198
    .line 199
    const-string v4, "audience_filter_values"

    .line 200
    .line 201
    const-string v5, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    .line 202
    .line 203
    const-string v6, "app_id,audience_id,current_results"

    .line 204
    .line 205
    const/4 v7, 0x0

    .line 206
    move-object v3, p1

    .line 207
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 211
    .line 212
    check-cast v1, Lc5/i4;

    .line 213
    .line 214
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 215
    .line 216
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 217
    .line 218
    .line 219
    const-string v4, "app2"

    .line 220
    .line 221
    const-string v5, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    .line 222
    .line 223
    const-string v6, "app_id,first_open_count"

    .line 224
    .line 225
    sget-object v7, Lc5/i;->n:[Ljava/lang/String;

    .line 226
    .line 227
    move-object v3, p1

    .line 228
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 232
    .line 233
    check-cast v1, Lc5/i4;

    .line 234
    .line 235
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 236
    .line 237
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 238
    .line 239
    .line 240
    const-string v4, "main_event_params"

    .line 241
    .line 242
    const-string v5, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 243
    .line 244
    const-string v6, "app_id,event_id,children_to_process,main_event"

    .line 245
    .line 246
    const/4 v7, 0x0

    .line 247
    move-object v3, p1

    .line 248
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 252
    .line 253
    check-cast v1, Lc5/i4;

    .line 254
    .line 255
    iget-object v2, v1, Lc5/i4;->j:Lc5/e3;

    .line 256
    .line 257
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 258
    .line 259
    .line 260
    const-string v4, "default_event_params"

    .line 261
    .line 262
    const-string v5, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 263
    .line 264
    const-string v6, "app_id,parameters"

    .line 265
    .line 266
    const/4 v7, 0x0

    .line 267
    move-object v3, p1

    .line 268
    invoke-static/range {v2 .. v7}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 272
    .line 273
    check-cast v0, Lc5/i4;

    .line 274
    .line 275
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 276
    .line 277
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 278
    .line 279
    .line 280
    const-string v3, "consent_settings"

    .line 281
    .line 282
    const-string v4, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    .line 283
    .line 284
    const-string v5, "app_id,consent_state"

    .line 285
    .line 286
    const/4 v6, 0x0

    .line 287
    move-object v2, p1

    .line 288
    invoke-static/range {v1 .. v6}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
