package b3;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class x extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static final String f1128c = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + ")";

    /* renamed from: d, reason: collision with root package name */
    public static final int f1129d = 5;

    /* renamed from: e, reason: collision with root package name */
    public static final List<a> f1130e = Arrays.asList(new a() { // from class: b3.s
        @Override // b3.x.a
        public final void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
            sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
            sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
            sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
            sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
        }
    }, new a() { // from class: b3.t
        @Override // b3.x.a
        public final void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
            sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
            sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
        }
    }, new a() { // from class: b3.u
        @Override // b3.x.a
        public final void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
        }
    }, new a() { // from class: b3.v
        @Override // b3.x.a
        public final void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
            sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
        }
    }, new a() { // from class: b3.w
        @Override // b3.x.a
        public final void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))");
            sQLiteDatabase.execSQL("CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)");
            sQLiteDatabase.execSQL(x.f1128c);
        }
    });

    /* renamed from: a, reason: collision with root package name */
    public final int f1131a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1132b;

    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    public x(Context context, int r32, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, r32);
        this.f1132b = false;
        this.f1131a = r32;
    }

    public static void a(SQLiteDatabase sQLiteDatabase, int r52, int r6) {
        List<a> list = f1130e;
        if (r6 <= list.size()) {
            while (r52 < r6) {
                list.get(r52).a(sQLiteDatabase);
                r52++;
            }
        } else {
            StringBuilder sbF = androidx.constraintlayout.core.a.f("Migration from ", r52, " to ", r6, " was requested, but cannot be performed. Only ");
            sbF.append(list.size());
            sbF.append(" migrations are provided");
            throw new IllegalArgumentException(sbF.toString());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f1132b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (!this.f1132b) {
            onConfigure(sQLiteDatabase);
        }
        a(sQLiteDatabase, 0, this.f1131a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int r22, int r32) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        if (!this.f1132b) {
            onConfigure(sQLiteDatabase);
        }
        a(sQLiteDatabase, 0, r32);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (this.f1132b) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int r32, int r42) {
        if (!this.f1132b) {
            onConfigure(sQLiteDatabase);
        }
        a(sQLiteDatabase, r32, r42);
    }
}
