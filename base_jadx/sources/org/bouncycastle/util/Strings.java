package org.bouncycastle.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Vector;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.util.encoders.UTF8;

/* loaded from: classes2.dex */
public final class Strings {
    private static String LINE_SEPARATOR;

    public static class StringListImpl extends ArrayList<String> implements StringList {
        private StringListImpl() {
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public void add(int r12, String str) {
            super.add(r12, (int) str);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(String str) {
            return super.add((StringListImpl) str);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List, org.bouncycastle.util.StringList
        public /* bridge */ /* synthetic */ String get(int r12) {
            return (String) super.get(r12);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public String set(int r12, String str) {
            return (String) super.set(r12, (int) str);
        }

        @Override // org.bouncycastle.util.StringList
        public String[] toStringArray() {
            int size = size();
            String[] strArr = new String[size];
            for (int r22 = 0; r22 != size; r22++) {
                strArr[r22] = get(r22);
            }
            return strArr;
        }

        @Override // org.bouncycastle.util.StringList
        public String[] toStringArray(int r52, int r6) {
            String[] strArr = new String[r6 - r52];
            for (int r12 = r52; r12 != size() && r12 != r6; r12++) {
                strArr[r12 - r52] = get(r12);
            }
            return strArr;
        }
    }

    static {
        try {
            try {
                LINE_SEPARATOR = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: org.bouncycastle.util.Strings.1
                    @Override // java.security.PrivilegedAction
                    public String run() {
                        return System.getProperty("line.separator");
                    }
                });
            } catch (Exception unused) {
                LINE_SEPARATOR = String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
            LINE_SEPARATOR = "\n";
        }
    }

    public static char[] asCharArray(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int r22 = 0; r22 != length; r22++) {
            cArr[r22] = (char) (bArr[r22] & 255);
        }
        return cArr;
    }

    public static boolean constantTimeAreEqual(String str, String str2) {
        boolean z10 = str.length() == str2.length();
        int length = str.length();
        if (z10) {
            for (int r42 = 0; r42 != length; r42++) {
                z10 &= str.charAt(r42) == str2.charAt(r42);
            }
        } else {
            for (int r82 = 0; r82 != length; r82++) {
                z10 &= str.charAt(r82) == ' ';
            }
        }
        return z10;
    }

    public static String fromByteArray(byte[] bArr) {
        return new String(asCharArray(bArr));
    }

    public static String fromUTF8ByteArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int r32 = UTF8.transcodeToUTF16(bArr, cArr);
        if (r32 >= 0) {
            return new String(cArr, 0, r32);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String fromUTF8ByteArray(byte[] bArr, int r22, int r32) {
        char[] cArr = new char[r32];
        int r12 = UTF8.transcodeToUTF16(bArr, r22, r32, cArr);
        if (r12 >= 0) {
            return new String(cArr, 0, r12);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String lineSeparator() {
        return LINE_SEPARATOR;
    }

    public static StringList newList() {
        return new StringListImpl();
    }

    public static String[] split(String str, char c10) {
        int r22;
        Vector vector = new Vector();
        boolean z10 = true;
        while (true) {
            if (!z10) {
                break;
            }
            int r32 = str.indexOf(c10);
            if (r32 > 0) {
                vector.addElement(str.substring(0, r32));
                str = str.substring(r32 + 1);
            } else {
                vector.addElement(str);
                z10 = false;
            }
        }
        int size = vector.size();
        String[] strArr = new String[size];
        for (r22 = 0; r22 != size; r22++) {
            strArr[r22] = (String) vector.elementAt(r22);
        }
        return strArr;
    }

    public static int toByteArray(String str, byte[] bArr, int r6) {
        int length = str.length();
        for (int r12 = 0; r12 < length; r12++) {
            bArr[r6 + r12] = (byte) str.charAt(r12);
        }
        return length;
    }

    public static byte[] toByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int r22 = 0; r22 != length; r22++) {
            bArr[r22] = (byte) str.charAt(r22);
        }
        return bArr;
    }

    public static byte[] toByteArray(char[] cArr) {
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int r22 = 0; r22 != length; r22++) {
            bArr[r22] = (byte) cArr[r22];
        }
        return bArr;
    }

    public static String toLowerCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z10 = false;
        for (int r12 = 0; r12 != charArray.length; r12++) {
            char c10 = charArray[r12];
            if ('A' <= c10 && 'Z' >= c10) {
                charArray[r12] = (char) ((c10 - 'A') + 97);
                z10 = true;
            }
        }
        return z10 ? new String(charArray) : str;
    }

    public static void toUTF8ByteArray(char[] cArr, OutputStream outputStream) throws IOException {
        int r32;
        int r12;
        int r02 = 0;
        while (r02 < cArr.length) {
            char c10 = cArr[r02];
            int r13 = c10;
            if (c10 >= 128) {
                if (c10 < 2048) {
                    r32 = (c10 >> 6) | 192;
                } else if (c10 < 55296 || c10 > 57343) {
                    outputStream.write((c10 >> '\f') | BERTags.FLAGS);
                    r32 = ((c10 >> 6) & 63) | 128;
                } else {
                    r02++;
                    if (r02 >= cArr.length) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    char c11 = cArr[r02];
                    if (c10 > 56319) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    int r14 = (((c10 & 1023) << 10) | (c11 & 1023)) + 65536;
                    outputStream.write((r14 >> 18) | 240);
                    outputStream.write(((r14 >> 12) & 63) | 128);
                    outputStream.write(((r14 >> 6) & 63) | 128);
                    r12 = r14;
                    r13 = (r12 & 63) | 128;
                }
                outputStream.write(r32);
                r12 = c10;
                r13 = (r12 & 63) | 128;
            }
            outputStream.write(r13);
            r02++;
        }
    }

    public static byte[] toUTF8ByteArray(String str) {
        return toUTF8ByteArray(str.toCharArray());
    }

    public static byte[] toUTF8ByteArray(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            toUTF8ByteArray(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    public static String toUpperCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z10 = false;
        for (int r12 = 0; r12 != charArray.length; r12++) {
            char c10 = charArray[r12];
            if ('a' <= c10 && 'z' >= c10) {
                charArray[r12] = (char) ((c10 - 'a') + 65);
                z10 = true;
            }
        }
        return z10 ? new String(charArray) : str;
    }
}
