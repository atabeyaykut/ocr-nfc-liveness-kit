package ga;

import java.lang.reflect.Type;
import ma.b;

/* loaded from: classes2.dex */
public final class e0 extends kotlin.jvm.internal.j implements x9.a<Type> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f0 f5986a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(f0 f0Var) {
        super(0);
        this.f5986a = f0Var;
    }

    @Override // x9.a
    public final Type invoke() {
        f0 f0Var = this.f5986a;
        ma.j0 j0VarG = f0Var.g();
        boolean z10 = j0VarG instanceof ma.o0;
        h<?> hVar = f0Var.f5997a;
        if (!z10 || !kotlin.jvm.internal.h.a(z0.g(hVar.o()), j0VarG) || hVar.o().k0() != b.a.FAKE_OVERRIDE) {
            return hVar.k().a().get(f0Var.f5998b);
        }
        ma.j jVarB = hVar.o().b();
        kotlin.jvm.internal.h.d(jVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        Class<?> clsJ = z0.j((ma.e) jVarB);
        if (clsJ != null) {
            return clsJ;
        }
        throw new l9.f("Cannot determine receiver Java type of inherited declaration: " + j0VarG, 1);
    }
}
