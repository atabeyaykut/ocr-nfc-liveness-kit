package org.bouncycastle.asn1.x509;

/* loaded from: classes2.dex */
public class X509NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char separator;
    private String value;

    public X509NameTokenizer(String str) {
        this(str, ',');
    }

    public X509NameTokenizer(String str, char c10) {
        this.buf = new StringBuffer();
        this.value = str;
        this.index = -1;
        this.separator = c10;
    }

    public boolean hasMoreTokens() {
        return this.index != this.value.length();
    }

    public String nextToken() {
        if (this.index == this.value.length()) {
            return null;
        }
        int r02 = this.index + 1;
        this.buf.setLength(0);
        boolean z10 = false;
        boolean z11 = false;
        while (r02 != this.value.length()) {
            char cCharAt = this.value.charAt(r02);
            if (cCharAt != '\"') {
                if (!z10 && !z11) {
                    if (cCharAt == '\\') {
                        this.buf.append(cCharAt);
                        z10 = true;
                    } else {
                        if (cCharAt == this.separator) {
                            break;
                        }
                        this.buf.append(cCharAt);
                    }
                }
                r02++;
            } else if (!z10) {
                z11 = !z11;
            }
            this.buf.append(cCharAt);
            z10 = false;
            r02++;
        }
        this.index = r02;
        return this.buf.toString();
    }
}
