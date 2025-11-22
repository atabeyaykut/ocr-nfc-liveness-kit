package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.bouncycastle.asn1.BERTags;

/* loaded from: classes.dex */
public abstract class w {
    public static void e(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int r12 = byteBuffer.position();
        int r22 = 0;
        while (r22 < length) {
            try {
                char cCharAt = charSequence.charAt(r22);
                if (cCharAt >= 128) {
                    break;
                }
                byteBuffer.put(r12 + r22, (byte) cCharAt);
                r22++;
            } catch (IndexOutOfBoundsException unused) {
                int r82 = Math.max(r22, (r12 - byteBuffer.position()) + 1) + byteBuffer.position();
                char cCharAt2 = charSequence.charAt(r22);
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Failed writing ");
                sb2.append(cCharAt2);
                sb2.append(" at index ");
                sb2.append(r82);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            }
        }
        if (r22 == length) {
            byteBuffer.position(r12 + r22);
            return;
        }
        r12 += r22;
        while (r22 < length) {
            char cCharAt3 = charSequence.charAt(r22);
            if (cCharAt3 < 128) {
                byteBuffer.put(r12, (byte) cCharAt3);
            } else if (cCharAt3 < 2048) {
                int r52 = r12 + 1;
                try {
                    byteBuffer.put(r12, (byte) ((cCharAt3 >>> 6) | 192));
                    byteBuffer.put(r52, (byte) ((cCharAt3 & '?') | 128));
                    r12 = r52;
                } catch (IndexOutOfBoundsException unused2) {
                    r12 = r52;
                    int r822 = Math.max(r22, (r12 - byteBuffer.position()) + 1) + byteBuffer.position();
                    char cCharAt22 = charSequence.charAt(r22);
                    StringBuilder sb22 = new StringBuilder(37);
                    sb22.append("Failed writing ");
                    sb22.append(cCharAt22);
                    sb22.append(" at index ");
                    sb22.append(r822);
                    throw new ArrayIndexOutOfBoundsException(sb22.toString());
                }
            } else {
                if (cCharAt3 >= 55296 && 57343 >= cCharAt3) {
                    int r53 = r22 + 1;
                    if (r53 != length) {
                        try {
                            char cCharAt4 = charSequence.charAt(r53);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                int r42 = r12 + 1;
                                try {
                                    byteBuffer.put(r12, (byte) ((codePoint >>> 18) | 240));
                                    int r13 = r42 + 1;
                                    byteBuffer.put(r42, (byte) (((codePoint >>> 12) & 63) | 128));
                                    int r43 = r13 + 1;
                                    byteBuffer.put(r13, (byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put(r43, (byte) ((codePoint & 63) | 128));
                                    r12 = r43;
                                    r22 = r53;
                                } catch (IndexOutOfBoundsException unused3) {
                                    r12 = r42;
                                    r22 = r53;
                                    int r8222 = Math.max(r22, (r12 - byteBuffer.position()) + 1) + byteBuffer.position();
                                    char cCharAt222 = charSequence.charAt(r22);
                                    StringBuilder sb222 = new StringBuilder(37);
                                    sb222.append("Failed writing ");
                                    sb222.append(cCharAt222);
                                    sb222.append(" at index ");
                                    sb222.append(r8222);
                                    throw new ArrayIndexOutOfBoundsException(sb222.toString());
                                }
                            } else {
                                r22 = r53;
                            }
                        } catch (IndexOutOfBoundsException unused4) {
                        }
                    }
                    throw new k3(r22, length);
                }
                int r54 = r12 + 1;
                byteBuffer.put(r12, (byte) ((cCharAt3 >>> '\f') | BERTags.FLAGS));
                r12 = r54 + 1;
                byteBuffer.put(r54, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                byteBuffer.put(r12, (byte) ((cCharAt3 & '?') | 128));
            }
            r22++;
            r12++;
        }
        byteBuffer.position(r12);
    }

    public abstract void a(byte[] bArr, int r22, int r32) throws IOException;

    public abstract int b(int r12, byte[] bArr, int r32);

    public abstract int c(CharSequence charSequence, byte[] bArr, int r32, int r42);

    public abstract void d(CharSequence charSequence, ByteBuffer byteBuffer);
}
