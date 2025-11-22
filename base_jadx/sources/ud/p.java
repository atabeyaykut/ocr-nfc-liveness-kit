package ud;

import java.lang.reflect.Method;
import l9.h;

/* loaded from: classes2.dex */
public final class p implements d<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ nc.i f18046a;

    public p(nc.j jVar) {
        this.f18046a = jVar;
    }

    @Override // ud.d
    public final void onFailure(b<Object> call, Throwable t10) {
        kotlin.jvm.internal.h.g(call, "call");
        kotlin.jvm.internal.h.g(t10, "t");
        this.f18046a.resumeWith(c5.w.j(t10));
    }

    @Override // ud.d
    public final void onResponse(b<Object> call, c0<Object> response) {
        h.a aVarJ;
        kotlin.jvm.internal.h.g(call, "call");
        kotlin.jvm.internal.h.g(response, "response");
        boolean zC = response.f17992a.c();
        nc.i iVar = this.f18046a;
        if (zC) {
            Object obj = response.f17993b;
            if (obj != null) {
                iVar.resumeWith(obj);
                return;
            }
            rc.x xVarO = call.o();
            xVarO.getClass();
            Object objCast = m.class.cast(xVarO.f.get(m.class));
            if (objCast == null) {
                kotlin.jvm.internal.h.l();
                throw null;
            }
            StringBuilder sb2 = new StringBuilder("Response from ");
            Method method = ((m) objCast).f18042a;
            kotlin.jvm.internal.h.b(method, "method");
            Class<?> declaringClass = method.getDeclaringClass();
            kotlin.jvm.internal.h.b(declaringClass, "method.declaringClass");
            sb2.append(declaringClass.getName());
            sb2.append('.');
            sb2.append(method.getName());
            sb2.append(" was null but response body type was declared as non-null");
            aVarJ = c5.w.j(new l9.c(sb2.toString()));
        } else {
            aVarJ = c5.w.j(new k(response));
        }
        iVar.resumeWith(aVarJ);
    }
}
