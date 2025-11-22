package gd;

import android.bluetooth.BluetoothDevice;
import android.util.Log;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class g implements Serializable {
    public static final Pattern B = Pattern.compile("i\\:(\\d+)\\-(\\d+)([blv]*)?");
    public static final Pattern C = Pattern.compile("m\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)");
    public static final Pattern D = Pattern.compile("s\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f\\-]+)");
    public static final Pattern E = Pattern.compile("d\\:(\\d+)\\-(\\d+)([bl]*)?");
    public static final Pattern F = Pattern.compile("p\\:(\\d+)?\\-(\\d+)?\\:?([\\-\\d]+)?");
    public static final Pattern G = Pattern.compile("x");
    public static final char[] H = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a, reason: collision with root package name */
    public String f6667a;

    /* renamed from: b, reason: collision with root package name */
    public Long f6668b;

    /* renamed from: k, reason: collision with root package name */
    public Integer f6675k;

    /* renamed from: l, reason: collision with root package name */
    public Integer f6676l;

    /* renamed from: m, reason: collision with root package name */
    public Integer f6677m;

    /* renamed from: n, reason: collision with root package name */
    public Integer f6678n;

    /* renamed from: p, reason: collision with root package name */
    public Long f6679p;

    /* renamed from: r, reason: collision with root package name */
    public Boolean f6681r;

    /* renamed from: s, reason: collision with root package name */
    public Integer f6682s;

    /* renamed from: t, reason: collision with root package name */
    public Integer f6683t;

    /* renamed from: v, reason: collision with root package name */
    public Integer f6684v;
    public Integer w;

    /* renamed from: y, reason: collision with root package name */
    public String f6686y;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6669c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f6670d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6671e = new ArrayList();
    public final ArrayList f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f6672g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f6673h = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f6674j = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public byte[] f6680q = new byte[0];

    /* renamed from: x, reason: collision with root package name */
    public final Boolean f6685x = Boolean.TRUE;

    /* renamed from: z, reason: collision with root package name */
    public int[] f6687z = {76};
    public final ArrayList A = new ArrayList();

    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static String a(byte[] bArr, int r82, int r92, boolean z10) {
        int r93 = r92 - r82;
        int r02 = r93 + 1;
        byte[] bArr2 = new byte[r02];
        if (z10) {
            for (int r10 = 0; r10 <= r93; r10++) {
                bArr2[r10] = bArr[((r82 + r02) - 1) - r10];
            }
        } else {
            for (int r102 = 0; r102 <= r93; r102++) {
                bArr2[r102] = bArr[r82 + r102];
            }
        }
        if (r02 < 5) {
            long jPow = 0;
            for (int r22 = 0; r22 < r02; r22++) {
                jPow += (bArr2[(r02 - r22) - 1] & 255) * ((long) Math.pow(256.0d, r22 * 1.0d));
            }
            return Long.toString(jPow);
        }
        String strD = d(bArr2);
        if (r02 != 16) {
            return "0x".concat(strD);
        }
        return strD.substring(0, 8) + "-" + strD.substring(8, 12) + "-" + strD.substring(12, 16) + "-" + strD.substring(16, 20) + "-" + strD.substring(20, 32);
    }

    public static String b(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
            sb2.append(" ");
        }
        return sb2.toString().trim();
    }

    public static boolean c(int r52, byte[] bArr, byte[] bArr2) {
        int length = bArr2.length;
        if (bArr.length - r52 < length) {
            return false;
        }
        for (int r12 = 0; r12 < length; r12++) {
            if (bArr[r52 + r12] != bArr2[r12]) {
                return false;
            }
        }
        return true;
    }

    public static String d(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            int r22 = bArr[r12] & 255;
            int r32 = r12 * 2;
            char[] cArr2 = H;
            cArr[r32] = cArr2[r22 >>> 4];
            cArr[r32 + 1] = cArr2[r22 & 15];
        }
        return new String(cArr);
    }

    public static byte[] g(long j10, int r92, boolean z10) {
        byte[] bArr = new byte[r92];
        for (int r12 = 0; r12 < r92; r12++) {
            int r22 = ((r92 - (z10 ? r12 : (r92 - r12) - 1)) - 1) * 8;
            bArr[r12] = (byte) ((j10 & (255 << r22)) >> r22);
        }
        return bArr;
    }

    public c e(int r82, long j10, BluetoothDevice bluetoothDevice, byte[] bArr) {
        return f(bArr, r82, bluetoothDevice, j10, new c());
    }

    public final boolean equals(Object obj) {
        String str;
        try {
            g gVar = (g) obj;
            String str2 = gVar.f6667a;
            if (str2 == null || !str2.equals(this.f6667a) || (str = gVar.f6686y) == null) {
                return false;
            }
            return str.equals(this.f6686y);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x03ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x030e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final gd.c f(byte[] r20, int r21, android.bluetooth.BluetoothDevice r22, long r23, gd.c r25) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1159
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gd.g.f(byte[], int, android.bluetooth.BluetoothDevice, long, gd.c):gd.c");
    }

    public final void h(String str) throws NumberFormatException {
        int r22;
        int r12;
        int r13;
        id.b.a("BeaconParser", "API setBeaconLayout ".concat(str), new Object[0]);
        this.f6667a = str;
        Log.d("BeaconParser", "Parsing beacon layout: ".concat(str));
        String[] strArrSplit = str.split(",");
        this.f6681r = Boolean.FALSE;
        int length = strArrSplit.length;
        int r32 = 0;
        while (true) {
            ArrayList arrayList = this.f6672g;
            ArrayList arrayList2 = this.f6670d;
            int r72 = 1;
            if (r32 >= length) {
                if (arrayList2 != null) {
                    Iterator it = arrayList2.iterator();
                    r22 = 0;
                    while (it.hasNext()) {
                        int r33 = ((Integer) it.next()).intValue();
                        if (r33 > r22) {
                            r22 = r33;
                        }
                    }
                } else {
                    r22 = 0;
                }
                if (arrayList != null) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        int r34 = ((Integer) it2.next()).intValue();
                        if (r34 > r22) {
                            r22 = r34;
                        }
                    }
                }
                Integer num = this.f6683t;
                if (num != null && num.intValue() > r22) {
                    r22 = this.f6683t.intValue();
                }
                Integer num2 = this.f6678n;
                if (num2 != null && num2.intValue() > r22) {
                    r22 = this.f6678n.intValue();
                }
                this.w = Integer.valueOf(r22 + 1);
                return;
            }
            String str2 = strArrSplit[r32];
            Matcher matcher = B.matcher(str2);
            boolean z10 = false;
            while (true) {
                r12 = 2;
                r13 = 3;
                if (!matcher.find()) {
                    break;
                }
                try {
                    int r10 = Integer.parseInt(matcher.group(1));
                    int r11 = Integer.parseInt(matcher.group(2));
                    this.f6671e.add(Boolean.valueOf(matcher.group(3).contains("l")));
                    this.f6674j.add(Boolean.valueOf(matcher.group(3).contains("v")));
                    this.f6669c.add(Integer.valueOf(r10));
                    arrayList2.add(Integer.valueOf(r11));
                    z10 = true;
                } catch (NumberFormatException unused) {
                    throw new a(androidx.browser.browseractions.b.e("Cannot parse integer byte offset in term: ", str2));
                }
            }
            Matcher matcher2 = E.matcher(str2);
            while (matcher2.find()) {
                try {
                    int r92 = Integer.parseInt(matcher2.group(1));
                    int r102 = Integer.parseInt(matcher2.group(2));
                    this.f6673h.add(Boolean.valueOf(matcher2.group(r13).contains("l")));
                    this.f.add(Integer.valueOf(r92));
                    arrayList.add(Integer.valueOf(r102));
                    z10 = true;
                    r13 = 3;
                } catch (NumberFormatException unused2) {
                    throw new a(androidx.browser.browseractions.b.e("Cannot parse integer byte offset in term: ", str2));
                }
            }
            Matcher matcher3 = F.matcher(str2);
            while (matcher3.find()) {
                try {
                    if (matcher3.group(1) != null && matcher3.group(2) != null) {
                        int r93 = Integer.parseInt(matcher3.group(1));
                        int r103 = Integer.parseInt(matcher3.group(2));
                        this.f6682s = Integer.valueOf(r93);
                        this.f6683t = Integer.valueOf(r103);
                    }
                    this.f6684v = Integer.valueOf(matcher3.group(3) != null ? Integer.parseInt(matcher3.group(3)) : 0);
                    z10 = true;
                } catch (NumberFormatException unused3) {
                    throw new a(androidx.camera.camera2.internal.c.g("Cannot parse integer power byte offset (", "none", ") in term: ", str2));
                }
            }
            Matcher matcher4 = C.matcher(str2);
            while (matcher4.find()) {
                try {
                    int r6 = Integer.parseInt(matcher4.group(1));
                    int r104 = Integer.parseInt(matcher4.group(2));
                    this.f6675k = Integer.valueOf(r6);
                    this.f6676l = Integer.valueOf(r104);
                    String strGroup = matcher4.group(3);
                    try {
                        this.f6668b = Long.decode("0x" + strGroup);
                        z10 = true;
                    } catch (NumberFormatException unused4) {
                        throw new a(androidx.camera.camera2.internal.c.g("Cannot parse beacon type code: ", strGroup, " in term: ", str2));
                    }
                } catch (NumberFormatException unused5) {
                    throw new a(androidx.browser.browseractions.b.e("Cannot parse integer byte offset in term: ", str2));
                }
            }
            Matcher matcher5 = D.matcher(str2);
            while (matcher5.find()) {
                try {
                    int r62 = Integer.parseInt(matcher5.group(r72));
                    int r105 = Integer.parseInt(matcher5.group(r12));
                    this.f6677m = Integer.valueOf(r62);
                    this.f6678n = Integer.valueOf(r105);
                    String strGroup2 = matcher5.group(3);
                    if ((this.f6678n.intValue() - this.f6677m.intValue()) + r72 == r12) {
                        try {
                            this.f6679p = Long.decode("0x" + strGroup2);
                        } catch (NumberFormatException unused6) {
                            throw new a(androidx.camera.camera2.internal.c.g("Cannot parse serviceUuid: ", strGroup2, " in term: ", str2));
                        }
                    } else {
                        if ((this.f6678n.intValue() - this.f6677m.intValue()) + r72 != 16) {
                            throw new a(androidx.camera.camera2.internal.c.g("Cannot parse serviceUuid -- it must be 2 bytes or 16 bytes long: ", strGroup2, " in term: ", str2));
                        }
                        String strReplace = strGroup2.replace("-", "");
                        if (strReplace.length() != 32) {
                            throw new a(androidx.camera.camera2.internal.c.g("128-bit ServiceUuid must be 16 bytes long: ", strGroup2, " in term: ", str2));
                        }
                        this.f6680q = new byte[16];
                        int r63 = 0;
                        while (r63 < 16) {
                            int r122 = r63 * 2;
                            String strSubstring = strReplace.substring(r122, r122 + 2);
                            try {
                                String[] strArr = strArrSplit;
                                this.f6680q[15 - r63] = (byte) Integer.parseInt(strSubstring, 16);
                                r63++;
                                strArrSplit = strArr;
                            } catch (NumberFormatException unused7) {
                                throw new a(androidx.camera.camera2.internal.c.g("Cannot parse serviceUuid byte ", strSubstring, " in term: ", str2));
                            }
                        }
                    }
                    r72 = 1;
                    z10 = true;
                    r12 = 2;
                    strArrSplit = strArrSplit;
                } catch (NumberFormatException unused8) {
                    throw new a(androidx.browser.browseractions.b.e("Cannot parse integer byte offset in term: ", str2));
                }
            }
            String[] strArr2 = strArrSplit;
            Matcher matcher6 = G.matcher(str2);
            while (matcher6.find()) {
                this.f6681r = Boolean.TRUE;
                z10 = true;
            }
            if (!z10) {
                id.b.a("BeaconParser", "cannot parse term %s", str2);
                throw new a(androidx.browser.browseractions.b.e("Cannot parse beacon layout term: ", str2));
            }
            r32++;
            strArrSplit = strArr2;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6668b, this.f6669c, this.f6670d, this.f6671e, this.f, this.f6672g, this.f6673h, this.f6674j, this.f6675k, this.f6676l, this.f6677m, this.f6678n, this.f6679p, this.f6680q, this.f6681r, this.f6682s, this.f6683t, this.f6684v, this.w, this.f6685x, this.f6686y, this.f6687z, this.A});
    }
}
