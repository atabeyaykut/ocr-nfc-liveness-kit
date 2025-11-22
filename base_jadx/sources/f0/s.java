package f0;

import g0.a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class s implements c, a.InterfaceC0091a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5493a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5494b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final int f5495c;

    /* renamed from: d, reason: collision with root package name */
    public final g0.c f5496d;

    /* renamed from: e, reason: collision with root package name */
    public final g0.c f5497e;
    public final g0.c f;

    public s(l0.b bVar, k0.p pVar) {
        pVar.getClass();
        this.f5493a = pVar.f8691e;
        this.f5495c = pVar.f8687a;
        g0.a<Float, Float> aVarC = pVar.f8688b.c();
        this.f5496d = (g0.c) aVarC;
        g0.a<Float, Float> aVarC2 = pVar.f8689c.c();
        this.f5497e = (g0.c) aVarC2;
        g0.a<Float, Float> aVarC3 = pVar.f8690d.c();
        this.f = (g0.c) aVarC3;
        bVar.e(aVarC);
        bVar.e(aVarC2);
        bVar.e(aVarC3);
        aVarC.a(this);
        aVarC2.a(this);
        aVarC3.a(this);
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        int r02 = 0;
        while (true) {
            ArrayList arrayList = this.f5494b;
            if (r02 >= arrayList.size()) {
                return;
            }
            ((a.InterfaceC0091a) arrayList.get(r02)).a();
            r02++;
        }
    }

    @Override // f0.c
    public final void b(List<c> list, List<c> list2) {
    }

    public final void c(a.InterfaceC0091a interfaceC0091a) {
        this.f5494b.add(interfaceC0091a);
    }
}
