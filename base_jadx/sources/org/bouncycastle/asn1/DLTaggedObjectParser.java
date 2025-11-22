package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes2.dex */
class DLTaggedObjectParser extends BERTaggedObjectParser {
    private final boolean _constructed;

    public DLTaggedObjectParser(int r12, int r22, boolean z10, ASN1StreamParser aSN1StreamParser) {
        super(r12, r22, aSN1StreamParser);
        this._constructed = z10;
    }

    private ASN1StreamParser checkConstructed() throws IOException {
        if (this._constructed) {
            return this._parser;
        }
        throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return this._parser.loadTaggedDL(this._tagClass, this._tagNo, this._constructed);
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z10, int r22) throws IOException {
        return z10 ? checkConstructed().parseObject(r22) : this._constructed ? this._parser.parseImplicitConstructedDL(r22) : this._parser.parseImplicitPrimitive(r22);
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() throws IOException {
        return checkConstructed().readObject();
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException {
        return checkConstructed().parseTaggedObject();
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int r42, int r52) throws IOException {
        return new DLTaggedObjectParser(r42, r52, this._constructed, this._parser);
    }
}
