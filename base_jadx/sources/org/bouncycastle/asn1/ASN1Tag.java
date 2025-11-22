package org.bouncycastle.asn1;

/* loaded from: classes2.dex */
final class ASN1Tag {
    private final int tagClass;
    private final int tagNumber;

    private ASN1Tag(int r12, int r22) {
        this.tagClass = r12;
        this.tagNumber = r22;
    }

    public static ASN1Tag create(int r12, int r22) {
        return new ASN1Tag(r12, r22);
    }

    public int getTagClass() {
        return this.tagClass;
    }

    public int getTagNumber() {
        return this.tagNumber;
    }
}
