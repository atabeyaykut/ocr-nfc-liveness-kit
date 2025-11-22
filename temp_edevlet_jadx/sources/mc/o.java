package mc;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class o extends n {
    public static final String j0(int r12, String str) {
        kotlin.jvm.internal.h.f(str, "<this>");
        if (!(r12 >= 0)) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Requested character count ", r12, " is less than zero.").toString());
        }
        int length = str.length();
        if (r12 > length) {
            r12 = length;
        }
        String strSubstring = str.substring(r12);
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final char k0(CharSequence charSequence) {
        kotlin.jvm.internal.h.f(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        return charSequence.charAt(0);
    }
}
