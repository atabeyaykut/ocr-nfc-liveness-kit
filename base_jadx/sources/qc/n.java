package qc;

import kotlin.jvm.internal.z;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public static final x9.q<kotlinx.coroutines.flow.g<Object>, Object, p9.d<? super l9.m>, Object> f13529a;

    public /* synthetic */ class a extends kotlin.jvm.internal.g implements x9.q {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13530a = new a();

        public a() {
            super(3, kotlinx.coroutines.flow.g.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // x9.q
        public final Object i(Object obj, Object obj2, Object obj3) {
            return ((kotlinx.coroutines.flow.g) obj).emit(obj2, (p9.d) obj3);
        }
    }

    static {
        a aVar = a.f13530a;
        z.c(3, aVar);
        f13529a = aVar;
    }
}
