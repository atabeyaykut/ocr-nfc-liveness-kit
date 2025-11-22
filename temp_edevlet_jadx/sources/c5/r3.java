package c5;

/* loaded from: classes.dex */
public abstract class r3 extends t2 {

    /* renamed from: b, reason: collision with root package name */
    public boolean f1937b;

    public r3(i4 i4Var) {
        super(i4Var);
        ((i4) this.f2115a).H++;
    }

    public final void c() {
        if (!this.f1937b) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void d() {
        if (this.f1937b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (e()) {
            return;
        }
        ((i4) this.f2115a).I.incrementAndGet();
        this.f1937b = true;
    }

    public abstract boolean e();
}
