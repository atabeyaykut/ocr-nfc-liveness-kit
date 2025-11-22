package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.i;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class s0 {
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

    public static final void b(StringBuilder sb2, int r6, String str, Object obj) {
        String string;
        String strK;
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb2, r6, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb2, r6, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        int r02 = 0;
        for (int r12 = 0; r12 < r6; r12++) {
            sb2.append(' ');
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            i.f fVar = i.f4287b;
            strK = a0.b.k(new i.f(((String) obj).getBytes(z.f4405a)));
        } else {
            if (!(obj instanceof i)) {
                if (obj instanceof x) {
                    sb2.append(" {");
                    c((x) obj, sb2, r6 + 2);
                    sb2.append("\n");
                    while (r02 < r6) {
                        sb2.append(' ');
                        r02++;
                    }
                } else {
                    if (!(obj instanceof Map.Entry)) {
                        sb2.append(": ");
                        string = obj.toString();
                        sb2.append(string);
                        return;
                    }
                    sb2.append(" {");
                    Map.Entry entry = (Map.Entry) obj;
                    int r72 = r6 + 2;
                    b(sb2, r72, "key", entry.getKey());
                    b(sb2, r72, "value", entry.getValue());
                    sb2.append("\n");
                    while (r02 < r6) {
                        sb2.append(' ');
                        r02++;
                    }
                }
                string = "}";
                sb2.append(string);
                return;
            }
            sb2.append(": \"");
            strK = a0.b.k((i) obj);
        }
        sb2.append(strK);
        sb2.append('\"');
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(com.google.crypto.tink.shaded.protobuf.q0 r13, java.lang.StringBuilder r14, int r15) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.s0.c(com.google.crypto.tink.shaded.protobuf.q0, java.lang.StringBuilder, int):void");
    }
}
