package c5;

import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.qb;
import java.util.Map;
import p4.s9;

/* loaded from: classes.dex */
public final class c4 extends j7 implements d {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayMap f1440d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayMap f1441e;
    public final ArrayMap f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayMap f1442g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayMap f1443h;

    /* renamed from: j, reason: collision with root package name */
    public final a4 f1444j;

    /* renamed from: k, reason: collision with root package name */
    public final b4 f1445k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayMap f1446l;

    public c4(o7 o7Var) {
        super(o7Var);
        this.f1440d = new ArrayMap();
        this.f1441e = new ArrayMap();
        this.f = new ArrayMap();
        this.f1442g = new ArrayMap();
        this.f1446l = new ArrayMap();
        this.f1443h = new ArrayMap();
        this.f1444j = new a4(this);
        this.f1445k = new b4(this);
    }

    public static final ArrayMap v(com.google.android.gms.internal.measurement.w2 w2Var) {
        ArrayMap arrayMap = new ArrayMap();
        for (com.google.android.gms.internal.measurement.y2 y2Var : w2Var.B()) {
            arrayMap.put(y2Var.s(), y2Var.t());
        }
        return arrayMap;
    }

    @Override // c5.j7
    public final void e() {
    }

    @Override // c5.d
    @WorkerThread
    public final String f(String str, String str2) throws Throwable {
        b();
        t(str);
        Map map = (Map) this.f1440d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @WorkerThread
    public final int g(String str, String str2) throws Throwable {
        Integer num;
        b();
        t(str);
        Map map = (Map) this.f1443h.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final com.google.android.gms.internal.measurement.w2 h(String str) throws Throwable {
        c();
        b();
        r3.r.f(str);
        t(str);
        return (com.google.android.gms.internal.measurement.w2) this.f1442g.get(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean n(String str) {
        com.google.android.gms.internal.measurement.w2 w2Var;
        qb.c();
        return (!((i4) this.f2115a).f1633g.p(null, r2.f1921q0) || TextUtils.isEmpty(str) || (w2Var = (com.google.android.gms.internal.measurement.w2) this.f1442g.get(str)) == null || w2Var.r() == 0) ? false : true;
    }

    @WorkerThread
    public final boolean o(String str, String str2) throws Throwable {
        Boolean bool;
        b();
        t(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    public final boolean p(String str, String str2) throws Throwable {
        Boolean bool;
        b();
        t(str);
        if ("1".equals(f(str, "measurement.upload.blacklist_internal")) && v7.S(str2)) {
            return true;
        }
        if ("1".equals(f(str, "measurement.upload.blacklist_public")) && v7.T(str2)) {
            return true;
        }
        Map map = (Map) this.f1441e.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0382, code lost:
    
        if (r9.G() == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0384, code lost:
    
        r3 = java.lang.Boolean.valueOf(r9.D());
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x038d, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x038e, code lost:
    
        r1.put("session_scoped", r3);
        r1.put("data", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x03a2, code lost:
    
        if (r10.C().insertWithOnConflict(r22, null, r1, 5) != (-1)) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x03a4, code lost:
    
        r1 = ((c5.i4) r6).f1635j;
        c5.i4.e(r1);
        r1.f.b(c5.e3.q(r30), "Failed to insert event filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x03b7, code lost:
    
        r3 = r24;
        r8 = r25;
        r1 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x03bf, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x03c0, code lost:
    
        r1 = ((c5.i4) r6).f1635j;
        c5.i4.e(r1);
        r1 = r1.f;
        r3 = "Error storing event filter. appId";
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x03cd, code lost:
    
        r26 = r1;
        r0 = r0.y().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x03db, code lost:
    
        if (r0.hasNext() == false) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x03dd, code lost:
    
        r1 = (com.google.android.gms.internal.measurement.o2) r0.next();
        r10.c();
        r10.b();
        r3.r.f(r30);
        r3.r.i(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x03f7, code lost:
    
        if (android.text.TextUtils.isEmpty(r1.v()) == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x03f9, code lost:
    
        r0 = ((c5.i4) r6).f1635j;
        c5.i4.e(r0);
        r0 = r0.f1508j;
        r5 = c5.e3.q(r30);
        r6 = java.lang.Integer.valueOf(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0410, code lost:
    
        if (r1.A() == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0412, code lost:
    
        r1 = java.lang.Integer.valueOf(r1.r());
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x041b, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x041c, code lost:
    
        r0.d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r5, r6, java.lang.String.valueOf(r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0425, code lost:
    
        r8 = r1.i();
        r9 = new android.content.ContentValues();
        r9.put(r3, r30);
        r25 = r0;
        r9.put("audience_id", java.lang.Integer.valueOf(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x043e, code lost:
    
        if (r1.A() == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0440, code lost:
    
        r0 = java.lang.Integer.valueOf(r1.r());
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0449, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x044a, code lost:
    
        r9.put("filter_id", r0);
        r27 = r3;
        r9.put("property_name", r1.v());
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x045c, code lost:
    
        if (r1.B() == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x045e, code lost:
    
        r0 = java.lang.Boolean.valueOf(r1.z());
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0467, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0468, code lost:
    
        r9.put("session_scoped", r0);
        r9.put("data", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x047c, code lost:
    
        if (r10.C().insertWithOnConflict("property_filters", null, r9, 5) != (-1)) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x047e, code lost:
    
        r0 = ((c5.i4) r6).f1635j;
        c5.i4.e(r0);
        r0.f.b(c5.e3.q(r30), "Failed to insert property filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0492, code lost:
    
        r0 = r25;
        r3 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0498, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0499, code lost:
    
        r1 = ((c5.i4) r6).f1635j;
        c5.i4.e(r1);
        r1 = r1.f;
        r3 = "Error storing property filter. appId";
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x04a4, code lost:
    
        r1.c(c5.e3.q(r30), r3, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x04ab, code lost:
    
        r10.c();
        r10.b();
        r3.r.f(r30);
        r0 = r10.C();
        r6 = r21;
        r0.delete("property_filters", r6, new java.lang.String[]{r30, java.lang.String.valueOf(r7)});
        r0.delete(r22, r6, new java.lang.String[]{r30, java.lang.String.valueOf(r7)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x04d8, code lost:
    
        r6 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x04da, code lost:
    
        r21 = r6;
        r3 = r24;
        r1 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02b8, code lost:
    
        r8 = r0.y().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x02c4, code lost:
    
        if (r8.hasNext() == false) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02d0, code lost:
    
        if (((com.google.android.gms.internal.measurement.o2) r8.next()).A() != false) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02d2, code lost:
    
        r0 = ((c5.i4) r6).f1635j;
        c5.i4.e(r0);
        r0 = r0.f1508j;
        r5 = "Property filter with no ID. Audience definition ignored. appId, audienceId";
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02e7, code lost:
    
        r8 = r0.x().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02f3, code lost:
    
        r24 = r3;
        r3 = "app_id";
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02ff, code lost:
    
        if (r8.hasNext() == false) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0301, code lost:
    
        r9 = (com.google.android.gms.internal.measurement.h2) r8.next();
        r10.c();
        r10.b();
        r3.r.f(r30);
        r3.r.i(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x031b, code lost:
    
        if (android.text.TextUtils.isEmpty(r9.x()) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x031d, code lost:
    
        r0 = ((c5.i4) r6).f1635j;
        c5.i4.e(r0);
        r0 = r0.f1508j;
        r5 = c5.e3.q(r30);
        r6 = java.lang.Integer.valueOf(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0334, code lost:
    
        if (r9.F() == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0336, code lost:
    
        r8 = java.lang.Integer.valueOf(r9.s());
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x033f, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0340, code lost:
    
        r0.d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r5, r6, java.lang.String.valueOf(r8));
        r26 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x034b, code lost:
    
        r25 = r8;
        r8 = r9.i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0351, code lost:
    
        r26 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0353, code lost:
    
        r1 = new android.content.ContentValues();
        r1.put("app_id", r30);
        r1.put("audience_id", java.lang.Integer.valueOf(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0366, code lost:
    
        if (r9.F() == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0368, code lost:
    
        r3 = java.lang.Integer.valueOf(r9.s());
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0371, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0372, code lost:
    
        r1.put("filter_id", r3);
        r1.put("event_name", r9.x());
     */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(byte[] r29, java.lang.String r30, java.lang.String r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.c4.q(byte[], java.lang.String, java.lang.String):void");
    }

    @WorkerThread
    public final com.google.android.gms.internal.measurement.w2 r(String str, byte[] bArr) {
        z4 z4Var = this.f2115a;
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.w2.x();
        }
        try {
            com.google.android.gms.internal.measurement.w2 w2VarF = ((com.google.android.gms.internal.measurement.v2) q7.A(com.google.android.gms.internal.measurement.w2.v(), bArr)).f();
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.c(w2VarF.G() ? Long.valueOf(w2VarF.t()) : null, "Parsed config. version, gmp_app_id", w2VarF.F() ? w2VarF.y() : null);
            return w2VarF;
        } catch (com.google.android.gms.internal.measurement.z6 | RuntimeException e10) {
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f1508j.c(e3.q(str), "Unable to merge remote config. appId", e10);
            return com.google.android.gms.internal.measurement.w2.x();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0155 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(java.lang.String r13, com.google.android.gms.internal.measurement.v2 r14) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.c4.s(java.lang.String, com.google.android.gms.internal.measurement.v2):void");
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0118: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]) (LINE:281), block:B:40:0x0118 */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011b  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(java.lang.String r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.c4.t(java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final void u(String str, com.google.android.gms.internal.measurement.w2 w2Var) {
        int r02 = w2Var.r();
        a4 a4Var = this.f1444j;
        if (r02 == 0) {
            a4Var.remove(str);
            return;
        }
        z4 z4Var = this.f2115a;
        i4 i4Var = (i4) z4Var;
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f1513p.b(Integer.valueOf(w2Var.r()), "EES programs found");
        int r32 = 0;
        com.google.android.gms.internal.measurement.f4 f4Var = (com.google.android.gms.internal.measurement.f4) w2Var.A().get(0);
        try {
            com.google.android.gms.internal.measurement.s0 s0Var = new com.google.android.gms.internal.measurement.s0();
            com.google.android.gms.internal.measurement.t2 t2Var = s0Var.f3724a;
            ((Map) t2Var.f3773d.f3816a).put("internal.remoteConfig", new y3(r32, this, str));
            ((Map) t2Var.f3773d.f3816a).put("internal.appMetadata", new l7(this, str));
            ((Map) t2Var.f3773d.f3816a).put("internal.logger", new s9(1, this));
            s0Var.a(f4Var);
            a4Var.put(str, s0Var);
            e3 e3Var2 = ((i4) z4Var).f1635j;
            i4.e(e3Var2);
            e3Var2.f1513p.c(str, "EES program loaded for appId, activities", Integer.valueOf(f4Var.r().r()));
            for (com.google.android.gms.internal.measurement.e4 e4Var : f4Var.r().u()) {
                e3 e3Var3 = ((i4) z4Var).f1635j;
                i4.e(e3Var3);
                e3Var3.f1513p.b(e4Var.s(), "EES program activity");
            }
        } catch (com.google.android.gms.internal.measurement.n1 unused) {
            e3 e3Var4 = i4Var.f1635j;
            i4.e(e3Var4);
            e3Var4.f.b(str, "Failed to load EES program. appId");
        }
    }
}
