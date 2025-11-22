package rb;

import g.d;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public abstract class a implements Comparable<a> {
    @Override // java.lang.Comparable
    public final int compareTo(a aVar) {
        a other = aVar;
        h.f(other, "other");
        n();
        other.n();
        int r22 = d.a(2, 2);
        if (r22 == 0) {
            o();
        }
        return r22;
    }

    public abstract void n();

    public abstract void o();
}
