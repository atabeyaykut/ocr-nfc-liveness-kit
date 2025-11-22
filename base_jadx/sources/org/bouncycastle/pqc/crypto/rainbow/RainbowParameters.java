package org.bouncycastle.pqc.crypto.rainbow;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;

/* loaded from: classes2.dex */
public class RainbowParameters implements CipherParameters {
    private static final int len_pkseed = 32;
    private static final int len_salt = 16;
    private static final int len_skseed = 32;
    public static final RainbowParameters rainbowIIIcircumzenithal;
    public static final RainbowParameters rainbowIIIclassic;
    public static final RainbowParameters rainbowIIIcompressed;
    public static final RainbowParameters rainbowVcircumzenithal;
    public static final RainbowParameters rainbowVclassic;
    public static final RainbowParameters rainbowVcompressed;
    private final Digest hash_algo;

    /* renamed from: m, reason: collision with root package name */
    private final int f11940m;

    /* renamed from: n, reason: collision with root package name */
    private final int f11941n;
    private final String name;

    /* renamed from: o1, reason: collision with root package name */
    private final int f11942o1;

    /* renamed from: o2, reason: collision with root package name */
    private final int f11943o2;

    /* renamed from: v1, reason: collision with root package name */
    private final int f11944v1;

    /* renamed from: v2, reason: collision with root package name */
    private final int f11945v2;
    private final Version version;

    static {
        Version version = Version.CLASSIC;
        rainbowIIIclassic = new RainbowParameters("rainbow-III-classic", 3, version);
        Version version2 = Version.CIRCUMZENITHAL;
        rainbowIIIcircumzenithal = new RainbowParameters("rainbow-III-circumzenithal", 3, version2);
        Version version3 = Version.COMPRESSED;
        rainbowIIIcompressed = new RainbowParameters("rainbow-III-compressed", 3, version3);
        rainbowVclassic = new RainbowParameters("rainbow-V-classic", 5, version);
        rainbowVcircumzenithal = new RainbowParameters("rainbow-V-circumzenithal", 5, version2);
        rainbowVcompressed = new RainbowParameters("rainbow-V-compressed", 5, version3);
    }

    private RainbowParameters(String str, int r32, Version version) {
        Digest sHA384Digest;
        this.name = str;
        if (r32 == 3) {
            this.f11944v1 = 68;
            this.f11942o1 = 32;
            this.f11943o2 = 48;
            sHA384Digest = new SHA384Digest();
        } else {
            if (r32 != 5) {
                throw new IllegalArgumentException("No valid version. Please choose one of the following: 3, 5");
            }
            this.f11944v1 = 96;
            this.f11942o1 = 36;
            this.f11943o2 = 64;
            sHA384Digest = new SHA512Digest();
        }
        this.hash_algo = sHA384Digest;
        int r22 = this.f11944v1;
        int r33 = this.f11942o1;
        this.f11945v2 = r22 + r33;
        int r02 = this.f11943o2;
        this.f11941n = r22 + r33 + r02;
        this.f11940m = r33 + r02;
        this.version = version;
    }

    public Digest getHash_algo() {
        return this.hash_algo;
    }

    public int getLen_pkseed() {
        return 32;
    }

    public int getLen_salt() {
        return 16;
    }

    public int getLen_skseed() {
        return 32;
    }

    public int getM() {
        return this.f11940m;
    }

    public int getN() {
        return this.f11941n;
    }

    public String getName() {
        return this.name;
    }

    public int getO1() {
        return this.f11942o1;
    }

    public int getO2() {
        return this.f11943o2;
    }

    public int getV1() {
        return this.f11944v1;
    }

    public int getV2() {
        return this.f11945v2;
    }

    public Version getVersion() {
        return this.version;
    }
}
