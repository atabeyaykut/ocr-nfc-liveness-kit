package b3;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import b3.r;
import io.realm.g0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.ListIterator;
import java.util.Set;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment;
import u2.h;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements r.a, g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f1115a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1116b;

    public /* synthetic */ o(Object obj, Object obj2) {
        this.f1115a = obj;
        this.f1116b = obj2;
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        final r rVar = (r) this.f1115a;
        final u2.s sVar = (u2.s) this.f1116b;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        rVar.getClass();
        final ArrayList arrayList = new ArrayList();
        Long lE = r.e(sQLiteDatabase, sVar);
        if (lE != null) {
            r.i(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lE.toString()}, null, null, null, String.valueOf(rVar.f1124d.c())), new r.a() { // from class: b3.p
                @Override // b3.r.a
                public final Object apply(Object obj2) {
                    Cursor cursor = (Cursor) obj2;
                    r rVar2 = rVar;
                    rVar2.getClass();
                    while (cursor.moveToNext()) {
                        long j10 = cursor.getLong(0);
                        boolean z10 = cursor.getInt(7) != 0;
                        h.a aVar = new h.a();
                        aVar.f = new HashMap();
                        aVar.d(cursor.getString(1));
                        aVar.f17829d = Long.valueOf(cursor.getLong(2));
                        aVar.f17830e = Long.valueOf(cursor.getLong(3));
                        if (z10) {
                            String string = cursor.getString(4);
                            aVar.c(new u2.m(string == null ? r.f : new r2.b(string), cursor.getBlob(5)));
                        } else {
                            String string2 = cursor.getString(4);
                            r2.b bVar = string2 == null ? r.f : new r2.b(string2);
                            Cursor cursorQuery = rVar2.d().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num");
                            try {
                                r2.b bVar2 = r.f;
                                ArrayList arrayList2 = new ArrayList();
                                int length = 0;
                                while (cursorQuery.moveToNext()) {
                                    byte[] blob = cursorQuery.getBlob(0);
                                    arrayList2.add(blob);
                                    length += blob.length;
                                }
                                byte[] bArr = new byte[length];
                                int length2 = 0;
                                for (int r12 = 0; r12 < arrayList2.size(); r12++) {
                                    byte[] bArr2 = (byte[]) arrayList2.get(r12);
                                    System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
                                    length2 += bArr2.length;
                                }
                                cursorQuery.close();
                                aVar.c(new u2.m(bVar, bArr));
                            } catch (Throwable th2) {
                                cursorQuery.close();
                                throw th2;
                            }
                        }
                        if (!cursor.isNull(6)) {
                            aVar.f17827b = Integer.valueOf(cursor.getInt(6));
                        }
                        arrayList.add(new b(j10, sVar, aVar.b()));
                    }
                    return null;
                }
            });
        }
        HashMap map = new HashMap();
        StringBuilder sb2 = new StringBuilder("event_id IN (");
        for (int r14 = 0; r14 < arrayList.size(); r14++) {
            sb2.append(((j) arrayList.get(r14)).b());
            if (r14 < arrayList.size() - 1) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        r.i(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb2.toString(), null, null, null, null), new androidx.camera.core.impl.utils.futures.a(3, map));
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            j jVar = (j) listIterator.next();
            if (map.containsKey(Long.valueOf(jVar.b()))) {
                h.a aVarI = jVar.a().i();
                for (r.b bVar : (Set) map.get(Long.valueOf(jVar.b()))) {
                    aVarI.a(bVar.f1126a, bVar.f1127b);
                }
                listIterator.set(new b(jVar.b(), jVar.c(), aVarI.b()));
            }
        }
        return arrayList;
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) this.f1115a;
        String str = (String) this.f1116b;
        da.m<Object>[] mVarArr = MobileAccidentCompletedReportFragment.f17464l;
        mKTAccidentReport.setScenarioId(str);
        g0Var.B(mKTAccidentReport);
    }
}
