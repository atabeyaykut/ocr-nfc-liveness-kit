package mc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m9.t;

/* loaded from: classes2.dex */
public class f extends a0.b {
    public static final String r(String str) throws IOException {
        int length;
        Comparable comparable;
        kotlin.jvm.internal.h.f(str, "<this>");
        List<String> listR = n.R(str);
        List<String> list = listR;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!j.y((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
        Iterator it = arrayList.iterator();
        while (true) {
            length = 0;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            int length2 = str2.length();
            while (true) {
                if (length >= length2) {
                    length = -1;
                    break;
                }
                if (!a6.a.t(str2.charAt(length))) {
                    break;
                }
                length++;
            }
            if (length == -1) {
                length = str2.length();
            }
            arrayList2.add(Integer.valueOf(length));
        }
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            comparable = (Comparable) it2.next();
            while (it2.hasNext()) {
                Comparable comparable2 = (Comparable) it2.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int r22 = num != null ? num.intValue() : 0;
        int size = (listR.size() * 0) + str.length();
        int r13 = b8.f.M(listR);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : list) {
            int r72 = length + 1;
            if (length < 0) {
                b8.f.k0();
                throw null;
            }
            String str3 = (String) obj2;
            if ((length == 0 || length == r13) && j.y(str3)) {
                str3 = null;
            } else {
                String strInvoke = e.f10371a.invoke(o.j0(r22, str3));
                if (strInvoke != null) {
                    str3 = strInvoke;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            length = r72;
        }
        StringBuilder sb2 = new StringBuilder(size);
        t.f1(arrayList3, sb2, "\n", null, null, null, 124);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    public static String s(String str) throws IOException {
        kotlin.jvm.internal.h.f(str, "<this>");
        if (!(!j.y("|"))) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        List<String> listR = n.R(str);
        int size = (listR.size() * 0) + str.length();
        int r12 = b8.f.M(listR);
        ArrayList arrayList = new ArrayList();
        int r52 = 0;
        for (Object obj : listR) {
            int r72 = r52 + 1;
            String strInvoke = null;
            if (r52 < 0) {
                b8.f.k0();
                throw null;
            }
            String str2 = (String) obj;
            if ((r52 != 0 && r52 != r12) || !j.y(str2)) {
                int length = str2.length();
                int r92 = 0;
                while (true) {
                    if (r92 >= length) {
                        r92 = -1;
                        break;
                    }
                    if (!a6.a.t(str2.charAt(r92))) {
                        break;
                    }
                    r92++;
                }
                if (r92 != -1 && j.E(str2, "|", false, r92)) {
                    strInvoke = str2.substring("|".length() + r92);
                    kotlin.jvm.internal.h.e(strInvoke, "this as java.lang.String).substring(startIndex)");
                }
                if (strInvoke == null || (strInvoke = e.f10371a.invoke(strInvoke)) == null) {
                    strInvoke = str2;
                }
            }
            if (strInvoke != null) {
                arrayList.add(strInvoke);
            }
            r52 = r72;
        }
        StringBuilder sb2 = new StringBuilder(size);
        t.f1(arrayList, sb2, "\n", null, null, null, 124);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }
}
