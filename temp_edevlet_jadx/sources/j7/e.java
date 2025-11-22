package j7;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class e extends u<Number> {
    @Override // j7.u
    public final Number a(q7.a aVar) throws IOException {
        if (aVar.B() != 9) {
            return Float.valueOf((float) aVar.n());
        }
        aVar.s();
        return null;
    }

    @Override // j7.u
    public final void b(q7.b bVar, Number number) throws IOException {
        Number number2 = number;
        if (number2 == null) {
            bVar.j();
        } else {
            h.a(number2.floatValue());
            bVar.p(number2);
        }
    }
}
