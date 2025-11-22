package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class s2 {
    public static final String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int r12 = 0; r12 < str.length(); r12++) {
            char cCharAt = str.charAt(r12);
            if (Character.isUpperCase(cCharAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(cCharAt));
        }
        return sb2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(com.google.android.gms.internal.vision.n2 r13, java.lang.StringBuilder r14, int r15) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.s2.b(com.google.android.gms.internal.vision.n2, java.lang.StringBuilder, int):void");
    }

    public static final void c(StringBuilder sb2, int r72, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                c(sb2, r72, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                c(sb2, r72, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        int r02 = 0;
        for (int r12 = 0; r12 < r72; r12++) {
            sb2.append(' ');
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            s0 s0Var = p0.f4044b;
            sb2.append(x5.a.w(new s0(((String) obj).getBytes(m1.f4035a))));
            sb2.append('\"');
            return;
        }
        if (obj instanceof p0) {
            sb2.append(": \"");
            sb2.append(x5.a.w((p0) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof i1) {
            sb2.append(" {");
            b((i1) obj, sb2, r72 + 2);
            sb2.append("\n");
            while (r02 < r72) {
                sb2.append(' ');
                r02++;
            }
            sb2.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb2.append(": ");
            sb2.append(obj.toString());
            return;
        }
        sb2.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int r82 = r72 + 2;
        c(sb2, r82, "key", entry.getKey());
        c(sb2, r82, "value", entry.getValue());
        sb2.append("\n");
        while (r02 < r72) {
            sb2.append(' ');
            r02++;
        }
        sb2.append("}");
    }
}
