package l8;

import java.io.IOException;
import l8.u;

/* loaded from: classes2.dex */
public final class m extends p<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f9507a;

    public m(p pVar) {
        this.f9507a = pVar;
    }

    @Override // l8.p
    public final Object a(u uVar) throws IOException {
        if (uVar.k() != u.b.NULL) {
            return this.f9507a.a(uVar);
        }
        uVar.i();
        return null;
    }

    @Override // l8.p
    public final void c(y yVar, Object obj) throws IOException {
        if (obj == null) {
            yVar.g();
        } else {
            this.f9507a.c(yVar, obj);
        }
    }

    public final String toString() {
        return this.f9507a + ".nullSafe()";
    }
}
