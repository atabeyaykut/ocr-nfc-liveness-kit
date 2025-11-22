package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public class x {
    public da.g a(f fVar) {
        return fVar;
    }

    public da.d b(Class cls) {
        return new c(cls);
    }

    public da.f c(Class cls, String str) {
        return new n(cls, str);
    }

    public da.i d(k kVar) {
        return kVar;
    }

    public da.k e(o oVar) {
        return oVar;
    }

    public da.l f(q qVar) {
        return qVar;
    }

    public String g(e eVar) {
        String string = eVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String h(j jVar) {
        return g(jVar);
    }
}
