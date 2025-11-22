package org.bouncycastle.jcajce.provider.digest;

import ab.b;
import androidx.constraintlayout.core.a;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHA512tDigest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.macs.OldHMac;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseMac;
import org.bouncycastle.pqc.crypto.sphincs.SPHINCSKeyParameters;

/* loaded from: classes2.dex */
public class SHA512 {

    public static class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new SHA512Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.digest = new SHA512Digest((SHA512Digest) this.digest);
            return digest;
        }
    }

    public static class DigestT extends BCMessageDigest implements Cloneable {
        public DigestT(int r22) {
            super(new SHA512tDigest(r22));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            DigestT digestT = (DigestT) super.clone();
            digestT.digest = new SHA512tDigest((SHA512tDigest) this.digest);
            return digestT;
        }
    }

    public static class DigestT224 extends DigestT {
        public DigestT224() {
            super(BERTags.FLAGS);
        }
    }

    public static class DigestT256 extends DigestT {
        public DigestT256() {
            super(256);
        }
    }

    public static class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new SHA512Digest()));
        }
    }

    public static class HashMacT224 extends BaseMac {
        public HashMacT224() {
            super(new HMac(new SHA512tDigest(BERTags.FLAGS)));
        }
    }

    public static class HashMacT256 extends BaseMac {
        public HashMacT256() {
            super(new HMac(new SHA512tDigest(256)));
        }
    }

    public static class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACSHA512", 512, new CipherKeyGenerator());
        }
    }

    public static class KeyGeneratorT224 extends BaseKeyGenerator {
        public KeyGeneratorT224() {
            super("HMACSHA512/224", BERTags.FLAGS, new CipherKeyGenerator());
        }
    }

    public static class KeyGeneratorT256 extends BaseKeyGenerator {
        public KeyGeneratorT256() {
            super("HMACSHA512/256", 256, new CipherKeyGenerator());
        }
    }

    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = SHA512.class.getName();

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb2 = new StringBuilder();
            String str = PREFIX;
            a.i(sb2, str, "$Digest", configurableProvider, "MessageDigest.SHA-512");
            b.i(androidx.appcompat.graphics.drawable.a.h(androidx.fragment.app.a.d(configurableProvider, "Alg.Alias.MessageDigest.SHA512", "SHA-512", "Alg.Alias.MessageDigest."), NISTObjectIdentifiers.id_sha512, configurableProvider, "SHA-512", str), "$DigestT224", configurableProvider, "MessageDigest.SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512/224", "SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512224", "SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA-512(224)", "SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512(224)", "SHA-512/224");
            b.i(androidx.appcompat.graphics.drawable.a.h(new StringBuilder("Alg.Alias.MessageDigest."), NISTObjectIdentifiers.id_sha512_224, configurableProvider, "SHA-512/224", str), "$DigestT256", configurableProvider, "MessageDigest.SHA-512/256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512/256", SPHINCSKeyParameters.SHA512_256);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512256", SPHINCSKeyParameters.SHA512_256);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA-512(256)", SPHINCSKeyParameters.SHA512_256);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512(256)", SPHINCSKeyParameters.SHA512_256);
            StringBuilder sbD = androidx.room.util.a.d(androidx.room.util.a.d(androidx.appcompat.graphics.drawable.a.h(new StringBuilder("Alg.Alias.MessageDigest."), NISTObjectIdentifiers.id_sha512_256, configurableProvider, SPHINCSKeyParameters.SHA512_256, str), "$OldSHA512", configurableProvider, "Mac.OLDHMACSHA512", str), "$HashMac", configurableProvider, "Mac.PBEWITHHMACSHA512", str);
            sbD.append("$HashMac");
            addHMACAlgorithm(configurableProvider, "SHA512", sbD.toString(), android.support.v4.media.a.f(str, "$KeyGenerator"));
            addHMACAlias(configurableProvider, "SHA512", PKCSObjectIdentifiers.id_hmacWithSHA512);
            addHMACAlgorithm(configurableProvider, "SHA512/224", android.support.v4.media.a.f(str, "$HashMacT224"), android.support.v4.media.a.f(str, "$KeyGeneratorT224"));
            addHMACAlgorithm(configurableProvider, "SHA512/256", android.support.v4.media.a.f(str, "$HashMacT256"), android.support.v4.media.a.f(str, "$KeyGeneratorT256"));
        }
    }

    public static class OldSHA512 extends BaseMac {
        public OldSHA512() {
            super(new OldHMac(new SHA512Digest()));
        }
    }

    private SHA512() {
    }
}
