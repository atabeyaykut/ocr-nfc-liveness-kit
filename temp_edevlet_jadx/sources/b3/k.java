package b3;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import b3.r;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import y2.c;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements r.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1104a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f1105b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1106c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1107d;

    public /* synthetic */ k(r rVar, Object obj, Object obj2, int r42) {
        this.f1104a = r42;
        this.f1105b = rVar;
        this.f1106c = obj;
        this.f1107d = obj2;
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        long jInsert;
        int r02 = this.f1104a;
        r rVar = this.f1105b;
        Object obj2 = this.f1107d;
        Object obj3 = this.f1106c;
        switch (r02) {
            case 0:
                u2.n nVar = (u2.n) obj3;
                u2.s sVar = (u2.s) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                long jSimpleQueryForLong = rVar.d().compileStatement("PRAGMA page_size").simpleQueryForLong() * rVar.d().compileStatement("PRAGMA page_count").simpleQueryForLong();
                e eVar = rVar.f1124d;
                if (jSimpleQueryForLong >= eVar.e()) {
                    rVar.c(1L, c.a.CACHE_FULL, nVar.g());
                    return -1L;
                }
                Long lE = r.e(sQLiteDatabase, sVar);
                if (lE != null) {
                    jInsert = lE.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", sVar.b());
                    contentValues.put("priority", Integer.valueOf(e3.a.a(sVar.d())));
                    contentValues.put("next_request_ms", (Integer) 0);
                    if (sVar.c() != null) {
                        contentValues.put("extras", Base64.encodeToString(sVar.c(), 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int r03 = eVar.d();
                byte[] bArr = nVar.d().f17848b;
                boolean z10 = bArr.length <= r03;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", nVar.g());
                contentValues2.put("timestamp_ms", Long.valueOf(nVar.e()));
                contentValues2.put("uptime_ms", Long.valueOf(nVar.h()));
                contentValues2.put("payload_encoding", nVar.d().f17847a.f13901a);
                contentValues2.put("code", nVar.c());
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z10));
                contentValues2.put("payload", z10 ? bArr : new byte[0]);
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z10) {
                    int r6 = (int) Math.ceil(bArr.length / r03);
                    for (int r10 = 1; r10 <= r6; r10++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (r10 - 1) * r03, Math.min(r10 * r03, bArr.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(r10));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(nVar.b()).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            default:
                SQLiteDatabase sQLiteDatabase2 = (SQLiteDatabase) obj;
                rVar.getClass();
                sQLiteDatabase2.compileStatement((String) obj3).execute();
                r.i(sQLiteDatabase2.rawQuery((String) obj2, null), new androidx.camera.camera2.interop.d(3, rVar));
                sQLiteDatabase2.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                return null;
        }
    }
}
