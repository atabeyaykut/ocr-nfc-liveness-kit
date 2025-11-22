package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.internal.o;
import kotlinx.coroutines.internal.p;
import l9.m;
import nc.k0;
import x9.l;

/* loaded from: classes2.dex */
public final class d implements kotlinx.coroutines.sync.c {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9243a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_state");
    volatile /* synthetic */ Object _state;

    public final class a extends b {
        public final nc.i<m> f;

        /* renamed from: kotlinx.coroutines.sync.d$a$a, reason: collision with other inner class name */
        public static final class C0175a extends j implements l<Throwable, m> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ d f9245a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ a f9246b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0175a(d dVar, a aVar) {
                super(1);
                this.f9245a = dVar;
                this.f9246b = aVar;
            }

            @Override // x9.l
            public final m invoke(Throwable th2) {
                this.f9245a.b(this.f9246b.f9248d);
                return m.f9594a;
            }
        }

        public a(nc.j jVar) {
            this.f = jVar;
        }

        @Override // kotlinx.coroutines.sync.d.b
        public final void J() {
            this.f.g();
        }

        @Override // kotlinx.coroutines.sync.d.b
        public final boolean K() {
            if (b.f9247e.compareAndSet(this, 0, 1)) {
                return this.f.w(m.f9594a, null, new C0175a(d.this, this)) != null;
            }
            return false;
        }

        @Override // kotlinx.coroutines.internal.j
        public final String toString() {
            return "LockCont[" + this.f9248d + ", " + this.f + "] for " + d.this;
        }
    }

    public abstract class b extends kotlinx.coroutines.internal.j implements k0 {

        /* renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f9247e = AtomicIntegerFieldUpdater.newUpdater(b.class, "isTaken");

        /* renamed from: d, reason: collision with root package name */
        public final Object f9248d = null;
        private volatile /* synthetic */ int isTaken = 0;

        public abstract void J();

        public abstract boolean K();

        @Override // nc.k0
        public final void dispose() {
            F();
        }
    }

    public static final class c extends kotlinx.coroutines.internal.i {

        /* renamed from: d, reason: collision with root package name */
        public Object f9249d;

        public c(Object obj) {
            this.f9249d = obj;
        }

        @Override // kotlinx.coroutines.internal.j
        public final String toString() {
            return "LockedQueue[" + this.f9249d + ']';
        }
    }

    /* renamed from: kotlinx.coroutines.sync.d$d, reason: collision with other inner class name */
    public static final class C0176d extends kotlinx.coroutines.internal.c<d> {

        /* renamed from: b, reason: collision with root package name */
        public final c f9250b;

        public C0176d(c cVar) {
            this.f9250b = cVar;
        }

        @Override // kotlinx.coroutines.internal.c
        public final void d(d dVar, Object obj) {
            d dVar2 = dVar;
            Object obj2 = obj == null ? a2.b.f44j : this.f9250b;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d.f9243a;
            while (!atomicReferenceFieldUpdater.compareAndSet(dVar2, this, obj2) && atomicReferenceFieldUpdater.get(dVar2) == this) {
            }
        }

        @Override // kotlinx.coroutines.internal.c
        public final Object i(d dVar) {
            c cVar = this.f9250b;
            if (cVar.z() == cVar) {
                return null;
            }
            return a2.b.f41e;
        }
    }

    public d(boolean z10) {
        this._state = z10 ? a2.b.f43h : a2.b.f44j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x003d, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        if (r0 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
    
        return l9.m.f9594a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0043, code lost:
    
        r13 = com.google.android.gms.internal.clearcut.d0.u(c5.w.x(r13));
        r0 = new kotlinx.coroutines.sync.d.a(r12, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0050, code lost:
    
        r1 = r12._state;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        if ((r1 instanceof kotlinx.coroutines.sync.b) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0056, code lost:
    
        r9 = (kotlinx.coroutines.sync.b) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005b, code lost:
    
        if (r9.f9242a == r3) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005d, code lost:
    
        r10 = kotlinx.coroutines.sync.d.f9243a;
        r11 = new kotlinx.coroutines.sync.d.c(r9.f9242a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006a, code lost:
    
        if (r10.compareAndSet(r12, r1, r11) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
    
        if (r10.get(r12) == r1) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0074, code lost:
    
        r9 = kotlinx.coroutines.sync.d.f9243a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007a, code lost:
    
        if (r9.compareAndSet(r12, r1, r2) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007c, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0082, code lost:
    
        if (r9.get(r12) == r1) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0085, code lost:
    
        if (r1 == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0087, code lost:
    
        r13.u(l9.m.f9594a, r13.f10802c, new kotlinx.coroutines.sync.e(r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0096, code lost:
    
        if ((r1 instanceof kotlinx.coroutines.sync.d.c) == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0098, code lost:
    
        r9 = (kotlinx.coroutines.sync.d.c) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009d, code lost:
    
        if (r9.f9249d == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009f, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a1, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a2, code lost:
    
        if (r10 == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ac, code lost:
    
        if (r9.B().u(r0, r9) == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b0, code lost:
    
        if (r12._state == r1) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b8, code lost:
    
        if (kotlinx.coroutines.sync.d.b.f9247e.compareAndSet(r0, 0, 1) != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00bb, code lost:
    
        r0 = new kotlinx.coroutines.sync.d.a(r12, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c1, code lost:
    
        r13.D(new nc.p1(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c9, code lost:
    
        r13 = r13.m();
        r0 = q9.a.COROUTINE_SUSPENDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00cf, code lost:
    
        if (r13 != r0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d2, code lost:
    
        r13 = l9.m.f9594a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d4, code lost:
    
        if (r13 != r0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d6, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d9, code lost:
    
        return l9.m.f9594a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e7, code lost:
    
        throw new java.lang.IllegalStateException(kotlin.jvm.internal.h.k(null, "Already locked by ").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ea, code lost:
    
        if ((r1 instanceof kotlinx.coroutines.internal.o) == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00ec, code lost:
    
        ((kotlinx.coroutines.internal.o) r1).c(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0100, code lost:
    
        throw new java.lang.IllegalStateException(kotlin.jvm.internal.h.k(r1, "Illegal state ").toString());
     */
    @Override // kotlinx.coroutines.sync.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d r13) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.d.a(p9.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.sync.c
    public final void b(Object obj) {
        kotlinx.coroutines.internal.j jVar;
        while (true) {
            Object obj2 = this._state;
            boolean z10 = true;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                kotlinx.coroutines.sync.b bVar = (kotlinx.coroutines.sync.b) obj2;
                if (obj == null) {
                    if (!(bVar.f9242a != a2.b.f42g)) {
                        throw new IllegalStateException("Mutex is not locked".toString());
                    }
                } else {
                    if (!(bVar.f9242a == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + bVar.f9242a + " but expected " + obj).toString());
                    }
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9243a;
                kotlinx.coroutines.sync.b bVar2 = a2.b.f44j;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, bVar2)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    return;
                }
            } else if (obj2 instanceof o) {
                ((o) obj2).c(this);
            } else {
                if (!(obj2 instanceof c)) {
                    throw new IllegalStateException(kotlin.jvm.internal.h.k(obj2, "Illegal state ").toString());
                }
                if (obj != null) {
                    c cVar = (c) obj2;
                    if (!(cVar.f9249d == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + cVar.f9249d + " but expected " + obj).toString());
                    }
                }
                c cVar2 = (c) obj2;
                while (true) {
                    jVar = (kotlinx.coroutines.internal.j) cVar2.z();
                    if (jVar == cVar2) {
                        jVar = null;
                        break;
                    } else if (jVar.F()) {
                        break;
                    } else {
                        ((p) jVar.z()).f9171a.C();
                    }
                }
                if (jVar == null) {
                    C0176d c0176d = new C0176d(cVar2);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f9243a;
                    while (true) {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, obj2, c0176d)) {
                            break;
                        } else if (atomicReferenceFieldUpdater2.get(this) != obj2) {
                            z10 = false;
                            break;
                        }
                    }
                    if (z10 && c0176d.c(this) == null) {
                        return;
                    }
                } else {
                    b bVar3 = (b) jVar;
                    if (bVar3.K()) {
                        Object obj3 = bVar3.f9248d;
                        if (obj3 == null) {
                            obj3 = a2.b.f;
                        }
                        cVar2.f9249d = obj3;
                        bVar3.J();
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        r1.append(r0);
        r1.append(']');
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001d, code lost:
    
        return r1.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r4 = this;
        L0:
            java.lang.Object r0 = r4._state
            boolean r1 = r0 instanceof kotlinx.coroutines.sync.b
            r2 = 93
            java.lang.String r3 = "Mutex["
            if (r1 == 0) goto L1e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r3)
            kotlinx.coroutines.sync.b r0 = (kotlinx.coroutines.sync.b) r0
            java.lang.Object r0 = r0.f9242a
        L13:
            r1.append(r0)
            r1.append(r2)
            java.lang.String r0 = r1.toString()
            return r0
        L1e:
            boolean r1 = r0 instanceof kotlinx.coroutines.internal.o
            if (r1 == 0) goto L28
            kotlinx.coroutines.internal.o r0 = (kotlinx.coroutines.internal.o) r0
            r0.c(r4)
            goto L0
        L28:
            boolean r1 = r0 instanceof kotlinx.coroutines.sync.d.c
            if (r1 == 0) goto L36
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r3)
            kotlinx.coroutines.sync.d$c r0 = (kotlinx.coroutines.sync.d.c) r0
            java.lang.Object r0 = r0.f9249d
            goto L13
        L36:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "Illegal state "
            java.lang.String r0 = kotlin.jvm.internal.h.k(r0, r2)
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.d.toString():java.lang.String");
    }
}
