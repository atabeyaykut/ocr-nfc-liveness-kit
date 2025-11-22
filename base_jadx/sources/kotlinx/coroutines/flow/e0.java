package kotlinx.coroutines.flow;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import nc.b1;

/* loaded from: classes2.dex */
public final class e0<T> extends qc.a<f0> implements v<T>, f {
    private volatile /* synthetic */ Object _state;

    /* renamed from: d, reason: collision with root package name */
    public int f9050d;

    @r9.e(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {386, 398, TypedValues.CycleType.TYPE_ALPHA}, m = "collect")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public e0 f9051a;

        /* renamed from: b, reason: collision with root package name */
        public g f9052b;

        /* renamed from: c, reason: collision with root package name */
        public f0 f9053c;

        /* renamed from: d, reason: collision with root package name */
        public b1 f9054d;

        /* renamed from: e, reason: collision with root package name */
        public Object f9055e;
        public /* synthetic */ Object f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ e0<T> f9056g;

        /* renamed from: h, reason: collision with root package name */
        public int f9057h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e0<T> e0Var, p9.d<? super a> dVar) {
            super(dVar);
            this.f9056g = e0Var;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f = obj;
            this.f9057h |= Integer.MIN_VALUE;
            return this.f9056g.a(null, this);
        }
    }

    public e0(Object obj) {
        this._state = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0095, code lost:
    
        if (l9.m.f9594a == r4) goto L69;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:40:0x00a2, B:42:0x00a8], limit reached: 84 */
    /* JADX WARN: Path cross not found for [B:42:0x00a8, B:40:0x00a2], limit reached: 84 */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0099 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009a A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:14:0x003a, B:34:0x0095, B:40:0x00a2, B:50:0x00c3, B:55:0x00dc, B:56:0x00f4, B:64:0x010d, B:67:0x0114, B:63:0x0108, B:59:0x00ff, B:42:0x00a8, B:46:0x00af, B:37:0x009a, B:70:0x0119, B:71:0x011d, B:19:0x0051, B:22:0x005d, B:33:0x0085), top: B:79:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2 A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:14:0x003a, B:34:0x0095, B:40:0x00a2, B:50:0x00c3, B:55:0x00dc, B:56:0x00f4, B:64:0x010d, B:67:0x0114, B:63:0x0108, B:59:0x00ff, B:42:0x00a8, B:46:0x00af, B:37:0x009a, B:70:0x0119, B:71:0x011d, B:19:0x0051, B:22:0x005d, B:33:0x0085), top: B:79:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dc A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:14:0x003a, B:34:0x0095, B:40:0x00a2, B:50:0x00c3, B:55:0x00dc, B:56:0x00f4, B:64:0x010d, B:67:0x0114, B:63:0x0108, B:59:0x00ff, B:42:0x00a8, B:46:0x00af, B:37:0x009a, B:70:0x0119, B:71:0x011d, B:19:0x0051, B:22:0x005d, B:33:0x0085), top: B:79:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    @Override // kotlinx.coroutines.flow.z, kotlinx.coroutines.flow.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.g<? super T> r19, p9.d<?> r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.e0.a(kotlinx.coroutines.flow.g, p9.d):java.lang.Object");
    }

    @Override // qc.a
    public final qc.b c() {
        return new f0();
    }

    @Override // qc.a
    public final qc.b[] d() {
        return new f0[2];
    }

    @Override // kotlinx.coroutines.flow.g
    public final Object emit(T t10, p9.d<? super l9.m> dVar) {
        setValue(t10);
        return l9.m.f9594a;
    }

    @Override // kotlinx.coroutines.flow.v
    public final void setValue(T t10) {
        int r12;
        Object obj;
        kotlinx.coroutines.internal.u uVar;
        boolean z10;
        boolean z11;
        if (t10 == null) {
            t10 = (T) a2.b.f45k;
        }
        synchronized (this) {
            if (!kotlin.jvm.internal.h.a(this._state, t10)) {
                this._state = t10;
                int r122 = this.f9050d;
                if ((r122 & 1) == 0) {
                    int r123 = r122 + 1;
                    this.f9050d = r123;
                    Object obj2 = this.f13484a;
                    l9.m mVar = l9.m.f9594a;
                    while (true) {
                        f0[] f0VarArr = (f0[]) obj2;
                        if (f0VarArr != null) {
                            int length = f0VarArr.length;
                            int r42 = 0;
                            while (r42 < length) {
                                f0 f0Var = f0VarArr[r42];
                                r42++;
                                if (f0Var != null) {
                                    while (true) {
                                        Object obj3 = f0Var._state;
                                        if (obj3 != null && obj3 != (uVar = x5.a.f19157k)) {
                                            kotlinx.coroutines.internal.u uVar2 = x5.a.f19156j;
                                            if (obj3 == uVar2) {
                                                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f0.f9058a;
                                                while (true) {
                                                    if (atomicReferenceFieldUpdater.compareAndSet(f0Var, obj3, uVar)) {
                                                        z10 = true;
                                                        break;
                                                    } else if (atomicReferenceFieldUpdater.get(f0Var) != obj3) {
                                                        z10 = false;
                                                        break;
                                                    }
                                                }
                                                if (z10) {
                                                    break;
                                                }
                                            } else {
                                                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f0.f9058a;
                                                while (true) {
                                                    if (atomicReferenceFieldUpdater2.compareAndSet(f0Var, obj3, uVar2)) {
                                                        z11 = true;
                                                        break;
                                                    } else if (atomicReferenceFieldUpdater2.get(f0Var) != obj3) {
                                                        z11 = false;
                                                        break;
                                                    }
                                                }
                                                if (z11) {
                                                    ((nc.j) obj3).resumeWith(l9.m.f9594a);
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        synchronized (this) {
                            r12 = this.f9050d;
                            if (r12 == r123) {
                                break;
                            }
                            obj = this.f13484a;
                            l9.m mVar2 = l9.m.f9594a;
                        }
                        obj2 = obj;
                        r123 = r12;
                    }
                    this.f9050d = r123 + 1;
                } else {
                    this.f9050d = r122 + 2;
                }
            }
        }
    }
}
