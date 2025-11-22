package rc;

/* loaded from: classes2.dex */
public enum f0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");


    /* renamed from: a, reason: collision with root package name */
    public final String f14446a;

    public static final class a {
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static f0 a(String javaName) {
            kotlin.jvm.internal.h.f(javaName, "javaName");
            int r02 = javaName.hashCode();
            if (r02 != 79201641) {
                if (r02 != 79923350) {
                    switch (r02) {
                        case -503070503:
                            if (javaName.equals("TLSv1.1")) {
                                return f0.TLS_1_1;
                            }
                            break;
                        case -503070502:
                            if (javaName.equals("TLSv1.2")) {
                                return f0.TLS_1_2;
                            }
                            break;
                        case -503070501:
                            if (javaName.equals("TLSv1.3")) {
                                return f0.TLS_1_3;
                            }
                            break;
                    }
                } else if (javaName.equals("TLSv1")) {
                    return f0.TLS_1_0;
                }
            } else if (javaName.equals("SSLv3")) {
                return f0.SSL_3_0;
            }
            throw new IllegalArgumentException("Unexpected TLS version: ".concat(javaName));
        }
    }

    f0(String str) {
        this.f14446a = str;
    }
}
