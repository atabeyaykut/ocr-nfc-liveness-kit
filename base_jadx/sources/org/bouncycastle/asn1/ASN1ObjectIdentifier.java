package org.bouncycastle.asn1;

import ab.b;
import androidx.browser.browseractions.a;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class ASN1ObjectIdentifier extends ASN1Primitive {
    private static final long LONG_LIMIT = 72057594037927808L;
    private static final int MAX_CONTENTS_LENGTH = 4096;
    private static final int MAX_IDENTIFIER_LENGTH = 16385;
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1ObjectIdentifier.class, 6) { // from class: org.bouncycastle.asn1.ASN1ObjectIdentifier.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1ObjectIdentifier.createPrimitive(dEROctetString.getOctets(), false);
        }
    };
    private static final ConcurrentMap<OidHandle, ASN1ObjectIdentifier> pool = new ConcurrentHashMap();
    private final byte[] contents;
    private String identifier;

    public static class OidHandle {
        private final byte[] contents;
        private final int key;

        public OidHandle(byte[] bArr) {
            this.key = Arrays.hashCode(bArr);
            this.contents = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof OidHandle) {
                return Arrays.areEqual(this.contents, ((OidHandle) obj).contents);
            }
            return false;
        }

        public int hashCode() {
            return this.key;
        }
    }

    public ASN1ObjectIdentifier(String str) throws NumberFormatException {
        checkIdentifier(str);
        byte[] identifier = parseIdentifier(str);
        checkContentsLength(identifier.length);
        this.contents = identifier;
        this.identifier = str;
    }

    private ASN1ObjectIdentifier(byte[] bArr, String str) {
        this.contents = bArr;
        this.identifier = str;
    }

    public static void checkContentsLength(int r12) {
        if (r12 > 4096) {
            throw new IllegalArgumentException("exceeded OID contents length limit");
        }
    }

    public static void checkIdentifier(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > MAX_IDENTIFIER_LENGTH) {
            throw new IllegalArgumentException("exceeded OID contents length limit");
        }
        if (!isValidIdentifier(str)) {
            throw new IllegalArgumentException(a.a("string ", str, " not a valid OID"));
        }
    }

    public static ASN1ObjectIdentifier createPrimitive(byte[] bArr, boolean z10) {
        checkContentsLength(bArr.length);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = pool.get(new OidHandle(bArr));
        if (aSN1ObjectIdentifier != null) {
            return aSN1ObjectIdentifier;
        }
        if (!ASN1RelativeOID.isValidContents(bArr)) {
            throw new IllegalArgumentException("invalid OID contents");
        }
        if (z10) {
            bArr = Arrays.clone(bArr);
        }
        return new ASN1ObjectIdentifier(bArr, null);
    }

    public static ASN1ObjectIdentifier fromContents(byte[] bArr) {
        if (bArr != null) {
            return createPrimitive(bArr, true);
        }
        throw new NullPointerException("'contents' cannot be null");
    }

    public static ASN1ObjectIdentifier getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1ObjectIdentifier)) {
            return (ASN1ObjectIdentifier) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
                return (ASN1ObjectIdentifier) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1ObjectIdentifier) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException(android.support.v4.media.a.c(e10, new StringBuilder("failed to construct object identifier from byte[]: ")));
            }
        }
        throw new IllegalArgumentException(b.f(obj, "illegal object in getInstance: "));
    }

    public static ASN1ObjectIdentifier getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        if (!z10 && !aSN1TaggedObject.isParsed() && aSN1TaggedObject.hasContextTag()) {
            ASN1Primitive aSN1Primitive = aSN1TaggedObject.getBaseObject().toASN1Primitive();
            if (!(aSN1Primitive instanceof ASN1ObjectIdentifier)) {
                return fromContents(ASN1OctetString.getInstance(aSN1Primitive).getOctets());
            }
        }
        return (ASN1ObjectIdentifier) TYPE.getContextInstance(aSN1TaggedObject, z10);
    }

    private static boolean isValidIdentifier(String str) {
        char cCharAt;
        if (str.length() < 3 || str.charAt(1) != '.' || (cCharAt = str.charAt(0)) < '0' || cCharAt > '2' || !ASN1RelativeOID.isValidIdentifier(str, 2)) {
            return false;
        }
        if (cCharAt == '2' || str.length() == 3 || str.charAt(3) == '.') {
            return true;
        }
        return (str.length() == 4 || str.charAt(4) == '.') && str.charAt(2) < '4';
    }

    private static String parseContents(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        BigInteger bigIntegerShiftLeft = null;
        long j10 = 0;
        for (int r72 = 0; r72 != bArr.length; r72++) {
            int r11 = bArr[r72] & 255;
            if (j10 <= LONG_LIMIT) {
                long j11 = j10 + (r11 & CertificateBody.profileType);
                if ((r11 & 128) == 0) {
                    if (z10) {
                        if (j11 < 40) {
                            sb2.append('0');
                        } else if (j11 < 80) {
                            sb2.append('1');
                            j11 -= 40;
                        } else {
                            sb2.append('2');
                            j11 -= 80;
                        }
                        z10 = false;
                    }
                    sb2.append('.');
                    sb2.append(j11);
                    j10 = 0;
                } else {
                    j10 = j11 << 7;
                }
            } else {
                if (bigIntegerShiftLeft == null) {
                    bigIntegerShiftLeft = BigInteger.valueOf(j10);
                }
                BigInteger bigIntegerOr = bigIntegerShiftLeft.or(BigInteger.valueOf(r11 & CertificateBody.profileType));
                if ((r11 & 128) == 0) {
                    if (z10) {
                        sb2.append('2');
                        bigIntegerOr = bigIntegerOr.subtract(BigInteger.valueOf(80L));
                        z10 = false;
                    }
                    sb2.append('.');
                    sb2.append(bigIntegerOr);
                    bigIntegerShiftLeft = null;
                    j10 = 0;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0041  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004b -> B:5:0x0026). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] parseIdentifier(java.lang.String r7) throws java.lang.NumberFormatException {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            org.bouncycastle.asn1.OIDTokenizer r1 = new org.bouncycastle.asn1.OIDTokenizer
            r1.<init>(r7)
            java.lang.String r7 = r1.nextToken()
            int r7 = java.lang.Integer.parseInt(r7)
            int r7 = r7 * 40
            java.lang.String r2 = r1.nextToken()
            int r3 = r2.length()
            r4 = 18
            if (r3 > r4) goto L2a
            long r5 = (long) r7
            long r2 = java.lang.Long.parseLong(r2)
            long r2 = r2 + r5
        L26:
            org.bouncycastle.asn1.ASN1RelativeOID.writeField(r0, r2)
            goto L3b
        L2a:
            java.math.BigInteger r3 = new java.math.BigInteger
            r3.<init>(r2)
            long r5 = (long) r7
            java.math.BigInteger r7 = java.math.BigInteger.valueOf(r5)
            java.math.BigInteger r7 = r3.add(r7)
            org.bouncycastle.asn1.ASN1RelativeOID.writeField(r0, r7)
        L3b:
            boolean r7 = r1.hasMoreTokens()
            if (r7 == 0) goto L59
            java.lang.String r7 = r1.nextToken()
            int r2 = r7.length()
            if (r2 > r4) goto L50
            long r2 = java.lang.Long.parseLong(r7)
            goto L26
        L50:
            java.math.BigInteger r2 = new java.math.BigInteger
            r2.<init>(r7)
            org.bouncycastle.asn1.ASN1RelativeOID.writeField(r0, r2)
            goto L3b
        L59:
            byte[] r7 = r0.toByteArray()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.ASN1ObjectIdentifier.parseIdentifier(java.lang.String):byte[]");
    }

    public static ASN1ObjectIdentifier tryFromID(String str) throws NumberFormatException {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (str.length() > MAX_IDENTIFIER_LENGTH || !isValidIdentifier(str)) {
            return null;
        }
        byte[] identifier = parseIdentifier(str);
        if (identifier.length <= 4096) {
            return new ASN1ObjectIdentifier(identifier, str);
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (this == aSN1Primitive) {
            return true;
        }
        if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
            return Arrays.areEqual(this.contents, ((ASN1ObjectIdentifier) aSN1Primitive).contents);
        }
        return false;
    }

    public ASN1ObjectIdentifier branch(String str) {
        ASN1RelativeOID.checkIdentifier(str);
        byte[] identifier = ASN1RelativeOID.parseIdentifier(str);
        checkContentsLength(this.contents.length + identifier.length);
        return new ASN1ObjectIdentifier(Arrays.concatenate(this.contents, identifier), getId() + "." + str);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        aSN1OutputStream.writeEncodingDL(z10, 6, this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) {
        return ASN1OutputStream.getLengthOfEncodingDL(z10, this.contents.length);
    }

    public synchronized String getId() {
        if (this.identifier == null) {
            this.identifier = parseContents(this.contents);
        }
        return this.identifier;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    public ASN1ObjectIdentifier intern() {
        OidHandle oidHandle = new OidHandle(this.contents);
        ConcurrentMap<OidHandle, ASN1ObjectIdentifier> concurrentMap = pool;
        ASN1ObjectIdentifier aSN1ObjectIdentifier = concurrentMap.get(oidHandle);
        if (aSN1ObjectIdentifier != null) {
            return aSN1ObjectIdentifier;
        }
        synchronized (concurrentMap) {
            if (concurrentMap.containsKey(oidHandle)) {
                return concurrentMap.get(oidHandle);
            }
            concurrentMap.put(oidHandle, this);
            return this;
        }
    }

    public boolean on(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        byte[] bArr = this.contents;
        byte[] bArr2 = aSN1ObjectIdentifier.contents;
        int length = bArr2.length;
        return bArr.length > length && Arrays.areEqual(bArr, 0, length, bArr2, 0, length);
    }

    public String toString() {
        return getId();
    }
}
