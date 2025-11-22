package cc;

import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class m0 extends s1 implements fc.i, fc.j {
    @Override // cc.s1
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public abstract m0 Q0(boolean z10);

    @Override // cc.s1
    /* renamed from: U0, reason: merged with bridge method [inline-methods] */
    public abstract m0 S0(a1 a1Var);

    public String toString() throws IOException {
        StringBuilder sb2 = new StringBuilder();
        Iterator<na.c> it = getAnnotations().iterator();
        while (it.hasNext()) {
            String[] strArr = {"[", nb.c.f10698b.p(it.next(), null), "] "};
            for (int r52 = 0; r52 < 3; r52++) {
                sb2.append(strArr[r52]);
            }
        }
        sb2.append(M0());
        if (!K0().isEmpty()) {
            m9.t.f1(K0(), sb2, ", ", "<", ">", null, 112);
        }
        if (N0()) {
            sb2.append("?");
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
