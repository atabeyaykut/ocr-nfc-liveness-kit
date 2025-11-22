package org.bouncycastle.pqc.jcajce.provider.gmss;

import androidx.browser.browseractions.a;
import androidx.camera.camera2.internal.c;
import java.security.PublicKey;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.asn1.GMSSPublicKey;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.asn1.ParSet;
import org.bouncycastle.pqc.jcajce.provider.util.KeyUtil;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSParameters;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSPublicKeyParameters;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class BCGMSSPublicKey implements CipherParameters, PublicKey {
    private static final long serialVersionUID = 1;
    private GMSSParameters gmssParameterSet;
    private GMSSParameters gmssParams;
    private byte[] publicKeyBytes;

    public BCGMSSPublicKey(GMSSPublicKeyParameters gMSSPublicKeyParameters) {
        this(gMSSPublicKeyParameters.getPublicKey(), gMSSPublicKeyParameters.getParameters());
    }

    public BCGMSSPublicKey(byte[] bArr, GMSSParameters gMSSParameters) {
        this.gmssParameterSet = gMSSParameters;
        this.publicKeyBytes = bArr;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "GMSS";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return KeyUtil.getEncodedSubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.gmss, new ParSet(this.gmssParameterSet.getNumOfLayers(), this.gmssParameterSet.getHeightOfTrees(), this.gmssParameterSet.getWinternitzParameter(), this.gmssParameterSet.getK()).toASN1Primitive()), new GMSSPublicKey(this.publicKeyBytes));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public GMSSParameters getParameterSet() {
        return this.gmssParameterSet;
    }

    public byte[] getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    public String toString() {
        String strH = c.h(new StringBuilder("GMSS public key : "), new String(Hex.encode(this.publicKeyBytes)), "\nHeight of Trees: \n");
        for (int r12 = 0; r12 < this.gmssParameterSet.getHeightOfTrees().length; r12++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strH);
            sb2.append("Layer ");
            sb2.append(r12);
            sb2.append(" : ");
            sb2.append(this.gmssParameterSet.getHeightOfTrees()[r12]);
            sb2.append(" WinternitzParameter: ");
            sb2.append(this.gmssParameterSet.getWinternitzParameter()[r12]);
            sb2.append(" K: ");
            strH = a.b(sb2, this.gmssParameterSet.getK()[r12], "\n");
        }
        return strH;
    }
}
