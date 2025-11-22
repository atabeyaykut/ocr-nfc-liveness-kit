package pc;

import pc.j;

/* loaded from: classes2.dex */
public final class t implements kotlinx.coroutines.selects.b<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u<Object> f13119a;

    /* JADX INFO: Add missing generic type declarations: [R] */
    @r9.e(c = "kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1", f = "Channel.kt", l = {375}, m = "invokeSuspend")
    public static final class a<R> extends r9.i implements x9.p<j<Object>, p9.d<? super R>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f13120a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f13121b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ x9.p<Object, p9.d<? super R>, Object> f13122c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(x9.p<Object, ? super p9.d<? super R>, ? extends Object> pVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f13122c = pVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            a aVar = new a(this.f13122c, dVar);
            aVar.f13121b = obj;
            return aVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(j<Object> jVar, Object obj) {
            return ((a) create(new j(jVar.f13101a), (p9.d) obj)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13120a;
            if (r12 == 0) {
                c5.w.F(obj);
                Object obj2 = ((j) this.f13121b).f13101a;
                j.a aVar2 = obj2 instanceof j.a ? (j.a) obj2 : null;
                Throwable th2 = aVar2 == null ? null : aVar2.f13102a;
                if (th2 != null) {
                    throw th2;
                }
                if (obj2 instanceof j.b) {
                    obj2 = null;
                }
                this.f13120a = 1;
                obj = this.f13122c.mo7invoke(obj2, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c5.w.F(obj);
            }
            return obj;
        }
    }

    public t(u<Object> uVar) {
        this.f13119a = uVar;
    }

    @Override // kotlinx.coroutines.selects.b
    public final <R> void z(kotlinx.coroutines.selects.c<? super R> cVar, x9.p<Object, ? super p9.d<? super R>, ? extends Object> pVar) {
        this.f13119a.k().z(cVar, new a(pVar, null));
    }
}
