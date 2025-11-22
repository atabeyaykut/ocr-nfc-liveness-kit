package ga;

import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public final class o extends kotlin.jvm.internal.j implements x9.a<Type> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cc.e0 f6092a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n<Object>.a f6093b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n<Object> f6094c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(cc.e0 e0Var, n<Object>.a aVar, n<Object> nVar) {
        super(0);
        this.f6092a = e0Var;
        this.f6093b = aVar;
        this.f6094c = nVar;
    }

    @Override // x9.a
    public final Type invoke() {
        Type genericSuperclass;
        String str;
        ma.g gVarN = this.f6092a.M0().n();
        if (!(gVarN instanceof ma.e)) {
            throw new l9.f("Supertype not a class: " + gVarN, 1);
        }
        Class<?> clsJ = z0.j((ma.e) gVarN);
        n<Object>.a aVar = this.f6093b;
        if (clsJ == null) {
            throw new l9.f("Unsupported superclass of " + aVar + ": " + gVarN, 1);
        }
        n<Object> nVar = this.f6094c;
        boolean zA = kotlin.jvm.internal.h.a(nVar.f6053b.getSuperclass(), clsJ);
        Class<Object> cls = nVar.f6053b;
        if (zA) {
            genericSuperclass = cls.getGenericSuperclass();
            str = "{\n                      …ass\n                    }";
        } else {
            Class<?>[] interfaces = cls.getInterfaces();
            kotlin.jvm.internal.h.e(interfaces, "jClass.interfaces");
            int r12 = m9.k.t0(interfaces, clsJ);
            if (r12 < 0) {
                throw new l9.f("No superclass of " + aVar + " in Java reflection for " + gVarN, 1);
            }
            genericSuperclass = cls.getGenericInterfaces()[r12];
            str = "{\n                      …ex]\n                    }";
        }
        kotlin.jvm.internal.h.e(genericSuperclass, str);
        return genericSuperclass;
    }
}
