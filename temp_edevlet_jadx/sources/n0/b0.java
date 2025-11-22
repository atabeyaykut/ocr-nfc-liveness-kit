package n0;

import android.graphics.PointF;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import o0.c;

/* loaded from: classes.dex */
public final class b0 implements h0<k0.k> {

    /* renamed from: a, reason: collision with root package name */
    public static final b0 f10482a = new b0();

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f10483b = c.a.a("c", "v", "i", "o");

    @Override // n0.h0
    public final k0.k a(o0.c cVar, float f) throws IOException {
        if (cVar.k() == 1) {
            cVar.a();
        }
        cVar.b();
        ArrayList arrayListC = null;
        ArrayList arrayListC2 = null;
        ArrayList arrayListC3 = null;
        boolean zF = false;
        while (cVar.e()) {
            int r6 = cVar.n(f10483b);
            if (r6 == 0) {
                zF = cVar.f();
            } else if (r6 == 1) {
                arrayListC = p.c(cVar, f);
            } else if (r6 == 2) {
                arrayListC2 = p.c(cVar, f);
            } else if (r6 != 3) {
                cVar.o();
                cVar.p();
            } else {
                arrayListC3 = p.c(cVar, f);
            }
        }
        cVar.d();
        if (cVar.k() == 2) {
            cVar.c();
        }
        if (arrayListC == null || arrayListC2 == null || arrayListC3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (arrayListC.isEmpty()) {
            return new k0.k(new PointF(), false, Collections.emptyList());
        }
        int size = arrayListC.size();
        PointF pointF = (PointF) arrayListC.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int r72 = 1; r72 < size; r72++) {
            PointF pointF2 = (PointF) arrayListC.get(r72);
            int r92 = r72 - 1;
            arrayList.add(new i0.a(p0.f.a((PointF) arrayListC.get(r92), (PointF) arrayListC3.get(r92)), p0.f.a(pointF2, (PointF) arrayListC2.get(r72)), pointF2));
        }
        if (zF) {
            PointF pointF3 = (PointF) arrayListC.get(0);
            int r13 = size - 1;
            arrayList.add(new i0.a(p0.f.a((PointF) arrayListC.get(r13), (PointF) arrayListC3.get(r13)), p0.f.a(pointF3, (PointF) arrayListC2.get(0)), pointF3));
        }
        return new k0.k(pointF, zF, arrayList);
    }
}
