package org.bouncycastle.asn1;

/* loaded from: classes2.dex */
public class OIDTokenizer {
    private int index = 0;
    private String oid;

    public OIDTokenizer(String str) {
        this.oid = str;
    }

    public boolean hasMoreTokens() {
        return this.index != -1;
    }

    public String nextToken() {
        int r02 = this.index;
        if (r02 == -1) {
            return null;
        }
        int r03 = this.oid.indexOf(46, r02);
        if (r03 == -1) {
            String strSubstring = this.oid.substring(this.index);
            this.index = -1;
            return strSubstring;
        }
        String strSubstring2 = this.oid.substring(this.index, r03);
        this.index = r03 + 1;
        return strSubstring2;
    }
}
