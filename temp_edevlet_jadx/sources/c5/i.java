package c5;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.xa;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public final class i extends j7 {
    public static final String[] f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f1611g = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f1612h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f1613j = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f1614k = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f1615l = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f1616m = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: n, reason: collision with root package name */
    public static final String[] f1617n = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: d, reason: collision with root package name */
    public final h f1618d;

    /* renamed from: e, reason: collision with root package name */
    public final f7 f1619e;

    public i(o7 o7Var) {
        super(o7Var);
        this.f1619e = new f7(((i4) this.f2115a).f1640p);
        ((i4) this.f2115a).getClass();
        this.f1618d = new h(this, ((i4) this.f2115a).f1628a);
    }

    @WorkerThread
    public static final void w(ContentValues contentValues, Object obj) {
        r3.r.f("value");
        r3.r.i(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put("value", (Double) obj);
        }
    }

    @WorkerThread
    public final long A(String str) {
        z4 z4Var = this.f2115a;
        r3.r.f(str);
        r3.r.f("first_open_count");
        b();
        c();
        SQLiteDatabase sQLiteDatabaseC = C();
        sQLiteDatabaseC.beginTransaction();
        long j10 = 0;
        try {
            try {
                StringBuilder sb2 = new StringBuilder(48);
                sb2.append("select first_open_count from app2 where app_id=?");
                long jZ = z(sb2.toString(), new String[]{str}, -1L);
                if (jZ == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (sQLiteDatabaseC.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        e3 e3Var = ((i4) z4Var).f1635j;
                        i4.e(e3Var);
                        e3Var.f.c(e3.q(str), "Failed to insert column (got -1). appId", "first_open_count");
                        return -1L;
                    }
                    jZ = 0;
                }
                try {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put("first_open_count", Long.valueOf(jZ + 1));
                    if (sQLiteDatabaseC.update("app2", contentValues2, "app_id = ?", new String[]{str}) != 0) {
                        sQLiteDatabaseC.setTransactionSuccessful();
                        return jZ;
                    }
                    e3 e3Var2 = ((i4) z4Var).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.c(e3.q(str), "Failed to update column (got 0). appId", "first_open_count");
                    return -1L;
                } catch (SQLiteException e10) {
                    e = e10;
                    j10 = jZ;
                    e3 e3Var3 = ((i4) z4Var).f1635j;
                    i4.e(e3Var3);
                    e3Var3.f.d("Error inserting column. appId", e3.q(str), "first_open_count", e);
                    sQLiteDatabaseC.endTransaction();
                    return j10;
                }
            } finally {
                sQLiteDatabaseC.endTransaction();
            }
        } catch (SQLiteException e11) {
            e = e11;
        }
    }

    public final long B(String str) {
        r3.r.f(str);
        return z("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    @WorkerThread
    public final SQLiteDatabase C() {
        b();
        try {
            return this.f1618d.getWritableDatabase();
        } catch (SQLiteException e10) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error opening database");
            throw e10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x023a  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c5.m4 D(java.lang.String r35) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.D(java.lang.String):c5.m4");
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0122: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]) (LINE:291), block:B:33:0x0122 */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0125  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c5.b E(java.lang.String r32, java.lang.String r33) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.E(java.lang.String, java.lang.String):c5.b");
    }

    @WorkerThread
    public final g F(long j10, String str, boolean z10, boolean z11) {
        return G(j10, str, 1L, false, false, z10, false, z11);
    }

    @WorkerThread
    public final g G(long j10, String str, long j11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        z4 z4Var = this.f2115a;
        r3.r.f(str);
        b();
        c();
        String[] strArr = {str};
        g gVar = new g();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseC = C();
                Cursor cursorQuery = sQLiteDatabaseC.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    e3 e3Var = ((i4) z4Var).f1635j;
                    i4.e(e3Var);
                    e3Var.f1508j.b(e3.q(str), "Not updating daily counts, app is not known. appId");
                    cursorQuery.close();
                    return gVar;
                }
                if (cursorQuery.getLong(0) == j10) {
                    gVar.f1562b = cursorQuery.getLong(1);
                    gVar.f1561a = cursorQuery.getLong(2);
                    gVar.f1563c = cursorQuery.getLong(3);
                    gVar.f1564d = cursorQuery.getLong(4);
                    gVar.f1565e = cursorQuery.getLong(5);
                }
                if (z10) {
                    gVar.f1562b += j11;
                }
                if (z11) {
                    gVar.f1561a += j11;
                }
                if (z12) {
                    gVar.f1563c += j11;
                }
                if (z13) {
                    gVar.f1564d += j11;
                }
                if (z14) {
                    gVar.f1565e += j11;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j10));
                contentValues.put("daily_public_events_count", Long.valueOf(gVar.f1561a));
                contentValues.put("daily_events_count", Long.valueOf(gVar.f1562b));
                contentValues.put("daily_conversions_count", Long.valueOf(gVar.f1563c));
                contentValues.put("daily_error_events_count", Long.valueOf(gVar.f1564d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(gVar.f1565e));
                sQLiteDatabaseC.update("apps", contentValues, "app_id=?", strArr);
                cursorQuery.close();
                return gVar;
            } catch (SQLiteException e10) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f.c(e3.q(str), "Error updating daily counts. appId", e10);
                if (0 != 0) {
                    cursor.close();
                }
                return gVar;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x015b  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c5.o H(java.lang.String r28, java.lang.String r29) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.H(java.lang.String, java.lang.String):c5.o");
    }

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x00a5: MOVE (r11 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]) (LINE:166), block:B:28:0x00a5 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c5.t7 I(java.lang.String r21, java.lang.String r22) {
        /*
            r20 = this;
            r1 = r20
            r9 = r22
            c5.z4 r10 = r1.f2115a
            r3.r.f(r21)
            r3.r.f(r22)
            r20.b()
            r20.c()
            r11 = 0
            android.database.sqlite.SQLiteDatabase r12 = r20.C()     // Catch: java.lang.Throwable -> L7f android.database.sqlite.SQLiteException -> L81
            java.lang.String r0 = "set_timestamp"
            java.lang.String r2 = "value"
            java.lang.String r3 = "origin"
            java.lang.String[] r14 = new java.lang.String[]{r0, r2, r3}     // Catch: java.lang.Throwable -> L7f android.database.sqlite.SQLiteException -> L81
            r0 = 2
            java.lang.String[] r2 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L7f android.database.sqlite.SQLiteException -> L81
            r3 = 0
            r2[r3] = r21     // Catch: java.lang.Throwable -> L7f android.database.sqlite.SQLiteException -> L81
            r4 = 1
            r2[r4] = r9     // Catch: java.lang.Throwable -> L7f android.database.sqlite.SQLiteException -> L81
            java.lang.String r13 = "user_attributes"
            java.lang.String r15 = "app_id=? and name=?"
            r17 = 0
            r18 = 0
            r19 = 0
            r16 = r2
            android.database.Cursor r12 = r12.query(r13, r14, r15, r16, r17, r18, r19)     // Catch: java.lang.Throwable -> L7f android.database.sqlite.SQLiteException -> L81
            boolean r2 = r12.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            if (r2 != 0) goto L44
            r12.close()
            return r11
        L44:
            long r6 = r12.getLong(r3)     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            java.lang.Object r8 = r1.J(r12, r4)     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            if (r8 != 0) goto L52
            r12.close()
            return r11
        L52:
            java.lang.String r4 = r12.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            c5.t7 r0 = new c5.t7     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            r2 = r0
            r3 = r21
            r5 = r22
            r2.<init>(r3, r4, r5, r6, r8)     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            boolean r2 = r12.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            if (r2 == 0) goto L79
            r2 = r10
            c5.i4 r2 = (c5.i4) r2     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            c5.e3 r2 = r2.f1635j     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            c5.i4.e(r2)     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            c5.c3 r2 = r2.f     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            java.lang.String r3 = "Got multiple records for user property, expected one. appId"
            c5.d3 r4 = c5.e3.q(r21)     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
            r2.b(r4, r3)     // Catch: android.database.sqlite.SQLiteException -> L7d java.lang.Throwable -> La4
        L79:
            r12.close()
            return r0
        L7d:
            r0 = move-exception
            goto L83
        L7f:
            r0 = move-exception
            goto La6
        L81:
            r0 = move-exception
            r12 = r11
        L83:
            r2 = r10
            c5.i4 r2 = (c5.i4) r2     // Catch: java.lang.Throwable -> La4
            c5.e3 r2 = r2.f1635j     // Catch: java.lang.Throwable -> La4
            c5.i4.e(r2)     // Catch: java.lang.Throwable -> La4
            c5.c3 r2 = r2.f     // Catch: java.lang.Throwable -> La4
            java.lang.String r3 = "Error querying user property. appId"
            c5.d3 r4 = c5.e3.q(r21)     // Catch: java.lang.Throwable -> La4
            c5.i4 r10 = (c5.i4) r10     // Catch: java.lang.Throwable -> La4
            c5.z2 r5 = r10.f1639n     // Catch: java.lang.Throwable -> La4
            java.lang.String r5 = r5.f(r9)     // Catch: java.lang.Throwable -> La4
            r2.d(r3, r4, r5, r0)     // Catch: java.lang.Throwable -> La4
            if (r12 == 0) goto La3
            r12.close()
        La3:
            return r11
        La4:
            r0 = move-exception
            r11 = r12
        La6:
            if (r11 == 0) goto Lab
            r11.close()
        Lab:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.I(java.lang.String, java.lang.String):c5.t7");
    }

    @WorkerThread
    public final Object J(Cursor cursor, int r6) {
        int type = cursor.getType(r6);
        z4 z4Var = this.f2115a;
        if (type == 0) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(r6));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(r6));
        }
        if (type == 3) {
            return cursor.getString(r6);
        }
        i4 i4Var = (i4) z4Var;
        if (type == 4) {
            e3 e3Var2 = i4Var.f1635j;
            i4.e(e3Var2);
            e3Var2.f.a("Loaded invalid blob type value, ignoring it");
            return null;
        }
        e3 e3Var3 = i4Var.f1635j;
        i4.e(e3Var3);
        e3Var3.f.b(Integer.valueOf(type), "Loaded invalid unknown value type, ignoring it");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0041  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String K() throws java.lang.Throwable {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.C()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L22
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L3b
            if (r2 == 0) goto L1a
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L3b
            r0.close()
            return r1
        L1a:
            r0.close()
            return r1
        L1e:
            r2 = move-exception
            goto L25
        L20:
            r0 = move-exception
            goto L3f
        L22:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L25:
            c5.z4 r3 = r6.f2115a     // Catch: java.lang.Throwable -> L3b
            c5.i4 r3 = (c5.i4) r3     // Catch: java.lang.Throwable -> L3b
            c5.e3 r3 = r3.f1635j     // Catch: java.lang.Throwable -> L3b
            c5.i4.e(r3)     // Catch: java.lang.Throwable -> L3b
            c5.c3 r3 = r3.f     // Catch: java.lang.Throwable -> L3b
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.b(r2, r4)     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L3a
            r0.close()
        L3a:
            return r1
        L3b:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L3f:
            if (r1 == 0) goto L44
            r1.close()
        L44:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.K():java.lang.String");
    }

    @WorkerThread
    public final List<b> L(String str, String str2, String str3) {
        r3.r.f(str);
        b();
        c();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb2 = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb2.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb2.append(" and name glob ?");
        }
        return M(sb2.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x005e, code lost:
    
        r0 = ((c5.i4) r2).f1635j;
        c5.i4.e(r0);
        r0 = r0.f;
        ((c5.i4) r2).getClass();
        r0.b(1000, "Read more than the max allowed conditional properties, ignoring extra");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<c5.b> M(java.lang.String r30, java.lang.String[] r31) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.M(java.lang.String, java.lang.String[]):java.util.List");
    }

    @WorkerThread
    public final List<t7> N(String str) {
        z4 z4Var = this.f2115a;
        r3.r.f(str);
        b();
        c();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                ((i4) z4Var).getClass();
                cursorQuery = C().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return arrayList;
                }
                do {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str2 = string2;
                    long j10 = cursorQuery.getLong(2);
                    Object objJ = J(cursorQuery, 3);
                    if (objJ == null) {
                        e3 e3Var = ((i4) z4Var).f1635j;
                        i4.e(e3Var);
                        e3Var.f.b(e3.q(str), "Read invalid user property value, ignoring it. appId");
                    } else {
                        arrayList.add(new t7(str, str2, string, j10, objJ));
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e10) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f.c(e3.q(str), "Error querying user properties. appId", e10);
                List<t7> listEmptyList = Collections.emptyList();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return listEmptyList;
            }
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x009f, code lost:
    
        r3 = ((c5.i4) r2).f1635j;
        c5.i4.e(r3);
        r3 = r3.f;
        ((c5.i4) r2).getClass();
        r3.b(1000, "Read more than the max allowed user properties, ignoring excess");
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0121 A[DONT_GENERATE] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<c5.t7> O(java.lang.String r18, java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.O(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    @WorkerThread
    public final void P() {
        c();
        C().beginTransaction();
    }

    public final void Q(ArrayList arrayList) {
        r3.r.i(arrayList);
        b();
        c();
        StringBuilder sb2 = new StringBuilder("rowid in (");
        for (int r12 = 0; r12 < arrayList.size(); r12++) {
            if (r12 != 0) {
                sb2.append(",");
            }
            sb2.append(((Long) arrayList.get(r12)).longValue());
        }
        sb2.append(")");
        int r02 = C().delete("raw_events", sb2.toString(), null);
        if (r02 != arrayList.size()) {
            e3 e3Var = ((i4) this.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.c(Integer.valueOf(r02), "Deleted fewer rows from raw events table than expected", Integer.valueOf(arrayList.size()));
        }
    }

    @WorkerThread
    public final void R() {
        c();
        C().endTransaction();
    }

    @WorkerThread
    public final void S(List<Long> list) throws SQLException {
        b();
        c();
        if (list.size() == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        if (r()) {
            String strJoin = TextUtils.join(",", list);
            String strI = android.support.v4.media.a.i(new StringBuilder(String.valueOf(strJoin).length() + 2), "(", strJoin, ")");
            long jY = y(android.support.v4.media.a.i(new StringBuilder(strI.length() + 80), "SELECT COUNT(1) FROM queue WHERE rowid IN ", strI, " AND retry_count =  2147483647 LIMIT 1"), null);
            z4 z4Var = this.f2115a;
            if (jY > 0) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseC = C();
                StringBuilder sb2 = new StringBuilder(strI.length() + CertificateBody.profileType);
                sb2.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb2.append(strI);
                sb2.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                sQLiteDatabaseC.execSQL(sb2.toString());
            } catch (SQLiteException e10) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f.b(e10, "Error incrementing retry count. error");
            }
        }
    }

    @Override // c5.j7
    public final void e() {
    }

    @WorkerThread
    public final void g() {
        b();
        c();
        if (r()) {
            o7 o7Var = this.f1653b;
            long jA = o7Var.f1825j.f2043g.a();
            i4 i4Var = (i4) this.f2115a;
            i4Var.f1640p.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jAbs = Math.abs(jElapsedRealtime - jA);
            i4Var.getClass();
            if (jAbs > r2.f1934y.a(null).longValue()) {
                o7Var.f1825j.f2043g.b(jElapsedRealtime);
                b();
                c();
                if (r()) {
                    SQLiteDatabase sQLiteDatabaseC = C();
                    i4Var.f1640p.getClass();
                    i4Var.getClass();
                    int r02 = sQLiteDatabaseC.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(r2.D.a(null).longValue())});
                    if (r02 > 0) {
                        e3 e3Var = i4Var.f1635j;
                        i4.e(e3Var);
                        e3Var.f1513p.b(Integer.valueOf(r02), "Deleted stale rows. rowsDeleted");
                    }
                }
            }
        }
    }

    @WorkerThread
    public final void h(String str, String str2) {
        r3.r.f(str);
        r3.r.f(str2);
        b();
        c();
        try {
            C().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            i4 i4Var = (i4) this.f2115a;
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f.d("Error deleting user property. appId", e3.q(str), i4Var.f1639n.f(str2), e10);
        }
    }

    @WorkerThread
    public final void n() {
        c();
        C().setTransactionSuccessful();
    }

    @WorkerThread
    public final void o(m4 m4Var) {
        b();
        c();
        String strF = m4Var.F();
        r3.r.i(strF);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", strF);
        contentValues.put("app_instance_id", m4Var.G());
        contentValues.put("gmp_app_id", m4Var.K());
        i4 i4Var = m4Var.f1722a;
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.b();
        contentValues.put("resettable_device_id_hash", m4Var.f1726e);
        h4 h4Var2 = i4Var.f1636k;
        i4.e(h4Var2);
        h4Var2.b();
        contentValues.put("last_bundle_index", Long.valueOf(m4Var.f1727g));
        h4 h4Var3 = i4Var.f1636k;
        i4.e(h4Var3);
        h4Var3.b();
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(m4Var.f1728h));
        h4 h4Var4 = i4Var.f1636k;
        i4.e(h4Var4);
        h4Var4.b();
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(m4Var.f1729i));
        contentValues.put("app_version", m4Var.H());
        h4 h4Var5 = i4Var.f1636k;
        i4.e(h4Var5);
        h4Var5.b();
        contentValues.put("app_store", m4Var.f1732l);
        h4 h4Var6 = i4Var.f1636k;
        i4.e(h4Var6);
        h4Var6.b();
        contentValues.put("gmp_version", Long.valueOf(m4Var.f1733m));
        h4 h4Var7 = i4Var.f1636k;
        i4.e(h4Var7);
        h4Var7.b();
        contentValues.put("dev_cert_hash", Long.valueOf(m4Var.f1734n));
        h4 h4Var8 = i4Var.f1636k;
        i4.e(h4Var8);
        h4Var8.b();
        contentValues.put("measurement_enabled", Boolean.valueOf(m4Var.f1735o));
        h4 h4Var9 = i4Var.f1636k;
        i4.e(h4Var9);
        h4Var9.b();
        contentValues.put("day", Long.valueOf(m4Var.w));
        h4 h4Var10 = i4Var.f1636k;
        i4.e(h4Var10);
        h4Var10.b();
        contentValues.put("daily_public_events_count", Long.valueOf(m4Var.f1743x));
        i4.e(h4Var10);
        h4Var10.b();
        contentValues.put("daily_events_count", Long.valueOf(m4Var.f1744y));
        i4.e(h4Var10);
        h4Var10.b();
        contentValues.put("daily_conversions_count", Long.valueOf(m4Var.f1745z));
        h4 h4Var11 = i4Var.f1636k;
        i4.e(h4Var11);
        h4Var11.b();
        contentValues.put("config_fetched_time", Long.valueOf(m4Var.E));
        h4 h4Var12 = i4Var.f1636k;
        i4.e(h4Var12);
        h4Var12.b();
        contentValues.put("failed_config_fetch_time", Long.valueOf(m4Var.F));
        contentValues.put("app_version_int", Long.valueOf(m4Var.B()));
        contentValues.put("firebase_instance_id", m4Var.I());
        i4.e(h4Var10);
        h4Var10.b();
        contentValues.put("daily_error_events_count", Long.valueOf(m4Var.A));
        i4.e(h4Var10);
        h4Var10.b();
        contentValues.put("daily_realtime_events_count", Long.valueOf(m4Var.B));
        i4.e(h4Var10);
        h4Var10.b();
        contentValues.put("health_monitor_sample", m4Var.C);
        h4 h4Var13 = i4Var.f1636k;
        i4.e(h4Var13);
        h4Var13.b();
        contentValues.put("android_id", Long.valueOf(m4Var.f1736p));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(m4Var.A()));
        contentValues.put("admob_app_id", m4Var.D());
        contentValues.put("dynamite_version", Long.valueOf(m4Var.C()));
        h4 h4Var14 = i4Var.f1636k;
        i4.e(h4Var14);
        h4Var14.b();
        ArrayList arrayList = m4Var.f1741u;
        z4 z4Var = this.f2115a;
        if (arrayList != null) {
            if (arrayList.size() == 0) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.b(strF, "Safelisted events should not be an empty list. appId");
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", arrayList));
            }
        }
        xa.b();
        i4 i4Var2 = (i4) z4Var;
        if (i4Var2.f1633g.p(strF, r2.f1894c0)) {
            contentValues.put("ga_app_id", m4Var.J());
        }
        try {
            SQLiteDatabase sQLiteDatabaseC = C();
            if (sQLiteDatabaseC.update("apps", contentValues, "app_id = ?", new String[]{strF}) == 0 && sQLiteDatabaseC.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f.b(e3.q(strF), "Failed to insert/update app (got -1). appId");
            }
        } catch (SQLiteException e10) {
            e3 e3Var3 = i4Var2.f1635j;
            i4.e(e3Var3);
            e3Var3.f.c(e3.q(strF), "Error storing app. appId", e10);
        }
    }

    @WorkerThread
    public final void p(o oVar) {
        z4 z4Var = this.f2115a;
        r3.r.i(oVar);
        b();
        c();
        ContentValues contentValues = new ContentValues();
        String str = oVar.f1786a;
        contentValues.put("app_id", str);
        contentValues.put("name", oVar.f1787b);
        contentValues.put("lifetime_count", Long.valueOf(oVar.f1788c));
        contentValues.put("current_bundle_count", Long.valueOf(oVar.f1789d));
        contentValues.put("last_fire_timestamp", Long.valueOf(oVar.f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(oVar.f1791g));
        contentValues.put("last_bundled_day", oVar.f1792h);
        contentValues.put("last_sampled_complex_event_id", oVar.f1793i);
        contentValues.put("last_sampling_rate", oVar.f1794j);
        contentValues.put("current_session_count", Long.valueOf(oVar.f1790e));
        Boolean bool = oVar.f1795k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (C().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f.b(e3.q(str), "Failed to insert/update event aggregates (got -1). appId");
            }
        } catch (SQLiteException e10) {
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f.c(e3.q(str), "Error storing event aggregates. appId", e10);
        }
    }

    @WorkerThread
    public final void q(byte[] bArr, String str, String str2) {
        z4 z4Var = this.f2115a;
        r3.r.f(str);
        b();
        c();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (C().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f.b(e3.q(str), "Failed to update remote config (got 0). appId");
            }
        } catch (SQLiteException e10) {
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f.c(e3.q(str), "Error storing remote config. appId", e10);
        }
    }

    public final boolean r() {
        z4 z4Var = this.f2115a;
        Context context = ((i4) z4Var).f1628a;
        ((i4) z4Var).getClass();
        return context.getDatabasePath("google_app_measurement.db").exists();
    }

    public final void s(String str, Long l5, long j10, com.google.android.gms.internal.measurement.h3 h3Var) {
        b();
        c();
        r3.r.i(h3Var);
        r3.r.f(str);
        byte[] bArrI = h3Var.i();
        z4 z4Var = this.f2115a;
        i4 i4Var = (i4) z4Var;
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f1513p.c(i4Var.f1639n.d(str), "Saving complex main event, appId, data size", Integer.valueOf(bArrI.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l5);
        contentValues.put("children_to_process", Long.valueOf(j10));
        contentValues.put("main_event", bArrI);
        try {
            if (C().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                e3 e3Var2 = ((i4) z4Var).f1635j;
                i4.e(e3Var2);
                e3Var2.f.b(e3.q(str), "Failed to insert complex main event (got -1). appId");
            }
        } catch (SQLiteException e10) {
            e3 e3Var3 = i4Var.f1635j;
            i4.e(e3Var3);
            e3Var3.f.c(e3.q(str), "Error storing complex main event. appId", e10);
        }
    }

    @WorkerThread
    public final boolean t(b bVar) {
        b();
        c();
        String str = bVar.f1400a;
        r3.r.i(str);
        t7 t7VarI = I(str, bVar.f1402c.f1951b);
        z4 z4Var = this.f2115a;
        if (t7VarI == null) {
            long jY = y("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            ((i4) z4Var).getClass();
            if (jY >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", bVar.f1401b);
        contentValues.put("name", bVar.f1402c.f1951b);
        Object objE = bVar.f1402c.E();
        r3.r.i(objE);
        w(contentValues, objE);
        contentValues.put("active", Boolean.valueOf(bVar.f1404e));
        contentValues.put("trigger_event_name", bVar.f);
        contentValues.put("trigger_timeout", Long.valueOf(bVar.f1406h));
        i4 i4Var = (i4) z4Var;
        v7 v7Var = i4Var.f1638m;
        i4.c(v7Var);
        v7Var.getClass();
        contentValues.put("timed_out_event", v7.Y(bVar.f1405g));
        contentValues.put("creation_timestamp", Long.valueOf(bVar.f1403d));
        v7 v7Var2 = i4Var.f1638m;
        i4.c(v7Var2);
        s sVar = bVar.f1407j;
        v7Var2.getClass();
        contentValues.put("triggered_event", v7.Y(sVar));
        contentValues.put("triggered_timestamp", Long.valueOf(bVar.f1402c.f1952c));
        contentValues.put("time_to_live", Long.valueOf(bVar.f1408k));
        v7 v7Var3 = i4Var.f1638m;
        i4.c(v7Var3);
        v7Var3.getClass();
        contentValues.put("expired_event", v7.Y(bVar.f1409l));
        try {
            if (C().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f.b(e3.q(str), "Failed to insert/update conditional user property (got -1)");
            }
        } catch (SQLiteException e10) {
            e3 e3Var2 = i4Var.f1635j;
            i4.e(e3Var2);
            e3Var2.f.c(e3.q(str), "Error storing conditional user property", e10);
        }
        return true;
    }

    @WorkerThread
    public final boolean u(t7 t7Var) {
        b();
        c();
        String str = t7Var.f2008a;
        String str2 = t7Var.f2010c;
        t7 t7VarI = I(str, str2);
        z4 z4Var = this.f2115a;
        String str3 = t7Var.f2009b;
        if (t7VarI == null) {
            if (v7.T(str2)) {
                if (y("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= Math.max(Math.min(((i4) z4Var).f1633g.e(str, r2.G), 100), 25)) {
                    return false;
                }
            } else if (!"_npa".equals(str2)) {
                long jY = y("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, str3});
                ((i4) z4Var).getClass();
                if (jY >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", str3);
        contentValues.put("name", str2);
        contentValues.put("set_timestamp", Long.valueOf(t7Var.f2011d));
        w(contentValues, t7Var.f2012e);
        try {
            if (C().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f.b(e3.q(str), "Failed to insert/update user property (got -1). appId");
            }
        } catch (SQLiteException e10) {
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f.c(e3.q(str), "Error storing user property. appId", e10);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0239  */
    /* JADX WARN: Type inference failed for: r5v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v25, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(long r22, long r24, c5.n7 r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i.v(long, long, c5.n7):void");
    }

    @WorkerThread
    public final void x(String str, String str2) {
        r3.r.f(str);
        r3.r.f(str2);
        b();
        c();
        try {
            C().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            i4 i4Var = (i4) this.f2115a;
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f.d("Error deleting conditional property", e3.q(str), i4Var.f1639n.f(str2), e10);
        }
    }

    @WorkerThread
    public final long y(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = C().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j10 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j10;
            } catch (SQLiteException e10) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f.c(str, "Database error", e10);
                throw e10;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    @WorkerThread
    public final long z(String str, String[] strArr, long j10) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = C().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return j10;
                }
                long j11 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j11;
            } catch (SQLiteException e10) {
                e3 e3Var = ((i4) this.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f.c(str, "Database error", e10);
                throw e10;
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }
}
