package n5;

import java.security.GeneralSecurityException;
import java.util.Set;
import n5.p;

/* loaded from: classes2.dex */
public final class n implements p.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f10586a;

    public n(f fVar) {
        this.f10586a = fVar;
    }

    @Override // n5.p.a
    public final d a(Class cls) throws GeneralSecurityException {
        try {
            return new d(this.f10586a, cls);
        } catch (IllegalArgumentException e10) {
            throw new GeneralSecurityException("Primitive type not supported", e10);
        }
    }

    @Override // n5.p.a
    public final d b() {
        f fVar = this.f10586a;
        return new d(fVar, fVar.f10572c);
    }

    @Override // n5.p.a
    public final Class<?> c() {
        return this.f10586a.getClass();
    }

    @Override // n5.p.a
    public final Set<Class<?>> d() {
        return this.f10586a.f10571b.keySet();
    }
}
