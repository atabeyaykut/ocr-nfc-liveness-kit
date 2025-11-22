package y8;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class e {
    static {
        TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15L).longValue());
    }
}
