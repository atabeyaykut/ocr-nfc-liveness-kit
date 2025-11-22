package org.bouncycastle.crypto.params;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
public class DSAParameterGenerationParameters {
    public static final int DIGITAL_SIGNATURE_USAGE = 1;
    public static final int KEY_ESTABLISHMENT_USAGE = 2;
    private final int certainty;

    /* renamed from: l, reason: collision with root package name */
    private final int f11612l;

    /* renamed from: n, reason: collision with root package name */
    private final int f11613n;
    private final SecureRandom random;
    private final int usageIndex;

    public DSAParameterGenerationParameters(int r72, int r82, int r92, SecureRandom secureRandom) {
        this(r72, r82, r92, secureRandom, -1);
    }

    public DSAParameterGenerationParameters(int r12, int r22, int r32, SecureRandom secureRandom, int r52) {
        this.f11612l = r12;
        this.f11613n = r22;
        this.certainty = r32;
        this.usageIndex = r52;
        this.random = secureRandom;
    }

    public int getCertainty() {
        return this.certainty;
    }

    public int getL() {
        return this.f11612l;
    }

    public int getN() {
        return this.f11613n;
    }

    public SecureRandom getRandom() {
        return this.random;
    }

    public int getUsageIndex() {
        return this.usageIndex;
    }
}
