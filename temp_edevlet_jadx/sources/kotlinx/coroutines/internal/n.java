package kotlinx.coroutines.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class n extends kotlin.jvm.internal.j implements x9.l<Throwable, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x9.l<Object, l9.m> f9168a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9169b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p9.f f9170c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(x9.l<Object, l9.m> lVar, Object obj, p9.f fVar) {
        super(1);
        this.f9168a = lVar;
        this.f9169b = obj;
        this.f9170c = fVar;
    }

    @Override // x9.l
    public final l9.m invoke(Throwable th2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        a0 a0VarE = c5.y.e(this.f9168a, this.f9169b, null);
        if (a0VarE != null) {
            c5.v.u(this.f9170c, a0VarE);
        }
        return l9.m.f9594a;
    }
}
