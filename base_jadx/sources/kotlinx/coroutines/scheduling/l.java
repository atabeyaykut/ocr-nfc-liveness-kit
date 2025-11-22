package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9222b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "lastScheduledTask");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9223c = AtomicIntegerFieldUpdater.newUpdater(l.class, "producerIndex");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9224d = AtomicIntegerFieldUpdater.newUpdater(l.class, "consumerIndex");

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9225e = AtomicIntegerFieldUpdater.newUpdater(l.class, "blockingTasksInBuffer");

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray<g> f9226a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public final g a(g gVar, boolean z10) {
        if (z10) {
            return b(gVar);
        }
        g gVar2 = (g) f9222b.getAndSet(this, gVar);
        if (gVar2 == null) {
            return null;
        }
        return b(gVar2);
    }

    public final g b(g gVar) {
        if (gVar.f9213b.b() == 1) {
            f9225e.incrementAndGet(this);
        }
        if (this.producerIndex - this.consumerIndex == 127) {
            return gVar;
        }
        int r02 = this.producerIndex & CertificateBody.profileType;
        while (this.f9226a.get(r02) != null) {
            Thread.yield();
        }
        this.f9226a.lazySet(r02, gVar);
        f9223c.incrementAndGet(this);
        return null;
    }

    public final int c() {
        return this.lastScheduledTask != null ? (this.producerIndex - this.consumerIndex) + 1 : this.producerIndex - this.consumerIndex;
    }

    public final g d() {
        g andSet;
        while (true) {
            int r02 = this.consumerIndex;
            if (r02 - this.producerIndex == 0) {
                return null;
            }
            int r12 = r02 & CertificateBody.profileType;
            if (f9224d.compareAndSet(this, r02, r02 + 1) && (andSet = this.f9226a.getAndSet(r12, null)) != null) {
                if (andSet.f9213b.b() == 1) {
                    f9225e.decrementAndGet(this);
                }
                return andSet;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0049, code lost:
    
        return f(r9, true);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long e(kotlinx.coroutines.scheduling.l r9) {
        /*
            r8 = this;
            int r0 = r9.consumerIndex
            int r1 = r9.producerIndex
            java.util.concurrent.atomic.AtomicReferenceArray<kotlinx.coroutines.scheduling.g> r2 = r9.f9226a
        L6:
            r3 = 1
            if (r0 == r1) goto L45
            r4 = r0 & 127(0x7f, float:1.78E-43)
            int r5 = r9.blockingTasksInBuffer
            if (r5 != 0) goto L10
            goto L45
        L10:
            java.lang.Object r5 = r2.get(r4)
            kotlinx.coroutines.scheduling.g r5 = (kotlinx.coroutines.scheduling.g) r5
            if (r5 == 0) goto L42
            kotlinx.coroutines.scheduling.h r6 = r5.f9213b
            int r6 = r6.b()
            r7 = 0
            if (r6 != r3) goto L23
            r6 = 1
            goto L24
        L23:
            r6 = 0
        L24:
            if (r6 == 0) goto L42
        L26:
            r6 = 0
            boolean r6 = r2.compareAndSet(r4, r5, r6)
            if (r6 == 0) goto L2e
            goto L35
        L2e:
            java.lang.Object r6 = r2.get(r4)
            if (r6 == r5) goto L26
            r3 = 0
        L35:
            if (r3 == 0) goto L42
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.scheduling.l.f9225e
            r0.decrementAndGet(r9)
            r8.a(r5, r7)
            r0 = -1
            return r0
        L42:
            int r0 = r0 + 1
            goto L6
        L45:
            long r0 = r8.f(r9, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.l.e(kotlinx.coroutines.scheduling.l):long");
    }

    public final long f(l lVar, boolean z10) {
        g gVar;
        boolean z11;
        do {
            gVar = (g) lVar.lastScheduledTask;
            if (gVar != null) {
                z11 = true;
                if (z10) {
                    if (!(gVar.f9213b.b() == 1)) {
                        return -2L;
                    }
                }
                j.f9219e.getClass();
                long jNanoTime = System.nanoTime() - gVar.f9212a;
                long j10 = j.f9215a;
                if (jNanoTime >= j10) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9222b;
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(lVar, gVar, null)) {
                            break;
                        }
                        if (atomicReferenceFieldUpdater.get(lVar) != gVar) {
                            z11 = false;
                            break;
                        }
                    }
                } else {
                    return j10 - jNanoTime;
                }
            } else {
                return -2L;
            }
        } while (!z11);
        a(gVar, false);
        return -1L;
    }
}
