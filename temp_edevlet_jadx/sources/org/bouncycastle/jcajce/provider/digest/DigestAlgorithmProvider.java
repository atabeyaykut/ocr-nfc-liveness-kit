package org.bouncycastle.jcajce.provider.digest;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* loaded from: classes2.dex */
abstract class DigestAlgorithmProvider extends AlgorithmProvider {
    public void addHMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String strE = b.e("HMAC", str);
        configurableProvider.addAlgorithm("Mac." + strE, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC-" + str, strE);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC/" + str, strE);
        configurableProvider.addAlgorithm("KeyGenerator." + strE, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC-" + str, strE);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC/" + str, strE);
    }

    public void addHMACAlias(ConfigurableProvider configurableProvider, String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String strE = b.e("HMAC", str);
        configurableProvider.addAlgorithm("Alg.Alias.Mac." + aSN1ObjectIdentifier, strE);
        a.g(new StringBuilder("Alg.Alias.KeyGenerator."), aSN1ObjectIdentifier, configurableProvider, strE);
    }

    public void addKMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String strE = b.e("KMAC", str);
        configurableProvider.addAlgorithm("Mac." + strE, str2);
        configurableProvider.addAlgorithm("KeyGenerator." + strE, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.KMAC" + str, strE);
    }
}
