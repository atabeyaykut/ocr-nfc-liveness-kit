package org.bouncycastle.asn1.x500;

import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.x500.style.BCStyle;

/* loaded from: classes2.dex */
public class X500NameBuilder {
    private Vector rdns;
    private X500NameStyle template;

    public X500NameBuilder() {
        this(BCStyle.INSTANCE);
    }

    public X500NameBuilder(X500NameStyle x500NameStyle) {
        this.rdns = new Vector();
        this.template = x500NameStyle;
    }

    public X500NameBuilder addMultiValuedRDN(ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr, String[] strArr) {
        int length = strArr.length;
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[length];
        for (int r22 = 0; r22 != length; r22++) {
            aSN1EncodableArr[r22] = this.template.stringToValue(aSN1ObjectIdentifierArr[r22], strArr[r22]);
        }
        return addMultiValuedRDN(aSN1ObjectIdentifierArr, aSN1EncodableArr);
    }

    public X500NameBuilder addMultiValuedRDN(ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr, ASN1Encodable[] aSN1EncodableArr) {
        AttributeTypeAndValue[] attributeTypeAndValueArr = new AttributeTypeAndValue[aSN1ObjectIdentifierArr.length];
        for (int r12 = 0; r12 != aSN1ObjectIdentifierArr.length; r12++) {
            attributeTypeAndValueArr[r12] = new AttributeTypeAndValue(aSN1ObjectIdentifierArr[r12], aSN1EncodableArr[r12]);
        }
        return addMultiValuedRDN(attributeTypeAndValueArr);
    }

    public X500NameBuilder addMultiValuedRDN(AttributeTypeAndValue[] attributeTypeAndValueArr) {
        this.rdns.addElement(new RDN(attributeTypeAndValueArr));
        return this;
    }

    public X500NameBuilder addRDN(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        addRDN(aSN1ObjectIdentifier, this.template.stringToValue(aSN1ObjectIdentifier, str));
        return this;
    }

    public X500NameBuilder addRDN(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.rdns.addElement(new RDN(aSN1ObjectIdentifier, aSN1Encodable));
        return this;
    }

    public X500NameBuilder addRDN(AttributeTypeAndValue attributeTypeAndValue) {
        this.rdns.addElement(new RDN(attributeTypeAndValue));
        return this;
    }

    public X500Name build() {
        int size = this.rdns.size();
        RDN[] rdnArr = new RDN[size];
        for (int r22 = 0; r22 != size; r22++) {
            rdnArr[r22] = (RDN) this.rdns.elementAt(r22);
        }
        return new X500Name(this.template, rdnArr);
    }
}
