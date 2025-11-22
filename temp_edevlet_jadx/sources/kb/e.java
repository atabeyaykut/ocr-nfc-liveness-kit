package kb;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class e extends ib.a {

    /* renamed from: g, reason: collision with root package name */
    public static final e f8815g = new e(1, 8, 0);
    public final boolean f;

    static {
        new e(new int[0]);
    }

    public e(int... r22) {
        this(r22, false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(int[] versionArray, boolean z10) {
        super(Arrays.copyOf(versionArray, versionArray.length));
        kotlin.jvm.internal.h.f(versionArray, "versionArray");
        this.f = z10;
    }

    public final boolean c() {
        int r12 = this.f7321c;
        int r32 = this.f7320b;
        if (r32 == 1 && r12 == 0) {
            return false;
        }
        boolean z10 = this.f;
        e eVar = f8815g;
        return z10 ? b(eVar) : r32 == eVar.f7320b && r12 <= eVar.f7321c + 1;
    }
}
