package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class h extends u<Object> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f10071b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final j7.h f10072a;

    public static class a implements v {
        @Override // j7.v
        public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
            if (aVar.f12844a == Object.class) {
                return new h(hVar);
            }
            return null;
        }
    }

    public h(j7.h hVar) {
        this.f10072a = hVar;
    }

    @Override // j7.u
    public final Object a(q7.a aVar) throws IOException {
        int r02 = g.d.c(aVar.B());
        if (r02 == 0) {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.i()) {
                arrayList.add(a(aVar));
            }
            aVar.e();
            return arrayList;
        }
        if (r02 == 2) {
            l7.i iVar = new l7.i();
            aVar.b();
            while (aVar.i()) {
                iVar.put(aVar.q(), a(aVar));
            }
            aVar.f();
            return iVar;
        }
        if (r02 == 5) {
            return aVar.v();
        }
        if (r02 == 6) {
            return Double.valueOf(aVar.n());
        }
        if (r02 == 7) {
            return Boolean.valueOf(aVar.m());
        }
        if (r02 != 8) {
            throw new IllegalStateException();
        }
        aVar.s();
        return null;
    }

    @Override // j7.u
    public final void b(q7.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.j();
            return;
        }
        Class<?> cls = obj.getClass();
        j7.h hVar = this.f10072a;
        hVar.getClass();
        u uVarB = hVar.b(new p7.a(cls));
        if (!(uVarB instanceof h)) {
            uVarB.b(bVar, obj);
        } else {
            bVar.c();
            bVar.f();
        }
    }
}
