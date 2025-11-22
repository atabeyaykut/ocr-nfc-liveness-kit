package g;

/* loaded from: classes.dex */
public final /* synthetic */ class d {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f5715a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    public static /* synthetic */ int a(int r02, int r12) {
        if (r02 == 0 || r12 == 0) {
            throw null;
        }
        return r02 - r12;
    }

    public static /* synthetic */ boolean b(int r02, int r12) {
        if (r02 != 0) {
            return r02 == r12;
        }
        throw null;
    }

    public static /* synthetic */ int c(int r02) {
        if (r02 != 0) {
            return r02 - 1;
        }
        throw null;
    }

    public static /* synthetic */ int[] d(int r32) {
        int[] r02 = new int[r32];
        System.arraycopy(f5715a, 0, r02, 0, r32);
        return r02;
    }
}
