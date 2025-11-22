package r9;

import c5.w;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import l9.m;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import r9.f;

/* loaded from: classes2.dex */
public abstract class a implements p9.d<Object>, d, Serializable {
    private final p9.d<Object> completion;

    public a(p9.d<Object> dVar) {
        this.completion = dVar;
    }

    public p9.d<m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public p9.d<m> create(p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    public d getCallerFrame() {
        p9.d<Object> dVar = this.completion;
        if (dVar instanceof d) {
            return (d) dVar;
        }
        return null;
    }

    public final p9.d<Object> getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        int r52;
        String strC;
        e eVar = (e) getClass().getAnnotation(e.class);
        String str = null;
        if (eVar == null) {
            return null;
        }
        int r22 = eVar.v();
        if (r22 > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + r22 + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField(AnnotatedPrivateKey.LABEL);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            r52 = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            r52 = -1;
        }
        int r23 = r52 >= 0 ? eVar.l()[r52] : -1;
        f.a aVar = f.f14354b;
        f.a aVar2 = f.f14353a;
        if (aVar == null) {
            try {
                f.a aVar3 = new f.a(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
                f.f14354b = aVar3;
                aVar = aVar3;
            } catch (Exception unused2) {
                f.f14354b = aVar2;
                aVar = aVar2;
            }
        }
        if (aVar != aVar2) {
            Method method = aVar.f14355a;
            Object objInvoke = method != null ? method.invoke(getClass(), new Object[0]) : null;
            if (objInvoke != null) {
                Method method2 = aVar.f14356b;
                Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, new Object[0]) : null;
                if (objInvoke2 != null) {
                    Method method3 = aVar.f14357c;
                    Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, new Object[0]) : null;
                    if (objInvoke3 instanceof String) {
                        str = (String) objInvoke3;
                    }
                }
            }
        }
        if (str == null) {
            strC = eVar.c();
        } else {
            strC = str + '/' + eVar.c();
        }
        return new StackTraceElement(strC, eVar.m(), eVar.f(), r23);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p9.d
    public final void resumeWith(Object obj) {
        p9.d dVar = this;
        while (true) {
            a aVar = (a) dVar;
            p9.d dVar2 = aVar.completion;
            kotlin.jvm.internal.h.c(dVar2);
            try {
                obj = aVar.invokeSuspend(obj);
                if (obj == q9.a.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th2) {
                obj = w.j(th2);
            }
            aVar.releaseIntercepted();
            if (!(dVar2 instanceof a)) {
                dVar2.resumeWith(obj);
                return;
            }
            dVar = dVar2;
        }
    }

    public String toString() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        StringBuilder sb2 = new StringBuilder("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb2.append(stackTraceElement);
        return sb2.toString();
    }
}
