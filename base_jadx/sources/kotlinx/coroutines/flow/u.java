package kotlinx.coroutines.flow;

import org.bouncycastle.asn1.BERTags;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public final class u implements f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f9118a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.p f9119b;

    public static final class a<T> implements g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ g f9120a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x9.p f9121b;

        @r9.e(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {PassportService.DEFAULT_MAX_BLOCKSIZE, BERTags.FLAGS}, m = "emit")
        /* renamed from: kotlinx.coroutines.flow.u$a$a, reason: collision with other inner class name */
        public static final class C0172a extends r9.c {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f9122a;

            /* renamed from: b, reason: collision with root package name */
            public int f9123b;

            /* renamed from: d, reason: collision with root package name */
            public Object f9125d;

            /* renamed from: e, reason: collision with root package name */
            public g f9126e;

            public C0172a(p9.d dVar) {
                super(dVar);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) {
                this.f9122a = obj;
                this.f9123b |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(g gVar, x9.p pVar) {
            this.f9120a = gVar;
            this.f9121b = pVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(T r6, p9.d<? super l9.m> r7) throws java.lang.Throwable {
            /*
                r5 = this;
                boolean r0 = r7 instanceof kotlinx.coroutines.flow.u.a.C0172a
                if (r0 == 0) goto L13
                r0 = r7
                kotlinx.coroutines.flow.u$a$a r0 = (kotlinx.coroutines.flow.u.a.C0172a) r0
                int r1 = r0.f9123b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f9123b = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.u$a$a r0 = new kotlinx.coroutines.flow.u$a$a
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.f9122a
                q9.a r1 = q9.a.COROUTINE_SUSPENDED
                int r2 = r0.f9123b
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L3a
                if (r2 == r4) goto L32
                if (r2 != r3) goto L2a
                c5.w.F(r7)
                goto L5e
            L2a:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L32:
                kotlinx.coroutines.flow.g r6 = r0.f9126e
                java.lang.Object r2 = r0.f9125d
                c5.w.F(r7)
                goto L50
            L3a:
                c5.w.F(r7)
                r0.f9125d = r6
                kotlinx.coroutines.flow.g r7 = r5.f9120a
                r0.f9126e = r7
                r0.f9123b = r4
                x9.p r2 = r5.f9121b
                java.lang.Object r2 = r2.mo7invoke(r6, r0)
                if (r2 != r1) goto L4e
                return r1
            L4e:
                r2 = r6
                r6 = r7
            L50:
                r7 = 0
                r0.f9125d = r7
                r0.f9126e = r7
                r0.f9123b = r3
                java.lang.Object r6 = r6.emit(r2, r0)
                if (r6 != r1) goto L5e
                return r1
            L5e:
                l9.m r6 = l9.m.f9594a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.u.a.emit(java.lang.Object, p9.d):java.lang.Object");
        }
    }

    public u(f fVar, x9.p pVar) {
        this.f9118a = fVar;
        this.f9119b = pVar;
    }

    @Override // kotlinx.coroutines.flow.f
    public final Object a(g<? super Object> gVar, p9.d dVar) {
        Object objA = this.f9118a.a(new a(gVar, this.f9119b), dVar);
        return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
    }
}
