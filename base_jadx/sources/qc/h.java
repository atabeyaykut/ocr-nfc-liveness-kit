package qc;

import c5.w;
import kotlin.jvm.internal.v;
import nc.a0;
import nc.b1;

/* loaded from: classes2.dex */
public final class h<T, R> extends g<T, R> {

    /* renamed from: e, reason: collision with root package name */
    public final x9.q<kotlinx.coroutines.flow.g<? super R>, T, p9.d<? super l9.m>, Object> f13501e;

    @r9.e(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {27}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f13502a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f13503b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ h<T, R> f13504c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ kotlinx.coroutines.flow.g<R> f13505d;

        /* renamed from: qc.h$a$a, reason: collision with other inner class name */
        public static final class C0226a<T> implements kotlinx.coroutines.flow.g {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ v<b1> f13506a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ a0 f13507b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ h<T, R> f13508c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ kotlinx.coroutines.flow.g<R> f13509d;

            @r9.e(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {34}, m = "invokeSuspend")
            /* renamed from: qc.h$a$a$a, reason: collision with other inner class name */
            public static final class C0227a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

                /* renamed from: a, reason: collision with root package name */
                public int f13510a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ h<T, R> f13511b;

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ kotlinx.coroutines.flow.g<R> f13512c;

                /* renamed from: d, reason: collision with root package name */
                public final /* synthetic */ T f13513d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C0227a(h<T, R> hVar, kotlinx.coroutines.flow.g<? super R> gVar, T t10, p9.d<? super C0227a> dVar) {
                    super(2, dVar);
                    this.f13511b = hVar;
                    this.f13512c = gVar;
                    this.f13513d = t10;
                }

                @Override // r9.a
                public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
                    return new C0227a(this.f13511b, this.f13512c, this.f13513d, dVar);
                }

                @Override // x9.p
                /* renamed from: invoke */
                public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
                    return ((C0227a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                    int r12 = this.f13510a;
                    if (r12 == 0) {
                        w.F(obj);
                        x9.q<kotlinx.coroutines.flow.g<? super R>, T, p9.d<? super l9.m>, Object> qVar = this.f13511b.f13501e;
                        this.f13510a = 1;
                        if (qVar.i(this.f13512c, this.f13513d, this) == aVar) {
                            return aVar;
                        }
                    } else {
                        if (r12 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        w.F(obj);
                    }
                    return l9.m.f9594a;
                }
            }

            @r9.e(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1", f = "Merge.kt", l = {30}, m = "emit")
            /* renamed from: qc.h$a$a$b */
            public static final class b extends r9.c {

                /* renamed from: a, reason: collision with root package name */
                public C0226a f13514a;

                /* renamed from: b, reason: collision with root package name */
                public Object f13515b;

                /* renamed from: c, reason: collision with root package name */
                public b1 f13516c;

                /* renamed from: d, reason: collision with root package name */
                public /* synthetic */ Object f13517d;

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ C0226a<T> f13518e;
                public int f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public b(C0226a<? super T> c0226a, p9.d<? super b> dVar) {
                    super(dVar);
                    this.f13518e = c0226a;
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) {
                    this.f13517d = obj;
                    this.f |= Integer.MIN_VALUE;
                    return this.f13518e.emit(null, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public C0226a(v<b1> vVar, a0 a0Var, h<T, R> hVar, kotlinx.coroutines.flow.g<? super R> gVar) {
                this.f13506a = vVar;
                this.f13507b = a0Var;
                this.f13508c = hVar;
                this.f13509d = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(T r7, p9.d<? super l9.m> r8) throws java.lang.Throwable {
                /*
                    r6 = this;
                    boolean r0 = r8 instanceof qc.h.a.C0226a.b
                    if (r0 == 0) goto L13
                    r0 = r8
                    qc.h$a$a$b r0 = (qc.h.a.C0226a.b) r0
                    int r1 = r0.f
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f = r1
                    goto L18
                L13:
                    qc.h$a$a$b r0 = new qc.h$a$a$b
                    r0.<init>(r6, r8)
                L18:
                    java.lang.Object r8 = r0.f13517d
                    q9.a r1 = q9.a.COROUTINE_SUSPENDED
                    int r2 = r0.f
                    r3 = 1
                    if (r2 == 0) goto L33
                    if (r2 != r3) goto L2b
                    java.lang.Object r7 = r0.f13515b
                    qc.h$a$a r0 = r0.f13514a
                    c5.w.F(r8)
                    goto L57
                L2b:
                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                    r7.<init>(r8)
                    throw r7
                L33:
                    c5.w.F(r8)
                    kotlin.jvm.internal.v<nc.b1> r8 = r6.f13506a
                    T r8 = r8.f8975a
                    nc.b1 r8 = (nc.b1) r8
                    if (r8 != 0) goto L3f
                    goto L56
                L3f:
                    qc.i r2 = new qc.i
                    r2.<init>()
                    r8.a(r2)
                    r0.f13514a = r6
                    r0.f13515b = r7
                    r0.f13516c = r8
                    r0.f = r3
                    java.lang.Object r8 = r8.r(r0)
                    if (r8 != r1) goto L56
                    return r1
                L56:
                    r0 = r6
                L57:
                    kotlin.jvm.internal.v<nc.b1> r8 = r0.f13506a
                    qc.h$a$a$a r1 = new qc.h$a$a$a
                    kotlinx.coroutines.flow.g<R> r2 = r0.f13509d
                    qc.h<T, R> r4 = r0.f13508c
                    r5 = 0
                    r1.<init>(r4, r2, r7, r5)
                    nc.a0 r7 = r0.f13507b
                    r0 = 4
                    nc.t1 r7 = c5.v.C(r7, r5, r0, r1, r3)
                    r8.f8975a = r7
                    l9.m r7 = l9.m.f9594a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: qc.h.a.C0226a.emit(java.lang.Object, p9.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(h<T, R> hVar, kotlinx.coroutines.flow.g<? super R> gVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f13504c = hVar;
            this.f13505d = gVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            a aVar = new a(this.f13504c, this.f13505d, dVar);
            aVar.f13503b = obj;
            return aVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13502a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f13503b;
                v vVar = new v();
                h<T, R> hVar = this.f13504c;
                kotlinx.coroutines.flow.f<S> fVar = hVar.f13500d;
                C0226a c0226a = new C0226a(vVar, a0Var, hVar, this.f13505d);
                this.f13502a = 1;
                if (fVar.a(c0226a, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return l9.m.f9594a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(x9.q<? super kotlinx.coroutines.flow.g<? super R>, ? super T, ? super p9.d<? super l9.m>, ? extends Object> qVar, kotlinx.coroutines.flow.f<? extends T> fVar, p9.f fVar2, int r42, pc.f fVar3) {
        super(fVar, fVar2, r42, fVar3);
        this.f13501e = qVar;
    }

    @Override // qc.e
    public final e<R> d(p9.f fVar, int r92, pc.f fVar2) {
        return new h(this.f13501e, this.f13500d, fVar, r92, fVar2);
    }

    @Override // qc.g
    public final Object g(kotlinx.coroutines.flow.g<? super R> gVar, p9.d<? super l9.m> dVar) {
        Object objT = b8.f.t(new a(this, gVar, null), dVar);
        return objT == q9.a.COROUTINE_SUSPENDED ? objT : l9.m.f9594a;
    }
}
