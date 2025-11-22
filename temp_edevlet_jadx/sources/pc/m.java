package pc;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class m<E> implements e<E> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13104a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f13105b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f13106c;

    /* renamed from: d, reason: collision with root package name */
    @Deprecated
    public static final a f13107d = new a(null);

    /* renamed from: e, reason: collision with root package name */
    @Deprecated
    public static final kotlinx.coroutines.internal.u f13108e;

    @Deprecated
    public static final b<Object> f;
    private volatile /* synthetic */ Object _state = f;
    private volatile /* synthetic */ int _updating = 0;
    private volatile /* synthetic */ Object onCloseHandler = null;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f13109a;

        public a(Throwable th2) {
            this.f13109a = th2;
        }
    }

    public static final class b<E> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f13110a;

        /* renamed from: b, reason: collision with root package name */
        public final c<E>[] f13111b;

        public b(Object obj, c<E>[] cVarArr) {
            this.f13110a = obj;
            this.f13111b = cVarArr;
        }
    }

    public static final class c<E> extends n<E> implements u<E> {
        public final m<E> f;

        public c(m<E> mVar) {
            super(null);
            this.f = mVar;
        }

        @Override // pc.n, pc.b
        public final Object n(E e10) {
            return super.n(e10);
        }

        @Override // pc.n, pc.a
        public final void y(boolean z10) {
            if (z10) {
                m.a(this.f, this);
            }
        }
    }

    static {
        kotlinx.coroutines.internal.u uVar = new kotlinx.coroutines.internal.u("UNDEFINED");
        f13108e = uVar;
        f = new b<>(uVar, null);
        f13104a = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_state");
        f13105b = AtomicIntegerFieldUpdater.newUpdater(m.class, "_updating");
        f13106c = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "onCloseHandler");
    }

    public static final void a(m mVar, c cVar) {
        boolean z10;
        c[] cVarArr;
        do {
            Object obj = mVar._state;
            if (obj instanceof a) {
                return;
            }
            if (!(obj instanceof b)) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Invalid state ").toString());
            }
            b bVar = (b) obj;
            Object obj2 = bVar.f13110a;
            c<E>[] cVarArr2 = bVar.f13111b;
            kotlin.jvm.internal.h.c(cVarArr2);
            int length = cVarArr2.length;
            int r10 = m9.k.t0(cVarArr2, cVar);
            z10 = true;
            if (length == 1) {
                cVarArr = null;
            } else {
                c[] cVarArr3 = new c[length - 1];
                m9.i.j0(cVarArr2, cVarArr3, 0, 0, r10, 6);
                m9.i.j0(cVarArr2, cVarArr3, r10, r10 + 1, 0, 8);
                cVarArr = cVarArr3;
            }
            b bVar2 = new b(obj2, cVarArr);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13104a;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(mVar, obj, bVar2)) {
                    break;
                } else if (atomicReferenceFieldUpdater.get(mVar) != obj) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
    }

    @Override // pc.y
    public final Object A(E e10) {
        throw null;
    }

    public final a b(E e10) {
        Object obj;
        boolean z10;
        if (!f13105b.compareAndSet(this, 0, 1)) {
            return null;
        }
        do {
            try {
                obj = this._state;
                if (obj instanceof a) {
                    return (a) obj;
                }
                if (!(obj instanceof b)) {
                    throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Invalid state ").toString());
                }
                b bVar = new b(e10, ((b) obj).f13111b);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13104a;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, bVar)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z10 = false;
                        break;
                    }
                }
            } finally {
                this._updating = 0;
            }
        } while (!z10);
        c<E>[] cVarArr = ((b) obj).f13111b;
        if (cVarArr != null) {
            int length = cVarArr.length;
            int r42 = 0;
            while (r42 < length) {
                c<E> cVar = cVarArr[r42];
                r42++;
                cVar.n(e10);
            }
        }
        return null;
    }

    @Override // pc.y
    public final Object p(E e10, p9.d<? super l9.m> dVar) throws Throwable {
        a aVarB = b(e10);
        if (aVarB == null) {
            return l9.m.f9594a;
        }
        Throwable th2 = aVarB.f13109a;
        if (th2 == null) {
            throw new ma.w("Channel was closed", 1);
        }
        throw th2;
    }

    @Override // pc.y
    public final boolean s(Throwable th2) {
        Object obj;
        boolean z10;
        boolean z11;
        kotlinx.coroutines.internal.u uVar;
        do {
            obj = this._state;
            z10 = false;
            if (obj instanceof a) {
                return false;
            }
            if (!(obj instanceof b)) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Invalid state ").toString());
            }
            a aVar = th2 == null ? f13107d : new a(th2);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13104a;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, aVar)) {
                    z11 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    z11 = false;
                    break;
                }
            }
        } while (!z11);
        c<E>[] cVarArr = ((b) obj).f13111b;
        if (cVarArr != null) {
            int length = cVarArr.length;
            int r32 = 0;
            while (r32 < length) {
                c<E> cVar = cVarArr[r32];
                r32++;
                cVar.s(th2);
            }
        }
        Object obj2 = this.onCloseHandler;
        if (obj2 != null && obj2 != (uVar = c5.y.f2136p)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f13106c;
            while (true) {
                if (atomicReferenceFieldUpdater2.compareAndSet(this, obj2, uVar)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater2.get(this) != obj2) {
                    break;
                }
            }
            if (z10) {
                kotlin.jvm.internal.z.c(1, obj2);
                ((x9.l) obj2).invoke(th2);
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // pc.e
    public final c u() {
        boolean z10;
        c[] cVarArr;
        c cVar = new c(this);
        do {
            Object obj = this._state;
            if (obj instanceof a) {
                cVar.s(((a) obj).f13109a);
                return cVar;
            }
            if (!(obj instanceof b)) {
                throw new IllegalStateException(kotlin.jvm.internal.h.k(obj, "Invalid state ").toString());
            }
            b bVar = (b) obj;
            Object obj2 = bVar.f13110a;
            if (obj2 != f13108e) {
                cVar.n(obj2);
            }
            Object obj3 = bVar.f13110a;
            c<E>[] cVarArr2 = bVar.f13111b;
            z10 = true;
            if (cVarArr2 == null) {
                cVarArr = new c[]{cVar};
            } else {
                int length = cVarArr2.length;
                Object[] objArrCopyOf = Arrays.copyOf(cVarArr2, length + 1);
                objArrCopyOf[length] = cVar;
                cVarArr = (c[]) objArrCopyOf;
            }
            b bVar2 = new b(obj3, cVarArr);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f13104a;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, bVar2)) {
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
        return cVar;
    }
}
