package b3;

import android.content.Context;
import b3.f;
import b3.h;

/* loaded from: classes.dex */
public final class y implements x2.b<x> {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<Context> f1133a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a<String> f1134b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a<Integer> f1135c;

    public y(k9.a aVar) {
        f fVar = f.a.f1100a;
        h hVar = h.a.f1102a;
        this.f1133a = aVar;
        this.f1134b = fVar;
        this.f1135c = hVar;
    }

    @Override // k9.a
    public final Object get() {
        return new x(this.f1133a.get(), this.f1135c.get().intValue(), this.f1134b.get());
    }
}
