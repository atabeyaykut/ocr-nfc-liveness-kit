package androidx.camera.core.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ExifAttribute {
    public static final long BYTES_OFFSET_UNKNOWN = -1;
    static final int IFD_FORMAT_BYTE = 1;
    static final int IFD_FORMAT_DOUBLE = 12;
    static final int IFD_FORMAT_SBYTE = 6;
    static final int IFD_FORMAT_SINGLE = 11;
    static final int IFD_FORMAT_SLONG = 9;
    static final int IFD_FORMAT_SRATIONAL = 10;
    static final int IFD_FORMAT_SSHORT = 8;
    static final int IFD_FORMAT_STRING = 2;
    static final int IFD_FORMAT_ULONG = 4;
    static final int IFD_FORMAT_UNDEFINED = 7;
    static final int IFD_FORMAT_URATIONAL = 5;
    static final int IFD_FORMAT_USHORT = 3;
    private static final String TAG = "ExifAttribute";
    public final byte[] bytes;
    public final long bytesOffset;
    public final int format;
    public final int numberOfComponents;
    static final Charset ASCII = StandardCharsets.US_ASCII;
    static final String[] IFD_FORMAT_NAMES = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    static final int[] IFD_FORMAT_BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] EXIF_ASCII_PREFIX = {65, 83, 67, 73, 73, 0, 0, 0};

    public ExifAttribute(int r12, int r22, long j10, byte[] bArr) {
        this.format = r12;
        this.numberOfComponents = r22;
        this.bytesOffset = j10;
        this.bytes = bArr;
    }

    public ExifAttribute(int r72, int r82, byte[] bArr) {
        this(r72, r82, -1L, bArr);
    }

    @NonNull
    public static ExifAttribute createByte(@NonNull String str) {
        if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
            return new ExifAttribute(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
        }
        byte[] bytes = str.getBytes(ASCII);
        return new ExifAttribute(1, bytes.length, bytes);
    }

    @NonNull
    public static ExifAttribute createDouble(double d10, @NonNull ByteOrder byteOrder) {
        return createDouble(new double[]{d10}, byteOrder);
    }

    @NonNull
    public static ExifAttribute createDouble(@NonNull double[] dArr, @NonNull ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[IFD_FORMAT_BYTES_PER_FORMAT[12] * dArr.length]);
        byteBufferWrap.order(byteOrder);
        for (double d10 : dArr) {
            byteBufferWrap.putDouble(d10);
        }
        return new ExifAttribute(12, dArr.length, byteBufferWrap.array());
    }

    @NonNull
    public static ExifAttribute createSLong(int r22, @NonNull ByteOrder byteOrder) {
        return createSLong(new int[]{r22}, byteOrder);
    }

    @NonNull
    public static ExifAttribute createSLong(@NonNull int[] r42, @NonNull ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[IFD_FORMAT_BYTES_PER_FORMAT[9] * r42.length]);
        byteBufferWrap.order(byteOrder);
        for (int r02 : r42) {
            byteBufferWrap.putInt(r02);
        }
        return new ExifAttribute(9, r42.length, byteBufferWrap.array());
    }

    @NonNull
    public static ExifAttribute createSRational(@NonNull LongRational longRational, @NonNull ByteOrder byteOrder) {
        return createSRational(new LongRational[]{longRational}, byteOrder);
    }

    @NonNull
    public static ExifAttribute createSRational(@NonNull LongRational[] longRationalArr, @NonNull ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[IFD_FORMAT_BYTES_PER_FORMAT[10] * longRationalArr.length]);
        byteBufferWrap.order(byteOrder);
        for (LongRational longRational : longRationalArr) {
            byteBufferWrap.putInt((int) longRational.getNumerator());
            byteBufferWrap.putInt((int) longRational.getDenominator());
        }
        return new ExifAttribute(10, longRationalArr.length, byteBufferWrap.array());
    }

    @NonNull
    public static ExifAttribute createString(@NonNull String str) {
        byte[] bytes = (str + (char) 0).getBytes(ASCII);
        return new ExifAttribute(2, bytes.length, bytes);
    }

    @NonNull
    public static ExifAttribute createULong(long j10, @NonNull ByteOrder byteOrder) {
        return createULong(new long[]{j10}, byteOrder);
    }

    @NonNull
    public static ExifAttribute createULong(@NonNull long[] jArr, @NonNull ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[IFD_FORMAT_BYTES_PER_FORMAT[4] * jArr.length]);
        byteBufferWrap.order(byteOrder);
        for (long j10 : jArr) {
            byteBufferWrap.putInt((int) j10);
        }
        return new ExifAttribute(4, jArr.length, byteBufferWrap.array());
    }

    @NonNull
    public static ExifAttribute createURational(@NonNull LongRational longRational, @NonNull ByteOrder byteOrder) {
        return createURational(new LongRational[]{longRational}, byteOrder);
    }

    @NonNull
    public static ExifAttribute createURational(@NonNull LongRational[] longRationalArr, @NonNull ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[IFD_FORMAT_BYTES_PER_FORMAT[5] * longRationalArr.length]);
        byteBufferWrap.order(byteOrder);
        for (LongRational longRational : longRationalArr) {
            byteBufferWrap.putInt((int) longRational.getNumerator());
            byteBufferWrap.putInt((int) longRational.getDenominator());
        }
        return new ExifAttribute(5, longRationalArr.length, byteBufferWrap.array());
    }

    @NonNull
    public static ExifAttribute createUShort(int r22, @NonNull ByteOrder byteOrder) {
        return createUShort(new int[]{r22}, byteOrder);
    }

    @NonNull
    public static ExifAttribute createUShort(@NonNull int[] r42, @NonNull ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[IFD_FORMAT_BYTES_PER_FORMAT[3] * r42.length]);
        byteBufferWrap.order(byteOrder);
        for (int r02 : r42) {
            byteBufferWrap.putShort((short) r02);
        }
        return new ExifAttribute(3, r42.length, byteBufferWrap.array());
    }

    public double getDoubleValue(@NonNull ByteOrder byteOrder) throws Throwable {
        Object value = getValue(byteOrder);
        if (value == null) {
            throw new NumberFormatException("NULL can't be converted to a double value");
        }
        if (value instanceof String) {
            return Double.parseDouble((String) value);
        }
        if (value instanceof long[]) {
            if (((long[]) value).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (value instanceof int[]) {
            if (((int[]) value).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (value instanceof double[]) {
            double[] dArr = (double[]) value;
            if (dArr.length == 1) {
                return dArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(value instanceof LongRational[])) {
            throw new NumberFormatException("Couldn't find a double value");
        }
        LongRational[] longRationalArr = (LongRational[]) value;
        if (longRationalArr.length == 1) {
            return longRationalArr[0].toDouble();
        }
        throw new NumberFormatException("There are more than one component");
    }

    public int getIntValue(@NonNull ByteOrder byteOrder) throws Throwable {
        Object value = getValue(byteOrder);
        if (value == null) {
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }
        if (value instanceof String) {
            return Integer.parseInt((String) value);
        }
        if (value instanceof long[]) {
            long[] jArr = (long[]) value;
            if (jArr.length == 1) {
                return (int) jArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(value instanceof int[])) {
            throw new NumberFormatException("Couldn't find a integer value");
        }
        int[] r52 = (int[]) value;
        if (r52.length == 1) {
            return r52[0];
        }
        throw new NumberFormatException("There are more than one component");
    }

    @Nullable
    public String getStringValue(@NonNull ByteOrder byteOrder) throws Throwable {
        Object value = getValue(byteOrder);
        if (value == null) {
            return null;
        }
        if (value instanceof String) {
            return (String) value;
        }
        StringBuilder sb2 = new StringBuilder();
        int r42 = 0;
        if (value instanceof long[]) {
            long[] jArr = (long[]) value;
            while (r42 < jArr.length) {
                sb2.append(jArr[r42]);
                r42++;
                if (r42 != jArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        if (value instanceof int[]) {
            int[] r82 = (int[]) value;
            while (r42 < r82.length) {
                sb2.append(r82[r42]);
                r42++;
                if (r42 != r82.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        if (value instanceof double[]) {
            double[] dArr = (double[]) value;
            while (r42 < dArr.length) {
                sb2.append(dArr[r42]);
                r42++;
                if (r42 != dArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        if (!(value instanceof LongRational[])) {
            return null;
        }
        LongRational[] longRationalArr = (LongRational[]) value;
        while (r42 < longRationalArr.length) {
            sb2.append(longRationalArr[r42].getNumerator());
            sb2.append('/');
            sb2.append(longRationalArr[r42].getDenominator());
            r42++;
            if (r42 != longRationalArr.length) {
                sb2.append(",");
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0198: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:151:0x0198 */
    /* JADX WARN: Removed duplicated region for block: B:182:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getValue(java.nio.ByteOrder r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.impl.utils.ExifAttribute.getValue(java.nio.ByteOrder):java.lang.Object");
    }

    public int size() {
        return IFD_FORMAT_BYTES_PER_FORMAT[this.format] * this.numberOfComponents;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("(");
        sb2.append(IFD_FORMAT_NAMES[this.format]);
        sb2.append(", data length:");
        return androidx.browser.browseractions.a.b(sb2, this.bytes.length, ")");
    }
}
