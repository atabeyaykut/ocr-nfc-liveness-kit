package kotlinx.coroutines.sync;

import c5.v;
import kotlinx.coroutines.internal.u;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final int f9260a = v.J("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12);

    /* renamed from: b, reason: collision with root package name */
    public static final u f9261b = new u("PERMIT");

    /* renamed from: c, reason: collision with root package name */
    public static final u f9262c = new u("TAKEN");

    /* renamed from: d, reason: collision with root package name */
    public static final u f9263d = new u("BROKEN");

    /* renamed from: e, reason: collision with root package name */
    public static final u f9264e = new u("CANCELLED");
    public static final int f = v.J("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12);
}
