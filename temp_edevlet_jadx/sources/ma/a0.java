package ma;

/* loaded from: classes2.dex */
public enum a0 {
    FINAL,
    SEALED,
    OPEN,
    ABSTRACT;

    public static final class a {
        public static a0 a(boolean z10, boolean z11, boolean z12) {
            return z10 ? a0.SEALED : z11 ? a0.ABSTRACT : z12 ? a0.OPEN : a0.FINAL;
        }
    }
}
