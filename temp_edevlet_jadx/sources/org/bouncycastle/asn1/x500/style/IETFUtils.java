package org.bouncycastle.asn1.x500.style;

import androidx.browser.browseractions.a;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1UniversalString;
import org.bouncycastle.asn1.x500.AttributeTypeAndValue;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500NameBuilder;
import org.bouncycastle.asn1.x500.X500NameStyle;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class IETFUtils {
    private static void addMultiValuedRDN(X500NameStyle x500NameStyle, X500NameBuilder x500NameBuilder, X500NameTokenizer x500NameTokenizer) {
        String strNextToken = x500NameTokenizer.nextToken();
        if (strNextToken == null) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        if (!x500NameTokenizer.hasMoreTokens()) {
            addRDN(x500NameStyle, x500NameBuilder, strNextToken);
            return;
        }
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        do {
            collectAttributeTypeAndValue(x500NameStyle, vector, vector2, strNextToken);
            strNextToken = x500NameTokenizer.nextToken();
        } while (strNextToken != null);
        x500NameBuilder.addMultiValuedRDN(toOIDArray(vector), toValueArray(vector2));
    }

    private static void addRDN(X500NameStyle x500NameStyle, X500NameBuilder x500NameBuilder, String str) {
        X500NameTokenizer x500NameTokenizer = new X500NameTokenizer(str, '=');
        x500NameBuilder.addRDN(x500NameStyle.attrNameToOID(nextToken(x500NameTokenizer, true).trim()), unescape(nextToken(x500NameTokenizer, false)));
    }

    private static void addRDNs(X500NameStyle x500NameStyle, X500NameBuilder x500NameBuilder, X500NameTokenizer x500NameTokenizer) {
        while (true) {
            String strNextToken = x500NameTokenizer.nextToken();
            if (strNextToken == null) {
                return;
            }
            if (strNextToken.indexOf(43) >= 0) {
                addMultiValuedRDN(x500NameStyle, x500NameBuilder, new X500NameTokenizer(strNextToken, '+'));
            } else {
                addRDN(x500NameStyle, x500NameBuilder, strNextToken);
            }
        }
    }

    public static void appendRDN(StringBuffer stringBuffer, RDN rdn, Hashtable hashtable) {
        if (!rdn.isMultiValued()) {
            if (rdn.getFirst() != null) {
                appendTypeAndValue(stringBuffer, rdn.getFirst(), hashtable);
                return;
            }
            return;
        }
        AttributeTypeAndValue[] typesAndValues = rdn.getTypesAndValues();
        boolean z10 = true;
        for (int r22 = 0; r22 != typesAndValues.length; r22++) {
            if (z10) {
                z10 = false;
            } else {
                stringBuffer.append('+');
            }
            appendTypeAndValue(stringBuffer, typesAndValues[r22], hashtable);
        }
    }

    public static void appendTypeAndValue(StringBuffer stringBuffer, AttributeTypeAndValue attributeTypeAndValue, Hashtable hashtable) {
        String id2 = (String) hashtable.get(attributeTypeAndValue.getType());
        if (id2 == null) {
            id2 = attributeTypeAndValue.getType().getId();
        }
        stringBuffer.append(id2);
        stringBuffer.append('=');
        stringBuffer.append(valueToString(attributeTypeAndValue.getValue()));
    }

    private static boolean atvAreEqual(AttributeTypeAndValue attributeTypeAndValue, AttributeTypeAndValue attributeTypeAndValue2) {
        if (attributeTypeAndValue == attributeTypeAndValue2) {
            return true;
        }
        return attributeTypeAndValue != null && attributeTypeAndValue2 != null && attributeTypeAndValue.getType().equals((ASN1Primitive) attributeTypeAndValue2.getType()) && canonicalString(attributeTypeAndValue.getValue()).equals(canonicalString(attributeTypeAndValue2.getValue()));
    }

    public static String canonicalString(ASN1Encodable aSN1Encodable) {
        return canonicalize(valueToString(aSN1Encodable));
    }

    public static String canonicalize(String str) {
        int r12 = 0;
        if (str.length() > 0 && str.charAt(0) == '#') {
            ASN1Encodable aSN1EncodableDecodeObject = decodeObject(str);
            if (aSN1EncodableDecodeObject instanceof ASN1String) {
                str = ((ASN1String) aSN1EncodableDecodeObject).getString();
            }
        }
        String lowerCase = Strings.toLowerCase(str);
        int length = lowerCase.length();
        if (length < 2) {
            return lowerCase;
        }
        int r02 = length - 1;
        while (r12 < r02 && lowerCase.charAt(r12) == '\\' && lowerCase.charAt(r12 + 1) == ' ') {
            r12 += 2;
        }
        int r42 = r12 + 1;
        int r52 = r02;
        while (r52 > r42 && lowerCase.charAt(r52 - 1) == '\\' && lowerCase.charAt(r52) == ' ') {
            r52 -= 2;
        }
        if (r12 > 0 || r52 < r02) {
            lowerCase = lowerCase.substring(r12, r52 + 1);
        }
        return stripInternalSpaces(lowerCase);
    }

    private static void collectAttributeTypeAndValue(X500NameStyle x500NameStyle, Vector vector, Vector vector2, String str) {
        X500NameTokenizer x500NameTokenizer = new X500NameTokenizer(str, '=');
        String strNextToken = nextToken(x500NameTokenizer, true);
        String strNextToken2 = nextToken(x500NameTokenizer, false);
        ASN1ObjectIdentifier aSN1ObjectIdentifierAttrNameToOID = x500NameStyle.attrNameToOID(strNextToken.trim());
        String strUnescape = unescape(strNextToken2);
        vector.addElement(aSN1ObjectIdentifierAttrNameToOID);
        vector2.addElement(strUnescape);
    }

    private static int convertHex(char c10) {
        if ('0' > c10 || c10 > '9') {
            return (('a' > c10 || c10 > 'f') ? c10 - 'A' : c10 - 'a') + 10;
        }
        return c10 - '0';
    }

    public static ASN1ObjectIdentifier decodeAttrName(String str, Hashtable hashtable) throws NumberFormatException {
        if (str.regionMatches(true, 0, "OID.", 0, 4)) {
            return new ASN1ObjectIdentifier(str.substring(4));
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifierTryFromID = ASN1ObjectIdentifier.tryFromID(str);
        if (aSN1ObjectIdentifierTryFromID != null) {
            return aSN1ObjectIdentifierTryFromID;
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) hashtable.get(Strings.toLowerCase(str));
        if (aSN1ObjectIdentifier != null) {
            return aSN1ObjectIdentifier;
        }
        throw new IllegalArgumentException(a.a("Unknown object id - ", str, " - passed to distinguished name"));
    }

    private static ASN1Primitive decodeObject(String str) {
        try {
            return ASN1Primitive.fromByteArray(Hex.decodeStrict(str, 1, str.length() - 1));
        } catch (IOException e10) {
            throw new IllegalStateException(androidx.room.util.a.c("unknown encoding in name: ", e10));
        }
    }

    public static String[] findAttrNamesForOID(ASN1ObjectIdentifier aSN1ObjectIdentifier, Hashtable hashtable) {
        Enumeration enumerationElements = hashtable.elements();
        int r12 = 0;
        int r22 = 0;
        while (enumerationElements.hasMoreElements()) {
            if (aSN1ObjectIdentifier.equals(enumerationElements.nextElement())) {
                r22++;
            }
        }
        String[] strArr = new String[r22];
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            String str = (String) enumerationKeys.nextElement();
            if (aSN1ObjectIdentifier.equals(hashtable.get(str))) {
                strArr[r12] = str;
                r12++;
            }
        }
        return strArr;
    }

    private static boolean isHexDigit(char c10) {
        return ('0' <= c10 && c10 <= '9') || ('a' <= c10 && c10 <= 'f') || ('A' <= c10 && c10 <= 'F');
    }

    private static String nextToken(X500NameTokenizer x500NameTokenizer, boolean z10) {
        String strNextToken = x500NameTokenizer.nextToken();
        if (strNextToken == null || x500NameTokenizer.hasMoreTokens() != z10) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        return strNextToken;
    }

    public static boolean rDNAreEqual(RDN rdn, RDN rdn2) {
        if (rdn.size() != rdn2.size()) {
            return false;
        }
        AttributeTypeAndValue[] typesAndValues = rdn.getTypesAndValues();
        AttributeTypeAndValue[] typesAndValues2 = rdn2.getTypesAndValues();
        if (typesAndValues.length != typesAndValues2.length) {
            return false;
        }
        for (int r02 = 0; r02 != typesAndValues.length; r02++) {
            if (!atvAreEqual(typesAndValues[r02], typesAndValues2[r02])) {
                return false;
            }
        }
        return true;
    }

    public static RDN[] rDNsFromString(String str, X500NameStyle x500NameStyle) {
        X500NameTokenizer x500NameTokenizer = new X500NameTokenizer(str);
        X500NameBuilder x500NameBuilder = new X500NameBuilder(x500NameStyle);
        addRDNs(x500NameStyle, x500NameBuilder, x500NameTokenizer);
        return x500NameBuilder.build().getRDNs();
    }

    public static String stripInternalSpaces(String str) {
        if (str.indexOf("  ") < 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        char cCharAt = str.charAt(0);
        stringBuffer.append(cCharAt);
        for (int r22 = 1; r22 < str.length(); r22++) {
            char cCharAt2 = str.charAt(r22);
            if (cCharAt != ' ' || cCharAt2 != ' ') {
                stringBuffer.append(cCharAt2);
                cCharAt = cCharAt2;
            }
        }
        return stringBuffer.toString();
    }

    private static ASN1ObjectIdentifier[] toOIDArray(Vector vector) {
        int size = vector.size();
        ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[size];
        for (int r22 = 0; r22 != size; r22++) {
            aSN1ObjectIdentifierArr[r22] = (ASN1ObjectIdentifier) vector.elementAt(r22);
        }
        return aSN1ObjectIdentifierArr;
    }

    private static String[] toValueArray(Vector vector) {
        int size = vector.size();
        String[] strArr = new String[size];
        for (int r22 = 0; r22 != size; r22++) {
            strArr[r22] = (String) vector.elementAt(r22);
        }
        return strArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String unescape(java.lang.String r13) {
        /*
            int r0 = r13.length()
            if (r0 != 0) goto L7
            return r13
        L7:
            r0 = 92
            int r1 = r13.indexOf(r0)
            r2 = 34
            if (r1 >= 0) goto L1c
            int r1 = r13.indexOf(r2)
            if (r1 >= 0) goto L1c
            java.lang.String r13 = r13.trim()
            return r13
        L1c:
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            int r3 = r13.length()
            r1.<init>(r3)
            r3 = 0
            char r4 = r13.charAt(r3)
            r5 = 1
            if (r4 != r0) goto L3c
            char r4 = r13.charAt(r5)
            r6 = 35
            if (r4 != r6) goto L3c
            java.lang.String r4 = "\\#"
            r1.append(r4)
            r4 = 2
            goto L3d
        L3c:
            r4 = 0
        L3d:
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
        L42:
            int r11 = r13.length()
            r12 = 32
            if (r4 == r11) goto L90
            char r11 = r13.charAt(r4)
            if (r11 == r12) goto L51
            r9 = 1
        L51:
            if (r11 != r2) goto L5d
            if (r6 != 0) goto L58
            r8 = r8 ^ 1
            goto L8d
        L58:
            r1.append(r11)
            r6 = 0
            goto L8d
        L5d:
            if (r11 != r0) goto L69
            if (r6 != 0) goto L69
            if (r8 != 0) goto L69
            int r7 = r1.length()
            r6 = 1
            goto L8d
        L69:
            if (r11 != r12) goto L70
            if (r6 != 0) goto L70
            if (r9 != 0) goto L70
            goto L8d
        L70:
            if (r6 == 0) goto L58
            boolean r12 = isHexDigit(r11)
            if (r12 == 0) goto L58
            if (r10 == 0) goto L8c
            int r6 = convertHex(r10)
            int r6 = r6 * 16
            int r10 = convertHex(r11)
            int r6 = r6 + r10
            char r6 = (char) r6
            r1.append(r6)
            r6 = 0
            r10 = 0
            goto L8d
        L8c:
            r10 = r11
        L8d:
            int r4 = r4 + 1
            goto L42
        L90:
            int r13 = r1.length()
            if (r13 <= 0) goto Lb1
        L96:
            int r13 = r1.length()
            int r13 = r13 - r5
            char r13 = r1.charAt(r13)
            if (r13 != r12) goto Lb1
            int r13 = r1.length()
            int r13 = r13 - r5
            if (r7 == r13) goto Lb1
            int r13 = r1.length()
            int r13 = r13 - r5
            r1.setLength(r13)
            goto L96
        Lb1:
            java.lang.String r13 = r1.toString()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x500.style.IETFUtils.unescape(java.lang.String):java.lang.String");
    }

    public static ASN1Encodable valueFromHexString(String str, int r6) throws IOException {
        int length = (str.length() - r6) / 2;
        byte[] bArr = new byte[length];
        for (int r22 = 0; r22 != length; r22++) {
            int r32 = (r22 * 2) + r6;
            char cCharAt = str.charAt(r32);
            char cCharAt2 = str.charAt(r32 + 1);
            bArr[r22] = (byte) (convertHex(cCharAt2) | (convertHex(cCharAt) << 4));
        }
        return ASN1Primitive.fromByteArray(bArr);
    }

    public static String valueToString(ASN1Encodable aSN1Encodable) {
        StringBuffer stringBuffer = new StringBuffer();
        int r42 = 0;
        if (!(aSN1Encodable instanceof ASN1String) || (aSN1Encodable instanceof ASN1UniversalString)) {
            try {
                stringBuffer.append('#');
                stringBuffer.append(Hex.toHexString(aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER)));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Other value has no encoded form");
            }
        } else {
            String string = ((ASN1String) aSN1Encodable).getString();
            if (string.length() > 0 && string.charAt(0) == '#') {
                stringBuffer.append('\\');
            }
            stringBuffer.append(string);
        }
        int length = stringBuffer.length();
        int r6 = (stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#') ? 2 : 0;
        while (r6 != length) {
            char cCharAt = stringBuffer.charAt(r6);
            if (cCharAt != '\"' && cCharAt != '\\' && cCharAt != '+' && cCharAt != ',') {
                switch (cCharAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        r6++;
                }
            }
            stringBuffer.insert(r6, "\\");
            r6 += 2;
            length++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.length() > r42 && stringBuffer.charAt(r42) == ' ') {
                stringBuffer.insert(r42, "\\");
                r42 += 2;
            }
        }
        for (int length2 = stringBuffer.length() - 1; length2 >= r42 && stringBuffer.charAt(length2) == ' '; length2--) {
            stringBuffer.insert(length2, '\\');
        }
        return stringBuffer.toString();
    }
}
