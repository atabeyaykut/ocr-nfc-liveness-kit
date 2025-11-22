package ya;

import p4.g7;
import va.t;

/* loaded from: classes2.dex */
public final class a extends kotlin.jvm.internal.j implements x9.a<t> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g7 f19329a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ma.f f19330b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(g7 g7Var, ma.f fVar) {
        super(0);
        this.f19329a = g7Var;
        this.f19330b = fVar;
    }

    @Override // x9.a
    public final t invoke() {
        na.h additionalAnnotations = this.f19330b.getAnnotations();
        g7 g7Var = this.f19329a;
        kotlin.jvm.internal.h.f(g7Var, "<this>");
        kotlin.jvm.internal.h.f(additionalAnnotations, "additionalAnnotations");
        return ((c) g7Var.f12358a).f19348q.b((t) ((l9.e) g7Var.f12361d).getValue(), additionalAnnotations);
    }
}
