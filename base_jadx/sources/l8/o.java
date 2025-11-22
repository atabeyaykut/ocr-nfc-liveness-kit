package l8;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class o extends p<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f9509a;

    public o(p pVar) {
        this.f9509a = pVar;
    }

    @Override // l8.p
    public final Object a(u uVar) throws IOException {
        boolean z10 = uVar.f;
        uVar.f = true;
        try {
            return this.f9509a.a(uVar);
        } finally {
            uVar.f = z10;
        }
    }

    @Override // l8.p
    public final void c(y yVar, Object obj) throws IOException {
        this.f9509a.c(yVar, obj);
    }

    public final String toString() {
        return this.f9509a + ".failOnUnknown()";
    }
}
