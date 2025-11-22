package org.bouncycastle.jcajce;

import android.support.v4.media.a;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.internal.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.CompositeSignaturesConstants;
import org.bouncycastle.jcajce.provider.asymmetric.compositesignatures.KeyFactorySpi;
import org.bouncycastle.util.Exceptions;

/* loaded from: classes2.dex */
public class CompositePrivateKey implements PrivateKey {
    private ASN1ObjectIdentifier algorithmIdentifier;
    private final List<PrivateKey> keys;

    public CompositePrivateKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, PrivateKey... privateKeyArr) {
        this.algorithmIdentifier = aSN1ObjectIdentifier;
        if (privateKeyArr == null || privateKeyArr.length == 0) {
            throw new IllegalArgumentException("at least one private key must be provided for the composite private key");
        }
        ArrayList arrayList = new ArrayList(privateKeyArr.length);
        for (PrivateKey privateKey : privateKeyArr) {
            arrayList.add(privateKey);
        }
        this.keys = Collections.unmodifiableList(arrayList);
    }

    public CompositePrivateKey(PrivateKeyInfo privateKeyInfo) {
        try {
            if (!Arrays.asList(CompositeSignaturesConstants.supportedIdentifiers).contains(privateKeyInfo.getPrivateKeyAlgorithm().getAlgorithm())) {
                throw new IllegalStateException("Unable to create CompositePrivateKey from PrivateKeyInfo");
            }
            CompositePrivateKey compositePrivateKey = (CompositePrivateKey) new KeyFactorySpi().generatePrivate(privateKeyInfo);
            if (compositePrivateKey == null) {
                throw new IllegalStateException("Unable to create CompositePrivateKey from PrivateKeyInfo");
            }
            this.keys = compositePrivateKey.getPrivateKeys();
            this.algorithmIdentifier = compositePrivateKey.getAlgorithmIdentifier();
        } catch (IOException e10) {
            throw Exceptions.illegalStateException(e10.getMessage(), e10);
        }
    }

    public CompositePrivateKey(PrivateKey... privateKeyArr) {
        this(MiscObjectIdentifiers.id_composite_key, privateKeyArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CompositePrivateKey)) {
            return false;
        }
        CompositePrivateKey compositePrivateKey = (CompositePrivateKey) obj;
        return compositePrivateKey.getAlgorithmIdentifier().equals((ASN1Primitive) this.algorithmIdentifier) && this.keys.equals(compositePrivateKey.keys);
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return CompositeSignaturesConstants.ASN1IdentifierAlgorithmNameMap.get(this.algorithmIdentifier).getId();
    }

    public ASN1ObjectIdentifier getAlgorithmIdentifier() {
        return this.algorithmIdentifier;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        for (int r12 = 0; r12 < this.keys.size(); r12++) {
            aSN1EncodableVector.add(PrivateKeyInfo.getInstance(this.keys.get(r12).getEncoded()));
        }
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(this.algorithmIdentifier), new DERSequence(aSN1EncodableVector)).getEncoded(ASN1Encoding.DER);
        } catch (IOException e10) {
            throw new IllegalStateException(a.c(e10, new StringBuilder("unable to encode composite private key: ")));
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public List<PrivateKey> getPrivateKeys() {
        return this.keys;
    }

    public int hashCode() {
        return this.keys.hashCode();
    }
}
