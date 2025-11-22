package j9;

import android.os.Handler;
import android.os.Looper;
import io.realm.q0;
import io.realm.s0;
import io.realm.y0;
import java.util.IdentityHashMap;

/* loaded from: classes2.dex */
public final class b implements j9.c {

    public class a extends ThreadLocal<d<y0>> {
        @Override // java.lang.ThreadLocal
        public final d<y0> initialValue() {
            return new d<>();
        }
    }

    /* renamed from: j9.b$b, reason: collision with other inner class name */
    public class C0147b extends ThreadLocal<d<q0>> {
        @Override // java.lang.ThreadLocal
        public final d<q0> initialValue() {
            return new d<>();
        }
    }

    public class c extends ThreadLocal<d<s0>> {
        @Override // java.lang.ThreadLocal
        public final d<s0> initialValue() {
            return new d<>();
        }
    }

    public static class d<K> {
        public d() {
            new IdentityHashMap();
        }
    }

    public b() {
        new a();
        new C0147b();
        new c();
    }

    public static z8.b a() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            throw new IllegalStateException("No looper found");
        }
        int r12 = z8.a.f19881a;
        new Handler(looperMyLooper);
        return new z8.b();
    }

    public final boolean equals(Object obj) {
        return obj instanceof b;
    }

    public final int hashCode() {
        return 37;
    }
}
