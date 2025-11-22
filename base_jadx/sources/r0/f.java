package r0;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class f extends kotlin.jvm.internal.j implements x9.a<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x9.l f13739a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Fragment f13740b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Fragment fragment, x9.l lVar) {
        super(0);
        this.f13739a = lVar;
        this.f13740b = fragment;
    }

    @Override // x9.a
    public final Object invoke() {
        z _internal = (z) this.f13739a.invoke(new y0());
        e eVar = new e(null, this);
        z0 deliveryMode = z0.f13892a;
        kotlin.jvm.internal.h.f(_internal, "$this$_internal");
        kotlin.jvm.internal.h.f(deliveryMode, "deliveryMode");
        _internal.b(_internal.f13884d.a(), this.f13740b, deliveryMode, eVar);
        return _internal;
    }
}
