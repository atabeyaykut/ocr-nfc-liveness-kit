package u9;

import aa.b;
import aa.c;

/* loaded from: classes2.dex */
public class a extends t9.a {

    /* renamed from: u9.a$a, reason: collision with other inner class name */
    public static final class C0276a {

        /* renamed from: a, reason: collision with root package name */
        public static final Integer f17906a;

        static {
            Object obj;
            Integer num = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            Integer num2 = obj instanceof Integer ? (Integer) obj : null;
            if (num2 != null) {
                if (num2.intValue() > 0) {
                    num = num2;
                }
            }
            f17906a = num;
        }
    }

    @Override // s9.a
    public final c b() {
        Integer num = C0276a.f17906a;
        return num == null || num.intValue() >= 34 ? new ba.a() : new b();
    }
}
