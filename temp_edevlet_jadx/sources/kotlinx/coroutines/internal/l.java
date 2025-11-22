package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class l<E> {
    private volatile /* synthetic */ Object _next = null;
    private volatile /* synthetic */ long _state = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f9162a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9163b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9164c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f9165d;

    /* renamed from: g, reason: collision with root package name */
    public static final u f9161g = new u("REMOVE_FROZEN");

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9160e = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_next");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(l.class, "_state");

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f9166a;

        public a(int r12) {
            this.f9166a = r12;
        }
    }

    public l(int r52, boolean z10) {
        this.f9162a = r52;
        this.f9163b = z10;
        int r6 = r52 - 1;
        this.f9164c = r6;
        this.f9165d = new AtomicReferenceArray(r52);
        if (!(r6 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((r52 & r6) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(E r16) {
        /*
            r15 = this;
            r6 = r15
            r7 = r16
        L3:
            long r2 = r6._state
            r0 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r0 = r0 & r2
            r8 = 0
            r4 = 1
            int r5 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r5 == 0) goto L18
            r0 = 2305843009213693952(0x2000000000000000, double:1.4916681462400413E-154)
            long r0 = r0 & r2
            int r2 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r2 == 0) goto L17
            r4 = 2
        L17:
            return r4
        L18:
            r0 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r0 = r0 & r2
            r10 = 0
            long r0 = r0 >> r10
            int r1 = (int) r0
            r11 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r11 = r11 & r2
            r0 = 30
            long r11 = r11 >> r0
            int r12 = (int) r11
            int r11 = r6.f9164c
            int r5 = r12 + 2
            r5 = r5 & r11
            r13 = r1 & r11
            if (r5 != r13) goto L33
            return r4
        L33:
            boolean r5 = r6.f9163b
            r13 = 1073741823(0x3fffffff, float:1.9999999)
            if (r5 != 0) goto L52
            java.util.concurrent.atomic.AtomicReferenceArray r5 = r6.f9165d
            r14 = r12 & r11
            java.lang.Object r5 = r5.get(r14)
            if (r5 == 0) goto L52
            int r0 = r6.f9162a
            r2 = 1024(0x400, float:1.435E-42)
            if (r0 < r2) goto L51
            int r12 = r12 - r1
            r1 = r12 & r13
            int r0 = r0 >> 1
            if (r1 <= r0) goto L3
        L51:
            return r4
        L52:
            int r1 = r12 + 1
            r1 = r1 & r13
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = kotlinx.coroutines.internal.l.f
            r13 = -1152921503533105153(0xf00000003fffffff, double:-3.1050369248997324E231)
            long r13 = r13 & r2
            long r8 = (long) r1
            long r0 = r8 << r0
            long r8 = r13 | r0
            r0 = r4
            r1 = r15
            r4 = r8
            boolean r0 = r0.compareAndSet(r1, r2, r4)
            if (r0 == 0) goto L3
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r6.f9165d
            r1 = r12 & r11
            r0.set(r1, r7)
            r0 = r6
        L73:
            long r1 = r0._state
            r3 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r1 = r1 & r3
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L7f
            goto L9d
        L7f:
            kotlinx.coroutines.internal.l r0 = r0.e()
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r0.f9165d
            int r2 = r0.f9164c
            r2 = r2 & r12
            java.lang.Object r5 = r1.get(r2)
            boolean r8 = r5 instanceof kotlinx.coroutines.internal.l.a
            if (r8 == 0) goto L9a
            kotlinx.coroutines.internal.l$a r5 = (kotlinx.coroutines.internal.l.a) r5
            int r5 = r5.f9166a
            if (r5 != r12) goto L9a
            r1.set(r2, r7)
            goto L9b
        L9a:
            r0 = 0
        L9b:
            if (r0 != 0) goto L73
        L9d:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.l.a(java.lang.Object):int");
    }

    public final boolean b() {
        long j10;
        do {
            j10 = this._state;
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!f.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final int c() {
        long j10 = this._state;
        return 1073741823 & (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j10) >> 0)));
    }

    public final boolean d() {
        long j10 = this._state;
        return ((int) ((1073741823 & j10) >> 0)) == ((int) ((j10 & 1152921503533105152L) >> 30));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final l<E> e() {
        long j10;
        while (true) {
            j10 = this._state;
            if ((j10 & 1152921504606846976L) != 0) {
                break;
            }
            long j11 = j10 | 1152921504606846976L;
            if (f.compareAndSet(this, j10, j11)) {
                j10 = j11;
                break;
            }
        }
        while (true) {
            l<E> lVar = (l) this._next;
            if (lVar != null) {
                return lVar;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9160e;
            l lVar2 = new l(this.f9162a * 2, this.f9163b);
            int r52 = (int) ((1073741823 & j10) >> 0);
            int r42 = (int) ((1152921503533105152L & j10) >> 30);
            while (true) {
                int r6 = this.f9164c;
                int r72 = r52 & r6;
                if (r72 == (r6 & r42)) {
                    break;
                }
                Object aVar = this.f9165d.get(r72);
                if (aVar == null) {
                    aVar = new a(r52);
                }
                lVar2.f9165d.set(lVar2.f9164c & r52, aVar);
                r52++;
            }
            lVar2._state = (-1152921504606846977L) & j10;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, lVar2) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    public final Object f() {
        while (true) {
            long j10 = this._state;
            if ((j10 & 1152921504606846976L) != 0) {
                return f9161g;
            }
            int r14 = (int) ((j10 & 1073741823) >> 0);
            int r02 = this.f9164c;
            int r12 = ((int) ((1152921503533105152L & j10) >> 30)) & r02;
            int r03 = r02 & r14;
            if (r12 == r03) {
                return null;
            }
            Object obj = this.f9165d.get(r03);
            if (obj == null) {
                if (this.f9163b) {
                    return null;
                }
            } else {
                if (obj instanceof a) {
                    return null;
                }
                long j11 = ((r14 + 1) & 1073741823) << 0;
                if (f.compareAndSet(this, j10, (j10 & (-1073741824)) | j11)) {
                    this.f9165d.set(this.f9164c & r14, null);
                    return obj;
                }
                if (this.f9163b) {
                    l<E> lVarE = this;
                    while (true) {
                        long j12 = lVarE._state;
                        int r42 = (int) ((j12 & 1073741823) >> 0);
                        if ((j12 & 1152921504606846976L) != 0) {
                            lVarE = lVarE.e();
                        } else {
                            if (f.compareAndSet(lVarE, j12, (j12 & (-1073741824)) | j11)) {
                                lVarE.f9165d.set(lVarE.f9164c & r42, null);
                                lVarE = null;
                            } else {
                                continue;
                            }
                        }
                        if (lVarE == null) {
                            return obj;
                        }
                    }
                }
            }
        }
    }
}
