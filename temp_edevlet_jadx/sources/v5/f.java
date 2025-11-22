package v5;

import java.security.NoSuchAlgorithmException;
import u5.a0;

/* loaded from: classes2.dex */
public final class f {
    public static String a(a0 a0Var) throws NoSuchAlgorithmException {
        int r02 = a0Var.ordinal();
        if (r02 == 1) {
            return "HmacSha1";
        }
        if (r02 == 3) {
            return "HmacSha256";
        }
        if (r02 == 4) {
            return "HmacSha512";
        }
        throw new NoSuchAlgorithmException("hash unsupported for HMAC: " + a0Var);
    }
}
