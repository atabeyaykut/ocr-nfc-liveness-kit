package fa;

import da.g;
import da.m;
import ga.l0;
import ga.z0;
import ha.f;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class b {
    public static final Field a(m<?> mVar) {
        h.f(mVar, "<this>");
        l0<?> l0VarC = z0.c(mVar);
        if (l0VarC != null) {
            return l0VarC.f6039j.invoke();
        }
        return null;
    }

    public static final Method b(g<?> gVar) {
        f<?> fVarK;
        h.f(gVar, "<this>");
        ga.h<?> hVarA = z0.a(gVar);
        Member memberB = (hVarA == null || (fVarK = hVarA.k()) == null) ? null : fVarK.b();
        if (memberB instanceof Method) {
            return (Method) memberB;
        }
        return null;
    }
}
