package l8;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class l extends p<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f9506a;

    public l(p pVar) {
        this.f9506a = pVar;
    }

    @Override // l8.p
    public final Object a(u uVar) throws IOException {
        return this.f9506a.a(uVar);
    }

    @Override // l8.p
    public final void c(y yVar, Object obj) throws IOException {
        boolean z10 = yVar.f;
        yVar.f = true;
        try {
            this.f9506a.c(yVar, obj);
        } finally {
            yVar.f = z10;
        }
    }

    public final String toString() {
        return this.f9506a + ".serializeNulls()";
    }
}
