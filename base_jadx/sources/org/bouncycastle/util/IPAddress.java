package org.bouncycastle.util;

/* loaded from: classes2.dex */
public class IPAddress {
    private static boolean isParseable(String str, int r52, int r6, int r72, int r82, boolean z10, int r10, int r11) {
        int r02 = r6 - r52;
        if ((r02 > r82) || (r02 < 1)) {
            return false;
        }
        if (((r02 > 1) && (!z10)) && Character.digit(str.charAt(r52), r72) <= 0) {
            return false;
        }
        int r83 = 0;
        while (r52 < r6) {
            int r92 = r52 + 1;
            int r53 = Character.digit(str.charAt(r52), r72);
            if (r53 < 0) {
                return false;
            }
            r83 = (r83 * r72) + r53;
            r52 = r92;
        }
        return (r83 >= r10) & (r83 <= r11);
    }

    private static boolean isParseableIPv4Mask(String str) {
        return isParseable(str, 0, str.length(), 10, 2, false, 0, 32);
    }

    private static boolean isParseableIPv4Octet(String str, int r92, int r10) {
        return isParseable(str, r92, r10, 10, 3, true, 0, 255);
    }

    private static boolean isParseableIPv6Mask(String str) {
        return isParseable(str, 0, str.length(), 10, 3, false, 1, 128);
    }

    private static boolean isParseableIPv6Segment(String str, int r92, int r10) {
        return isParseable(str, r92, r10, 16, 4, true, 0, 65535);
    }

    public static boolean isValid(String str) {
        return isValidIPv4(str) || isValidIPv6(str);
    }

    public static boolean isValidIPv4(String str) {
        int length = str.length();
        if (length < 7 || length > 15) {
            return false;
        }
        int r32 = 0;
        for (int r12 = 0; r12 < 3; r12++) {
            int r42 = str.indexOf(46, r32);
            if (!isParseableIPv4Octet(str, r32, r42)) {
                return false;
            }
            r32 = r42 + 1;
        }
        return isParseableIPv4Octet(str, r32, length);
    }

    public static boolean isValidIPv4WithNetmask(String str) {
        int r02 = str.indexOf("/");
        if (r02 < 1) {
            return false;
        }
        String strSubstring = str.substring(0, r02);
        String strSubstring2 = str.substring(r02 + 1);
        if (isValidIPv4(strSubstring)) {
            return isValidIPv4(strSubstring2) || isParseableIPv4Mask(strSubstring2);
        }
        return false;
    }

    public static boolean isValidIPv6(String str) {
        int r52;
        if (str.length() == 0) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt != ':' && Character.digit(cCharAt, 16) < 0) {
            return false;
        }
        String strConcat = str.concat(":");
        int r02 = 0;
        int r32 = 0;
        boolean z10 = false;
        while (r02 < strConcat.length() && (r52 = strConcat.indexOf(58, r02)) >= r02) {
            if (r32 == 8) {
                return false;
            }
            if (r02 != r52) {
                String strSubstring = strConcat.substring(r02, r52);
                if (r52 == strConcat.length() - 1 && strSubstring.indexOf(46) > 0) {
                    r32++;
                    if (r32 == 8 || !isValidIPv4(strSubstring)) {
                        return false;
                    }
                } else if (!isParseableIPv6Segment(strConcat, r02, r52)) {
                    return false;
                }
            } else {
                if (r52 != 1 && r52 != strConcat.length() - 1 && z10) {
                    return false;
                }
                z10 = true;
            }
            r02 = r52 + 1;
            r32++;
        }
        return r32 == 8 || z10;
    }

    public static boolean isValidIPv6WithNetmask(String str) {
        int r02 = str.indexOf("/");
        if (r02 < 1) {
            return false;
        }
        String strSubstring = str.substring(0, r02);
        String strSubstring2 = str.substring(r02 + 1);
        if (isValidIPv6(strSubstring)) {
            return isValidIPv6(strSubstring2) || isParseableIPv6Mask(strSubstring2);
        }
        return false;
    }

    public static boolean isValidWithNetMask(String str) {
        return isValidIPv4WithNetmask(str) || isValidIPv6WithNetmask(str);
    }
}
