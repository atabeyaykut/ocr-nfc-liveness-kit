package org.bouncycastle.asn1.x509;

import ab.b;
import org.bouncycastle.asn1.ASN1BMPString;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UTF8String;
import org.bouncycastle.asn1.ASN1VisibleString;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.DERVisibleString;

/* loaded from: classes2.dex */
public class DisplayText extends ASN1Object implements ASN1Choice {
    public static final int CONTENT_TYPE_BMPSTRING = 1;
    public static final int CONTENT_TYPE_IA5STRING = 0;
    public static final int CONTENT_TYPE_UTF8STRING = 2;
    public static final int CONTENT_TYPE_VISIBLESTRING = 3;
    public static final int DISPLAY_TEXT_MAXIMUM_SIZE = 200;
    int contentType;
    ASN1String contents;

    public DisplayText(int r32, String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.contentType = r32;
        ASN1String dERUTF8String = r32 != 0 ? r32 != 1 ? (r32 == 2 || r32 != 3) ? new DERUTF8String(str) : new DERVisibleString(str) : new DERBMPString(str) : new DERIA5String(str);
        this.contents = dERUTF8String;
    }

    public DisplayText(String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.contentType = 2;
        this.contents = new DERUTF8String(str);
    }

    private DisplayText(ASN1String aSN1String) {
        int r22;
        this.contents = aSN1String;
        if (aSN1String instanceof ASN1UTF8String) {
            r22 = 2;
        } else if (aSN1String instanceof ASN1BMPString) {
            r22 = 1;
        } else if (aSN1String instanceof ASN1IA5String) {
            r22 = 0;
        } else {
            if (!(aSN1String instanceof ASN1VisibleString)) {
                throw new IllegalArgumentException("unknown STRING type in DisplayText");
            }
            r22 = 3;
        }
        this.contentType = r22;
    }

    public static DisplayText getInstance(Object obj) {
        if (obj instanceof ASN1String) {
            return new DisplayText((ASN1String) obj);
        }
        if (obj == null || (obj instanceof DisplayText)) {
            return (DisplayText) obj;
        }
        throw new IllegalArgumentException(b.f(obj, "illegal object in getInstance: "));
    }

    public static DisplayText getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        if (z10) {
            return getInstance(aSN1TaggedObject.getExplicitBaseObject());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    public String getString() {
        return this.contents.getString();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return (ASN1Primitive) this.contents;
    }
}
