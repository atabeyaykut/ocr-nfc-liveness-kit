package org.bouncycastle.jcajce.provider.symmetric;

import androidx.browser.browseractions.a;
import androidx.camera.core.impl.utils.f;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* loaded from: classes2.dex */
abstract class SymmetricAlgorithmProvider extends AlgorithmProvider {
    public void addCMacAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-CMAC", str2);
        StringBuilder sbH = f.h(str, "-CMAC", configurableProvider, a.a("Alg.Alias.Mac.", str, "CMAC"), "KeyGenerator.");
        sbH.append(str);
        sbH.append("-CMAC");
        configurableProvider.addAlgorithm(sbH.toString(), str3);
        configurableProvider.addAlgorithm(a.a("Alg.Alias.KeyGenerator.", str, "CMAC"), str + "-CMAC");
    }

    public void addGMacAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-GMAC", str2);
        StringBuilder sbH = f.h(str, "-GMAC", configurableProvider, a.a("Alg.Alias.Mac.", str, "GMAC"), "KeyGenerator.");
        sbH.append(str);
        sbH.append("-GMAC");
        configurableProvider.addAlgorithm(sbH.toString(), str3);
        configurableProvider.addAlgorithm(a.a("Alg.Alias.KeyGenerator.", str, "GMAC"), str + "-GMAC");
    }

    public void addPoly1305Algorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac.POLY1305-" + str, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.POLY1305" + str, "POLY1305-" + str);
        configurableProvider.addAlgorithm("KeyGenerator.POLY1305-" + str, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.POLY1305" + str, "POLY1305-" + str);
    }
}
