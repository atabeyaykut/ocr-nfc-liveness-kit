package org.bouncycastle.pqc.crypto.crystals.dilithium;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
public class DilithiumParameters {
    public static final DilithiumParameters dilithium2 = new DilithiumParameters("dilithium2", 2, false);
    public static final DilithiumParameters dilithium3 = new DilithiumParameters("dilithium3", 3, false);
    public static final DilithiumParameters dilithium5 = new DilithiumParameters("dilithium5", 5, false);

    /* renamed from: k, reason: collision with root package name */
    private final int f11857k;
    private final String name;
    private final boolean usingAES;

    private DilithiumParameters(String str, int r22, boolean z10) {
        this.name = str;
        this.f11857k = r22;
        this.usingAES = z10;
    }

    public DilithiumEngine getEngine(SecureRandom secureRandom) {
        return new DilithiumEngine(this.f11857k, secureRandom, this.usingAES);
    }

    public String getName() {
        return this.name;
    }
}
