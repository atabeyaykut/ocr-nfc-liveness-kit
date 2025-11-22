package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8;
import java.nio.ByteBuffer;
import org.bouncycastle.asn1.BERTags;

/* loaded from: classes.dex */
public final class Utf8Safe extends Utf8 {

    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int r32, int r42) {
            super(androidx.constraintlayout.core.a.c("Unpaired surrogate at index ", r32, " of ", r42));
        }
    }

    private static int computeEncodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int r12 = 0;
        while (r12 < length && charSequence.charAt(r12) < 128) {
            r12++;
        }
        int r22 = length;
        while (true) {
            if (r12 < length) {
                char cCharAt = charSequence.charAt(r12);
                if (cCharAt >= 2048) {
                    r22 += encodedLengthGeneral(charSequence, r12);
                    break;
                }
                r22 += (127 - cCharAt) >>> 31;
                r12++;
            } else {
                break;
            }
        }
        if (r22 >= length) {
            return r22;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (r22 + 4294967296L));
    }

    public static String decodeUtf8Array(byte[] bArr, int r12, int r13) throws IllegalArgumentException {
        if ((r12 | r13 | ((bArr.length - r12) - r13)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(r12), Integer.valueOf(r13)));
        }
        int r02 = r12 + r13;
        char[] cArr = new char[r13];
        int r32 = 0;
        while (r12 < r02) {
            byte b10 = bArr[r12];
            if (!Utf8.DecodeUtil.isOneByte(b10)) {
                break;
            }
            r12++;
            Utf8.DecodeUtil.handleOneByte(b10, cArr, r32);
            r32++;
        }
        int r82 = r32;
        while (r12 < r02) {
            int r33 = r12 + 1;
            byte b11 = bArr[r12];
            if (Utf8.DecodeUtil.isOneByte(b11)) {
                int r42 = r82 + 1;
                Utf8.DecodeUtil.handleOneByte(b11, cArr, r82);
                while (r33 < r02) {
                    byte b12 = bArr[r33];
                    if (!Utf8.DecodeUtil.isOneByte(b12)) {
                        break;
                    }
                    r33++;
                    Utf8.DecodeUtil.handleOneByte(b12, cArr, r42);
                    r42++;
                }
                r12 = r33;
                r82 = r42;
            } else if (Utf8.DecodeUtil.isTwoBytes(b11)) {
                if (r33 >= r02) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                Utf8.DecodeUtil.handleTwoBytes(b11, bArr[r33], cArr, r82);
                r12 = r33 + 1;
                r82++;
            } else if (Utf8.DecodeUtil.isThreeBytes(b11)) {
                if (r33 >= r02 - 1) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                int r43 = r33 + 1;
                Utf8.DecodeUtil.handleThreeBytes(b11, bArr[r33], bArr[r43], cArr, r82);
                r12 = r43 + 1;
                r82++;
            } else {
                if (r33 >= r02 - 2) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                int r44 = r33 + 1;
                byte b13 = bArr[r33];
                int r34 = r44 + 1;
                Utf8.DecodeUtil.handleFourBytes(b11, b13, bArr[r44], bArr[r34], cArr, r82);
                r12 = r34 + 1;
                r82 = r82 + 1 + 1;
            }
        }
        return new String(cArr, 0, r82);
    }

    public static String decodeUtf8Buffer(ByteBuffer byteBuffer, int r12, int r13) throws IllegalArgumentException {
        if ((r12 | r13 | ((byteBuffer.limit() - r12) - r13)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(r12), Integer.valueOf(r13)));
        }
        int r02 = r12 + r13;
        char[] cArr = new char[r13];
        int r32 = 0;
        while (r12 < r02) {
            byte b10 = byteBuffer.get(r12);
            if (!Utf8.DecodeUtil.isOneByte(b10)) {
                break;
            }
            r12++;
            Utf8.DecodeUtil.handleOneByte(b10, cArr, r32);
            r32++;
        }
        int r82 = r32;
        while (r12 < r02) {
            int r33 = r12 + 1;
            byte b11 = byteBuffer.get(r12);
            if (Utf8.DecodeUtil.isOneByte(b11)) {
                int r42 = r82 + 1;
                Utf8.DecodeUtil.handleOneByte(b11, cArr, r82);
                while (r33 < r02) {
                    byte b12 = byteBuffer.get(r33);
                    if (!Utf8.DecodeUtil.isOneByte(b12)) {
                        break;
                    }
                    r33++;
                    Utf8.DecodeUtil.handleOneByte(b12, cArr, r42);
                    r42++;
                }
                r12 = r33;
                r82 = r42;
            } else if (Utf8.DecodeUtil.isTwoBytes(b11)) {
                if (r33 >= r02) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                Utf8.DecodeUtil.handleTwoBytes(b11, byteBuffer.get(r33), cArr, r82);
                r12 = r33 + 1;
                r82++;
            } else if (Utf8.DecodeUtil.isThreeBytes(b11)) {
                if (r33 >= r02 - 1) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                int r43 = r33 + 1;
                Utf8.DecodeUtil.handleThreeBytes(b11, byteBuffer.get(r33), byteBuffer.get(r43), cArr, r82);
                r12 = r43 + 1;
                r82++;
            } else {
                if (r33 >= r02 - 2) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                int r44 = r33 + 1;
                byte b13 = byteBuffer.get(r33);
                int r34 = r44 + 1;
                Utf8.DecodeUtil.handleFourBytes(b11, b13, byteBuffer.get(r44), byteBuffer.get(r34), cArr, r82);
                r12 = r34 + 1;
                r82 = r82 + 1 + 1;
            }
        }
        return new String(cArr, 0, r82);
    }

    private static int encodeUtf8Array(CharSequence charSequence, byte[] bArr, int r92, int r10) {
        int r42;
        int r82;
        int r32;
        char cCharAt;
        int length = charSequence.length();
        int r102 = r10 + r92;
        int r12 = 0;
        while (r12 < length && (r32 = r12 + r92) < r102 && (cCharAt = charSequence.charAt(r12)) < 128) {
            bArr[r32] = (byte) cCharAt;
            r12++;
        }
        if (r12 == length) {
            return r92 + length;
        }
        int r93 = r92 + r12;
        while (r12 < length) {
            char cCharAt2 = charSequence.charAt(r12);
            if (cCharAt2 >= 128 || r93 >= r102) {
                if (cCharAt2 < 2048 && r93 <= r102 - 2) {
                    int r43 = r93 + 1;
                    bArr[r93] = (byte) ((cCharAt2 >>> 6) | 960);
                    r93 = r43 + 1;
                    bArr[r43] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || r93 > r102 - 3) {
                        if (r93 > r102 - 4) {
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((r82 = r12 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(r82)))) {
                                throw new UnpairedSurrogateException(r12, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + r93);
                        }
                        int r44 = r12 + 1;
                        if (r44 != charSequence.length()) {
                            char cCharAt3 = charSequence.charAt(r44);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                int r33 = r93 + 1;
                                bArr[r93] = (byte) ((codePoint >>> 18) | 240);
                                int r94 = r33 + 1;
                                bArr[r33] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int r34 = r94 + 1;
                                bArr[r94] = (byte) (((codePoint >>> 6) & 63) | 128);
                                r93 = r34 + 1;
                                bArr[r34] = (byte) ((codePoint & 63) | 128);
                                r12 = r44;
                            } else {
                                r12 = r44;
                            }
                        }
                        throw new UnpairedSurrogateException(r12 - 1, length);
                    }
                    int r45 = r93 + 1;
                    bArr[r93] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int r95 = r45 + 1;
                    bArr[r45] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    r42 = r95 + 1;
                    bArr[r95] = (byte) ((cCharAt2 & '?') | 128);
                }
                r12++;
            } else {
                r42 = r93 + 1;
                bArr[r93] = (byte) cCharAt2;
            }
            r93 = r42;
            r12++;
        }
        return r93;
    }

    private static void encodeUtf8Buffer(CharSequence charSequence, ByteBuffer byteBuffer) {
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
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(r22) + " at index " + (Math.max(r22, (r12 - byteBuffer.position()) + 1) + byteBuffer.position()));
            }
        }
        if (r22 == length) {
            byteBuffer.position(r12 + r22);
            return;
        }
        r12 += r22;
        while (r22 < length) {
            char cCharAt2 = charSequence.charAt(r22);
            if (cCharAt2 < 128) {
                byteBuffer.put(r12, (byte) cCharAt2);
            } else if (cCharAt2 < 2048) {
                int r52 = r12 + 1;
                try {
                    byteBuffer.put(r12, (byte) ((cCharAt2 >>> 6) | 192));
                    byteBuffer.put(r52, (byte) ((cCharAt2 & '?') | 128));
                    r12 = r52;
                } catch (IndexOutOfBoundsException unused2) {
                    r12 = r52;
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(r22) + " at index " + (Math.max(r22, (r12 - byteBuffer.position()) + 1) + byteBuffer.position()));
                }
            } else {
                if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                    int r53 = r22 + 1;
                    if (r53 != length) {
                        try {
                            char cCharAt3 = charSequence.charAt(r53);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
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
                                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(r22) + " at index " + (Math.max(r22, (r12 - byteBuffer.position()) + 1) + byteBuffer.position()));
                                }
                            } else {
                                r22 = r53;
                            }
                        } catch (IndexOutOfBoundsException unused4) {
                        }
                    }
                    throw new UnpairedSurrogateException(r22, length);
                }
                int r54 = r12 + 1;
                byteBuffer.put(r12, (byte) ((cCharAt2 >>> '\f') | BERTags.FLAGS));
                r12 = r54 + 1;
                byteBuffer.put(r54, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                byteBuffer.put(r12, (byte) ((cCharAt2 & '?') | 128));
            }
            r22++;
            r12++;
        }
        byteBuffer.position(r12);
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int r52) {
        int length = charSequence.length();
        int r12 = 0;
        while (r52 < length) {
            char cCharAt = charSequence.charAt(r52);
            if (cCharAt < 2048) {
                r12 += (127 - cCharAt) >>> 31;
            } else {
                r12 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, r52) < 65536) {
                        throw new UnpairedSurrogateException(r52, length);
                    }
                    r52++;
                }
            }
            r52++;
        }
        return r12;
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int r32, int r42) throws IllegalArgumentException {
        return byteBuffer.hasArray() ? decodeUtf8Array(byteBuffer.array(), byteBuffer.arrayOffset() + r32, r42) : decodeUtf8Buffer(byteBuffer, r32, r42);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (!byteBuffer.hasArray()) {
            encodeUtf8Buffer(charSequence, byteBuffer);
        } else {
            int r02 = byteBuffer.arrayOffset();
            byteBuffer.position(encodeUtf8Array(charSequence, byteBuffer.array(), byteBuffer.position() + r02, byteBuffer.remaining()) - r02);
        }
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        return computeEncodedLength(charSequence);
    }
}
