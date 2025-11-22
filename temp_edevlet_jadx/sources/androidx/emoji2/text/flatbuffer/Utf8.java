package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import net.sf.scuba.smartcards.ISO7816;
import org.jmrtd.PassportService;

/* loaded from: classes.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    public static class DecodeUtil {
        public static void handleFourBytes(byte b10, byte b11, byte b12, byte b13, char[] cArr, int r72) throws IllegalArgumentException {
            if (!isNotTrailingByte(b11)) {
                if ((((b11 + ISO7816.INS_MANAGE_CHANNEL) + (b10 << 28)) >> 30) == 0 && !isNotTrailingByte(b12) && !isNotTrailingByte(b13)) {
                    int r22 = ((b10 & 7) << 18) | (trailingByteValue(b11) << 12) | (trailingByteValue(b12) << 6) | trailingByteValue(b13);
                    cArr[r72] = highSurrogate(r22);
                    cArr[r72 + 1] = lowSurrogate(r22);
                    return;
                }
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        public static void handleOneByte(byte b10, char[] cArr, int r22) {
            cArr[r22] = (char) b10;
        }

        public static void handleThreeBytes(byte b10, byte b11, byte b12, char[] cArr, int r6) throws IllegalArgumentException {
            if (isNotTrailingByte(b11) || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || isNotTrailingByte(b12)))) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            cArr[r6] = (char) (((b10 & PassportService.SFI_DG15) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12));
        }

        public static void handleTwoBytes(byte b10, byte b11, char[] cArr, int r42) throws IllegalArgumentException {
            if (b10 < -62) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            }
            if (isNotTrailingByte(b11)) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            cArr[r42] = (char) (((b10 & 31) << 6) | trailingByteValue(b11));
        }

        private static char highSurrogate(int r12) {
            return (char) ((r12 >>> 10) + 55232);
        }

        private static boolean isNotTrailingByte(byte b10) {
            return b10 > -65;
        }

        public static boolean isOneByte(byte b10) {
            return b10 >= 0;
        }

        public static boolean isThreeBytes(byte b10) {
            return b10 < -16;
        }

        public static boolean isTwoBytes(byte b10) {
            return b10 < -32;
        }

        private static char lowSurrogate(int r12) {
            return (char) ((r12 & 1023) + 56320);
        }

        private static int trailingByteValue(byte b10) {
            return b10 & 63;
        }
    }

    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int r32, int r42) {
            super(androidx.constraintlayout.core.a.c("Unpaired surrogate at index ", r32, " of ", r42));
        }
    }

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int r22, int r32);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
