package b1;

import androidx.annotation.VisibleForTesting;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class n<A, B> {

    /* renamed from: a, reason: collision with root package name */
    public final m f1044a = new m();

    @VisibleForTesting
    public static final class a<A> {

        /* renamed from: d, reason: collision with root package name */
        public static final ArrayDeque f1045d;

        /* renamed from: a, reason: collision with root package name */
        public int f1046a;

        /* renamed from: b, reason: collision with root package name */
        public int f1047b;

        /* renamed from: c, reason: collision with root package name */
        public A f1048c;

        static {
            char[] cArr = q1.m.f13318a;
            f1045d = new ArrayDeque(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static a a(Object obj) {
            a aVar;
            ArrayDeque arrayDeque = f1045d;
            synchronized (arrayDeque) {
                aVar = (a) arrayDeque.poll();
            }
            if (aVar == null) {
                aVar = new a();
            }
            aVar.f1048c = obj;
            aVar.f1047b = 0;
            aVar.f1046a = 0;
            return aVar;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f1047b == aVar.f1047b && this.f1046a == aVar.f1046a && this.f1048c.equals(aVar.f1048c);
        }

        public final int hashCode() {
            return this.f1048c.hashCode() + (((this.f1046a * 31) + this.f1047b) * 31);
        }
    }
}
