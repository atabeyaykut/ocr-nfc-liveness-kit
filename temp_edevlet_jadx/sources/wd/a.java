package wd;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import l8.b0;
import l8.l;
import l8.n;
import l8.o;
import l8.p;
import l8.t;
import rc.d0;
import ud.f;

/* loaded from: classes2.dex */
public final class a extends f.a {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f18883a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18884b = false;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18885c = false;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18886d = false;

    public a(b0 b0Var) {
        this.f18883a = b0Var;
    }

    public static a c() {
        return new a(new b0(new b0.a()));
    }

    public static Set<? extends Annotation> d(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(t.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? Collections.unmodifiableSet(linkedHashSet) : Collections.emptySet();
    }

    @Override // ud.f.a
    public final f a(Type type, Annotation[] annotationArr) {
        p pVarB = this.f18883a.b(type, d(annotationArr), null);
        if (this.f18884b) {
            pVarB = new n(pVarB);
        }
        if (this.f18885c) {
            pVarB = new o(pVarB);
        }
        if (this.f18886d) {
            pVarB = new l(pVarB);
        }
        return new b(pVarB);
    }

    @Override // ud.f.a
    public final f<d0, ?> b(Type type, Annotation[] annotationArr, ud.d0 d0Var) {
        p pVarB = this.f18883a.b(type, d(annotationArr), null);
        if (this.f18884b) {
            pVarB = new n(pVarB);
        }
        if (this.f18885c) {
            pVarB = new o(pVarB);
        }
        if (this.f18886d) {
            pVarB = new l(pVarB);
        }
        return new c(pVarB);
    }
}
