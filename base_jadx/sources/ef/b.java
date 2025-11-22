package ef;

import java.io.IOException;
import kotlin.jvm.internal.h;
import l8.p;
import l8.r;
import l8.u;
import l8.v;
import l8.y;

/* loaded from: classes3.dex */
public final class b<T> extends p<T> {

    /* renamed from: a, reason: collision with root package name */
    public final p<T> f5367a;

    /* renamed from: b, reason: collision with root package name */
    public final T f5368b;

    /* JADX WARN: Multi-variable type inference failed */
    public b(p pVar, Object obj) {
        this.f5367a = pVar;
        this.f5368b = obj;
    }

    @Override // l8.p
    public final T a(u reader) throws IOException {
        T tA;
        h.f(reader, "reader");
        v vVar = new v((v) reader);
        try {
            try {
                tA = this.f5367a.a(vVar);
            } catch (r e10) {
                e10.printStackTrace();
                tA = this.f5368b;
            }
            vVar.close();
            reader.p();
            return tA;
        } catch (Throwable th2) {
            vVar.close();
            throw th2;
        }
    }

    @Override // l8.p
    public final void c(y writer, T t10) throws IOException {
        h.f(writer, "writer");
        this.f5367a.c(writer, t10);
    }
}
