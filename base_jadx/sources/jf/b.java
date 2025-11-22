package jf;

import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class b {
    public static byte[] a(String str) throws kf.a {
        c cVar = c.f8500e;
        cVar.getClass();
        String upperCase = str.trim().replaceAll("-", "").replaceAll(" ", "").replaceFirst("[=]*$", "").toUpperCase(Locale.US);
        if (upperCase.length() == 0) {
            return new byte[0];
        }
        int length = upperCase.length();
        int r32 = cVar.f8503c;
        byte[] bArr = new byte[(length * r32) / 8];
        int r6 = 0;
        int r72 = 0;
        int r82 = 0;
        for (char c10 : upperCase.toCharArray()) {
            HashMap<Character, Integer> map = cVar.f8504d;
            if (!map.containsKey(Character.valueOf(c10))) {
                throw new kf.a("Illegal character: " + c10);
            }
            r6 = (r6 << r32) | (map.get(Character.valueOf(c10)).intValue() & cVar.f8502b);
            r72 += r32;
            if (r72 >= 8) {
                r72 -= 8;
                bArr[r82] = (byte) (r6 >> r72);
                r82++;
            }
        }
        return bArr;
    }
}
