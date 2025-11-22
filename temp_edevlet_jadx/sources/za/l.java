package za;

import java.util.Set;
import m9.g0;

/* loaded from: classes2.dex */
public final class l extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f19949a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(k kVar) {
        super(0);
        this.f19949a = kVar;
    }

    @Override // x9.a
    public final Set<? extends lb.f> invoke() {
        k kVar = this.f19949a;
        return g0.F(kVar.b(), kVar.d());
    }
}
