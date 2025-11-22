package c5;

/* loaded from: classes.dex */
public abstract class y4 extends x4 {

    /* renamed from: b, reason: collision with root package name */
    public boolean f2147b;

    public y4(i4 i4Var) {
        super(i4Var);
        ((i4) this.f2115a).H++;
    }

    public abstract boolean c();

    public final void d() {
        if (!this.f2147b) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void e() {
        if (this.f2147b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (c()) {
            return;
        }
        ((i4) this.f2115a).I.incrementAndGet();
        this.f2147b = true;
    }
}
