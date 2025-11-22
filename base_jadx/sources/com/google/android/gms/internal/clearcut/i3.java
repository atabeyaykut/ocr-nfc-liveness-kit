package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class i3 {

    /* renamed from: a, reason: collision with root package name */
    public static final w f3160a;

    static {
        f3160a = g3.f && g3.f3145e ? new l3() : new j3();
    }

    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int r12 = 0;
        int r22 = 0;
        while (r22 < length && charSequence.charAt(r22) < 128) {
            r22++;
        }
        int r32 = length;
        while (true) {
            if (r22 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(r22);
            if (cCharAt < 2048) {
                r32 += (127 - cCharAt) >>> 31;
                r22++;
            } else {
                int length2 = charSequence.length();
                while (r22 < length2) {
                    char cCharAt2 = charSequence.charAt(r22);
                    if (cCharAt2 < 2048) {
                        r12 += (127 - cCharAt2) >>> 31;
                    } else {
                        r12 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, r22) < 65536) {
                                throw new k3(r22, length2);
                            }
                            r22++;
                        }
                    }
                    r22++;
                }
                r32 += r12;
            }
        }
        if (r32 >= length) {
            return r32;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(r32 + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        boolean zHasArray = byteBuffer.hasArray();
        w wVar = f3160a;
        if (zHasArray) {
            int r02 = byteBuffer.arrayOffset();
            byteBuffer.position(wVar.c(charSequence, byteBuffer.array(), byteBuffer.position() + r02, byteBuffer.remaining()) - r02);
        } else if (byteBuffer.isDirect()) {
            wVar.d(charSequence, byteBuffer);
        } else {
            w.e(charSequence, byteBuffer);
        }
    }

    public static boolean c(byte[] bArr, int r22, int r32) {
        return f3160a.b(r22, bArr, r32) == 0;
    }

    public static int d(byte[] bArr, int r72, int r82) {
        byte b10 = bArr[r72 - 1];
        int r83 = r82 - r72;
        if (r83 == 0) {
            if (b10 > -12) {
                b10 = -1;
            }
            return b10;
        }
        if (r83 == 1) {
            byte b11 = bArr[r72];
            if (b10 > -12 || b11 > -65) {
                return -1;
            }
            return b10 ^ (b11 << 8);
        }
        if (r83 != 2) {
            throw new AssertionError();
        }
        byte b12 = bArr[r72];
        byte b13 = bArr[r72 + 1];
        if (b10 > -12 || b12 > -65 || b13 > -65) {
            return -1;
        }
        return ((b12 << 8) ^ b10) ^ (b13 << 16);
    }
}
