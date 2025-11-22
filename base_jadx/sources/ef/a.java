package ef;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Set;
import kotlin.jvm.internal.h;
import l8.b0;
import l8.p;

/* loaded from: classes3.dex */
public final class a implements p.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class<Object> f5365a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5366b = null;

    public a(Class cls) {
        this.f5365a = cls;
    }

    @Override // l8.p.a
    public final p<?> a(Type requestedType, Set<? extends Annotation> annotations, b0 moshi) {
        h.f(requestedType, "requestedType");
        h.f(annotations, "annotations");
        h.f(moshi, "moshi");
        Class<Object> cls = this.f5365a;
        if (h.a(cls, requestedType)) {
            return new b(moshi.c(this, cls, annotations), this.f5366b);
        }
        return null;
    }
}
