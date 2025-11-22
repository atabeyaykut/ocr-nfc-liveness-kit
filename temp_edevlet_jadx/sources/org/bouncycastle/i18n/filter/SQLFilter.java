package org.bouncycastle.i18n.filter;

/* loaded from: classes2.dex */
public class SQLFilter implements Filter {
    @Override // org.bouncycastle.i18n.filter.Filter
    public String doFilter(String str) {
        int r12;
        String str2;
        StringBuffer stringBuffer = new StringBuffer(str);
        int r42 = 0;
        while (r42 < stringBuffer.length()) {
            char cCharAt = stringBuffer.charAt(r42);
            if (cCharAt == '\n') {
                r12 = r42 + 1;
                str2 = "\\n";
            } else if (cCharAt == '\r') {
                r12 = r42 + 1;
                str2 = "\\r";
            } else if (cCharAt == '\"') {
                r12 = r42 + 1;
                str2 = "\\\"";
            } else if (cCharAt == '\'') {
                r12 = r42 + 1;
                str2 = "\\'";
            } else if (cCharAt == '-') {
                r12 = r42 + 1;
                str2 = "\\-";
            } else if (cCharAt == '/') {
                r12 = r42 + 1;
                str2 = "\\/";
            } else if (cCharAt == ';') {
                r12 = r42 + 1;
                str2 = "\\;";
            } else if (cCharAt == '=') {
                r12 = r42 + 1;
                str2 = "\\=";
            } else if (cCharAt != '\\') {
                r42++;
            } else {
                r12 = r42 + 1;
                str2 = "\\\\";
            }
            stringBuffer.replace(r42, r12, str2);
            r42 = r12;
            r42++;
        }
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.i18n.filter.Filter
    public String doFilterUrl(String str) {
        return doFilter(str);
    }
}
