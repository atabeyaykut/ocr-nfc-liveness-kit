package c5;

/* loaded from: classes.dex */
public abstract class j7 extends i7 {

    /* renamed from: c, reason: collision with root package name */
    public boolean f1667c;

    public j7(o7 o7Var) {
        super(o7Var);
        this.f1653b.f1833s++;
    }

    public final void c() {
        if (!this.f1667c) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void d() {
        if (this.f1667c) {
            throw new IllegalStateException("Can't initialize twice");
        }
        e();
        this.f1653b.f1834t++;
        this.f1667c = true;
    }

    public abstract void e();
}
