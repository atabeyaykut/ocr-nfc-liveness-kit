package qc;

import p9.f;

/* loaded from: classes2.dex */
public final class m<T> extends r9.c implements kotlinx.coroutines.flow.g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final kotlinx.coroutines.flow.g<T> f13523a;

    /* renamed from: b, reason: collision with root package name */
    public final p9.f f13524b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13525c;

    /* renamed from: d, reason: collision with root package name */
    public p9.f f13526d;

    /* renamed from: e, reason: collision with root package name */
    public p9.d<? super l9.m> f13527e;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<Integer, f.b, Integer> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13528a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Integer mo7invoke(Integer num, f.b bVar) {
            return Integer.valueOf(num.intValue() + 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m(kotlinx.coroutines.flow.g<? super T> gVar, p9.f fVar) {
        super(k.f13521a, p9.g.f12870a);
        this.f13523a = gVar;
        this.f13524b = fVar;
        this.f13525c = ((Number) fVar.fold(0, a.f13528a)).intValue();
    }

    public final Object a(p9.d<? super l9.m> dVar, T t10) {
        p9.f context = dVar.getContext();
        x5.a.h(context);
        p9.f fVar = this.f13526d;
        if (fVar != context) {
            if (fVar instanceof j) {
                throw new IllegalStateException(mc.f.r("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((j) fVar).f13519a + ", but then emission attempt of value '" + t10 + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) context.fold(0, new o(this))).intValue() != this.f13525c) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.f13524b + ",\n\t\tbut emission happened in " + context + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.f13526d = context;
        }
        this.f13527e = dVar;
        Object objI = n.f13529a.i(this.f13523a, t10, this);
        if (!kotlin.jvm.internal.h.a(objI, q9.a.COROUTINE_SUSPENDED)) {
            this.f13527e = null;
        }
        return objI;
    }

    @Override // kotlinx.coroutines.flow.g
    public final Object emit(T t10, p9.d<? super l9.m> dVar) {
        try {
            Object objA = a(dVar, t10);
            return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
        } catch (Throwable th2) {
            this.f13526d = new j(dVar.getContext(), th2);
            throw th2;
        }
    }

    @Override // r9.a, r9.d
    public final r9.d getCallerFrame() {
        p9.d<? super l9.m> dVar = this.f13527e;
        if (dVar instanceof r9.d) {
            return (r9.d) dVar;
        }
        return null;
    }

    @Override // r9.c, p9.d
    public final p9.f getContext() {
        p9.f fVar = this.f13526d;
        return fVar == null ? p9.g.f12870a : fVar;
    }

    @Override // r9.a
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) {
        Throwable thA = l9.h.a(obj);
        if (thA != null) {
            this.f13526d = new j(getContext(), thA);
        }
        p9.d<? super l9.m> dVar = this.f13527e;
        if (dVar != null) {
            dVar.resumeWith(obj);
        }
        return q9.a.COROUTINE_SUSPENDED;
    }

    @Override // r9.c, r9.a
    public final void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
