.class public final Lc5/t6;
.super Lc5/r3;
.source "SourceFile"


# instance fields
.field public final c:Lc5/s6;

.field public d:Lc5/v2;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lc5/k6;

.field public final g:Lc5/f7;

.field public final h:Ljava/util/ArrayList;

.field public final j:Lc5/l6;


# direct methods
.method public constructor <init>(Lc5/i4;)V
    .locals 2

    invoke-direct {p0, p1}, Lc5/r3;-><init>(Lc5/i4;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc5/t6;->h:Ljava/util/ArrayList;

    new-instance v0, Lc5/f7;

    iget-object v1, p1, Lc5/i4;->p:Lc5/w;

    invoke-direct {v0, v1}, Lc5/f7;-><init>(Lw3/a;)V

    iput-object v0, p0, Lc5/t6;->g:Lc5/f7;

    new-instance v0, Lc5/s6;

    invoke-direct {v0, p0}, Lc5/s6;-><init>(Lc5/t6;)V

    iput-object v0, p0, Lc5/t6;->c:Lc5/s6;

    new-instance v0, Lc5/k6;

    invoke-direct {v0, p0, p1}, Lc5/k6;-><init>(Lc5/t6;Lc5/z4;)V

    iput-object v0, p0, Lc5/t6;->f:Lc5/k6;

    new-instance v0, Lc5/l6;

    invoke-direct {v0, p0, p1}, Lc5/l6;-><init>(Lc5/t6;Lc5/z4;)V

    iput-object v0, p0, Lc5/t6;->j:Lc5/l6;

    return-void
.end method

.method public static u(Lc5/t6;Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/t6;->d:Lc5/v2;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lc5/t6;->d:Lc5/v2;

    .line 10
    .line 11
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 12
    .line 13
    check-cast v0, Lc5/i4;

    .line 14
    .line 15
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 16
    .line 17
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "Disconnected from device MeasurementService"

    .line 21
    .line 22
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lc5/t6;->v()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Lc5/v2;Ls3/a;Lc5/y7;)V
    .locals 28
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lc5/t2;->b()V

    invoke-virtual/range {p0 .. p0}, Lc5/r3;->c()V

    move-object/from16 v4, p0

    .line 1
    iget-object v0, v4, Lc5/x4;->a:Lc5/z4;

    move-object v5, v0

    check-cast v5, Lc5/i4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v5, v0

    check-cast v5, Lc5/i4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x64

    const/16 v0, 0x64

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x3e9

    if-ge v8, v9, :cond_1d

    if-ne v0, v6, :cond_1d

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lc5/i4;->p()Lc5/y2;

    move-result-object v10

    const-string v11, "rowid"

    const-string v12, "Error reading entries from local database"

    .line 3
    invoke-virtual {v10}, Lc5/t2;->b()V

    .line 4
    iget-boolean v0, v10, Lc5/y2;->d:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v15, v10, Lc5/x4;->a:Lc5/z4;

    move-object v0, v15

    check-cast v0, Lc5/i4;

    .line 6
    iget-object v13, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "google_app_measurement_local.db"

    invoke-virtual {v13, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v13, 0x5

    const/4 v6, 0x0

    const/16 v16, 0x5

    :goto_1
    if-ge v6, v13, :cond_15

    const/4 v13, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v10}, Lc5/y2;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v7, :cond_1

    :try_start_1
    iput-boolean v13, v10, Lc5/y2;->d:Z

    :goto_2
    move/from16 v18, v8

    goto/16 :goto_1d

    :cond_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    const-string v18, "messages"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "rowid desc"

    const-string v25, "1"

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v26, -0x1

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-wide/from16 v17, v26

    :goto_3
    cmp-long v0, v17, v26

    if-eqz v0, :cond_3

    const-string v0, "rowid<?"

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x0

    aput-object v4, v13, v17

    move-object/from16 v20, v0

    move-object/from16 v21, v13

    goto :goto_4

    :cond_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_4
    const-string v0, "type"

    const-string v4, "entry"

    filled-new-array {v11, v0, v4}, [Ljava/lang/String;

    move-result-object v19

    const-string v18, "messages"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "rowid asc"

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :goto_5
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/4 v13, 0x1

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    const/4 v13, 0x2

    move-object/from16 v17, v11

    :try_start_6
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    :try_start_7
    array-length v0, v11
    :try_end_7
    .catch Ls3/b$a; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v18, v8

    const/4 v8, 0x0

    :try_start_8
    invoke-virtual {v13, v11, v8, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lc5/s;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/s;
    :try_end_8
    .catch Ls3/b$a; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v0, :cond_8

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v18, v8

    goto :goto_6

    :catch_0
    move/from16 v18, v8

    :catch_1
    :try_start_a
    move-object v0, v15

    check-cast v0, Lc5/i4;

    .line 9
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 10
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 11
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    const-string v8, "Failed to load event from local database"

    .line 12
    invoke-virtual {v0, v8}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_d

    :goto_6
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_4
    move/from16 v18, v8

    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    array-length v0, v11

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v8, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lc5/r7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/r7;
    :try_end_c
    .catch Ls3/b$a; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_2
    :try_start_e
    move-object v0, v15

    check-cast v0, Lc5/i4;

    .line 13
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 14
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 15
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    const-string v11, "Failed to load user property from local database"

    .line 16
    invoke-virtual {v0, v11}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_8

    goto :goto_a

    :goto_8
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_5
    if-ne v0, v13, :cond_6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    array-length v0, v11

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v8, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lc5/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/b;
    :try_end_10
    .catch Ls3/b$a; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_b

    :catch_3
    :try_start_12
    move-object v0, v15

    check-cast v0, Lc5/i4;

    .line 17
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 18
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 19
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    const-string v11, "Failed to load conditional user property from local database"

    .line 20
    invoke-virtual {v0, v11}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_8

    :goto_a
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :goto_b
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_6
    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    move-object v0, v15

    check-cast v0, Lc5/i4;

    .line 21
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 22
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 23
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    const-string v8, "Skipping app launch break"

    goto :goto_c

    .line 24
    :cond_7
    move-object v0, v15

    check-cast v0, Lc5/i4;

    .line 25
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 26
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 27
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    const-string v8, "Unknown record type in local database"

    .line 28
    :goto_c
    invoke-virtual {v0, v8}, Lc5/c3;->a(Ljava/lang/String;)V

    :cond_8
    :goto_d
    move-object/from16 v11, v17

    move/from16 v8, v18

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move/from16 v18, v8

    goto :goto_e

    :catch_5
    move/from16 v18, v8

    goto :goto_10

    :catch_6
    move-exception v0

    move/from16 v18, v8

    goto :goto_f

    :cond_9
    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    const/4 v11, 0x0

    :try_start_14
    aput-object v8, v0, v11

    const-string v8, "messages"

    const-string v13, "rowid <= ?"

    invoke-virtual {v7, v8, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    move-object v0, v15

    check-cast v0, Lc5/i4;

    .line 29
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 30
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 31
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    const-string v8, "Fewer entries removed from local database than expected"

    .line 32
    invoke-virtual {v0, v8}, Lc5/c3;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto/16 :goto_1e

    :catch_7
    move-exception v0

    goto/16 :goto_16

    :catch_8
    move-exception v0

    goto :goto_11

    :catch_9
    move-exception v0

    :goto_e
    const/4 v11, 0x0

    goto/16 :goto_16

    :catch_a
    move-exception v0

    :goto_f
    const/4 v11, 0x0

    goto :goto_11

    :catch_b
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    goto :goto_e

    :catch_c
    move/from16 v18, v8

    move-object/from16 v17, v11

    :catch_d
    :goto_10
    const/4 v11, 0x0

    :catch_e
    move-object v8, v12

    move/from16 v13, v16

    goto/16 :goto_17

    :catch_f
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    goto :goto_f

    :goto_11
    move-object v8, v12

    move/from16 v13, v16

    goto/16 :goto_18

    :catchall_4
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v11, 0x0

    goto :goto_12

    :catchall_5
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_12
    if-eqz v13, :cond_b

    :try_start_15
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catch_10
    move-exception v0

    goto :goto_13

    :catch_11
    move-exception v0

    goto :goto_14

    :catchall_6
    move-exception v0

    goto :goto_15

    :catch_12
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v11, 0x0

    :goto_13
    const/4 v4, 0x0

    goto :goto_16

    :catch_13
    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v11, 0x0

    :catch_14
    move-object v8, v12

    move/from16 v13, v16

    const/4 v4, 0x0

    goto :goto_17

    :catch_15
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v11, 0x0

    :goto_14
    move-object v8, v12

    move/from16 v13, v16

    const/4 v4, 0x0

    goto :goto_18

    :catchall_7
    move-exception v0

    const/4 v7, 0x0

    :goto_15
    const/4 v13, 0x0

    goto/16 :goto_1c

    :catch_16
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_c

    :try_start_16
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_c
    move-object v8, v15

    check-cast v8, Lc5/i4;

    .line 33
    iget-object v8, v8, Lc5/i4;->j:Lc5/e3;

    .line 34
    invoke-static {v8}, Lc5/i4;->e(Lc5/y4;)V

    .line 35
    iget-object v8, v8, Lc5/e3;->f:Lc5/c3;

    .line 36
    invoke-virtual {v8, v0, v12}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    iput-boolean v8, v10, Lc5/y2;->d:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-eqz v4, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_d
    move-object v8, v12

    if-eqz v7, :cond_e

    goto :goto_19

    :cond_e
    move/from16 v13, v16

    goto :goto_1a

    :catch_17
    move/from16 v18, v8

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-object v8, v12

    move/from16 v13, v16

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_17
    int-to-long v11, v13

    :try_start_17
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    add-int/lit8 v16, v13, 0x14

    if-eqz v4, :cond_f

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v7, :cond_12

    goto :goto_19

    :catch_18
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v17, v11

    move-object v8, v12

    move/from16 v13, v16

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_18
    :try_start_18
    move-object v11, v15

    check-cast v11, Lc5/i4;

    .line 37
    iget-object v11, v11, Lc5/i4;->j:Lc5/e3;

    .line 38
    invoke-static {v11}, Lc5/i4;->e(Lc5/y4;)V

    .line 39
    iget-object v11, v11, Lc5/e3;->f:Lc5/c3;

    .line 40
    invoke-virtual {v11, v0, v8}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x1

    iput-boolean v11, v10, Lc5/y2;->d:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v4, :cond_10

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v7, :cond_11

    move/from16 v16, v13

    :goto_19
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1b

    :cond_11
    :goto_1a
    move/from16 v16, v13

    :cond_12
    :goto_1b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p0

    move-object v12, v8

    move-object/from16 v11, v17

    move/from16 v8, v18

    const/4 v13, 0x5

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    move-object v13, v4

    :goto_1c
    if-eqz v13, :cond_13

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_14
    throw v0

    :cond_15
    move/from16 v18, v8

    check-cast v15, Lc5/i4;

    .line 41
    iget-object v0, v15, Lc5/i4;->j:Lc5/e3;

    .line 42
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    const-string v4, "Failed to read events from database in reasonable time"

    .line 43
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    invoke-virtual {v0, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    :goto_1d
    const/4 v13, 0x0

    goto :goto_1f

    :cond_16
    move/from16 v18, v8

    :goto_1e
    move-object v13, v14

    :goto_1f
    if-eqz v13, :cond_17

    .line 44
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    goto :goto_20

    :cond_17
    const/4 v4, 0x0

    :goto_20
    const/16 v6, 0x64

    if-eqz v2, :cond_18

    if-ge v4, v6, :cond_18

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v7, :cond_1c

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/a;

    instance-of v10, v0, Lc5/s;

    if-eqz v10, :cond_19

    :try_start_19
    check-cast v0, Lc5/s;

    invoke-interface {v1, v0, v3}, Lc5/v2;->h0(Lc5/s;Lc5/y7;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_23

    :catch_19
    move-exception v0

    .line 45
    iget-object v10, v5, Lc5/i4;->j:Lc5/e3;

    .line 46
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    const-string v11, "Failed to send event to the service"

    goto :goto_22

    .line 47
    :cond_19
    instance-of v10, v0, Lc5/r7;

    if-eqz v10, :cond_1a

    :try_start_1a
    check-cast v0, Lc5/r7;

    invoke-interface {v1, v0, v3}, Lc5/v2;->A(Lc5/r7;Lc5/y7;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_23

    :catch_1a
    move-exception v0

    .line 48
    iget-object v10, v5, Lc5/i4;->j:Lc5/e3;

    .line 49
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    const-string v11, "Failed to send user property to the service"

    goto :goto_22

    .line 50
    :cond_1a
    instance-of v10, v0, Lc5/b;

    if-eqz v10, :cond_1b

    :try_start_1b
    check-cast v0, Lc5/b;

    invoke-interface {v1, v0, v3}, Lc5/v2;->q0(Lc5/b;Lc5/y7;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    .line 51
    iget-object v10, v5, Lc5/i4;->j:Lc5/e3;

    .line 52
    invoke-static {v10}, Lc5/i4;->e(Lc5/y4;)V

    const-string v11, "Failed to send conditional user property to the service"

    .line 53
    :goto_22
    iget-object v10, v10, Lc5/e3;->f:Lc5/c3;

    invoke-virtual {v10, v0, v11}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    .line 54
    :cond_1b
    iget-object v0, v5, Lc5/i4;->j:Lc5/e3;

    .line 55
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    const-string v10, "Discarding data. Unrecognized parcel type."

    .line 56
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    invoke-virtual {v0, v10}, Lc5/c3;->a(Ljava/lang/String;)V

    :goto_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_1c
    add-int/lit8 v8, v18, 0x1

    move v0, v4

    move-object/from16 v4, p0

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method public final h(Lc5/b;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 8
    .line 9
    check-cast v0, Lc5/i4;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lc5/i4;->p()Lc5/y2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 19
    .line 20
    check-cast v1, Lc5/i4;

    .line 21
    .line 22
    iget-object v2, v1, Lc5/i4;->m:Lc5/v7;

    .line 23
    .line 24
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lc5/v7;->Y(Landroid/os/Parcelable;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    array-length v3, v2

    .line 35
    const/high16 v4, 0x20000

    .line 36
    .line 37
    if-le v3, v4, :cond_0

    .line 38
    .line 39
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 40
    .line 41
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "Conditional user property too long for local database. Sending directly to service"

    .line 45
    .line 46
    iget-object v0, v0, Lc5/e3;->g:Lc5/c3;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x2

    .line 54
    invoke-virtual {v0, v1, v2}, Lc5/y2;->o(I[B)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_0
    new-instance v1, Lc5/b;

    .line 59
    .line 60
    invoke-direct {v1, p1}, Lc5/b;-><init>(Lc5/b;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lc5/t6;->q(Z)Lc5/y7;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v2, Lc5/n6;

    .line 69
    .line 70
    invoke-direct {v2, p0, p1, v0, v1}, Lc5/n6;-><init>(Lc5/t6;Lc5/y7;ZLc5/b;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final n()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/t2;->b()V

    invoke-virtual {p0}, Lc5/r3;->c()V

    iget-object v0, p0, Lc5/t6;->d:Lc5/v2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/t6;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast v0, Lc5/i4;

    .line 17
    .line 18
    iget-object v0, v0, Lc5/i4;->m:Lc5/v7;

    .line 19
    .line 20
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lc5/v7;->j0()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v2, Lc5/r2;->m0:Lc5/q2;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lt v0, v2, :cond_0

    .line 41
    .line 42
    return v1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    return v0

    .line 45
    :cond_1
    return v1
.end method

.method public final p()Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc5/t6;->e:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-nez v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 18
    .line 19
    check-cast v0, Lc5/i4;

    .line 20
    .line 21
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 22
    .line 23
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "use_service"

    .line 34
    .line 35
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    const/4 v1, 0x1

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :cond_1
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 68
    .line 69
    check-cast v4, Lc5/i4;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 75
    .line 76
    check-cast v4, Lc5/i4;

    .line 77
    .line 78
    invoke-virtual {v4}, Lc5/i4;->o()Lc5/w2;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lc5/r3;->c()V

    .line 83
    .line 84
    .line 85
    iget v4, v4, Lc5/w2;->k:I

    .line 86
    .line 87
    if-ne v4, v1, :cond_2

    .line 88
    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_2
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 92
    .line 93
    check-cast v4, Lc5/i4;

    .line 94
    .line 95
    iget-object v4, v4, Lc5/i4;->j:Lc5/e3;

    .line 96
    .line 97
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 98
    .line 99
    .line 100
    iget-object v4, v4, Lc5/e3;->p:Lc5/c3;

    .line 101
    .line 102
    const-string v5, "Checking service availability"

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 108
    .line 109
    check-cast v4, Lc5/i4;

    .line 110
    .line 111
    iget-object v4, v4, Lc5/i4;->m:Lc5/v7;

    .line 112
    .line 113
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    sget-object v5, Lm3/f;->b:Lm3/f;

    .line 120
    .line 121
    iget-object v4, v4, Lc5/x4;->a:Lc5/z4;

    .line 122
    .line 123
    check-cast v4, Lc5/i4;

    .line 124
    .line 125
    iget-object v4, v4, Lc5/i4;->a:Landroid/content/Context;

    .line 126
    .line 127
    const v6, 0xbdfcb8

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v6, v4}, Lm3/f;->c(ILandroid/content/Context;)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_a

    .line 135
    .line 136
    if-eq v4, v1, :cond_9

    .line 137
    .line 138
    const/4 v5, 0x2

    .line 139
    if-eq v4, v5, :cond_7

    .line 140
    .line 141
    const/4 v0, 0x3

    .line 142
    if-eq v4, v0, :cond_5

    .line 143
    .line 144
    const/16 v0, 0x9

    .line 145
    .line 146
    if-eq v4, v0, :cond_4

    .line 147
    .line 148
    const/16 v0, 0x12

    .line 149
    .line 150
    if-eq v4, v0, :cond_3

    .line 151
    .line 152
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 153
    .line 154
    check-cast v0, Lc5/i4;

    .line 155
    .line 156
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 157
    .line 158
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 162
    .line 163
    const-string v1, "Unexpected service status"

    .line 164
    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v0, v4, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 174
    .line 175
    check-cast v0, Lc5/i4;

    .line 176
    .line 177
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 178
    .line 179
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 183
    .line 184
    const-string v3, "Service updating"

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_4
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 188
    .line 189
    check-cast v0, Lc5/i4;

    .line 190
    .line 191
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 192
    .line 193
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 197
    .line 198
    const-string v1, "Service invalid"

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_5
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 202
    .line 203
    check-cast v0, Lc5/i4;

    .line 204
    .line 205
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 206
    .line 207
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 211
    .line 212
    const-string v1, "Service disabled"

    .line 213
    .line 214
    :goto_1
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    :goto_2
    const/4 v1, 0x0

    .line 218
    goto :goto_3

    .line 219
    :cond_7
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 220
    .line 221
    check-cast v4, Lc5/i4;

    .line 222
    .line 223
    iget-object v4, v4, Lc5/i4;->j:Lc5/e3;

    .line 224
    .line 225
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 226
    .line 227
    .line 228
    iget-object v4, v4, Lc5/e3;->n:Lc5/c3;

    .line 229
    .line 230
    const-string v5, "Service container out of date"

    .line 231
    .line 232
    invoke-virtual {v4, v5}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object v4, p0, Lc5/x4;->a:Lc5/z4;

    .line 236
    .line 237
    check-cast v4, Lc5/i4;

    .line 238
    .line 239
    iget-object v4, v4, Lc5/i4;->m:Lc5/v7;

    .line 240
    .line 241
    invoke-static {v4}, Lc5/i4;->c(Lc5/y4;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Lc5/v7;->j0()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    const/16 v5, 0x4423

    .line 249
    .line 250
    if-ge v4, v5, :cond_8

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_8
    if-nez v0, :cond_6

    .line 254
    .line 255
    :goto_3
    move v3, v1

    .line 256
    const/4 v1, 0x0

    .line 257
    goto :goto_6

    .line 258
    :cond_9
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 259
    .line 260
    check-cast v0, Lc5/i4;

    .line 261
    .line 262
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 263
    .line 264
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 268
    .line 269
    const-string v4, "Service missing"

    .line 270
    .line 271
    invoke-virtual {v0, v4}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_a
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 276
    .line 277
    check-cast v0, Lc5/i4;

    .line 278
    .line 279
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 280
    .line 281
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 282
    .line 283
    .line 284
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 285
    .line 286
    const-string v3, "Service available"

    .line 287
    .line 288
    :goto_4
    invoke-virtual {v0, v3}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :goto_5
    const/4 v3, 0x1

    .line 292
    :goto_6
    if-nez v3, :cond_b

    .line 293
    .line 294
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 295
    .line 296
    check-cast v0, Lc5/i4;

    .line 297
    .line 298
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 299
    .line 300
    invoke-virtual {v0}, Lc5/e;->t()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_b

    .line 305
    .line 306
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 307
    .line 308
    check-cast v0, Lc5/i4;

    .line 309
    .line 310
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 311
    .line 312
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 316
    .line 317
    const-string v1, "No way to upload. Consider using the full version of Analytics"

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_b
    if-eqz v1, :cond_c

    .line 324
    .line 325
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 326
    .line 327
    check-cast v0, Lc5/i4;

    .line 328
    .line 329
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 330
    .line 331
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    .line 347
    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    .line 350
    .line 351
    :cond_c
    :goto_7
    move v1, v3

    .line 352
    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iput-object v0, p0, Lc5/t6;->e:Ljava/lang/Boolean;

    .line 357
    .line 358
    :cond_d
    iget-object v0, p0, Lc5/t6;->e:Ljava/lang/Boolean;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    return v0
.end method

.method public final q(Z)Lc5/y7;
    .locals 35
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lc5/i4;->o()Lc5/w2;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz p1, :cond_7

    .line 18
    .line 19
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 20
    .line 21
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    move-object v6, v0

    .line 27
    check-cast v6, Lc5/i4;

    .line 28
    .line 29
    iget-object v6, v6, Lc5/i4;->h:Lc5/s3;

    .line 30
    .line 31
    invoke-static {v6}, Lc5/i4;->c(Lc5/y4;)V

    .line 32
    .line 33
    .line 34
    iget-object v6, v6, Lc5/s3;->d:Lc5/p3;

    .line 35
    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    check-cast v0, Lc5/i4;

    .line 41
    .line 42
    iget-object v0, v0, Lc5/i4;->h:Lc5/s3;

    .line 43
    .line 44
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lc5/s3;->d:Lc5/p3;

    .line 48
    .line 49
    iget-object v6, v0, Lc5/p3;->e:Lc5/s3;

    .line 50
    .line 51
    invoke-virtual {v6}, Lc5/x4;->b()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Lc5/x4;->b()V

    .line 55
    .line 56
    .line 57
    iget-object v7, v0, Lc5/p3;->e:Lc5/s3;

    .line 58
    .line 59
    invoke-virtual {v7}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v8, v0, Lc5/p3;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v7, v8, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    cmp-long v9, v7, v3

    .line 70
    .line 71
    if-nez v9, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lc5/p3;->a()V

    .line 74
    .line 75
    .line 76
    move-wide v7, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v9, v6, Lc5/x4;->a:Lc5/z4;

    .line 79
    .line 80
    check-cast v9, Lc5/i4;

    .line 81
    .line 82
    iget-object v9, v9, Lc5/i4;->p:Lc5/w;

    .line 83
    .line 84
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    sub-long/2addr v7, v9

    .line 92
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    :goto_0
    iget-wide v9, v0, Lc5/p3;->d:J

    .line 97
    .line 98
    cmp-long v11, v7, v9

    .line 99
    .line 100
    if-gez v11, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    add-long/2addr v9, v9

    .line 104
    cmp-long v11, v7, v9

    .line 105
    .line 106
    if-lez v11, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0}, Lc5/p3;->a()V

    .line 109
    .line 110
    .line 111
    :goto_1
    move-object v0, v5

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {v6}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget-object v8, v0, Lc5/p3;->c:Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v6}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iget-object v8, v0, Lc5/p3;->b:Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v6, v8, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v8

    .line 133
    invoke-virtual {v0}, Lc5/p3;->a()V

    .line 134
    .line 135
    .line 136
    if-eqz v7, :cond_5

    .line 137
    .line 138
    cmp-long v0, v8, v3

    .line 139
    .line 140
    if-gtz v0, :cond_4

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    new-instance v0, Landroid/util/Pair;

    .line 144
    .line 145
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-direct {v0, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    :goto_2
    sget-object v0, Lc5/s3;->z:Landroid/util/Pair;

    .line 154
    .line 155
    :goto_3
    if-eqz v0, :cond_7

    .line 156
    .line 157
    sget-object v6, Lc5/s3;->z:Landroid/util/Pair;

    .line 158
    .line 159
    if-ne v0, v6, :cond_6

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_6
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 163
    .line 164
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    add-int/lit8 v6, v6, 0x1

    .line 187
    .line 188
    add-int/2addr v6, v7

    .line 189
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    .line 191
    .line 192
    const-string v6, ":"

    .line 193
    .line 194
    invoke-static {v8, v5, v6, v0}, Landroid/support/v4/media/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    :cond_7
    :goto_4
    move-object/from16 v17, v5

    .line 199
    .line 200
    invoke-virtual {v2}, Lc5/t2;->b()V

    .line 201
    .line 202
    .line 203
    new-instance v5, Lc5/y7;

    .line 204
    .line 205
    invoke-virtual {v2}, Lc5/w2;->h()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v2}, Lc5/w2;->n()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v2}, Lc5/r3;->c()V

    .line 214
    .line 215
    .line 216
    iget-object v9, v2, Lc5/w2;->d:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v2}, Lc5/r3;->c()V

    .line 219
    .line 220
    .line 221
    iget v0, v2, Lc5/w2;->e:I

    .line 222
    .line 223
    int-to-long v10, v0

    .line 224
    invoke-virtual {v2}, Lc5/r3;->c()V

    .line 225
    .line 226
    .line 227
    iget-object v0, v2, Lc5/w2;->f:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v12, v2, Lc5/w2;->f:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v6, v2, Lc5/x4;->a:Lc5/z4;

    .line 235
    .line 236
    move-object v13, v6

    .line 237
    check-cast v13, Lc5/i4;

    .line 238
    .line 239
    iget-object v0, v13, Lc5/i4;->g:Lc5/e;

    .line 240
    .line 241
    invoke-virtual {v0}, Lc5/e;->g()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Lc5/r3;->c()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Lc5/t2;->b()V

    .line 248
    .line 249
    .line 250
    iget-wide v14, v2, Lc5/w2;->g:J

    .line 251
    .line 252
    cmp-long v16, v14, v3

    .line 253
    .line 254
    if-nez v16, :cond_b

    .line 255
    .line 256
    iget-object v3, v13, Lc5/i4;->m:Lc5/v7;

    .line 257
    .line 258
    invoke-static {v3}, Lc5/i4;->c(Lc5/y4;)V

    .line 259
    .line 260
    .line 261
    iget-object v4, v13, Lc5/i4;->a:Landroid/content/Context;

    .line 262
    .line 263
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    invoke-virtual {v3}, Lc5/x4;->b()V

    .line 268
    .line 269
    .line 270
    invoke-static {v14}, Lr3/r;->f(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    invoke-static {}, Lc5/v7;->o()Ljava/security/MessageDigest;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v1, v3, Lc5/x4;->a:Lc5/z4;

    .line 282
    .line 283
    if-nez v0, :cond_8

    .line 284
    .line 285
    check-cast v1, Lc5/i4;

    .line 286
    .line 287
    iget-object v0, v1, Lc5/i4;->j:Lc5/e3;

    .line 288
    .line 289
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 290
    .line 291
    .line 292
    const-string v1, "Could not get MD5 instance"

    .line 293
    .line 294
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_8
    if-eqz v15, :cond_a

    .line 301
    .line 302
    :try_start_0
    invoke-virtual {v3, v4, v14}, Lc5/v7;->R(Landroid/content/Context;Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-nez v3, :cond_a

    .line 307
    .line 308
    invoke-static {v4}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    move-object v4, v1

    .line 313
    check-cast v4, Lc5/i4;

    .line 314
    .line 315
    iget-object v4, v4, Lc5/i4;->a:Landroid/content/Context;

    .line 316
    .line 317
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    const/16 v14, 0x40

    .line 322
    .line 323
    invoke-virtual {v3, v14, v4}, Ly3/b;->b(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 328
    .line 329
    if-eqz v3, :cond_9

    .line 330
    .line 331
    array-length v4, v3

    .line 332
    if-lez v4, :cond_9

    .line 333
    .line 334
    const/4 v4, 0x0

    .line 335
    aget-object v3, v3, v4

    .line 336
    .line 337
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v0}, Lc5/v7;->k0([B)J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    goto :goto_6

    .line 350
    :cond_9
    move-object v0, v1

    .line 351
    check-cast v0, Lc5/i4;

    .line 352
    .line 353
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 354
    .line 355
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 359
    .line 360
    const-string v3, "Could not get signatures"

    .line 361
    .line 362
    invoke-virtual {v0, v3}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .line 364
    .line 365
    :goto_5
    const-wide/16 v0, -0x1

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :catch_0
    move-exception v0

    .line 369
    check-cast v1, Lc5/i4;

    .line 370
    .line 371
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 372
    .line 373
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 374
    .line 375
    .line 376
    const-string v3, "Package name not found"

    .line 377
    .line 378
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 379
    .line 380
    invoke-virtual {v1, v0, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_a
    const-wide/16 v0, 0x0

    .line 384
    .line 385
    :goto_6
    iput-wide v0, v2, Lc5/w2;->g:J

    .line 386
    .line 387
    move-wide v15, v0

    .line 388
    goto :goto_7

    .line 389
    :cond_b
    move-wide v15, v14

    .line 390
    :goto_7
    invoke-virtual {v13}, Lc5/i4;->a()Z

    .line 391
    .line 392
    .line 393
    move-result v18

    .line 394
    iget-object v0, v13, Lc5/i4;->h:Lc5/s3;

    .line 395
    .line 396
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 397
    .line 398
    .line 399
    iget-boolean v1, v0, Lc5/s3;->q:Z

    .line 400
    .line 401
    xor-int/lit8 v19, v1, 0x1

    .line 402
    .line 403
    invoke-virtual {v2}, Lc5/t2;->b()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v13}, Lc5/i4;->a()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    iget-object v3, v13, Lc5/i4;->g:Lc5/e;

    .line 411
    .line 412
    if-nez v1, :cond_c

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_c
    sget-object v1, Lcom/google/android/gms/internal/measurement/fc;->b:Lcom/google/android/gms/internal/measurement/fc;

    .line 416
    .line 417
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/fc;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 418
    .line 419
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    check-cast v1, Lcom/google/android/gms/internal/measurement/gc;

    .line 424
    .line 425
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/gc;->a()V

    .line 426
    .line 427
    .line 428
    sget-object v1, Lc5/r2;->e0:Lc5/q2;

    .line 429
    .line 430
    const/4 v4, 0x0

    .line 431
    invoke-virtual {v3, v4, v1}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    iget-object v4, v13, Lc5/i4;->j:Lc5/e3;

    .line 436
    .line 437
    if-eqz v1, :cond_d

    .line 438
    .line 439
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 440
    .line 441
    .line 442
    const-string v1, "Disabled IID for tests."

    .line 443
    .line 444
    iget-object v4, v4, Lc5/e3;->p:Lc5/c3;

    .line 445
    .line 446
    invoke-virtual {v4, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_d
    :try_start_1
    move-object v1, v6

    .line 451
    check-cast v1, Lc5/i4;

    .line 452
    .line 453
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 454
    .line 455
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    const-string v14, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 460
    .line 461
    invoke-virtual {v1, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 465
    if-nez v1, :cond_e

    .line 466
    .line 467
    :catch_1
    :goto_8
    move-wide/from16 v23, v15

    .line 468
    .line 469
    move-object/from16 v16, v12

    .line 470
    .line 471
    goto :goto_c

    .line 472
    :cond_e
    const/4 v14, 0x1

    .line 473
    :try_start_2
    new-array v14, v14, [Ljava/lang/Class;

    .line 474
    .line 475
    const-class v20, Landroid/content/Context;

    .line 476
    .line 477
    const/16 v21, 0x0

    .line 478
    .line 479
    aput-object v20, v14, v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 480
    .line 481
    move-wide/from16 v23, v15

    .line 482
    .line 483
    :try_start_3
    const-string v15, "getInstance"

    .line 484
    .line 485
    invoke-virtual {v1, v15, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 486
    .line 487
    .line 488
    move-result-object v14

    .line 489
    const/4 v15, 0x1

    .line 490
    new-array v15, v15, [Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v6, Lc5/i4;

    .line 493
    .line 494
    iget-object v6, v6, Lc5/i4;->a:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 495
    .line 496
    move-object/from16 v16, v12

    .line 497
    .line 498
    const/4 v12, 0x0

    .line 499
    :try_start_4
    aput-object v6, v15, v12

    .line 500
    .line 501
    const/4 v6, 0x0

    .line 502
    invoke-virtual {v14, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 506
    if-nez v6, :cond_f

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_f
    :try_start_5
    const-string v14, "getFirebaseInstanceId"

    .line 510
    .line 511
    new-array v15, v12, [Ljava/lang/Class;

    .line 512
    .line 513
    invoke-virtual {v1, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    new-array v12, v12, [Ljava/lang/Object;

    .line 518
    .line 519
    invoke-virtual {v1, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :catch_2
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 527
    .line 528
    .line 529
    const-string v1, "Failed to retrieve Firebase Instance Id"

    .line 530
    .line 531
    iget-object v4, v4, Lc5/e3;->l:Lc5/c3;

    .line 532
    .line 533
    goto :goto_b

    .line 534
    :catch_3
    :goto_9
    move-object/from16 v16, v12

    .line 535
    .line 536
    goto :goto_a

    .line 537
    :catch_4
    move-wide/from16 v23, v15

    .line 538
    .line 539
    goto :goto_9

    .line 540
    :catch_5
    :goto_a
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 541
    .line 542
    .line 543
    const-string v1, "Failed to obtain Firebase Analytics instance"

    .line 544
    .line 545
    iget-object v4, v4, Lc5/e3;->k:Lc5/c3;

    .line 546
    .line 547
    :goto_b
    invoke-virtual {v4, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    :goto_c
    const/4 v1, 0x0

    .line 551
    :goto_d
    move-object/from16 v20, v1

    .line 552
    .line 553
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 554
    .line 555
    .line 556
    iget-object v1, v0, Lc5/s3;->e:Lc5/o3;

    .line 557
    .line 558
    invoke-virtual {v1}, Lc5/o3;->a()J

    .line 559
    .line 560
    .line 561
    move-result-wide v14

    .line 562
    iget-wide v12, v13, Lc5/i4;->K:J

    .line 563
    .line 564
    const-wide/16 v21, 0x0

    .line 565
    .line 566
    cmp-long v1, v14, v21

    .line 567
    .line 568
    if-nez v1, :cond_10

    .line 569
    .line 570
    goto :goto_e

    .line 571
    :cond_10
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 572
    .line 573
    .line 574
    move-result-wide v12

    .line 575
    :goto_e
    move-wide/from16 v25, v12

    .line 576
    .line 577
    invoke-virtual {v2}, Lc5/r3;->c()V

    .line 578
    .line 579
    .line 580
    iget v1, v2, Lc5/w2;->k:I

    .line 581
    .line 582
    const-string v4, "google_analytics_adid_collection_enabled"

    .line 583
    .line 584
    invoke-virtual {v3, v4}, Lc5/e;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    if-eqz v4, :cond_12

    .line 589
    .line 590
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-eqz v4, :cond_11

    .line 595
    .line 596
    goto :goto_f

    .line 597
    :cond_11
    const/4 v4, 0x0

    .line 598
    goto :goto_10

    .line 599
    :cond_12
    :goto_f
    const/4 v4, 0x1

    .line 600
    :goto_10
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    const-string v12, "deferred_analytics_collection"

    .line 611
    .line 612
    const/4 v13, 0x0

    .line 613
    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 614
    .line 615
    .line 616
    move-result v27

    .line 617
    invoke-virtual {v2}, Lc5/r3;->c()V

    .line 618
    .line 619
    .line 620
    iget-object v15, v2, Lc5/w2;->m:Ljava/lang/String;

    .line 621
    .line 622
    const-string v6, "google_analytics_default_allow_ad_personalization_signals"

    .line 623
    .line 624
    invoke-virtual {v3, v6}, Lc5/e;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    if-nez v6, :cond_13

    .line 629
    .line 630
    const/4 v6, 0x0

    .line 631
    goto :goto_11

    .line 632
    :cond_13
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 633
    .line 634
    .line 635
    move-result v6

    .line 636
    xor-int/lit8 v6, v6, 0x1

    .line 637
    .line 638
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 639
    .line 640
    .line 641
    move-result-object v6

    .line 642
    :goto_11
    move-object/from16 v29, v6

    .line 643
    .line 644
    iget-wide v12, v2, Lc5/w2;->h:J

    .line 645
    .line 646
    iget-object v6, v2, Lc5/w2;->j:Ljava/util/List;

    .line 647
    .line 648
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xa;->b()V

    .line 649
    .line 650
    .line 651
    sget-object v14, Lc5/r2;->c0:Lc5/q2;

    .line 652
    .line 653
    move-object/from16 v28, v6

    .line 654
    .line 655
    const/4 v6, 0x0

    .line 656
    invoke-virtual {v3, v6, v14}, Lc5/e;->p(Ljava/lang/String;Lc5/q2;)Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-eqz v3, :cond_14

    .line 661
    .line 662
    invoke-virtual {v2}, Lc5/r3;->c()V

    .line 663
    .line 664
    .line 665
    iget-object v3, v2, Lc5/w2;->n:Ljava/lang/String;

    .line 666
    .line 667
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    iget-object v2, v2, Lc5/w2;->n:Ljava/lang/String;

    .line 671
    .line 672
    move-object/from16 v33, v2

    .line 673
    .line 674
    goto :goto_12

    .line 675
    :cond_14
    move-object/from16 v33, v6

    .line 676
    .line 677
    :goto_12
    const-wide/32 v2, 0xb3b0

    .line 678
    .line 679
    .line 680
    move-wide/from16 v30, v12

    .line 681
    .line 682
    move-wide v13, v2

    .line 683
    const-wide/16 v21, 0x0

    .line 684
    .line 685
    invoke-static {v0}, Lc5/i4;->c(Lc5/y4;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0}, Lc5/s3;->n()Lc5/f;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-virtual {v0}, Lc5/f;->d()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v34

    .line 696
    move-object/from16 v0, v28

    .line 697
    .line 698
    move-object v6, v5

    .line 699
    move-object/from16 v12, v16

    .line 700
    .line 701
    move-object v2, v15

    .line 702
    move-wide/from16 v15, v23

    .line 703
    .line 704
    move-wide/from16 v23, v25

    .line 705
    .line 706
    move/from16 v25, v1

    .line 707
    .line 708
    move/from16 v26, v4

    .line 709
    .line 710
    move-object/from16 v28, v2

    .line 711
    .line 712
    move-object/from16 v32, v0

    .line 713
    .line 714
    invoke-direct/range {v6 .. v34}, Lc5/y7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    return-object v5
.end method

.method public final r()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    check-cast v0, Lc5/i4;

    .line 7
    .line 8
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 9
    .line 10
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lc5/t6;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 24
    .line 25
    const-string v4, "Processing queued up service tasks"

    .line 26
    .line 27
    invoke-virtual {v1, v3, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Runnable;

    .line 45
    .line 46
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v3

    .line 51
    iget-object v4, v0, Lc5/i4;->j:Lc5/e3;

    .line 52
    .line 53
    invoke-static {v4}, Lc5/i4;->e(Lc5/y4;)V

    .line 54
    .line 55
    .line 56
    const-string v5, "Task exception while flushing queue"

    .line 57
    .line 58
    iget-object v4, v4, Lc5/e3;->f:Lc5/c3;

    .line 59
    .line 60
    invoke-virtual {v4, v3, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lc5/t6;->j:Lc5/l6;

    .line 68
    .line 69
    invoke-virtual {v0}, Lc5/l;->a()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final s()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/t6;->g:Lc5/f7;

    .line 5
    .line 6
    iget-object v1, v0, Lc5/f7;->a:Lw3/a;

    .line 7
    .line 8
    check-cast v1, Lc5/w;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, v0, Lc5/f7;->b:J

    .line 18
    .line 19
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 20
    .line 21
    check-cast v0, Lc5/i4;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lc5/r2;->J:Lc5/q2;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lc5/q2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lc5/t6;->f:Lc5/k6;

    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Lc5/l;->c(J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final t(Ljava/lang/Runnable;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/t6;->n()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lc5/t6;->h:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 21
    .line 22
    check-cast v2, Lc5/i4;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    int-to-long v3, v1

    .line 28
    const-wide/16 v5, 0x3e8

    .line 29
    .line 30
    cmp-long v1, v3, v5

    .line 31
    .line 32
    if-ltz v1, :cond_1

    .line 33
    .line 34
    iget-object p1, v2, Lc5/i4;->j:Lc5/e3;

    .line 35
    .line 36
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "Discarding data. Max runnable queue size reached"

    .line 40
    .line 41
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lc5/t6;->j:Lc5/l6;

    .line 51
    .line 52
    const-wide/32 v0, 0xea60

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lc5/l;->c(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lc5/t6;->v()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final v()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/t6;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lc5/t6;->p()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 21
    .line 22
    check-cast v0, Lc5/i4;

    .line 23
    .line 24
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 25
    .line 26
    invoke-virtual {v0}, Lc5/e;->t()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 33
    .line 34
    check-cast v0, Lc5/i4;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 40
    .line 41
    check-cast v0, Lc5/i4;

    .line 42
    .line 43
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 55
    .line 56
    check-cast v2, Lc5/i4;

    .line 57
    .line 58
    iget-object v2, v2, Lc5/i4;->a:Landroid/content/Context;

    .line 59
    .line 60
    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/high16 v2, 0x10000

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-lez v0, :cond_1

    .line 79
    .line 80
    new-instance v0, Landroid/content/Intent;

    .line 81
    .line 82
    const-string v1, "com.google.android.gms.measurement.START"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Landroid/content/ComponentName;

    .line 88
    .line 89
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 90
    .line 91
    check-cast v2, Lc5/i4;

    .line 92
    .line 93
    iget-object v3, v2, Lc5/i4;->a:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    .line 99
    .line 100
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lc5/t6;->c:Lc5/s6;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lc5/s6;->b(Landroid/content/Intent;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 113
    .line 114
    check-cast v0, Lc5/i4;

    .line 115
    .line 116
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 117
    .line 118
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 122
    .line 123
    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    return-void

    .line 129
    :cond_3
    iget-object v0, p0, Lc5/t6;->c:Lc5/s6;

    .line 130
    .line 131
    iget-object v1, v0, Lc5/s6;->c:Lc5/t6;

    .line 132
    .line 133
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lc5/s6;->c:Lc5/t6;

    .line 137
    .line 138
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 139
    .line 140
    check-cast v1, Lc5/i4;

    .line 141
    .line 142
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 143
    .line 144
    monitor-enter v0

    .line 145
    :try_start_0
    iget-boolean v2, v0, Lc5/s6;->a:Z

    .line 146
    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    iget-object v1, v0, Lc5/s6;->c:Lc5/t6;

    .line 150
    .line 151
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 152
    .line 153
    check-cast v1, Lc5/i4;

    .line 154
    .line 155
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 156
    .line 157
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 161
    .line 162
    const-string v2, "Connection attempt already in progress"

    .line 163
    .line 164
    :goto_0
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    iget-object v2, v0, Lc5/s6;->b:Lc5/a3;

    .line 169
    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    iget-object v2, v0, Lc5/s6;->b:Lc5/a3;

    .line 173
    .line 174
    invoke-virtual {v2}, Lr3/c;->e()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_5

    .line 179
    .line 180
    iget-object v2, v0, Lc5/s6;->b:Lc5/a3;

    .line 181
    .line 182
    invoke-virtual {v2}, Lr3/c;->isConnected()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_6

    .line 187
    .line 188
    :cond_5
    iget-object v1, v0, Lc5/s6;->c:Lc5/t6;

    .line 189
    .line 190
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 191
    .line 192
    check-cast v1, Lc5/i4;

    .line 193
    .line 194
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 195
    .line 196
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 200
    .line 201
    const-string v2, "Already awaiting connection attempt"

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_6
    new-instance v2, Lc5/a3;

    .line 205
    .line 206
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-direct {v2, v1, v3, v0, v0}, Lc5/a3;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc5/s6;Lc5/s6;)V

    .line 211
    .line 212
    .line 213
    iput-object v2, v0, Lc5/s6;->b:Lc5/a3;

    .line 214
    .line 215
    iget-object v1, v0, Lc5/s6;->c:Lc5/t6;

    .line 216
    .line 217
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 218
    .line 219
    check-cast v1, Lc5/i4;

    .line 220
    .line 221
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 222
    .line 223
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 227
    .line 228
    const-string v2, "Connecting to remote service"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const/4 v1, 0x1

    .line 234
    iput-boolean v1, v0, Lc5/s6;->a:Z

    .line 235
    .line 236
    iget-object v1, v0, Lc5/s6;->b:Lc5/a3;

    .line 237
    .line 238
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lc5/s6;->b:Lc5/a3;

    .line 242
    .line 243
    invoke-virtual {v1}, Lr3/c;->p()V

    .line 244
    .line 245
    .line 246
    :goto_1
    monitor-exit v0

    .line 247
    return-void

    .line 248
    :catchall_0
    move-exception v1

    .line 249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    throw v1
.end method

.method public final w()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc5/t2;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc5/r3;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc5/t6;->c:Lc5/s6;

    .line 8
    .line 9
    iget-object v1, v0, Lc5/s6;->b:Lc5/a3;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lc5/s6;->b:Lc5/a3;

    .line 14
    .line 15
    invoke-virtual {v1}, Lr3/c;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lc5/s6;->b:Lc5/a3;

    .line 22
    .line 23
    invoke-virtual {v1}, Lr3/c;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v1, v0, Lc5/s6;->b:Lc5/a3;

    .line 30
    .line 31
    invoke-virtual {v1}, Lr3/c;->h()V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lc5/s6;->b:Lc5/a3;

    .line 36
    .line 37
    :try_start_0
    invoke-static {}, Lv3/a;->b()Lv3/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lc5/x4;->a:Lc5/z4;

    .line 42
    .line 43
    check-cast v2, Lc5/i4;

    .line 44
    .line 45
    iget-object v2, v2, Lc5/i4;->a:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v3, p0, Lc5/t6;->c:Lc5/s6;

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Lv3/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    iput-object v1, p0, Lc5/t6;->d:Lc5/v2;

    .line 53
    .line 54
    return-void
.end method

.method public final x(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/t2;->b()V

    invoke-virtual {p0}, Lc5/r3;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc5/t6;->q(Z)Lc5/y7;

    move-result-object v0

    new-instance v1, Lc5/s4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Lc5/s4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    return-void
.end method
