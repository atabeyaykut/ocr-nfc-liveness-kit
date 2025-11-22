package q9;

import c5.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.z;
import p9.d;
import r9.g;
import x9.p;

/* loaded from: classes2.dex */
public final class b extends g {

    /* renamed from: a, reason: collision with root package name */
    public int f13457a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f13458b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f13459c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Object obj, d dVar, p pVar) {
        super(dVar);
        this.f13458b = pVar;
        this.f13459c = obj;
        h.d(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        int r02 = this.f13457a;
        if (r02 != 0) {
            if (r02 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f13457a = 2;
            w.F(obj);
            return obj;
        }
        this.f13457a = 1;
        w.F(obj);
        p pVar = this.f13458b;
        h.d(pVar, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
        z.c(2, pVar);
        return pVar.mo7invoke(this.f13459c, this);
    }
}
