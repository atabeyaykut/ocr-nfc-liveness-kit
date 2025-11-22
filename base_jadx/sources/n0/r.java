package n0;

import java.io.IOException;
import java.util.ArrayList;
import o0.c;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f10513a = c.a.a("k");

    public static ArrayList a(o0.c cVar, d0.f fVar, float f, h0 h0Var, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (cVar.k() == 6) {
            fVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        cVar.b();
        while (cVar.e()) {
            if (cVar.n(f10513a) != 0) {
                cVar.p();
            } else if (cVar.k() == 1) {
                cVar.a();
                if (cVar.k() == 7) {
                    arrayList.add(q.b(cVar, fVar, f, h0Var, false, z10));
                } else {
                    while (cVar.e()) {
                        arrayList.add(q.b(cVar, fVar, f, h0Var, true, z10));
                    }
                }
                cVar.c();
            } else {
                arrayList.add(q.b(cVar, fVar, f, h0Var, false, z10));
            }
        }
        cVar.d();
        b(arrayList);
        return arrayList;
    }

    public static void b(ArrayList arrayList) {
        int r22;
        T t10;
        int size = arrayList.size();
        int r12 = 0;
        while (true) {
            r22 = size - 1;
            if (r12 >= r22) {
                break;
            }
            q0.a aVar = (q0.a) arrayList.get(r12);
            r12++;
            q0.a aVar2 = (q0.a) arrayList.get(r12);
            aVar.f13276h = Float.valueOf(aVar2.f13275g);
            if (aVar.f13272c == 0 && (t10 = aVar2.f13271b) != 0) {
                aVar.f13272c = t10;
                if (aVar instanceof g0.h) {
                    ((g0.h) aVar).d();
                }
            }
        }
        q0.a aVar3 = (q0.a) arrayList.get(r22);
        if ((aVar3.f13271b == 0 || aVar3.f13272c == 0) && arrayList.size() > 1) {
            arrayList.remove(aVar3);
        }
    }
}
