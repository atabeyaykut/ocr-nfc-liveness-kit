package rc;

import java.io.IOException;

/* loaded from: classes2.dex */
public enum w {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");


    /* renamed from: a, reason: collision with root package name */
    public final String f14596a;

    public static final class a {
        public static w a(String str) throws IOException {
            if (kotlin.jvm.internal.h.a(str, "http/1.0")) {
                return w.HTTP_1_0;
            }
            if (kotlin.jvm.internal.h.a(str, "http/1.1")) {
                return w.HTTP_1_1;
            }
            if (kotlin.jvm.internal.h.a(str, "h2_prior_knowledge")) {
                return w.H2_PRIOR_KNOWLEDGE;
            }
            if (kotlin.jvm.internal.h.a(str, "h2")) {
                return w.HTTP_2;
            }
            if (kotlin.jvm.internal.h.a(str, "spdy/3.1")) {
                return w.SPDY_3;
            }
            if (kotlin.jvm.internal.h.a(str, "quic")) {
                return w.QUIC;
            }
            throw new IOException("Unexpected protocol: ".concat(str));
        }
    }

    w(String str) {
        this.f14596a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f14596a;
    }
}
