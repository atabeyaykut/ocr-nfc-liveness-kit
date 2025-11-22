package r0;

import androidx.lifecycle.LifecycleOwner;

@r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1", f = "MavericksLifecycleAwareFlow.kt", l = {29}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class m extends r9.i implements x9.p<kotlinx.coroutines.flow.g<Object>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13782a;

    /* renamed from: b, reason: collision with root package name */
    public int f13783b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.flow.f f13784c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ LifecycleOwner f13785d;

    @r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1", f = "MavericksLifecycleAwareFlow.kt", l = {99}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<nc.a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f13786a;

        /* renamed from: b, reason: collision with root package name */
        public pc.u f13787b;

        /* renamed from: c, reason: collision with root package name */
        public x9.q f13788c;

        /* renamed from: d, reason: collision with root package name */
        public kotlin.jvm.internal.v f13789d;

        /* renamed from: e, reason: collision with root package name */
        public kotlin.jvm.internal.v f13790e;
        public kotlin.jvm.internal.t f;

        /* renamed from: g, reason: collision with root package name */
        public int f13791g;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ kotlinx.coroutines.flow.g f13793j;

        @r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$flowChannel$1", f = "MavericksLifecycleAwareFlow.kt", l = {96}, m = "invokeSuspend")
        /* renamed from: r0.m$a$a, reason: collision with other inner class name */
        public static final class C0231a extends r9.i implements x9.p<pc.r<Object>, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f13794a;

            /* renamed from: b, reason: collision with root package name */
            public int f13795b;

            /* renamed from: r0.m$a$a$a, reason: collision with other inner class name */
            public static final class C0232a implements kotlinx.coroutines.flow.g<Object> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ pc.r f13797a;

                public C0232a(pc.r rVar) {
                    this.f13797a = rVar;
                }

                @Override // kotlinx.coroutines.flow.g
                public final Object emit(Object obj, p9.d dVar) {
                    Object objP = this.f13797a.p(obj, dVar);
                    return objP == q9.a.COROUTINE_SUSPENDED ? objP : l9.m.f9594a;
                }
            }

            public C0231a(p9.d dVar) {
                super(2, dVar);
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
                kotlin.jvm.internal.h.f(completion, "completion");
                C0231a c0231a = a.this.new C0231a(completion);
                c0231a.f13794a = obj;
                return c0231a;
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(pc.r<Object> rVar, p9.d<? super l9.m> dVar) {
                return ((C0231a) create(rVar, dVar)).invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f13795b;
                if (r12 == 0) {
                    c5.w.F(obj);
                    pc.r rVar = (pc.r) this.f13794a;
                    kotlinx.coroutines.flow.f fVar = m.this.f13784c;
                    C0232a c0232a = new C0232a(rVar);
                    this.f13795b = 1;
                    if (fVar.a(c0232a, this) == aVar) {
                        return aVar;
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

        @r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$1$2", f = "MavericksLifecycleAwareFlow.kt", l = {48}, m = "invokeSuspend")
        public static final class b extends r9.i implements x9.p<Boolean, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ boolean f13798a;

            /* renamed from: b, reason: collision with root package name */
            public int f13799b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13800c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13801d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13802e;
            public final /* synthetic */ x9.q f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ pc.u f13803g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.t f13804h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(p9.d dVar, kotlin.jvm.internal.v vVar, kotlin.jvm.internal.v vVar2, kotlin.jvm.internal.v vVar3, x9.q qVar, pc.u uVar, kotlin.jvm.internal.t tVar) {
                super(2, dVar);
                this.f13800c = vVar;
                this.f13801d = vVar2;
                this.f13802e = vVar3;
                this.f = qVar;
                this.f13803g = uVar;
                this.f13804h = tVar;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
                kotlin.jvm.internal.h.f(completion, "completion");
                b bVar = new b(completion, this.f13800c, this.f13801d, this.f13802e, this.f, this.f13803g, this.f13804h);
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                bVar.f13798a = bool.booleanValue();
                return bVar;
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(Boolean bool, p9.d<? super l9.m> dVar) {
                return ((b) create(bool, dVar)).invokeSuspend(l9.m.f9594a);
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Boolean] */
            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f13799b;
                if (r12 == 0) {
                    c5.w.F(obj);
                    boolean z10 = this.f13798a;
                    this.f13801d.f8975a = Boolean.valueOf(z10);
                    kotlin.jvm.internal.v vVar = this.f13802e;
                    if (vVar.f8975a != 0) {
                        Boolean boolValueOf = Boolean.valueOf(z10);
                        T t10 = vVar.f8975a;
                        if (t10 == 0) {
                            throw new NullPointerException("null cannot be cast to non-null type T");
                        }
                        this.f13799b = 1;
                        if (this.f.i(boolValueOf, t10, this) == aVar) {
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

        @r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$$special$$inlined$onReceive$1", f = "MavericksLifecycleAwareFlow.kt", l = {92}, m = "invokeSuspend")
        public static final class c extends r9.i implements x9.p<Boolean, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f13805a;

            /* renamed from: b, reason: collision with root package name */
            public int f13806b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ x9.p f13807c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13808d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13809e;
            public final /* synthetic */ kotlin.jvm.internal.v f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ x9.q f13810g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ pc.u f13811h;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.t f13812j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(x9.p pVar, p9.d dVar, kotlin.jvm.internal.v vVar, kotlin.jvm.internal.v vVar2, kotlin.jvm.internal.v vVar3, x9.q qVar, pc.u uVar, kotlin.jvm.internal.t tVar) {
                super(2, dVar);
                this.f13807c = pVar;
                this.f13808d = vVar;
                this.f13809e = vVar2;
                this.f = vVar3;
                this.f13810g = qVar;
                this.f13811h = uVar;
                this.f13812j = tVar;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
                kotlin.jvm.internal.h.f(completion, "completion");
                c cVar = new c(this.f13807c, completion, this.f13808d, this.f13809e, this.f, this.f13810g, this.f13811h, this.f13812j);
                cVar.f13805a = obj;
                return cVar;
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(Boolean bool, p9.d<? super l9.m> dVar) {
                return ((c) create(bool, dVar)).invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f13806b;
                if (r12 == 0) {
                    c5.w.F(obj);
                    Object obj2 = this.f13805a;
                    if (obj2 == null) {
                        this.f13811h.a(null);
                        this.f13812j.f8973a = true;
                    } else {
                        this.f13806b = 1;
                        if (this.f13807c.mo7invoke(obj2, this) == aVar) {
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

        @r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$1$4", f = "MavericksLifecycleAwareFlow.kt", l = {54}, m = "invokeSuspend")
        public static final class d extends r9.i implements x9.p<Object, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f13813a;

            /* renamed from: b, reason: collision with root package name */
            public int f13814b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13815c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13816d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13817e;
            public final /* synthetic */ x9.q f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ pc.u f13818g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.t f13819h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(p9.d dVar, kotlin.jvm.internal.v vVar, kotlin.jvm.internal.v vVar2, kotlin.jvm.internal.v vVar3, x9.q qVar, pc.u uVar, kotlin.jvm.internal.t tVar) {
                super(2, dVar);
                this.f13815c = vVar;
                this.f13816d = vVar2;
                this.f13817e = vVar3;
                this.f = qVar;
                this.f13818g = uVar;
                this.f13819h = tVar;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
                kotlin.jvm.internal.h.f(completion, "completion");
                d dVar = new d(completion, this.f13815c, this.f13816d, this.f13817e, this.f, this.f13818g, this.f13819h);
                dVar.f13813a = obj;
                return dVar;
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
                return ((d) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v1, types: [T, java.lang.Object] */
            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f13814b;
                if (r12 == 0) {
                    c5.w.F(obj);
                    ?? r52 = this.f13813a;
                    this.f13817e.f8975a = r52;
                    T t10 = this.f13816d.f8975a;
                    if (((Boolean) t10) != null) {
                        Boolean bool = (Boolean) t10;
                        if (bool == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                        }
                        this.f13814b = 1;
                        if (this.f.i(bool, r52, this) == aVar) {
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

        @r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$$special$$inlined$onReceive$2", f = "MavericksLifecycleAwareFlow.kt", l = {92}, m = "invokeSuspend")
        public static final class e extends r9.i implements x9.p<Object, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f13820a;

            /* renamed from: b, reason: collision with root package name */
            public int f13821b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ x9.p f13822c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13823d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.v f13824e;
            public final /* synthetic */ kotlin.jvm.internal.v f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ x9.q f13825g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ pc.u f13826h;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ kotlin.jvm.internal.t f13827j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(x9.p pVar, p9.d dVar, kotlin.jvm.internal.v vVar, kotlin.jvm.internal.v vVar2, kotlin.jvm.internal.v vVar3, x9.q qVar, pc.u uVar, kotlin.jvm.internal.t tVar) {
                super(2, dVar);
                this.f13822c = pVar;
                this.f13823d = vVar;
                this.f13824e = vVar2;
                this.f = vVar3;
                this.f13825g = qVar;
                this.f13826h = uVar;
                this.f13827j = tVar;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
                kotlin.jvm.internal.h.f(completion, "completion");
                e eVar = new e(this.f13822c, completion, this.f13823d, this.f13824e, this.f, this.f13825g, this.f13826h, this.f13827j);
                eVar.f13820a = obj;
                return eVar;
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
                return ((e) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f13821b;
                if (r12 == 0) {
                    c5.w.F(obj);
                    Object obj2 = this.f13820a;
                    if (obj2 == null) {
                        this.f13827j.f8973a = true;
                    } else {
                        this.f13821b = 1;
                        if (this.f13822c.mo7invoke(obj2, this) == aVar) {
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

        @r9.e(c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$transform$1", f = "MavericksLifecycleAwareFlow.kt", l = {35}, m = "invokeSuspend")
        public static final class f extends r9.i implements x9.q<Boolean, Object, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ boolean f13828a;

            /* renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f13829b;

            /* renamed from: c, reason: collision with root package name */
            public int f13830c;

            public f(p9.d dVar) {
                super(3, dVar);
            }

            @Override // x9.q
            public final Object i(Boolean bool, Object value, p9.d<? super l9.m> dVar) {
                boolean zBooleanValue = bool.booleanValue();
                p9.d<? super l9.m> continuation = dVar;
                kotlin.jvm.internal.h.f(value, "value");
                kotlin.jvm.internal.h.f(continuation, "continuation");
                f fVar = a.this.new f(continuation);
                fVar.f13828a = zBooleanValue;
                fVar.f13829b = value;
                return fVar.invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f13830c;
                if (r12 == 0) {
                    c5.w.F(obj);
                    boolean z10 = this.f13828a;
                    Object obj2 = this.f13829b;
                    if (z10) {
                        kotlinx.coroutines.flow.g gVar = a.this.f13793j;
                        this.f13830c = 1;
                        if (gVar.emit(obj2, this) == aVar) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kotlinx.coroutines.flow.g gVar, p9.d dVar) {
            super(2, dVar);
            this.f13793j = gVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
            kotlin.jvm.internal.h.f(completion, "completion");
            a aVar = m.this.new a(this.f13793j, completion);
            aVar.f13786a = obj;
            return aVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(nc.a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:11|(1:42)|12|13|40|14|15|48|16|17|46|18|19|44|20|33|(1:35)(4:36|37|9|(2:38|39)(0))) */
        /* JADX WARN: Can't wrap try/catch for region: R(17:11|42|12|13|40|14|15|48|16|17|46|18|19|44|20|33|(1:35)(4:36|37|9|(2:38|39)(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0118, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x011a, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x011b, code lost:
        
            r1 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x011d, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x011e, code lost:
        
            r1 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0121, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0122, code lost:
        
            r16 = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x012d, code lost:
        
            r1.L(r0);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0136 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0137  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0142  */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [pc.u] */
        /* JADX WARN: Type inference failed for: r11v8 */
        /* JADX WARN: Type inference failed for: r5v2, types: [androidx.lifecycle.Lifecycle, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v9, types: [x9.q] */
        /* JADX WARN: Type inference failed for: r6v2, types: [T, pc.a, pc.b] */
        /* JADX WARN: Type inference failed for: r8v1, types: [androidx.lifecycle.LifecycleObserver, com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$startedChannel$observer$1] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0137 -> B:37:0x013d). Please report as a decompilation issue!!! */
        @Override // r9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r23) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 325
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: r0.m.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(kotlinx.coroutines.flow.f fVar, LifecycleOwner lifecycleOwner, p9.d dVar) {
        super(2, dVar);
        this.f13784c = fVar;
        this.f13785d = lifecycleOwner;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        m mVar = new m(this.f13784c, this.f13785d, completion);
        mVar.f13782a = obj;
        return mVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.g<Object> gVar, p9.d<? super l9.m> dVar) {
        return ((m) create(gVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13783b;
        if (r12 == 0) {
            c5.w.F(obj);
            a aVar2 = new a((kotlinx.coroutines.flow.g) this.f13782a, null);
            this.f13783b = 1;
            if (b8.f.t(aVar2, this) == aVar) {
                return aVar;
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
