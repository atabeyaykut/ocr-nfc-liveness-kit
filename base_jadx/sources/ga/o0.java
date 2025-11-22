package ga;

import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes2.dex */
public final class o0 extends kotlin.jvm.internal.j implements x9.a<List<? extends Type>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0 f6095a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(p0 p0Var) {
        super(0);
        this.f6095a = p0Var;
    }

    @Override // x9.a
    public final List<? extends Type> invoke() {
        Type typeE = this.f6095a.e();
        kotlin.jvm.internal.h.c(typeE);
        return sa.d.c(typeE);
    }
}
