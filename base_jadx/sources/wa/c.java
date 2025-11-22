package wa;

import ja.o;
import java.util.Map;
import m9.e0;
import p4.g7;
import va.x;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final lb.f f18835a = lb.f.t("message");

    /* renamed from: b, reason: collision with root package name */
    public static final lb.f f18836b = lb.f.t("allowedTargets");

    /* renamed from: c, reason: collision with root package name */
    public static final lb.f f18837c = lb.f.t("value");

    /* renamed from: d, reason: collision with root package name */
    public static final Map<lb.c, lb.c> f18838d = e0.R0(new l9.g(o.a.f8390t, x.f18385c), new l9.g(o.a.w, x.f18386d), new l9.g(o.a.f8393x, x.f));

    public static xa.g a(lb.c kotlinName, cb.d annotationOwner, g7 c10) {
        cb.a aVarN;
        kotlin.jvm.internal.h.f(kotlinName, "kotlinName");
        kotlin.jvm.internal.h.f(annotationOwner, "annotationOwner");
        kotlin.jvm.internal.h.f(c10, "c");
        if (kotlin.jvm.internal.h.a(kotlinName, o.a.f8383m)) {
            lb.c DEPRECATED_ANNOTATION = x.f18387e;
            kotlin.jvm.internal.h.e(DEPRECATED_ANNOTATION, "DEPRECATED_ANNOTATION");
            cb.a aVarN2 = annotationOwner.n(DEPRECATED_ANNOTATION);
            if (aVarN2 != null) {
                return new f(aVarN2, c10);
            }
            annotationOwner.o();
        }
        lb.c cVar = f18838d.get(kotlinName);
        if (cVar == null || (aVarN = annotationOwner.n(cVar)) == null) {
            return null;
        }
        return b(c10, aVarN, false);
    }

    public static xa.g b(g7 c10, cb.a annotation, boolean z10) {
        kotlin.jvm.internal.h.f(annotation, "annotation");
        kotlin.jvm.internal.h.f(c10, "c");
        lb.b bVarC = annotation.c();
        if (kotlin.jvm.internal.h.a(bVarC, lb.b.l(x.f18385c))) {
            return new j(annotation, c10);
        }
        if (kotlin.jvm.internal.h.a(bVarC, lb.b.l(x.f18386d))) {
            return new i(annotation, c10);
        }
        if (kotlin.jvm.internal.h.a(bVarC, lb.b.l(x.f))) {
            return new b(c10, annotation, o.a.f8393x);
        }
        if (kotlin.jvm.internal.h.a(bVarC, lb.b.l(x.f18387e))) {
            return null;
        }
        return new za.d(c10, annotation, z10);
    }
}
