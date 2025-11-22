package org.jmrtd;

@Deprecated
/* loaded from: classes2.dex */
public class PACEException extends CardServiceProtocolException {
    private static final long serialVersionUID = 8383980807753919040L;

    public PACEException(String str, int r22) {
        super(str, r22);
    }

    public PACEException(String str, int r22, int r32) {
        super(str, r22, r32);
    }

    public PACEException(String str, int r22, Throwable th2) {
        super(str, r22, th2);
    }

    public PACEException(String str, int r22, Throwable th2, int r42) {
        super(str, r22, th2, r42);
    }
}
