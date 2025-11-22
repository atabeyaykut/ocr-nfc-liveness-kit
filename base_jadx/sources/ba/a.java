package ba;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class a extends aa.a {
    @Override // aa.a
    public final Random b() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        h.e(threadLocalRandomCurrent, "current()");
        return threadLocalRandomCurrent;
    }
}
