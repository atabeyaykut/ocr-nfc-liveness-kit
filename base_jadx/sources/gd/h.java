package gd;

import android.annotation.TargetApi;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.LongBuffer;
import java.util.Arrays;
import java.util.UUID;
import java.util.regex.Pattern;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public final class h implements Comparable<h>, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f6688b = Pattern.compile("^0x[0-9A-Fa-f]*$");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f6689c = Pattern.compile("^[0-9A-Fa-f]*$");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f6690d = Pattern.compile("^0|[1-9][0-9]*$");

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f6691e = Pattern.compile("^[0-9A-Fa-f]{8}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{12}$");
    public static final char[] f = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f6692a;

    public h(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("Identifiers cannot be constructed from null pointers but \"value\" is null.");
        }
        this.f6692a = bArr;
    }

    @TargetApi(9)
    public static h n(byte[] bArr, int r22, int r32, boolean z10) {
        if (bArr == null) {
            throw new NullPointerException("Identifiers cannot be constructed from null pointers but \"bytes\" is null.");
        }
        if (r22 < 0 || r22 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("start < 0 || start > bytes.length");
        }
        if (r32 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("end > bytes.length");
        }
        if (r22 > r32) {
            throw new IllegalArgumentException("start > end");
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, r22, r32);
        if (z10) {
            for (int r23 = 0; r23 < bArrCopyOfRange.length / 2; r23++) {
                int length = (bArrCopyOfRange.length - r23) - 1;
                byte b10 = bArrCopyOfRange[r23];
                bArrCopyOfRange[r23] = bArrCopyOfRange[length];
                bArrCopyOfRange[length] = b10;
            }
        }
        return new h(bArrCopyOfRange);
    }

    public static h o(String str) {
        if (str == null) {
            throw new NullPointerException("Identifiers cannot be constructed from null pointers but \"stringValue\" is null.");
        }
        if (f6688b.matcher(str).matches()) {
            str = str.substring(2);
        } else if (f6691e.matcher(str).matches()) {
            str = str.replace("-", "");
        } else {
            if (f6690d.matcher(str).matches()) {
                try {
                    int r32 = Integer.valueOf(str).intValue();
                    if (r32 < 0 || r32 > 65535) {
                        throw new IllegalArgumentException("Identifiers can only be constructed from integers between 0 and 65535 (inclusive).");
                    }
                    return new h(new byte[]{(byte) (r32 >> 8), (byte) r32});
                } catch (Throwable th2) {
                    throw new IllegalArgumentException("Unable to parse Identifier in decimal format.", th2);
                }
            }
            if (!f6689c.matcher(str).matches()) {
                throw new IllegalArgumentException("Unable to parse Identifier.");
            }
        }
        return q(str);
    }

    public static h q(String str) {
        StringBuilder sbE = androidx.constraintlayout.core.a.e(str.length() % 2 == 0 ? "" : "0");
        sbE.append(str.toUpperCase());
        String string = sbE.toString();
        int length = string.length() / 2;
        byte[] bArr = new byte[length];
        for (int r22 = 0; r22 < length; r22++) {
            int r32 = r22 * 2;
            bArr[r22] = (byte) (Integer.parseInt(string.substring(r32, r32 + 2), 16) & 255);
        }
        return new h(bArr);
    }

    @Override // java.lang.Comparable
    public final int compareTo(h hVar) {
        h hVar2 = hVar;
        byte[] bArr = this.f6692a;
        int length = bArr.length;
        byte[] bArr2 = hVar2.f6692a;
        if (length == bArr2.length) {
            for (int r22 = 0; r22 < bArr.length; r22++) {
                byte b10 = bArr[r22];
                byte b11 = hVar2.f6692a[r22];
                if (b10 != b11) {
                    if (b10 >= b11) {
                        return 1;
                    }
                }
            }
            return 0;
        }
        if (bArr.length >= bArr2.length) {
            return 1;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return Arrays.equals(this.f6692a, ((h) obj).f6692a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f6692a);
    }

    public final String toString() {
        byte[] bArr = this.f6692a;
        int r22 = 0;
        int r32 = 2;
        if (bArr.length == 2) {
            if (bArr.length > 2) {
                throw new UnsupportedOperationException("Only supported for Identifiers with max byte length of 2");
            }
            int length = 0;
            while (r22 < bArr.length) {
                length |= (bArr[r22] & 255) << (((bArr.length - r22) - 1) * 8);
                r22++;
            }
            return Integer.toString(length);
        }
        if (bArr.length == 16) {
            if (bArr.length != 16) {
                throw new UnsupportedOperationException("Only Identifiers backed by a byte array with length of exactly 16 can be UUIDs.");
            }
            LongBuffer longBufferAsLongBuffer = ByteBuffer.wrap(bArr).asLongBuffer();
            return new UUID(longBufferAsLongBuffer.get(), longBufferAsLongBuffer.get()).toString();
        }
        int length2 = bArr.length;
        char[] cArr = new char[(length2 * 2) + 2];
        cArr[0] = '0';
        cArr[1] = 'x';
        while (r22 < length2) {
            int r52 = r32 + 1;
            byte b10 = bArr[r22];
            char[] cArr2 = f;
            cArr[r32] = cArr2[(b10 & 240) >>> 4];
            r32 = r52 + 1;
            cArr[r52] = cArr2[b10 & PassportService.SFI_DG15];
            r22++;
        }
        return new String(cArr);
    }
}
