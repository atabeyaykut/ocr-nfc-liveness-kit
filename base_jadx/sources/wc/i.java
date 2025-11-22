package wc;

import java.io.IOException;
import java.net.ProtocolException;
import mc.j;
import rc.w;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final w f18880a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18881b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18882c;

    public static final class a {
        public static i a(String statusLine) throws NumberFormatException, IOException {
            int r12;
            String strSubstring;
            kotlin.jvm.internal.h.f(statusLine, "statusLine");
            boolean zD = j.D(statusLine, "HTTP/1.", false);
            w wVar = w.HTTP_1_0;
            if (zD) {
                r12 = 9;
                if (statusLine.length() < 9 || statusLine.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                }
                int r02 = statusLine.charAt(7) - '0';
                if (r02 != 0) {
                    if (r02 != 1) {
                        throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                    }
                    wVar = w.HTTP_1_1;
                }
            } else {
                if (!j.D(statusLine, "ICY ", false)) {
                    throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                }
                r12 = 4;
            }
            int r6 = r12 + 3;
            if (statusLine.length() < r6) {
                throw new ProtocolException("Unexpected status line: ".concat(statusLine));
            }
            try {
                String strSubstring2 = statusLine.substring(r12, r6);
                kotlin.jvm.internal.h.e(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                int r03 = Integer.parseInt(strSubstring2);
                if (statusLine.length() <= r6) {
                    strSubstring = "";
                } else {
                    if (statusLine.charAt(r6) != ' ') {
                        throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                    }
                    strSubstring = statusLine.substring(r12 + 4);
                    kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.String).substring(startIndex)");
                }
                return new i(wVar, r03, strSubstring);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: ".concat(statusLine));
            }
        }
    }

    public i(w wVar, int r22, String str) {
        this.f18880a = wVar;
        this.f18881b = r22;
        this.f18882c = str;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f18880a == w.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb2.append(' ');
        sb2.append(this.f18881b);
        sb2.append(' ');
        sb2.append(this.f18882c);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
