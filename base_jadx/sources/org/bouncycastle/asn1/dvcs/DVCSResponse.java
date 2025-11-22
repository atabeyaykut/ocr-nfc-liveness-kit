package org.bouncycastle.asn1.dvcs;

import ab.b;
import android.support.v4.media.a;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERTaggedObject;

/* loaded from: classes2.dex */
public class DVCSResponse extends ASN1Object implements ASN1Choice {
    private DVCSCertInfo dvCertInfo;
    private DVCSErrorNotice dvErrorNote;

    public DVCSResponse(DVCSCertInfo dVCSCertInfo) {
        this.dvCertInfo = dVCSCertInfo;
    }

    public DVCSResponse(DVCSErrorNotice dVCSErrorNotice) {
        this.dvErrorNote = dVCSErrorNotice;
    }

    public static DVCSResponse getInstance(Object obj) {
        if (obj == null || (obj instanceof DVCSResponse)) {
            return (DVCSResponse) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException(a.c(e10, new StringBuilder("failed to construct sequence from byte[]: ")));
            }
        }
        if (obj instanceof ASN1Sequence) {
            return new DVCSResponse(DVCSCertInfo.getInstance(obj));
        }
        if (obj instanceof ASN1TaggedObject) {
            return new DVCSResponse(DVCSErrorNotice.getInstance(ASN1TaggedObject.getInstance(obj), false));
        }
        throw new IllegalArgumentException(b.f(obj, "Couldn't convert from object to DVCSResponse: "));
    }

    public static DVCSResponse getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z10));
    }

    public DVCSCertInfo getCertInfo() {
        return this.dvCertInfo;
    }

    public DVCSErrorNotice getErrorNotice() {
        return this.dvErrorNote;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        DVCSCertInfo dVCSCertInfo = this.dvCertInfo;
        return dVCSCertInfo != null ? dVCSCertInfo.toASN1Primitive() : new DERTaggedObject(false, 0, (ASN1Encodable) this.dvErrorNote);
    }

    public String toString() {
        StringBuilder sb2;
        String string;
        if (this.dvCertInfo != null) {
            sb2 = new StringBuilder("DVCSResponse {\ndvCertInfo: ");
            string = this.dvCertInfo.toString();
        } else {
            sb2 = new StringBuilder("DVCSResponse {\ndvErrorNote: ");
            string = this.dvErrorNote.toString();
        }
        sb2.append(string);
        sb2.append("}\n");
        return sb2.toString();
    }
}
