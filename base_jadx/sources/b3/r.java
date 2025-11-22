package b3;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import c3.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import y2.a;
import y2.c;

@WorkerThread
/* loaded from: classes.dex */
public final class r implements d, c3.b, c {
    public static final r2.b f = new r2.b("proto");

    /* renamed from: a, reason: collision with root package name */
    public final x f1121a;

    /* renamed from: b, reason: collision with root package name */
    public final d3.a f1122b;

    /* renamed from: c, reason: collision with root package name */
    public final d3.a f1123c;

    /* renamed from: d, reason: collision with root package name */
    public final e f1124d;

    /* renamed from: e, reason: collision with root package name */
    public final w2.a<String> f1125e;

    public interface a<T, U> {
        U apply(T t10);
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final String f1126a;

        /* renamed from: b, reason: collision with root package name */
        public final String f1127b;

        public b(String str, String str2) {
            this.f1126a = str;
            this.f1127b = str2;
        }
    }

    public r(d3.a aVar, d3.a aVar2, e eVar, x xVar, w2.a<String> aVar3) {
        this.f1121a = xVar;
        this.f1122b = aVar;
        this.f1123c = aVar2;
        this.f1124d = eVar;
        this.f1125e = aVar3;
    }

    @Nullable
    public static Long e(SQLiteDatabase sQLiteDatabase, u2.s sVar) {
        StringBuilder sb2 = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(sVar.b(), String.valueOf(e3.a.a(sVar.d()))));
        if (sVar.c() != null) {
            sb2.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(sVar.c(), 0));
        } else {
            sb2.append(" and extras is null");
        }
        return (Long) i(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb2.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new androidx.constraintlayout.core.state.b(4));
    }

    public static String g(Iterable<j> iterable) {
        StringBuilder sb2 = new StringBuilder("(");
        Iterator<j> it = iterable.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().b());
            if (it.hasNext()) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    @VisibleForTesting
    public static <T> T i(Cursor cursor, a<Cursor, T> aVar) {
        try {
            return aVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // b3.d
    public final long D(u2.s sVar) {
        Cursor cursorRawQuery = d().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{sVar.b(), String.valueOf(e3.a.a(sVar.d()))});
        try {
            Long lValueOf = Long.valueOf(cursorRawQuery.moveToNext() ? cursorRawQuery.getLong(0) : 0L);
            cursorRawQuery.close();
            return lValueOf.longValue();
        } catch (Throwable th2) {
            cursorRawQuery.close();
            throw th2;
        }
    }

    @Override // b3.d
    public final Iterable<u2.s> K() {
        return (Iterable) f(new androidx.constraintlayout.core.state.b(2));
    }

    @Override // b3.d
    @Nullable
    public final b3.b Q(u2.s sVar, u2.n nVar) {
        Log.d(c5.w.u("SQLiteEventStore"), String.format("Storing event with priority=%s, name=%s for destination %s", sVar.d(), nVar.g(), sVar.b()));
        long jLongValue = ((Long) f(new k(this, nVar, sVar, 0))).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return new b3.b(jLongValue, sVar, nVar);
    }

    @Override // b3.d
    public final Iterable<j> R(u2.s sVar) {
        return (Iterable) f(new o(this, sVar));
    }

    @Override // b3.d
    public final boolean V(u2.s sVar) {
        return ((Boolean) f(new androidx.camera.camera2.interop.h(2, this, sVar))).booleanValue();
    }

    @Override // c3.b
    public final <T> T a(b.a<T> aVar) {
        SQLiteDatabase sQLiteDatabaseD = d();
        d3.a aVar2 = this.f1123c;
        long jA = aVar2.a();
        while (true) {
            try {
                sQLiteDatabaseD.beginTransaction();
                try {
                    T tExecute = aVar.execute();
                    sQLiteDatabaseD.setTransactionSuccessful();
                    return tExecute;
                } finally {
                    sQLiteDatabaseD.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e10) {
                if (aVar2.a() >= this.f1124d.a() + jA) {
                    throw new c3.a("Timed out while trying to acquire the lock.", e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // b3.c
    public final y2.a b() {
        int r02 = y2.a.f19285e;
        a.C0303a c0303a = new a.C0303a();
        HashMap map = new HashMap();
        SQLiteDatabase sQLiteDatabaseD = d();
        sQLiteDatabaseD.beginTransaction();
        try {
            y2.a aVar = (y2.a) i(sQLiteDatabaseD.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new z2.b(this, map, c0303a));
            sQLiteDatabaseD.setTransactionSuccessful();
            return aVar;
        } finally {
            sQLiteDatabaseD.endTransaction();
        }
    }

    @Override // b3.c
    public final void c(final long j10, final c.a aVar, final String str) {
        f(new a() { // from class: b3.m
            @Override // b3.r.a
            public final Object apply(Object obj) throws SQLException {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                String str2 = str;
                c.a aVar2 = aVar;
                boolean zBooleanValue = ((Boolean) r.i(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str2, Integer.toString(aVar2.f19304a)}), new androidx.camera.core.impl.utils.f())).booleanValue();
                long j11 = j10;
                int r42 = aVar2.f19304a;
                if (zBooleanValue) {
                    sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j11 + " WHERE log_source = ? AND reason = ?", new String[]{str2, Integer.toString(r42)});
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("log_source", str2);
                    contentValues.put("reason", Integer.valueOf(r42));
                    contentValues.put("events_dropped_count", Long.valueOf(j11));
                    sQLiteDatabase.insert("log_event_dropped", null, contentValues);
                }
                return null;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1121a.close();
    }

    @VisibleForTesting
    public final SQLiteDatabase d() {
        x xVar = this.f1121a;
        Objects.requireNonNull(xVar);
        d3.a aVar = this.f1123c;
        long jA = aVar.a();
        while (true) {
            try {
                return xVar.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e10) {
                if (aVar.a() >= this.f1124d.a() + jA) {
                    throw new c3.a("Timed out while trying to open db.", e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @VisibleForTesting
    public final <T> T f(a<SQLiteDatabase, T> aVar) {
        SQLiteDatabase sQLiteDatabaseD = d();
        sQLiteDatabaseD.beginTransaction();
        try {
            T tApply = aVar.apply(sQLiteDatabaseD);
            sQLiteDatabaseD.setTransactionSuccessful();
            return tApply;
        } finally {
            sQLiteDatabaseD.endTransaction();
        }
    }

    @Override // b3.d
    public final void f0(final long j10, final u2.s sVar) {
        f(new a() { // from class: b3.n
            @Override // b3.r.a
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j10));
                u2.s sVar2 = sVar;
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{sVar2.b(), String.valueOf(e3.a.a(sVar2.d()))}) < 1) {
                    contentValues.put("backend_name", sVar2.b());
                    contentValues.put("priority", Integer.valueOf(e3.a.a(sVar2.d())));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                return null;
            }
        });
    }

    @Override // b3.d
    public final void k0(Iterable<j> iterable) {
        if (iterable.iterator().hasNext()) {
            f(new k(this, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + g(iterable), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 1));
        }
    }

    @Override // b3.d
    public final int u() {
        final long jA = this.f1122b.a() - this.f1124d.b();
        return ((Integer) f(new a() { // from class: b3.l
            @Override // b3.r.a
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                r rVar = this.f1108a;
                rVar.getClass();
                String[] strArr = {String.valueOf(jA)};
                Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                try {
                    r2.b bVar = r.f;
                    while (cursorRawQuery.moveToNext()) {
                        rVar.c(cursorRawQuery.getInt(0), c.a.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                    }
                    cursorRawQuery.close();
                    return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
                } catch (Throwable th2) {
                    cursorRawQuery.close();
                    throw th2;
                }
            }
        })).intValue();
    }

    @Override // b3.d
    public final void x(Iterable<j> iterable) {
        if (iterable.iterator().hasNext()) {
            d().compileStatement("DELETE FROM events WHERE _id in " + g(iterable)).execute();
        }
    }
}
