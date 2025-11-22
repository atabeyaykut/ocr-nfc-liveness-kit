package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public final class s {
    public static int a(int r32, byte[] bArr, int r52, int r6, t tVar) throws b1 {
        if ((r32 >>> 3) == 0) {
            throw new b1("Protocol message contained an invalid tag (zero).");
        }
        int r02 = r32 & 7;
        if (r02 == 0) {
            return h(bArr, r52, tVar);
        }
        if (r02 == 1) {
            return r52 + 8;
        }
        if (r02 == 2) {
            return e(bArr, r52, tVar) + tVar.f3312a;
        }
        if (r02 != 3) {
            if (r02 == 5) {
                return r52 + 4;
            }
            throw new b1("Protocol message contained an invalid tag (zero).");
        }
        int r33 = (r32 & (-8)) | 4;
        int r03 = 0;
        while (r52 < r6) {
            r52 = e(bArr, r52, tVar);
            r03 = tVar.f3312a;
            if (r03 == r33) {
                break;
            }
            r52 = a(r03, bArr, r52, r6, tVar);
        }
        if (r52 > r6 || r03 != r33) {
            throw b1.b();
        }
        return r52;
    }

    public static int b(int r22, byte[] bArr, int r42, int r52, a1 a1Var, t tVar) {
        w0 w0Var = (w0) a1Var;
        int r43 = e(bArr, r42, tVar);
        while (true) {
            w0Var.l(tVar.f3312a);
            if (r43 >= r52) {
                break;
            }
            int r02 = e(bArr, r43, tVar);
            if (r22 != tVar.f3312a) {
                break;
            }
            r43 = e(bArr, r02, tVar);
        }
        return r43;
    }

    public static int c(int r92, byte[] bArr, int r11, int r12, b3 b3Var, t tVar) throws IOException {
        if ((r92 >>> 3) == 0) {
            throw new b1("Protocol message contained an invalid tag (zero).");
        }
        int r02 = r92 & 7;
        if (r02 == 0) {
            int r10 = h(bArr, r11, tVar);
            b3Var.c(r92, Long.valueOf(tVar.f3313b));
            return r10;
        }
        if (r02 == 1) {
            b3Var.c(r92, Long.valueOf(l(r11, bArr)));
            return r11 + 8;
        }
        if (r02 == 2) {
            int r112 = e(bArr, r11, tVar);
            int r122 = tVar.f3312a;
            b3Var.c(r92, r122 == 0 ? x.f3341b : x.u(bArr, r112, r122));
            return r112 + r122;
        }
        if (r02 != 3) {
            if (r02 != 5) {
                throw new b1("Protocol message contained an invalid tag (zero).");
            }
            b3Var.c(r92, Integer.valueOf(i(r11, bArr)));
            return r11 + 4;
        }
        b3 b3Var2 = new b3();
        int r13 = (r92 & (-8)) | 4;
        int r22 = 0;
        while (true) {
            if (r11 >= r12) {
                break;
            }
            int r42 = e(bArr, r11, tVar);
            int r113 = tVar.f3312a;
            r22 = r113;
            if (r113 == r13) {
                r11 = r42;
                break;
            }
            int r23 = c(r22, bArr, r42, r12, b3Var2, tVar);
            r22 = r113;
            r11 = r23;
        }
        if (r11 > r12 || r22 != r13) {
            throw b1.b();
        }
        b3Var.c(r92, b3Var2);
        return r11;
    }

    public static int d(int r12, byte[] bArr, int r32, t tVar) {
        int r22;
        int r23;
        int r13 = r12 & CertificateBody.profileType;
        int r02 = r32 + 1;
        byte b10 = bArr[r32];
        if (b10 < 0) {
            int r14 = r13 | ((b10 & 127) << 7);
            int r33 = r02 + 1;
            byte b11 = bArr[r02];
            if (b11 >= 0) {
                r22 = b11 << 14;
            } else {
                r13 = r14 | ((b11 & 127) << 14);
                r02 = r33 + 1;
                byte b12 = bArr[r33];
                if (b12 >= 0) {
                    r23 = b12 << 21;
                } else {
                    r14 = r13 | ((b12 & 127) << 21);
                    r33 = r02 + 1;
                    byte b13 = bArr[r02];
                    if (b13 >= 0) {
                        r22 = b13 << 28;
                    } else {
                        int r15 = r14 | ((b13 & 127) << 28);
                        while (true) {
                            int r03 = r33 + 1;
                            if (bArr[r33] >= 0) {
                                tVar.f3312a = r15;
                                return r03;
                            }
                            r33 = r03;
                        }
                    }
                }
            }
            tVar.f3312a = r14 | r22;
            return r33;
        }
        r23 = b10 << 7;
        tVar.f3312a = r13 | r23;
        return r02;
    }

    public static int e(byte[] bArr, int r22, t tVar) {
        int r02 = r22 + 1;
        byte b10 = bArr[r22];
        if (b10 < 0) {
            return d(b10, bArr, r02, tVar);
        }
        tVar.f3312a = b10;
        return r02;
    }

    public static int f(byte[] bArr, int r32, a1 a1Var, t tVar) throws IOException {
        w0 w0Var = (w0) a1Var;
        int r33 = e(bArr, r32, tVar);
        int r02 = tVar.f3312a + r33;
        while (r33 < r02) {
            r33 = e(bArr, r33, tVar);
            w0Var.l(tVar.f3312a);
        }
        if (r33 == r02) {
            return r33;
        }
        throw b1.a();
    }

    public static void g(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IllegalAccessException, InvocationTargetException {
        if (obj != null) {
            if (!(obj instanceof y3)) {
                String strP = p(str);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(strP);
                stringBuffer2.append(": ");
                if (obj instanceof String) {
                    String strConcat = (String) obj;
                    if (!strConcat.startsWith("http") && strConcat.length() > 200) {
                        strConcat = String.valueOf(strConcat.substring(0, 200)).concat("[...]");
                    }
                    int length = strConcat.length();
                    StringBuilder sb2 = new StringBuilder(length);
                    for (int r42 = 0; r42 < length; r42++) {
                        char cCharAt = strConcat.charAt(r42);
                        if (cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\'') {
                            sb2.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            sb2.append(cCharAt);
                        }
                    }
                    String string = sb2.toString();
                    stringBuffer2.append("\"");
                    stringBuffer2.append(string);
                    stringBuffer2.append("\"");
                } else if (obj instanceof byte[]) {
                    stringBuffer2.append('\"');
                    for (byte b10 : (byte[]) obj) {
                        int r32 = b10 & 255;
                        if (r32 == 92 || r32 == 34) {
                            stringBuffer2.append('\\');
                        } else {
                            if (r32 < 32 || r32 >= 127) {
                                stringBuffer2.append(String.format("\\%03o", Integer.valueOf(r32)));
                            }
                        }
                        stringBuffer2.append((char) r32);
                    }
                    stringBuffer2.append('\"');
                } else {
                    stringBuffer2.append(obj);
                }
                stringBuffer2.append("\n");
                return;
            }
            int length2 = stringBuffer.length();
            if (str != null) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(p(str));
                stringBuffer2.append(" <\n");
                stringBuffer.append("  ");
            }
            Class<?> cls = obj.getClass();
            for (Field field : cls.getFields()) {
                int modifiers = field.getModifiers();
                String name = field.getName();
                if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                    Class<?> type = field.getType();
                    Object obj2 = field.get(obj);
                    if (!type.isArray() || type.getComponentType() == Byte.TYPE) {
                        g(name, obj2, stringBuffer, stringBuffer2);
                    } else {
                        int length3 = obj2 == null ? 0 : Array.getLength(obj2);
                        for (int r10 = 0; r10 < length3; r10++) {
                            g(name, Array.get(obj2, r10), stringBuffer, stringBuffer2);
                        }
                    }
                }
            }
            for (Method method : cls.getMethods()) {
                String name2 = method.getName();
                if (name2.startsWith("set")) {
                    String strSubstring = name2.substring(3);
                    try {
                        String strValueOf = String.valueOf(strSubstring);
                        if (((Boolean) cls.getMethod(strValueOf.length() != 0 ? "has".concat(strValueOf) : new String("has"), new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                            String strValueOf2 = String.valueOf(strSubstring);
                            g(strSubstring, cls.getMethod(strValueOf2.length() != 0 ? "get".concat(strValueOf2) : new String("get"), new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                }
            }
            if (str != null) {
                stringBuffer.setLength(length2);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
        }
    }

    public static int h(byte[] bArr, int r10, t tVar) {
        int r02 = r10 + 1;
        long j10 = bArr[r10];
        if (j10 >= 0) {
            tVar.f3313b = j10;
            return r02;
        }
        int r102 = r02 + 1;
        byte b10 = bArr[r02];
        long j11 = (j10 & 127) | ((b10 & 127) << 7);
        int r32 = 7;
        while (b10 < 0) {
            int r03 = r102 + 1;
            r32 += 7;
            j11 |= (r10 & 127) << r32;
            b10 = bArr[r102];
            r102 = r03;
        }
        tVar.f3313b = j11;
        return r102;
    }

    public static int i(int r22, byte[] bArr) {
        return ((bArr[r22 + 3] & 255) << 24) | (bArr[r22] & 255) | ((bArr[r22 + 1] & 255) << 8) | ((bArr[r22 + 2] & 255) << 16);
    }

    public static int j(byte[] bArr, int r42, t tVar) {
        int r43 = e(bArr, r42, tVar);
        int r02 = tVar.f3312a;
        if (r02 == 0) {
            tVar.f3314c = "";
            return r43;
        }
        tVar.f3314c = new String(bArr, r43, r02, x0.f3344a);
        return r43 + r02;
    }

    public static int k(byte[] bArr, int r52, t tVar) throws IOException {
        int r53 = e(bArr, r52, tVar);
        int r02 = tVar.f3312a;
        if (r02 == 0) {
            tVar.f3314c = "";
            return r53;
        }
        int r12 = r53 + r02;
        if (!i3.c(bArr, r53, r12)) {
            throw b1.c();
        }
        tVar.f3314c = new String(bArr, r53, r02, x0.f3344a);
        return r12;
    }

    public static long l(int r72, byte[] bArr) {
        return ((bArr[r72 + 7] & 255) << 56) | (bArr[r72] & 255) | ((bArr[r72 + 1] & 255) << 8) | ((bArr[r72 + 2] & 255) << 16) | ((bArr[r72 + 3] & 255) << 24) | ((bArr[r72 + 4] & 255) << 32) | ((bArr[r72 + 5] & 255) << 40) | ((bArr[r72 + 6] & 255) << 48);
    }

    public static double m(int r02, byte[] bArr) {
        return Double.longBitsToDouble(l(r02, bArr));
    }

    public static int n(byte[] bArr, int r22, t tVar) {
        int r23 = e(bArr, r22, tVar);
        int r02 = tVar.f3312a;
        if (r02 == 0) {
            tVar.f3314c = x.f3341b;
            return r23;
        }
        tVar.f3314c = x.u(bArr, r23, r02);
        return r23 + r02;
    }

    public static float o(int r02, byte[] bArr) {
        return Float.intBitsToFloat(i(r02, bArr));
    }

    public static String p(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int r12 = 0; r12 < str.length(); r12++) {
            char cCharAt = str.charAt(r12);
            if (r12 == 0) {
                cCharAt = Character.toLowerCase(cCharAt);
            } else if (Character.isUpperCase(cCharAt)) {
                stringBuffer.append('_');
                cCharAt = Character.toLowerCase(cCharAt);
            }
            stringBuffer.append(cCharAt);
        }
        return stringBuffer.toString();
    }
}
