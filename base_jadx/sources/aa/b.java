package aa;

import java.util.Random;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class b extends aa.a {

    /* renamed from: c, reason: collision with root package name */
    public final a f138c = new a();

    public static final class a extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        public final Random initialValue() {
            return new Random();
        }
    }

    @Override // aa.a
    public final Random b() {
        Random random = this.f138c.get();
        h.e(random, "implStorage.get()");
        return random;
    }
}
