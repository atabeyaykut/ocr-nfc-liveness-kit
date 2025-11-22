package ya;

import cb.y;
import p4.g7;
import va.t;

/* loaded from: classes2.dex */
public final class b {

    public static final class a extends kotlin.jvm.internal.j implements x9.a<t> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ g7 f19331a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ na.h f19332b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(g7 g7Var, na.h hVar) {
            super(0);
            this.f19331a = g7Var;
            this.f19332b = hVar;
        }

        @Override // x9.a
        public final t invoke() {
            g7 g7Var = this.f19331a;
            kotlin.jvm.internal.h.f(g7Var, "<this>");
            na.h additionalAnnotations = this.f19332b;
            kotlin.jvm.internal.h.f(additionalAnnotations, "additionalAnnotations");
            return ((c) g7Var.f12358a).f19348q.b((t) ((l9.e) g7Var.f12361d).getValue(), additionalAnnotations);
        }
    }

    public static g7 a(g7 g7Var, ma.f containingDeclaration, y yVar, int r6) {
        if ((r6 & 2) != 0) {
            yVar = null;
        }
        kotlin.jvm.internal.h.f(g7Var, "<this>");
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        return new g7((c) g7Var.f12358a, yVar != null ? new g(g7Var, containingDeclaration, yVar, 0) : (j) g7Var.f12359b, c5.y.v(3, new ya.a(g7Var, containingDeclaration)));
    }

    public static final g7 b(g7 g7Var, na.h additionalAnnotations) {
        kotlin.jvm.internal.h.f(g7Var, "<this>");
        kotlin.jvm.internal.h.f(additionalAnnotations, "additionalAnnotations");
        return additionalAnnotations.isEmpty() ? g7Var : new g7((c) g7Var.f12358a, (j) g7Var.f12359b, c5.y.v(3, new a(g7Var, additionalAnnotations)));
    }
}
