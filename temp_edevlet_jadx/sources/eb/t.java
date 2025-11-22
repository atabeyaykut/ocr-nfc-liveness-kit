package eb;

import java.util.Map;
import ma.r0;

/* loaded from: classes2.dex */
public final class t implements r0 {

    /* renamed from: b, reason: collision with root package name */
    public final za.m f5235b;

    public t(za.m packageFragment) {
        kotlin.jvm.internal.h.f(packageFragment, "packageFragment");
        this.f5235b = packageFragment;
    }

    @Override // ma.r0
    public final void a() {
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        za.m mVar = this.f5235b;
        sb2.append(mVar);
        sb2.append(": ");
        mVar.getClass();
        sb2.append(((Map) b8.f.O(mVar.f19953j, za.m.f19950n[0])).keySet());
        return sb2.toString();
    }
}
