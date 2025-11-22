package c5;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class x2 extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y2 f2113a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x2(y2 y2Var, Context context) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f2113a = y2Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e10) {
            throw e10;
        } catch (SQLiteException unused) {
            y2 y2Var = this.f2113a;
            e3 e3Var = ((i4) y2Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Opening the local database failed, dropping and recreating it");
            ((i4) y2Var.f2115a).getClass();
            if (!((i4) y2Var.f2115a).f1628a.getDatabasePath("google_app_measurement_local.db").delete()) {
                e3 e3Var2 = ((i4) y2Var.f2115a).f1635j;
                i4.e(e3Var2);
                e3Var2.f.b("google_app_measurement_local.db", "Failed to delete corrupted local db file");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e11) {
                e3 e3Var3 = ((i4) y2Var.f2115a).f1635j;
                i4.e(e3Var3);
                e3Var3.f.b(e11, "Failed to open local database. Events will bypass local storage");
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        e3 e3Var = ((i4) this.f2113a.f2115a).f1635j;
        i4.e(e3Var);
        j.c(e3Var, sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int r22, int r32) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws Throwable {
        e3 e3Var = ((i4) this.f2113a.f2115a).f1635j;
        i4.e(e3Var);
        j.b(e3Var, sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int r22, int r32) {
    }
}
