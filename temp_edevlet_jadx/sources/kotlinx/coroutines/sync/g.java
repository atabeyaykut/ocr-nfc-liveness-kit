package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

/* loaded from: classes2.dex */
public final class g implements f {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9253c = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "head");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f9254d = AtomicLongFieldUpdater.newUpdater(g.class, "deqIdx");

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9255e = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "tail");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(g.class, "enqIdx");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9256g = AtomicIntegerFieldUpdater.newUpdater(g.class, "_availablePermits");
    volatile /* synthetic */ int _availablePermits;

    /* renamed from: a, reason: collision with root package name */
    public final int f9257a;

    /* renamed from: b, reason: collision with root package name */
    public final a f9258b;
    private volatile /* synthetic */ long deqIdx = 0;
    private volatile /* synthetic */ long enqIdx = 0;
    private volatile /* synthetic */ Object head;
    private volatile /* synthetic */ Object tail;

    public static final class a extends j implements l<Throwable, m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(Throwable th2) {
            g.this.release();
            return m.f9594a;
        }
    }

    public g(int r6, int r72) {
        this.f9257a = r6;
        boolean z10 = false;
        if (!(r6 > 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Integer.valueOf(r6), "Semaphore should have at least 1 permit, but had ").toString());
        }
        if (r72 >= 0 && r72 <= r6) {
            z10 = true;
        }
        if (!z10) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Integer.valueOf(r6), "The number of acquired permits should be in 0..").toString());
        }
        i iVar = new i(0L, null, 2);
        this.head = iVar;
        this.tail = iVar;
        this._availablePermits = r6 - r72;
        this.f9258b = new a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0077, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00e4 A[EDGE_INSN: B:92:0x00e4->B:69:0x00e4 BREAK  A[LOOP:0: B:7:0x0015->B:94:?], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlinx.coroutines.internal.u] */
    /* JADX WARN: Type inference failed for: r8v3, types: [kotlinx.coroutines.internal.s] */
    @Override // kotlinx.coroutines.sync.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(g.b.c r18) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.g.a(g.b$c):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x007e, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlinx.coroutines.internal.u] */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.internal.s] */
    @Override // kotlinx.coroutines.sync.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void release() {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.g.release():void");
    }
}
