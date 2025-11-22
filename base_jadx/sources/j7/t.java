package j7;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class t extends u<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f8304a;

    public t(u uVar) {
        this.f8304a = uVar;
    }

    @Override // j7.u
    public final Object a(q7.a aVar) throws IOException {
        if (aVar.B() != 9) {
            return this.f8304a.a(aVar);
        }
        aVar.s();
        return null;
    }

    @Override // j7.u
    public final void b(q7.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.j();
        } else {
            this.f8304a.b(bVar, obj);
        }
    }
}
