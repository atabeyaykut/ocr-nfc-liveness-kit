package pa;

import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class t extends ob.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Set f12993a;

    public t(LinkedHashSet linkedHashSet) {
        this.f12993a = linkedHashSet;
    }

    public static /* synthetic */ void u(int r52) {
        Object[] objArr = new Object[3];
        if (r52 == 1) {
            objArr[0] = "fromSuper";
        } else if (r52 != 2) {
            objArr[0] = "fakeOverride";
        } else {
            objArr[0] = "fromCurrent";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope$4";
        if (r52 == 1 || r52 == 2) {
            objArr[2] = "conflict";
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
        ob.n.r(bVar, null);
        this.f12993a.add(bVar);
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
