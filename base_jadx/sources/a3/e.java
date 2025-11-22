package a3;

import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class e {

    public static abstract class a {

        /* renamed from: a3.e$a$a, reason: collision with other inner class name */
        public static abstract class AbstractC0007a {
        }

        public abstract long a();

        public abstract Set<b> b();

        public abstract long c();
    }

    public enum b {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    public abstract d3.a a();

    public final long b(r2.d dVar, long j10, int r12) {
        long jA = j10 - a().a();
        a aVar = c().get(dVar);
        long jA2 = aVar.a();
        return Math.min(Math.max((long) (Math.pow(3.0d, r12 - 1) * jA2 * Math.max(1.0d, Math.log(10000.0d) / Math.log((jA2 > 1 ? jA2 : 2L) * r12))), jA), aVar.c());
    }

    public abstract Map<r2.d, a> c();
}
