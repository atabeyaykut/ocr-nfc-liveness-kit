package wa;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import ma.b;
import ob.m;
import ob.n;
import x9.l;
import yb.u;

/* loaded from: classes2.dex */
public final class a extends m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f18824a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set f18825b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f18826c;

    /* renamed from: wa.a$a, reason: collision with other inner class name */
    public class C0295a implements l<ma.b, l9.m> {
        public C0295a() {
        }

        @Override // x9.l
        public final l9.m invoke(ma.b bVar) {
            ma.b bVar2 = bVar;
            if (bVar2 == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "descriptor", "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1", "invoke"));
            }
            a.this.f18824a.k(bVar2);
            return l9.m.f9594a;
        }
    }

    public a(u uVar, LinkedHashSet linkedHashSet, boolean z10) {
        this.f18824a = uVar;
        this.f18825b = linkedHashSet;
        this.f18826c = z10;
    }

    public static /* synthetic */ void u(int r72) {
        Object[] objArr = new Object[3];
        if (r72 == 1) {
            objArr[0] = "fromSuper";
        } else if (r72 == 2) {
            objArr[0] = "fromCurrent";
        } else if (r72 == 3) {
            objArr[0] = "member";
        } else if (r72 != 4) {
            objArr[0] = "fakeOverride";
        } else {
            objArr[0] = "overridden";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1";
        if (r72 == 1 || r72 == 2) {
            objArr[2] = "conflict";
        } else if (r72 == 3 || r72 == 4) {
            objArr[2] = "setOverriddenDescriptors";
        } else {
            objArr[2] = "addFakeOverride";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // c6.a
    public final void k(ma.b bVar) {
        if (bVar == null) {
            u(0);
            throw null;
        }
        n.r(bVar, new C0295a());
        this.f18825b.add(bVar);
    }

    @Override // c6.a
    public final void s(ma.b bVar, Collection<? extends ma.b> collection) {
        if (bVar == null) {
            u(3);
            throw null;
        }
        if (!this.f18826c || bVar.k0() == b.a.FAKE_OVERRIDE) {
            bVar.w0(collection);
        }
    }

    @Override // ob.m
    public final void t(ma.b bVar, ma.b bVar2) {
        if (bVar == null) {
            u(1);
            throw null;
        }
        if (bVar2 != null) {
            return;
        }
        u(2);
        throw null;
    }
}
