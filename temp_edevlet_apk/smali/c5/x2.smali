.class public final Lc5/x2;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lc5/y2;


# direct methods
.method public constructor <init>(Lc5/y2;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lc5/x2;->a:Lc5/y2;

    const/4 p1, 0x1

    const-string v0, "google_app_measurement_local.db"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    iget-object v0, p0, Lc5/x2;->a:Lc5/y2;

    .line 7
    .line 8
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 9
    .line 10
    check-cast v1, Lc5/i4;

    .line 11
    .line 12
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 13
    .line 14
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "Opening the local database failed, dropping and recreating it"

    .line 18
    .line 19
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 25
    .line 26
    check-cast v1, Lc5/i4;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 32
    .line 33
    check-cast v1, Lc5/i4;

    .line 34
    .line 35
    iget-object v1, v1, Lc5/i4;->a:Landroid/content/Context;

    .line 36
    .line 37
    const-string v2, "google_app_measurement_local.db"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 50
    .line 51
    check-cast v1, Lc5/i4;

    .line 52
    .line 53
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 54
    .line 55
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "Failed to delete corrupted local db file"

    .line 59
    .line 60
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    return-object v0

    .line 70
    :catch_1
    move-exception v1

    .line 71
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 72
    .line 73
    check-cast v0, Lc5/i4;

    .line 74
    .line 75
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 76
    .line 77
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "Failed to open local database. Events will bypass local storage"

    .line 81
    .line 82
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    return-object v0

    .line 89
    :catch_2
    move-exception v0

    .line 90
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x2;->a:Lc5/y2;

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
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/x2;->a:Lc5/y2;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v1, v0, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "messages"

    .line 13
    .line 14
    const-string v4, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)"

    .line 15
    .line 16
    const-string v5, "type,entry"

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v2, p1

    .line 20
    invoke-static/range {v1 .. v6}, Lc5/j;->b(Lc5/e3;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
