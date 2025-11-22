package org.bouncycastle.jcajce.provider.digest;

import androidx.constraintlayout.core.a;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.macs.OldHMac;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseMac;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* loaded from: classes2.dex */
public class SHA384 {

    public static class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new SHA384Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.digest = new SHA384Digest((SHA384Digest) this.digest);
            return digest;
        }
    }

    public static class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new SHA384Digest()));
        }
    }

    public static class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACSHA384", KyberEngine.KyberPolyBytes, new CipherKeyGenerator());
        }
    }

    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = SHA384.class.getName();

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb2 = new StringBuilder();
            String str = PREFIX;
            a.i(sb2, str, "$Digest", configurableProvider, "MessageDigest.SHA-384");
            StringBuilder sbD = androidx.room.util.a.d(androidx.room.util.a.d(androidx.appcompat.graphics.drawable.a.h(androidx.fragment.app.a.d(configurableProvider, "Alg.Alias.MessageDigest.SHA384", McElieceCCA2KeyGenParameterSpec.SHA384, "Alg.Alias.MessageDigest."), NISTObjectIdentifiers.id_sha384, configurableProvider, McElieceCCA2KeyGenParameterSpec.SHA384, str), "$OldSHA384", configurableProvider, "Mac.OLDHMACSHA384", str), "$HashMac", configurableProvider, "Mac.PBEWITHHMACSHA384", str);
            sbD.append("$HashMac");
            addHMACAlgorithm(configurableProvider, "SHA384", sbD.toString(), android.support.v4.media.a.f(str, "$KeyGenerator"));
            addHMACAlias(configurableProvider, "SHA384", PKCSObjectIdentifiers.id_hmacWithSHA384);
        }
    }

    public static class OldSHA384 extends BaseMac {
        public OldSHA384() {
            super(new OldHMac(new SHA384Digest()));
        }
    }

    private SHA384() {
    }
}
