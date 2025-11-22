package n5;

import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import u5.e0;
import u5.g0;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f10587a = Logger.getLogger(p.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f10588b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f10589c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f10590d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f10591e;

    public interface a {
        d a(Class cls) throws GeneralSecurityException;

        d b();

        Class<?> c();

        Set<Class<?>> d();
    }

    static {
        new ConcurrentHashMap();
        f10591e = new ConcurrentHashMap();
    }

    public static synchronized void a(String str, Class<?> cls, boolean z10) throws GeneralSecurityException {
        ConcurrentHashMap concurrentHashMap = f10588b;
        if (concurrentHashMap.containsKey(str)) {
            a aVar = (a) concurrentHashMap.get(str);
            if (!aVar.c().equals(cls)) {
                f10587a.warning("Attempted overwrite of a registered key manager for key type " + str);
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, aVar.c().getName(), cls.getName()));
            }
            if (z10 && !((Boolean) f10590d.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type " + str);
            }
        }
    }

    public static synchronized a b(String str) throws GeneralSecurityException {
        ConcurrentHashMap concurrentHashMap;
        concurrentHashMap = f10588b;
        if (!concurrentHashMap.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type " + str);
        }
        return (a) concurrentHashMap.get(str);
    }

    public static <P> P c(String str, com.google.crypto.tink.shaded.protobuf.i iVar, Class<P> cls) throws GeneralSecurityException {
        a aVarB = b(str);
        if (aVarB.d().contains(cls)) {
            return (P) aVarB.a(cls).a(iVar);
        }
        StringBuilder sb2 = new StringBuilder("Primitive type ");
        sb2.append(cls.getName());
        sb2.append(" not supported by key manager of type ");
        sb2.append(aVarB.c());
        sb2.append(", supported primitives: ");
        Set<Class<?>> setD = aVarB.d();
        StringBuilder sb3 = new StringBuilder();
        boolean z10 = true;
        for (Class<?> cls2 : setD) {
            if (!z10) {
                sb3.append(", ");
            }
            sb3.append(cls2.getCanonicalName());
            z10 = false;
        }
        sb2.append(sb3.toString());
        throw new GeneralSecurityException(sb2.toString());
    }

    public static synchronized e0 d(g0 g0Var) throws GeneralSecurityException {
        d dVarB;
        dVarB = b(g0Var.y()).b();
        if (!((Boolean) f10590d.get(g0Var.y())).booleanValue()) {
            throw new GeneralSecurityException("newKey-operation not permitted for key type " + g0Var.y());
        }
        return dVarB.b(g0Var.z());
    }

    public static synchronized <KeyProtoT extends q0> void e(f<KeyProtoT> fVar, boolean z10) throws GeneralSecurityException {
        String strA = fVar.a();
        a(strA, fVar.getClass(), z10);
        ConcurrentHashMap concurrentHashMap = f10588b;
        if (!concurrentHashMap.containsKey(strA)) {
            concurrentHashMap.put(strA, new n(fVar));
            f10589c.put(strA, new o());
        }
        f10590d.put(strA, Boolean.valueOf(z10));
    }

    public static synchronized <B, P> void f(m<B, P> mVar) throws GeneralSecurityException {
        Class<P> clsC = mVar.c();
        ConcurrentHashMap concurrentHashMap = f10591e;
        if (concurrentHashMap.containsKey(clsC)) {
            m mVar2 = (m) concurrentHashMap.get(clsC);
            if (!mVar.getClass().equals(mVar2.getClass())) {
                f10587a.warning("Attempted overwrite of a registered SetWrapper for type " + clsC);
                throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", clsC.getName(), mVar2.getClass().getName(), mVar.getClass().getName()));
            }
        }
        concurrentHashMap.put(clsC, mVar);
    }
}
