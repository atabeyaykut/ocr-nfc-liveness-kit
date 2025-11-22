package org.bouncycastle.asn1.x509;

import ab.b;
import android.support.v4.media.a;
import java.io.IOException;
import java.util.StringTokenizer;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.util.IPAddress;

/* loaded from: classes2.dex */
public class GeneralName extends ASN1Object implements ASN1Choice {
    public static final int dNSName = 2;
    public static final int directoryName = 4;
    public static final int ediPartyName = 5;
    public static final int iPAddress = 7;
    public static final int otherName = 0;
    public static final int registeredID = 8;
    public static final int rfc822Name = 1;
    public static final int uniformResourceIdentifier = 6;
    public static final int x400Address = 3;
    private ASN1Encodable obj;
    private int tag;

    public GeneralName(int r22, String str) throws NumberFormatException {
        ASN1Encodable dERIA5String;
        this.tag = r22;
        if (r22 == 1 || r22 == 2 || r22 == 6) {
            dERIA5String = new DERIA5String(str);
        } else if (r22 == 8) {
            dERIA5String = new ASN1ObjectIdentifier(str);
        } else {
            if (r22 != 4) {
                if (r22 != 7) {
                    throw new IllegalArgumentException(a.d("can't process String for tag: ", r22));
                }
                byte[] generalNameEncoding = toGeneralNameEncoding(str);
                if (generalNameEncoding == null) {
                    throw new IllegalArgumentException("IP Address is invalid");
                }
                this.obj = new DEROctetString(generalNameEncoding);
                return;
            }
            dERIA5String = new X500Name(str);
        }
        this.obj = dERIA5String;
    }

    public GeneralName(int r12, ASN1Encodable aSN1Encodable) {
        this.obj = aSN1Encodable;
        this.tag = r12;
    }

    public GeneralName(X500Name x500Name) {
        this.obj = x500Name;
        this.tag = 4;
    }

    public GeneralName(X509Name x509Name) {
        this.obj = X500Name.getInstance(x509Name);
        this.tag = 4;
    }

    private void copyInts(int[] r6, byte[] bArr, int r82) {
        for (int r02 = 0; r02 != r6.length; r02++) {
            int r12 = r02 * 2;
            int r32 = r6[r02];
            bArr[r12 + r82] = (byte) (r32 >> 8);
            bArr[r12 + 1 + r82] = (byte) r32;
        }
    }

    public static GeneralName getInstance(Object obj) {
        if (obj == null || (obj instanceof GeneralName)) {
            return (GeneralName) obj;
        }
        if (!(obj instanceof ASN1TaggedObject)) {
            if (!(obj instanceof byte[])) {
                throw new IllegalArgumentException(b.f(obj, "unknown object in getInstance: "));
            }
            try {
                return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("unable to parse encoded general name");
            }
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) obj;
        int tagNo = aSN1TaggedObject.getTagNo();
        switch (tagNo) {
            case 0:
            case 3:
            case 5:
                return new GeneralName(tagNo, ASN1Sequence.getInstance(aSN1TaggedObject, false));
            case 1:
            case 2:
            case 6:
                return new GeneralName(tagNo, ASN1IA5String.getInstance(aSN1TaggedObject, false));
            case 4:
                return new GeneralName(tagNo, X500Name.getInstance(aSN1TaggedObject, true));
            case 7:
                return new GeneralName(tagNo, ASN1OctetString.getInstance(aSN1TaggedObject, false));
            case 8:
                return new GeneralName(tagNo, ASN1ObjectIdentifier.getInstance(aSN1TaggedObject, false));
            default:
                throw new IllegalArgumentException(a.d("unknown tag: ", tagNo));
        }
    }

    public static GeneralName getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        if (z10) {
            return getInstance(ASN1TaggedObject.getInstance(aSN1TaggedObject, true));
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    private void parseIPv4(String str, byte[] bArr, int r6) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "./");
        int r42 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            bArr[r42 + r6] = (byte) Integer.parseInt(stringTokenizer.nextToken());
            r42++;
        }
    }

    private void parseIPv4Mask(String str, byte[] bArr, int r82) throws NumberFormatException {
        int r6 = Integer.parseInt(str);
        for (int r02 = 0; r02 != r6; r02++) {
            int r12 = (r02 / 8) + r82;
            bArr[r12] = (byte) (bArr[r12] | (1 << (7 - (r02 % 8))));
        }
    }

    private int[] parseIPv6(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ":", true);
        int[] r42 = new int[8];
        if (str.charAt(0) == ':' && str.charAt(1) == ':') {
            stringTokenizer.nextToken();
        }
        int r12 = -1;
        int r22 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals(":")) {
                r42[r22] = 0;
                int r10 = r22;
                r22++;
                r12 = r10;
            } else if (strNextToken.indexOf(46) < 0) {
                int r72 = r22 + 1;
                r42[r22] = Integer.parseInt(strNextToken, 16);
                if (stringTokenizer.hasMoreTokens()) {
                    stringTokenizer.nextToken();
                }
                r22 = r72;
            } else {
                StringTokenizer stringTokenizer2 = new StringTokenizer(strNextToken, ".");
                int r6 = r22 + 1;
                r42[r22] = (Integer.parseInt(stringTokenizer2.nextToken()) << 8) | Integer.parseInt(stringTokenizer2.nextToken());
                r22 = r6 + 1;
                r42[r6] = Integer.parseInt(stringTokenizer2.nextToken()) | (Integer.parseInt(stringTokenizer2.nextToken()) << 8);
            }
        }
        if (r22 != 8) {
            int r23 = r22 - r12;
            int r02 = 8 - r23;
            System.arraycopy(r42, r12, r42, r02, r23);
            while (r12 != r02) {
                r42[r12] = 0;
                r12++;
            }
        }
        return r42;
    }

    private int[] parseMask(String str) throws NumberFormatException {
        int[] r02 = new int[8];
        int r72 = Integer.parseInt(str);
        for (int r12 = 0; r12 != r72; r12++) {
            int r22 = r12 / 16;
            r02[r22] = r02[r22] | (1 << (15 - (r12 % 16)));
        }
        return r02;
    }

    private byte[] toGeneralNameEncoding(String str) throws NumberFormatException {
        if (IPAddress.isValidIPv6WithNetmask(str) || IPAddress.isValidIPv6(str)) {
            int r02 = str.indexOf(47);
            if (r02 < 0) {
                byte[] bArr = new byte[16];
                copyInts(parseIPv6(str), bArr, 0);
                return bArr;
            }
            byte[] bArr2 = new byte[32];
            copyInts(parseIPv6(str.substring(0, r02)), bArr2, 0);
            String strSubstring = str.substring(r02 + 1);
            copyInts(strSubstring.indexOf(58) > 0 ? parseIPv6(strSubstring) : parseMask(strSubstring), bArr2, 16);
            return bArr2;
        }
        if (!IPAddress.isValidIPv4WithNetmask(str) && !IPAddress.isValidIPv4(str)) {
            return null;
        }
        int r03 = str.indexOf(47);
        if (r03 < 0) {
            byte[] bArr3 = new byte[4];
            parseIPv4(str, bArr3, 0);
            return bArr3;
        }
        byte[] bArr4 = new byte[8];
        parseIPv4(str.substring(0, r03), bArr4, 0);
        String strSubstring2 = str.substring(r03 + 1);
        if (strSubstring2.indexOf(46) > 0) {
            parseIPv4(strSubstring2, bArr4, 4);
        } else {
            parseIPv4Mask(strSubstring2, bArr4, 4);
        }
        return bArr4;
    }

    public ASN1Encodable getName() {
        return this.obj;
    }

    public int getTagNo() {
        return this.tag;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        int r02 = this.tag;
        return new DERTaggedObject(r02 == 4, r02, this.obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            int r1 = r3.tag
            r0.append(r1)
            java.lang.String r1 = ": "
            r0.append(r1)
            int r1 = r3.tag
            r2 = 1
            if (r1 == r2) goto L2f
            r2 = 2
            if (r1 == r2) goto L2f
            r2 = 4
            if (r1 == r2) goto L24
            r2 = 6
            if (r1 == r2) goto L2f
            org.bouncycastle.asn1.ASN1Encodable r1 = r3.obj
            java.lang.String r1 = r1.toString()
            goto L39
        L24:
            org.bouncycastle.asn1.ASN1Encodable r1 = r3.obj
            org.bouncycastle.asn1.x500.X500Name r1 = org.bouncycastle.asn1.x500.X500Name.getInstance(r1)
            java.lang.String r1 = r1.toString()
            goto L39
        L2f:
            org.bouncycastle.asn1.ASN1Encodable r1 = r3.obj
            org.bouncycastle.asn1.ASN1IA5String r1 = org.bouncycastle.asn1.ASN1IA5String.getInstance(r1)
            java.lang.String r1 = r1.getString()
        L39:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.GeneralName.toString():java.lang.String");
    }
}
