package org.bouncycastle.asn1;

import ab.b;
import android.support.v4.media.a;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public class ASN1GeneralizedTime extends ASN1Primitive {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1GeneralizedTime.class, 24) { // from class: org.bouncycastle.asn1.ASN1GeneralizedTime.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1GeneralizedTime.createPrimitive(dEROctetString.getOctets());
        }
    };
    final byte[] contents;

    public ASN1GeneralizedTime(String str) {
        this.contents = Strings.toByteArray(str);
        try {
            getDate();
        } catch (ParseException e10) {
            throw new IllegalArgumentException("invalid date string: " + e10.getMessage());
        }
    }

    public ASN1GeneralizedTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", LocaleUtil.EN_Locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = Strings.toByteArray(simpleDateFormat.format(date));
    }

    public ASN1GeneralizedTime(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = Strings.toByteArray(simpleDateFormat.format(date));
    }

    public ASN1GeneralizedTime(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("GeneralizedTime string too short");
        }
        this.contents = bArr;
        if (!isDigit(0) || !isDigit(1) || !isDigit(2) || !isDigit(3)) {
            throw new IllegalArgumentException("illegal characters in GeneralizedTime string");
        }
    }

    private SimpleDateFormat calculateGMTDateFormat() {
        SimpleDateFormat simpleDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : hasSeconds() ? new SimpleDateFormat("yyyyMMddHHmmssz") : hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat;
    }

    private String calculateGMTOffset(String str) {
        String str2;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str2 = "-";
        } else {
            str2 = "+";
        }
        int r6 = rawOffset / 3600000;
        int r32 = (rawOffset - (((r6 * 60) * 60) * 1000)) / 60000;
        try {
            if (timeZone.useDaylightTime()) {
                if (hasFractionalSeconds()) {
                    str = pruneFractionalSeconds(str);
                }
                if (timeZone.inDaylightTime(calculateGMTDateFormat().parse(str + "GMT" + str2 + convert(r6) + ":" + convert(r32)))) {
                    r6 += str2.equals("+") ? 1 : -1;
                }
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str2 + convert(r6) + ":" + convert(r32);
    }

    private String convert(int r22) {
        return r22 < 10 ? a.d("0", r22) : Integer.toString(r22);
    }

    public static ASN1GeneralizedTime createPrimitive(byte[] bArr) {
        return new ASN1GeneralizedTime(bArr);
    }

    public static ASN1GeneralizedTime getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1GeneralizedTime)) {
            return (ASN1GeneralizedTime) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1GeneralizedTime) {
                return (ASN1GeneralizedTime) aSN1Primitive;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException(b.f(obj, "illegal object in getInstance: "));
        }
        try {
            return (ASN1GeneralizedTime) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException(androidx.constraintlayout.core.a.b(e10, new StringBuilder("encoding error in getInstance: ")));
        }
    }

    public static ASN1GeneralizedTime getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return (ASN1GeneralizedTime) TYPE.getContextInstance(aSN1TaggedObject, z10);
    }

    private boolean isDigit(int r32) {
        byte b10;
        byte[] bArr = this.contents;
        return bArr.length > r32 && (b10 = bArr[r32]) >= 48 && b10 <= 57;
    }

    private String pruneFractionalSeconds(String str) {
        String str2;
        StringBuilder sb2;
        char cCharAt;
        String strSubstring = str.substring(14);
        int r32 = 1;
        while (r32 < strSubstring.length() && '0' <= (cCharAt = strSubstring.charAt(r32)) && cCharAt <= '9') {
            r32++;
        }
        int r42 = r32 - 1;
        if (r42 > 3) {
            str2 = strSubstring.substring(0, 4) + strSubstring.substring(r32);
            sb2 = new StringBuilder();
        } else if (r42 == 1) {
            str2 = strSubstring.substring(0, r32) + "00" + strSubstring.substring(r32);
            sb2 = new StringBuilder();
        } else {
            if (r42 != 2) {
                return str;
            }
            str2 = strSubstring.substring(0, r32) + "0" + strSubstring.substring(r32);
            sb2 = new StringBuilder();
        }
        sb2.append(str.substring(0, 14));
        sb2.append(str2);
        return sb2.toString();
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1GeneralizedTime) {
            return Arrays.areEqual(this.contents, ((ASN1GeneralizedTime) aSN1Primitive).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        aSN1OutputStream.writeEncodingDL(z10, 24, this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) {
        return ASN1OutputStream.getLengthOfEncodingDL(z10, this.contents.length);
    }

    public Date getDate() throws ParseException {
        SimpleDateFormat simpleDateFormatCalculateGMTDateFormat;
        String strFromByteArray = Strings.fromByteArray(this.contents);
        if (strFromByteArray.endsWith("Z")) {
            simpleDateFormatCalculateGMTDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'", LocaleUtil.EN_Locale) : hasSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss'Z'", LocaleUtil.EN_Locale) : hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmm'Z'", LocaleUtil.EN_Locale) : new SimpleDateFormat("yyyyMMddHH'Z'", LocaleUtil.EN_Locale);
            simpleDateFormatCalculateGMTDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else if (strFromByteArray.indexOf(45) > 0 || strFromByteArray.indexOf(43) > 0) {
            strFromByteArray = getTime();
            simpleDateFormatCalculateGMTDateFormat = calculateGMTDateFormat();
        } else {
            simpleDateFormatCalculateGMTDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : hasSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss") : hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
            simpleDateFormatCalculateGMTDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (hasFractionalSeconds()) {
            strFromByteArray = pruneFractionalSeconds(strFromByteArray);
        }
        return simpleDateFormatCalculateGMTDateFormat.parse(strFromByteArray);
    }

    public String getTime() {
        String strFromByteArray = Strings.fromByteArray(this.contents);
        if (strFromByteArray.charAt(strFromByteArray.length() - 1) == 'Z') {
            return strFromByteArray.substring(0, strFromByteArray.length() - 1) + "GMT+00:00";
        }
        int length = strFromByteArray.length() - 6;
        char cCharAt = strFromByteArray.charAt(length);
        if ((cCharAt == '-' || cCharAt == '+') && strFromByteArray.indexOf("GMT") == length - 3) {
            return strFromByteArray;
        }
        int length2 = strFromByteArray.length() - 5;
        char cCharAt2 = strFromByteArray.charAt(length2);
        if (cCharAt2 == '-' || cCharAt2 == '+') {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strFromByteArray.substring(0, length2));
            sb2.append("GMT");
            int r32 = length2 + 3;
            sb2.append(strFromByteArray.substring(length2, r32));
            sb2.append(":");
            sb2.append(strFromByteArray.substring(r32));
            return sb2.toString();
        }
        int length3 = strFromByteArray.length() - 3;
        char cCharAt3 = strFromByteArray.charAt(length3);
        if (cCharAt3 != '-' && cCharAt3 != '+') {
            StringBuilder sbE = androidx.constraintlayout.core.a.e(strFromByteArray);
            sbE.append(calculateGMTOffset(strFromByteArray));
            return sbE.toString();
        }
        return strFromByteArray.substring(0, length3) + "GMT" + strFromByteArray.substring(length3) + ":00";
    }

    public String getTimeString() {
        return Strings.fromByteArray(this.contents);
    }

    public boolean hasFractionalSeconds() {
        int r12 = 0;
        while (true) {
            byte[] bArr = this.contents;
            if (r12 == bArr.length) {
                return false;
            }
            if (bArr[r12] == 46 && r12 == 14) {
                return true;
            }
            r12++;
        }
    }

    public boolean hasMinutes() {
        return isDigit(10) && isDigit(11);
    }

    public boolean hasSeconds() {
        return isDigit(12) && isDigit(13);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERGeneralizedTime(this.contents);
    }
}
