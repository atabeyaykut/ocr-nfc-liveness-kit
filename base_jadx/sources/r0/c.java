package r0;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import r0.p;

/* loaded from: classes.dex */
public final class c<S extends p> implements r<S> {

    /* renamed from: h, reason: collision with root package name */
    public static final nc.s0 f13709h;

    /* renamed from: a, reason: collision with root package name */
    public final pc.a f13710a;

    /* renamed from: b, reason: collision with root package name */
    public final pc.a f13711b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.flow.a0 f13712c;

    /* renamed from: d, reason: collision with root package name */
    public volatile S f13713d;

    /* renamed from: e, reason: collision with root package name */
    public final kotlinx.coroutines.flow.w f13714e;
    public final nc.a0 f;

    /* renamed from: g, reason: collision with root package name */
    public final p9.f f13715g;

    @r9.e(c = "com.airbnb.mvrx.CoroutinesStateStore$flushQueuesOnce$2$1", f = "CoroutinesStateStore.kt", l = {87}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<x9.l<? super S, ? extends S>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f13716a;

        /* renamed from: b, reason: collision with root package name */
        public int f13717b;

        public a(p9.d dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
            kotlin.jvm.internal.h.f(completion, "completion");
            a aVar = new a(completion);
            aVar.f13716a = obj;
            return aVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13717b;
            if (r12 == 0) {
                c5.w.F(obj);
                S s7 = (S) ((x9.l) this.f13716a).invoke(c.this.f13713d);
                if (!kotlin.jvm.internal.h.a(s7, c.this.f13713d)) {
                    c cVar = c.this;
                    cVar.getClass();
                    kotlin.jvm.internal.h.f(s7, "<set-?>");
                    cVar.f13713d = s7;
                    kotlinx.coroutines.flow.a0 a0Var = c.this.f13712c;
                    this.f13717b = 1;
                    if (a0Var.emit(s7, this) == aVar) {
                        return aVar;
                    }
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c5.w.F(obj);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "com.airbnb.mvrx.CoroutinesStateStore$flushQueuesOnce$2$2", f = "CoroutinesStateStore.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements x9.p<x9.l<? super S, ? extends l9.m>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f13719a;

        public b(p9.d dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
            kotlin.jvm.internal.h.f(completion, "completion");
            b bVar = new b(completion);
            bVar.f13719a = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
            return ((b) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            c5.w.F(obj);
            ((x9.l) this.f13719a).invoke(c.this.f13713d);
            return l9.m.f9594a;
        }
    }

    static {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        kotlin.jvm.internal.h.e(executorServiceNewCachedThreadPool, "Executors.newCachedThreadPool()");
        f13709h = new nc.s0(executorServiceNewCachedThreadPool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(p initialState, kotlinx.coroutines.internal.f fVar, p9.f contextOverride) {
        kotlin.jvm.internal.h.f(initialState, "initialState");
        kotlin.jvm.internal.h.f(contextOverride, "contextOverride");
        this.f = fVar;
        this.f13715g = contextOverride;
        this.f13710a = b8.f.e(Integer.MAX_VALUE, null, 6);
        this.f13711b = b8.f.e(Integer.MAX_VALUE, null, 6);
        kotlinx.coroutines.flow.a0 a0Var = new kotlinx.coroutines.flow.a0(64);
        a0Var.n(initialState);
        l9.m mVar = l9.m.f9594a;
        this.f13712c = a0Var;
        this.f13713d = initialState;
        this.f13714e = new kotlinx.coroutines.flow.w(a0Var);
        Boolean bool = s.f13861a;
        c5.v.C(fVar, f13709h.plus(contextOverride), 0, new d(this, null), 2);
    }

    @Override // r0.r
    public final kotlinx.coroutines.flow.w a() {
        return this.f13714e;
    }

    @Override // r0.r
    public final void b(x9.l<? super S, ? extends S> stateReducer) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.h.f(stateReducer, "stateReducer");
        this.f13710a.m((Serializable) stateReducer);
        Boolean bool = s.f13861a;
    }

    @Override // r0.r
    public final p c() {
        return this.f13713d;
    }

    public final Object d(p9.d<? super l9.m> frame) throws Throwable {
        kotlinx.coroutines.selects.a aVar = new kotlinx.coroutines.selects.a(frame);
        try {
            pc.a aVar2 = this.f13710a;
            aVar2.getClass();
            pc.a.r(0, new a(null), aVar2, aVar);
            pc.a aVar3 = this.f13711b;
            aVar3.getClass();
            pc.a.r(0, new b(null), aVar3, aVar);
        } catch (Throwable th2) {
            aVar.L(th2);
        }
        Object objK = aVar.K();
        q9.a aVar4 = q9.a.COROUTINE_SUSPENDED;
        if (objK == aVar4) {
            kotlin.jvm.internal.h.f(frame, "frame");
        }
        return objK == aVar4 ? objK : l9.m.f9594a;
    }
}
