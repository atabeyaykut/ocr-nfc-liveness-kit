package l8;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class n extends p<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f9508a;

    public n(p pVar) {
        this.f9508a = pVar;
    }

    @Override // l8.p
    public final Object a(u uVar) throws IOException {
        boolean z10 = uVar.f9514e;
        uVar.f9514e = true;
        try {
            return this.f9508a.a(uVar);
        } finally {
            uVar.f9514e = z10;
        }
    }

    @Override // l8.p
    public final void c(y yVar, Object obj) throws IOException {
        boolean z10 = yVar.f9547e;
        yVar.f9547e = true;
        try {
            this.f9508a.c(yVar, obj);
        } finally {
            yVar.f9547e = z10;
        }
    }

    public final String toString() {
        return this.f9508a + ".lenient()";
    }
}
