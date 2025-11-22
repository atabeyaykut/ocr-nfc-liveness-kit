package org.bouncycastle.pqc.asn1;

import androidx.camera.core.impl.utils.f;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

/* loaded from: classes2.dex */
public class XMSSMTKeyParams extends ASN1Object {
    private final int height;
    private final int layers;
    private final AlgorithmIdentifier treeDigest;
    private final ASN1Integer version;

    public XMSSMTKeyParams(int r42, int r52, AlgorithmIdentifier algorithmIdentifier) {
        this.version = new ASN1Integer(0L);
        this.height = r42;
        this.layers = r52;
        this.treeDigest = algorithmIdentifier;
    }

    private XMSSMTKeyParams(ASN1Sequence aSN1Sequence) {
        this.version = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0));
        this.height = f.f(aSN1Sequence, 1);
        this.layers = f.f(aSN1Sequence, 2);
        this.treeDigest = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(3));
    }

    public static XMSSMTKeyParams getInstance(Object obj) {
        if (obj instanceof XMSSMTKeyParams) {
            return (XMSSMTKeyParams) obj;
        }
        if (obj != null) {
            return new XMSSMTKeyParams(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int getHeight() {
        return this.height;
    }

    public int getLayers() {
        return this.layers;
    }

    public AlgorithmIdentifier getTreeDigest() {
        return this.treeDigest;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.version);
        aSN1EncodableVector.add(new ASN1Integer(this.height));
        aSN1EncodableVector.add(new ASN1Integer(this.layers));
        aSN1EncodableVector.add(this.treeDigest);
        return new DERSequence(aSN1EncodableVector);
    }
}
