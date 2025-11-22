package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class a2 {
    /* JADX WARN: Removed duplicated region for block: B:112:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0246  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.google.android.gms.internal.clearcut.x1 r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.a2.a(com.google.android.gms.internal.clearcut.x1, java.lang.StringBuilder, int):void");
    }

    public static final void b(StringBuilder sb2, int r72, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb2, r72, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb2, r72, str, (Map.Entry) it2.next());
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
            c0 c0Var = x.f3341b;
            sb2.append(d0.E(new c0(((String) obj).getBytes(x0.f3344a))));
            sb2.append('\"');
            return;
        }
        if (obj instanceof x) {
            sb2.append(": \"");
            sb2.append(d0.E((x) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof v0) {
            sb2.append(" {");
            a((v0) obj, sb2, r72 + 2);
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
        b(sb2, r82, "key", entry.getKey());
        b(sb2, r82, "value", entry.getValue());
        sb2.append("\n");
        while (r02 < r72) {
            sb2.append(' ');
            r02++;
        }
        sb2.append("}");
    }

    public static final String c(String str) {
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
}
