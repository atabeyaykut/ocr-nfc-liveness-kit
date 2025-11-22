package gd;

/* loaded from: classes2.dex */
public final class d implements kotlinx.coroutines.scheduling.h {

    /* renamed from: b, reason: collision with root package name */
    public static d f6635b;

    /* renamed from: a, reason: collision with root package name */
    public int f6636a;

    @Override // kotlinx.coroutines.scheduling.h
    public void a() {
    }

    @Override // kotlinx.coroutines.scheduling.h
    public int b() {
        return this.f6636a;
    }

    public void c() {
        this.f6636a++;
        id.b.a("BeaconLocalBroadcastProcessor", "Register calls: global=" + this.f6636a, new Object[0]);
        this.f6636a = this.f6636a + (-1);
    }
}
