package yc;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public int f19649a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f19650b = new int[10];

    public final int a() {
        if ((this.f19649a & 128) != 0) {
            return this.f19650b[7];
        }
        return 65535;
    }

    public final void b(int r42, int r52) {
        if (r42 >= 0) {
            int[] r02 = this.f19650b;
            if (r42 >= r02.length) {
                return;
            }
            this.f19649a = (1 << r42) | this.f19649a;
            r02[r42] = r52;
        }
    }
}
