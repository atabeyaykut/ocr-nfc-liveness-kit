package org.bouncycastle.crypto.generators;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.util.HashSet;
import java.util.Set;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class OpenBSDBCrypt {
    private static final Set<String> allowedVersions;
    private static final String defaultVersion = "2y";
    private static final byte[] encodingTable = {46, 47, 65, CVCAFile.CAR_TAG, 67, ISO7816.INS_REHABILITATE_CHV, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, ISOFileInfo.FCP_BYTE, 99, ISOFileInfo.FMD_BYTE, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, ISOFileInfo.FCI_BYTE, ISO7816.INS_MANAGE_CHANNEL, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, ISO7816.INS_DECREASE, 49, ISO7816.INS_INCREASE, 51, ISO7816.INS_DECREASE_STAMPED, 53, 54, 55, 56, 57};
    private static final byte[] decodingTable = new byte[128];

    static {
        HashSet hashSet = new HashSet();
        allowedVersions = hashSet;
        hashSet.add(ExifInterface.GPS_MEASUREMENT_2D);
        hashSet.add("2x");
        hashSet.add("2a");
        hashSet.add(defaultVersion);
        hashSet.add("2b");
        int r02 = 0;
        int r12 = 0;
        while (true) {
            byte[] bArr = decodingTable;
            if (r12 >= bArr.length) {
                break;
            }
            bArr[r12] = -1;
            r12++;
        }
        while (true) {
            byte[] bArr2 = encodingTable;
            if (r02 >= bArr2.length) {
                return;
            }
            decodingTable[bArr2[r02]] = (byte) r02;
            r02++;
        }
    }

    private OpenBSDBCrypt() {
    }

    public static boolean checkPassword(String str, byte[] bArr) {
        if (bArr != null) {
            return doCheckPassword(str, Arrays.clone(bArr));
        }
        throw new IllegalArgumentException("Missing password.");
    }

    public static boolean checkPassword(String str, char[] cArr) {
        if (cArr != null) {
            return doCheckPassword(str, Strings.toUTF8ByteArray(cArr));
        }
        throw new IllegalArgumentException("Missing password.");
    }

    private static String createBcryptString(String str, byte[] bArr, byte[] bArr2, int r52) {
        if (!allowedVersions.contains(str)) {
            throw new IllegalArgumentException(a.a("Version ", str, " is not accepted by this implementation."));
        }
        StringBuilder sb2 = new StringBuilder(60);
        sb2.append('$');
        sb2.append(str);
        sb2.append('$');
        sb2.append(r52 < 10 ? android.support.v4.media.a.d("0", r52) : Integer.toString(r52));
        sb2.append('$');
        encodeData(sb2, bArr2);
        encodeData(sb2, BCrypt.generate(bArr, bArr2, r52));
        return sb2.toString();
    }

    private static byte[] decodeSaltString(String str) {
        char[] charArray = str.toCharArray();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16);
        if (charArray.length != 22) {
            throw new DataLengthException(a.b(new StringBuilder("Invalid base64 salt length: "), charArray.length, " , 22 required."));
        }
        for (char c10 : charArray) {
            if (c10 > 'z' || c10 < '.' || (c10 > '9' && c10 < 'A')) {
                throw new IllegalArgumentException(android.support.v4.media.a.d("Salt string contains invalid character: ", c10));
            }
        }
        char[] cArr = new char[24];
        System.arraycopy(charArray, 0, cArr, 0, charArray.length);
        for (int r10 = 0; r10 < 24; r10 += 4) {
            byte[] bArr = decodingTable;
            byte b10 = bArr[cArr[r10]];
            byte b11 = bArr[cArr[r10 + 1]];
            byte b12 = bArr[cArr[r10 + 2]];
            byte b13 = bArr[cArr[r10 + 3]];
            byteArrayOutputStream.write((b10 << 2) | (b11 >> 4));
            byteArrayOutputStream.write((b11 << 4) | (b12 >> 2));
            byteArrayOutputStream.write(b13 | (b12 << 6));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byte[] bArr2 = new byte[16];
        System.arraycopy(byteArray, 0, bArr2, 0, 16);
        return bArr2;
    }

    private static boolean doCheckPassword(String str, byte[] bArr) throws NumberFormatException {
        String strSubstring;
        if (str == null) {
            throw new IllegalArgumentException("Missing bcryptString.");
        }
        if (str.charAt(1) != '2') {
            throw new IllegalArgumentException("not a Bcrypt string");
        }
        int length = str.length();
        if (length != 60 && (length != 59 || str.charAt(2) != '$')) {
            throw new DataLengthException(androidx.appcompat.graphics.drawable.a.f("Bcrypt String length: ", length, ", 60 required."));
        }
        int r82 = 3;
        if (str.charAt(2) == '$') {
            if (str.charAt(0) != '$' || str.charAt(5) != '$') {
                throw new IllegalArgumentException("Invalid Bcrypt String format.");
            }
        } else if (str.charAt(0) != '$' || str.charAt(3) != '$' || str.charAt(6) != '$') {
            throw new IllegalArgumentException("Invalid Bcrypt String format.");
        }
        if (str.charAt(2) == '$') {
            strSubstring = str.substring(1, 2);
        } else {
            strSubstring = str.substring(1, 3);
            r82 = 4;
        }
        if (!allowedVersions.contains(strSubstring)) {
            throw new IllegalArgumentException(a.a("Bcrypt version '", strSubstring, "' is not supported by this implementation"));
        }
        String strSubstring2 = str.substring(r82, r82 + 2);
        try {
            int r42 = Integer.parseInt(strSubstring2);
            if (r42 < 4 || r42 > 31) {
                throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Invalid cost factor: ", r42, ", 4 < cost < 31 expected."));
            }
            return Strings.constantTimeAreEqual(str, doGenerate(strSubstring, bArr, decodeSaltString(str.substring(str.lastIndexOf(36) + 1, length - 31)), r42));
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException(b.e("Invalid cost factor: ", strSubstring2));
        }
    }

    private static String doGenerate(String str, byte[] bArr, byte[] bArr2, int r72) {
        if (!allowedVersions.contains(str)) {
            throw new IllegalArgumentException(a.a("Version ", str, " is not accepted by this implementation."));
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("Salt required.");
        }
        if (bArr2.length != 16) {
            throw new DataLengthException("16 byte salt required: " + bArr2.length);
        }
        if (r72 < 4 || r72 > 31) {
            throw new IllegalArgumentException("Invalid cost factor.");
        }
        int length = bArr.length < 72 ? bArr.length + 1 : 72;
        byte[] bArr3 = new byte[length];
        if (length > bArr.length) {
            length = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr3, 0, length);
        Arrays.fill(bArr, (byte) 0);
        String strCreateBcryptString = createBcryptString(str, bArr3, bArr2, r72);
        Arrays.fill(bArr3, (byte) 0);
        return strCreateBcryptString;
    }

    private static void encodeData(StringBuilder sb2, byte[] bArr) {
        boolean z10;
        if (bArr.length != 24 && bArr.length != 16) {
            throw new DataLengthException(a.b(new StringBuilder("Invalid length: "), bArr.length, ", 24 for key or 16 for salt expected"));
        }
        if (bArr.length == 16) {
            byte[] bArr2 = new byte[18];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
            z10 = true;
        } else {
            bArr[bArr.length - 1] = 0;
            z10 = false;
        }
        int length = bArr.length;
        for (int r32 = 0; r32 < length; r32 += 3) {
            int r42 = bArr[r32] & 255;
            int r52 = bArr[r32 + 1] & 255;
            int r6 = bArr[r32 + 2] & 255;
            byte[] bArr3 = encodingTable;
            sb2.append((char) bArr3[(r42 >>> 2) & 63]);
            sb2.append((char) bArr3[((r42 << 4) | (r52 >>> 4)) & 63]);
            sb2.append((char) bArr3[((r52 << 2) | (r6 >>> 6)) & 63]);
            sb2.append((char) bArr3[r6 & 63]);
        }
        int length2 = sb2.length();
        sb2.setLength(z10 ? length2 - 2 : length2 - 1);
    }

    public static String generate(String str, byte[] bArr, byte[] bArr2, int r32) {
        if (bArr != null) {
            return doGenerate(str, Arrays.clone(bArr), bArr2, r32);
        }
        throw new IllegalArgumentException("Password required.");
    }

    public static String generate(String str, char[] cArr, byte[] bArr, int r32) {
        if (cArr != null) {
            return doGenerate(str, Strings.toUTF8ByteArray(cArr), bArr, r32);
        }
        throw new IllegalArgumentException("Password required.");
    }

    public static String generate(byte[] bArr, byte[] bArr2, int r32) {
        return generate(defaultVersion, bArr, bArr2, r32);
    }

    public static String generate(char[] cArr, byte[] bArr, int r32) {
        return generate(defaultVersion, cArr, bArr, r32);
    }
}
