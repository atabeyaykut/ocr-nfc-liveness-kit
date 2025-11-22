package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class v3 implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f3330a;

    /* renamed from: b, reason: collision with root package name */
    public final w3[] f3331b;

    /* renamed from: c, reason: collision with root package name */
    public int f3332c;

    static {
        new w3();
    }

    public v3() {
        this(10);
    }

    public v3(int r42) {
        int r43 = r42 << 2;
        int r12 = 4;
        while (true) {
            if (r12 >= 32) {
                break;
            }
            int r22 = (1 << r12) - 12;
            if (r43 <= r22) {
                r43 = r22;
                break;
            }
            r12++;
        }
        int r44 = r43 / 4;
        this.f3330a = new int[r44];
        this.f3331b = new w3[r44];
        this.f3332c = 0;
    }

    public final boolean b() {
        return this.f3332c == 0;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int r02 = this.f3332c;
        v3 v3Var = new v3(r02);
        System.arraycopy(this.f3330a, 0, v3Var.f3330a, 0, r02);
        for (int r42 = 0; r42 < r02; r42++) {
            w3 w3Var = this.f3331b[r42];
            if (w3Var != null) {
                v3Var.f3331b[r42] = w3Var.clone();
            }
        }
        v3Var.f3332c = r02;
        return v3Var;
    }

    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v3)) {
            return false;
        }
        v3 v3Var = (v3) obj;
        int r12 = this.f3332c;
        if (r12 != v3Var.f3332c) {
            return false;
        }
        int r32 = 0;
        while (true) {
            if (r32 >= r12) {
                z10 = true;
                break;
            }
            if (this.f3330a[r32] != v3Var.f3330a[r32]) {
                z10 = false;
                break;
            }
            r32++;
        }
        if (z10) {
            int r13 = this.f3332c;
            int r33 = 0;
            while (true) {
                if (r33 >= r13) {
                    z11 = true;
                    break;
                }
                if (!this.f3331b[r33].equals(v3Var.f3331b[r33])) {
                    z11 = false;
                    break;
                }
                r33++;
            }
            if (z11) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = 17;
        for (int r12 = 0; r12 < this.f3332c; r12++) {
            r02 = (((r02 * 31) + this.f3330a[r12]) * 31) + this.f3331b[r12].hashCode();
        }
        return r02;
    }
}
