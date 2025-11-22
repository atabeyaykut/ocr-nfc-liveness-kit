package ud;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Method f18042a;

    /* renamed from: b, reason: collision with root package name */
    public final List<?> f18043b;

    public m(Method method, ArrayList arrayList) {
        this.f18042a = method;
        this.f18043b = Collections.unmodifiableList(arrayList);
    }

    public final String toString() {
        Method method = this.f18042a;
        return String.format("%s.%s() %s", method.getDeclaringClass().getName(), method.getName(), this.f18043b);
    }
}
