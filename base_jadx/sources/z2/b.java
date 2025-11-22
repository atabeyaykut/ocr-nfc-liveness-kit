package z2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import b3.r;
import c3.b;
import c5.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import u2.n;
import u2.s;
import y2.a;
import y2.c;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements b.a, r.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f19774a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19775b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f19776c;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3) {
        this.f19774a = obj;
        this.f19775b = obj2;
        this.f19776c = obj3;
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        r rVar = (r) this.f19774a;
        Map map = (Map) this.f19775b;
        a.C0303a c0303a = (a.C0303a) this.f19776c;
        Cursor cursor = (Cursor) obj;
        r2.b bVar = r.f;
        rVar.getClass();
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            int r52 = cursor.getInt(1);
            c.a aVar = c.a.REASON_UNKNOWN;
            if (r52 != 0) {
                if (r52 == 1) {
                    aVar = c.a.MESSAGE_TOO_OLD;
                } else if (r52 == 2) {
                    aVar = c.a.CACHE_FULL;
                } else if (r52 == 3) {
                    aVar = c.a.PAYLOAD_TOO_BIG;
                } else if (r52 == 4) {
                    aVar = c.a.MAX_RETRIES_REACHED;
                } else if (r52 == 5) {
                    aVar = c.a.INVALID_PAYLOD;
                } else if (r52 == 6) {
                    aVar = c.a.SERVER_ERROR;
                } else {
                    w.l(Integer.valueOf(r52), "SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                }
            }
            long j10 = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(new y2.c(j10, aVar));
        }
        for (Map.Entry entry : map.entrySet()) {
            int r32 = y2.d.f19305c;
            new ArrayList();
            c0303a.f19291b.add(new y2.d((String) entry.getKey(), Collections.unmodifiableList((List) entry.getValue())));
        }
        final long jA = rVar.f1122b.a();
        SQLiteDatabase sQLiteDatabaseD = rVar.d();
        sQLiteDatabaseD.beginTransaction();
        try {
            y2.f fVar = (y2.f) r.i(sQLiteDatabaseD.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new r.a() { // from class: b3.q
                @Override // b3.r.a
                public final Object apply(Object obj2) {
                    Cursor cursor2 = (Cursor) obj2;
                    cursor2.moveToNext();
                    return new y2.f(cursor2.getLong(0), jA);
                }
            });
            sQLiteDatabaseD.setTransactionSuccessful();
            sQLiteDatabaseD.endTransaction();
            c0303a.f19290a = fVar;
            c0303a.f19292c = new y2.b(new y2.e(rVar.d().compileStatement("PRAGMA page_size").simpleQueryForLong() * rVar.d().compileStatement("PRAGMA page_count").simpleQueryForLong(), b3.e.f1099a.f1092b));
            c0303a.f19293d = rVar.f1125e.get();
            return new y2.a(c0303a.f19290a, Collections.unmodifiableList(c0303a.f19291b), c0303a.f19292c, c0303a.f19293d);
        } catch (Throwable th2) {
            sQLiteDatabaseD.endTransaction();
            throw th2;
        }
    }

    @Override // c3.b.a
    public final Object execute() {
        c cVar = (c) this.f19774a;
        s sVar = (s) this.f19775b;
        cVar.f19780d.Q(sVar, (n) this.f19776c);
        cVar.f19777a.b(sVar, 1);
        return null;
    }
}
