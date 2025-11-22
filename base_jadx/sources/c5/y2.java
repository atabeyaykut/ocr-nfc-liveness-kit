package c5;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class y2 extends r3 {

    /* renamed from: c, reason: collision with root package name */
    public final x2 f2142c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2143d;

    public y2(i4 i4Var) {
        super(i4Var);
        i4 i4Var2 = (i4) this.f2115a;
        Context context = i4Var2.f1628a;
        i4Var2.getClass();
        this.f2142c = new x2(this, context);
    }

    @Override // c5.r3
    public final boolean e() {
        return false;
    }

    @WorkerThread
    public final SQLiteDatabase g() throws SQLiteException {
        if (this.f2143d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f2142c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f2143d = true;
        return null;
    }

    @WorkerThread
    public final void h() {
        int r12;
        z4 z4Var = this.f2115a;
        b();
        try {
            SQLiteDatabase sQLiteDatabaseG = g();
            if (sQLiteDatabaseG == null || (r12 = sQLiteDatabaseG.delete("messages", null, null)) <= 0) {
                return;
            }
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.b(Integer.valueOf(r12), "Reset local analytics data. records");
        } catch (SQLiteException e10) {
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f.b(e10, "Error resetting local analytics data. error");
        }
    }

    @WorkerThread
    public final void n() {
        b();
        if (this.f2143d) {
            return;
        }
        z4 z4Var = this.f2115a;
        i4 i4Var = (i4) z4Var;
        Context context = i4Var.f1628a;
        i4Var.getClass();
        if (context.getDatabasePath("google_app_measurement_local.db").exists()) {
            int r52 = 5;
            for (int r42 = 0; r42 < 5; r42++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    try {
                        SQLiteDatabase sQLiteDatabaseG = g();
                        if (sQLiteDatabaseG == null) {
                            this.f2143d = true;
                            return;
                        }
                        sQLiteDatabaseG.beginTransaction();
                        sQLiteDatabaseG.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        sQLiteDatabaseG.setTransactionSuccessful();
                        sQLiteDatabaseG.endTransaction();
                        sQLiteDatabaseG.close();
                        return;
                    } catch (SQLiteDatabaseLockedException unused) {
                        SystemClock.sleep(r52);
                        r52 += 20;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteFullException e10) {
                    e3 e3Var = ((i4) z4Var).f1635j;
                    i4.e(e3Var);
                    e3Var.f.b(e10, "Error deleting app launch break from local database");
                    this.f2143d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (SQLiteException e11) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th2) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th2;
                        }
                    }
                    e3 e3Var2 = ((i4) z4Var).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.b(e11, "Error deleting app launch break from local database");
                    this.f2143d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            e3 e3Var3 = ((i4) z4Var).f1635j;
            i4.e(e3Var3);
            e3Var3.f1508j.a("Error deleting app launch break from local database in reasonable time");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x014c  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v17 */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean o(int r19, byte[] r20) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.y2.o(int, byte[]):boolean");
    }
}
