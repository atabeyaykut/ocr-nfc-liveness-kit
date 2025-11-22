package oc;

import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

/* loaded from: classes2.dex */
public final class b extends j implements l<Throwable, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f11308a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f11309b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar, a aVar) {
        super(1);
        this.f11308a = cVar;
        this.f11309b = aVar;
    }

    @Override // x9.l
    public final m invoke(Throwable th2) {
        this.f11308a.f11310a.removeCallbacks(this.f11309b);
        return m.f9594a;
    }
}
