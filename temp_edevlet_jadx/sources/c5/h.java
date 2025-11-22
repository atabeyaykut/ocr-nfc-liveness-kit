package c5;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class h extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f1586a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i iVar, Context context) {
        super(context, "google_app_measurement.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f1586a = iVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002a  */
    @Override // android.database.sqlite.SQLiteOpenHelper
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.database.sqlite.SQLiteDatabase getWritableDatabase() {
        /*
            r9 = this;
            c5.i r0 = r9.f1586a
            c5.f7 r1 = r0.f1619e
            c5.z4 r2 = r0.f2115a
            r3 = r2
            c5.i4 r3 = (c5.i4) r3
            r3.getClass()
            long r3 = r1.f1558b
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L15
            goto L2a
        L15:
            w3.a r3 = r1.f1557a
            c5.w r3 = (c5.w) r3
            r3.getClass()
            long r3 = android.os.SystemClock.elapsedRealtime()
            long r7 = r1.f1558b
            long r3 = r3 - r7
            r7 = 3600000(0x36ee80, double:1.7786363E-317)
            int r1 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r1 < 0) goto L2c
        L2a:
            r1 = 1
            goto L2d
        L2c:
            r1 = 0
        L2d:
            if (r1 == 0) goto L8f
            android.database.sqlite.SQLiteDatabase r0 = super.getWritableDatabase()     // Catch: android.database.sqlite.SQLiteException -> L34
            return r0
        L34:
            c5.f7 r0 = r0.f1619e
            w3.a r1 = r0.f1557a
            c5.w r1 = (c5.w) r1
            r1.getClass()
            long r3 = android.os.SystemClock.elapsedRealtime()
            r0.f1558b = r3
            r1 = r2
            c5.i4 r1 = (c5.i4) r1
            c5.e3 r1 = r1.f1635j
            c5.i4.e(r1)
            java.lang.String r3 = "Opening the database failed, dropping and recreating it"
            c5.c3 r1 = r1.f
            r1.a(r3)
            r1 = r2
            c5.i4 r1 = (c5.i4) r1
            r1.getClass()
            r1 = r2
            c5.i4 r1 = (c5.i4) r1
            android.content.Context r1 = r1.f1628a
            java.lang.String r3 = "google_app_measurement.db"
            java.io.File r1 = r1.getDatabasePath(r3)
            boolean r1 = r1.delete()
            if (r1 != 0) goto L78
            r1 = r2
            c5.i4 r1 = (c5.i4) r1
            c5.e3 r1 = r1.f1635j
            c5.i4.e(r1)
            java.lang.String r4 = "Failed to delete corrupted db file"
            c5.c3 r1 = r1.f
            r1.b(r3, r4)
        L78:
            android.database.sqlite.SQLiteDatabase r1 = super.getWritableDatabase()     // Catch: android.database.sqlite.SQLiteException -> L7f
            r0.f1558b = r5     // Catch: android.database.sqlite.SQLiteException -> L7f
            return r1
        L7f:
            r0 = move-exception
            c5.i4 r2 = (c5.i4) r2
            c5.e3 r1 = r2.f1635j
            c5.i4.e(r1)
            java.lang.String r2 = "Failed to open freshly created database"
            c5.c3 r1 = r1.f
            r1.b(r0, r2)
            throw r0
        L8f:
            android.database.sqlite.SQLiteException r0 = new android.database.sqlite.SQLiteException
            java.lang.String r1 = "Database open failed"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.h.getWritableDatabase():android.database.sqlite.SQLiteDatabase");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        e3 e3Var = ((i4) this.f1586a.f2115a).f1635j;
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
        i iVar = this.f1586a;
        e3 e3Var = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var);
        j.b(e3Var, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", i.f);
        e3 e3Var2 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var2);
        j.b(e3Var2, sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
        e3 e3Var3 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var3);
        j.b(e3Var3, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", i.f1611g);
        e3 e3Var4 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var4);
        j.b(e3Var4, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", i.f1612h);
        e3 e3Var5 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var5);
        j.b(e3Var5, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", i.f1614k);
        e3 e3Var6 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var6);
        j.b(e3Var6, sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
        e3 e3Var7 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var7);
        j.b(e3Var7, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", i.f1613j);
        e3 e3Var8 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var8);
        j.b(e3Var8, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", i.f1615l);
        e3 e3Var9 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var9);
        j.b(e3Var9, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", i.f1616m);
        e3 e3Var10 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var10);
        j.b(e3Var10, sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
        e3 e3Var11 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var11);
        j.b(e3Var11, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", i.f1617n);
        e3 e3Var12 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var12);
        j.b(e3Var12, sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
        e3 e3Var13 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var13);
        j.b(e3Var13, sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
        e3 e3Var14 = ((i4) iVar.f2115a).f1635j;
        i4.e(e3Var14);
        j.b(e3Var14, sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int r22, int r32) {
    }
}
