package l7;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final int f9420a;

    static {
        int r42;
        String property = System.getProperty("java.version");
        try {
            String[] strArrSplit = property.split("[._]");
            r42 = Integer.parseInt(strArrSplit[0]);
            if (r42 == 1 && strArrSplit.length > 1) {
                r42 = Integer.parseInt(strArrSplit[1]);
            }
        } catch (NumberFormatException unused) {
            r42 = -1;
        }
        if (r42 == -1) {
            try {
                StringBuilder sb2 = new StringBuilder();
                for (int r22 = 0; r22 < property.length(); r22++) {
                    char cCharAt = property.charAt(r22);
                    if (!Character.isDigit(cCharAt)) {
                        break;
                    }
                    sb2.append(cCharAt);
                }
                r42 = Integer.parseInt(sb2.toString());
            } catch (NumberFormatException unused2) {
                r42 = -1;
            }
        }
        if (r42 == -1) {
            r42 = 6;
        }
        f9420a = r42;
    }
}
