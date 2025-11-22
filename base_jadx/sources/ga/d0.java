package ga;

import java.lang.annotation.Annotation;
import java.util.List;

/* loaded from: classes2.dex */
public final class d0 extends kotlin.jvm.internal.j implements x9.a<List<? extends Annotation>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f0 f5984a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(f0 f0Var) {
        super(0);
        this.f5984a = f0Var;
    }

    @Override // x9.a
    public final List<? extends Annotation> invoke() {
        return z0.d(this.f5984a.g());
    }
}
