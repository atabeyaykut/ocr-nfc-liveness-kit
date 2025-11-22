package ga;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public final class v0 {

    /* renamed from: a, reason: collision with root package name */
    public static final nb.d f6124a = nb.c.f10697a;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<ma.a1, CharSequence> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f6125a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final CharSequence invoke(ma.a1 a1Var) {
            nb.d dVar = v0.f6124a;
            cc.e0 type = a1Var.getType();
            kotlin.jvm.internal.h.e(type, "it.type");
            return v0.d(type);
        }
    }

    public static void a(StringBuilder sb2, ma.a aVar) {
        ma.o0 o0VarG = z0.g(aVar);
        ma.o0 o0VarH0 = aVar.h0();
        if (o0VarG != null) {
            cc.e0 type = o0VarG.getType();
            kotlin.jvm.internal.h.e(type, "receiver.type");
            sb2.append(d(type));
            sb2.append(".");
        }
        boolean z10 = (o0VarG == null || o0VarH0 == null) ? false : true;
        if (z10) {
            sb2.append("(");
        }
        if (o0VarH0 != null) {
            cc.e0 type2 = o0VarH0.getType();
            kotlin.jvm.internal.h.e(type2, "receiver.type");
            sb2.append(d(type2));
            sb2.append(".");
        }
        if (z10) {
            sb2.append(")");
        }
    }

    public static String b(ma.u descriptor) throws IOException {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("fun ");
        a(sb2, descriptor);
        lb.f name = descriptor.getName();
        kotlin.jvm.internal.h.e(name, "descriptor.name");
        sb2.append(f6124a.t(name, true));
        List<ma.a1> listG = descriptor.g();
        kotlin.jvm.internal.h.e(listG, "descriptor.valueParameters");
        m9.t.f1(listG, sb2, ", ", "(", ")", a.f6125a, 48);
        sb2.append(": ");
        cc.e0 returnType = descriptor.getReturnType();
        kotlin.jvm.internal.h.c(returnType);
        sb2.append(d(returnType));
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static String c(ma.l0 descriptor) {
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(descriptor.f0() ? "var " : "val ");
        a(sb2, descriptor);
        lb.f name = descriptor.getName();
        kotlin.jvm.internal.h.e(name, "descriptor.name");
        sb2.append(f6124a.t(name, true));
        sb2.append(": ");
        cc.e0 type = descriptor.getType();
        kotlin.jvm.internal.h.e(type, "descriptor.type");
        sb2.append(d(type));
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static String d(cc.e0 type) {
        kotlin.jvm.internal.h.f(type, "type");
        return f6124a.u(type);
    }
}
