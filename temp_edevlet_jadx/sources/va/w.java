package va;

/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static final lb.c f18381a;

    /* renamed from: b, reason: collision with root package name */
    public static final lb.b f18382b;

    static {
        lb.c cVar = new lb.c("kotlin.jvm.JvmField");
        f18381a = cVar;
        lb.b.l(cVar);
        lb.b.l(new lb.c("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        f18382b = lb.b.f("kotlin/jvm/internal/RepeatableContainer", false);
    }

    public static final String a(String propertyName) {
        kotlin.jvm.internal.h.f(propertyName, "propertyName");
        if (c(propertyName)) {
            return propertyName;
        }
        return "get" + a6.a.f(propertyName);
    }

    public static final String b(String str) {
        String strF;
        StringBuilder sb2 = new StringBuilder("set");
        if (c(str)) {
            strF = str.substring(2);
            kotlin.jvm.internal.h.e(strF, "this as java.lang.String).substring(startIndex)");
        } else {
            strF = a6.a.f(str);
        }
        sb2.append(strF);
        return sb2.toString();
    }

    public static final boolean c(String name) {
        kotlin.jvm.internal.h.f(name, "name");
        if (!mc.j.D(name, "is", false) || name.length() == 2) {
            return false;
        }
        char cCharAt = name.charAt(2);
        return kotlin.jvm.internal.h.h(97, cCharAt) > 0 || kotlin.jvm.internal.h.h(cCharAt, 122) > 0;
    }
}
