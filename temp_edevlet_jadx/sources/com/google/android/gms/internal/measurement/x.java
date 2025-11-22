package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class x implements d0 {

    /* renamed from: a, reason: collision with root package name */
    public Object f3826a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3827b;

    public x(int r22) {
        if (r22 != 2) {
            this.f3826a = new HashMap();
            this.f3827b = new f0();
            c(new v());
            c(new y());
            c(new z(0));
            c(new c0());
            c(new z(1));
            c(new e0());
            c(new g0());
        }
    }

    public /* synthetic */ x(s3 s3Var, String str) {
        this.f3826a = s3Var;
        this.f3827b = str;
    }

    public final p a(s3 s3Var, p pVar) {
        c5.w.U(s3Var);
        if (!(pVar instanceof q)) {
            return pVar;
        }
        q qVar = (q) pVar;
        ArrayList<p> arrayList = qVar.f3690b;
        Map map = (Map) this.f3826a;
        String str = qVar.f3689a;
        return (map.containsKey(str) ? (w) ((Map) this.f3826a).get(str) : (f0) this.f3827b).a(str, s3Var, arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.d0
    public final s3 b(p pVar) {
        s3 s3VarA = ((s3) this.f3826a).a();
        s3VarA.e((String) this.f3827b, pVar);
        return s3VarA;
    }

    public final void c(w wVar) {
        Iterator it = wVar.f3809a.iterator();
        while (it.hasNext()) {
            ((Map) this.f3826a).put(Integer.valueOf(((h0) it.next()).f3527a).toString(), wVar);
        }
    }
}
