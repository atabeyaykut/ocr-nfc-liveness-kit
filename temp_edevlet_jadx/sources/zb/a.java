package zb;

import gb.a;
import gb.c;
import gb.k;
import gb.m;
import gb.p;
import gb.r;
import gb.t;
import java.util.List;
import mb.f;
import mb.h;
import mc.j;

/* loaded from: classes2.dex */
public final class a extends xb.a {

    /* renamed from: m, reason: collision with root package name */
    public static final a f20019m = new a();

    public a() {
        f fVar = new f();
        hb.b.a(fVar);
        h.e<k, Integer> packageFqName = hb.b.f7065a;
        kotlin.jvm.internal.h.e(packageFqName, "packageFqName");
        h.e<c, List<gb.a>> constructorAnnotation = hb.b.f7067c;
        kotlin.jvm.internal.h.e(constructorAnnotation, "constructorAnnotation");
        h.e<gb.b, List<gb.a>> classAnnotation = hb.b.f7066b;
        kotlin.jvm.internal.h.e(classAnnotation, "classAnnotation");
        h.e<gb.h, List<gb.a>> functionAnnotation = hb.b.f7068d;
        kotlin.jvm.internal.h.e(functionAnnotation, "functionAnnotation");
        h.e<m, List<gb.a>> propertyAnnotation = hb.b.f7069e;
        kotlin.jvm.internal.h.e(propertyAnnotation, "propertyAnnotation");
        h.e<m, List<gb.a>> propertyGetterAnnotation = hb.b.f;
        kotlin.jvm.internal.h.e(propertyGetterAnnotation, "propertyGetterAnnotation");
        h.e<m, List<gb.a>> propertySetterAnnotation = hb.b.f7070g;
        kotlin.jvm.internal.h.e(propertySetterAnnotation, "propertySetterAnnotation");
        h.e<gb.f, List<gb.a>> enumEntryAnnotation = hb.b.f7072i;
        kotlin.jvm.internal.h.e(enumEntryAnnotation, "enumEntryAnnotation");
        h.e<m, a.b.c> compileTimeValue = hb.b.f7071h;
        kotlin.jvm.internal.h.e(compileTimeValue, "compileTimeValue");
        h.e<t, List<gb.a>> parameterAnnotation = hb.b.f7073j;
        kotlin.jvm.internal.h.e(parameterAnnotation, "parameterAnnotation");
        h.e<p, List<gb.a>> typeAnnotation = hb.b.f7074k;
        kotlin.jvm.internal.h.e(typeAnnotation, "typeAnnotation");
        h.e<r, List<gb.a>> typeParameterAnnotation = hb.b.f7075l;
        kotlin.jvm.internal.h.e(typeParameterAnnotation, "typeParameterAnnotation");
        super(fVar, packageFqName, constructorAnnotation, classAnnotation, functionAnnotation, propertyAnnotation, propertyGetterAnnotation, propertySetterAnnotation, enumEntryAnnotation, compileTimeValue, parameterAnnotation, typeAnnotation, typeParameterAnnotation);
    }

    public static String a(lb.c fqName) {
        String strO;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j.B(fqName.b(), '.', '/'));
        sb2.append('/');
        if (fqName.d()) {
            strO = "default-package";
        } else {
            strO = fqName.f().o();
            kotlin.jvm.internal.h.e(strO, "fqName.shortName().asString()");
        }
        sb2.append(strO.concat(".kotlin_builtins"));
        return sb2.toString();
    }
}
