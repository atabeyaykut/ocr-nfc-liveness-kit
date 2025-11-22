package cc;

import java.util.Map;

/* loaded from: classes2.dex */
public final class d1 extends e1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map<c1, i1> f2284c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f2285d;

    /* JADX WARN: Multi-variable type inference failed */
    public d1(Map<c1, ? extends i1> map, boolean z10) {
        this.f2284c = map;
        this.f2285d = z10;
    }

    @Override // cc.l1
    public final boolean a() {
        return this.f2285d;
    }

    @Override // cc.l1
    public final boolean e() {
        return this.f2284c.isEmpty();
    }

    @Override // cc.e1
    public final i1 g(c1 key) {
        kotlin.jvm.internal.h.f(key, "key");
        return this.f2284c.get(key);
    }
}
