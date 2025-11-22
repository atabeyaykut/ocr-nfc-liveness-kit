package ya;

import cb.x;
import cb.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import ma.w0;
import p4.g7;
import x9.l;
import za.z;

/* loaded from: classes2.dex */
public final class g implements j {

    /* renamed from: a, reason: collision with root package name */
    public final g7 f19365a;

    /* renamed from: b, reason: collision with root package name */
    public final ma.j f19366b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19367c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f19368d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.h<x, z> f19369e;

    public static final class a extends kotlin.jvm.internal.j implements l<x, z> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final z invoke(x xVar) {
            x typeParameter = xVar;
            kotlin.jvm.internal.h.f(typeParameter, "typeParameter");
            g gVar = g.this;
            Integer num = (Integer) gVar.f19368d.get(typeParameter);
            if (num == null) {
                return null;
            }
            int r12 = num.intValue();
            g7 g7Var = gVar.f19365a;
            kotlin.jvm.internal.h.f(g7Var, "<this>");
            g7 g7Var2 = new g7((c) g7Var.f12358a, gVar, (l9.e) g7Var.f12360c);
            ma.j jVar = gVar.f19366b;
            return new z(b.b(g7Var2, jVar.getAnnotations()), typeParameter, gVar.f19367c + r12, jVar);
        }
    }

    public g(g7 c10, ma.j containingDeclaration, y typeParameterOwner, int r52) {
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(typeParameterOwner, "typeParameterOwner");
        this.f19365a = c10;
        this.f19366b = containingDeclaration;
        this.f19367c = r52;
        ArrayList typeParameters = typeParameterOwner.getTypeParameters();
        kotlin.jvm.internal.h.f(typeParameters, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = typeParameters.iterator();
        int r42 = 0;
        while (it.hasNext()) {
            linkedHashMap.put(it.next(), Integer.valueOf(r42));
            r42++;
        }
        this.f19368d = linkedHashMap;
        this.f19369e = this.f19365a.b().e(new a());
    }

    @Override // ya.j
    public final w0 a(x javaTypeParameter) {
        kotlin.jvm.internal.h.f(javaTypeParameter, "javaTypeParameter");
        z zVarInvoke = this.f19369e.invoke(javaTypeParameter);
        return zVarInvoke != null ? zVarInvoke : ((j) this.f19365a.f12359b).a(javaTypeParameter);
    }
}
