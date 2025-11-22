package org.bouncycastle.pqc.crypto.crystals.dilithium;

import androidx.core.view.InputDeviceCompat;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
class Rounding {
    public static int[] decompose(int r22, int r32) {
        int r02;
        int r03 = (r22 + CertificateBody.profileType) >> 7;
        if (r32 == 261888) {
            r02 = (((r03 * InputDeviceCompat.SOURCE_GAMEPAD) + 2097152) >> 22) & 15;
        } else {
            if (r32 != 95232) {
                throw new RuntimeException("Wrong Gamma2!");
            }
            int r04 = ((r03 * 11275) + 8388608) >> 24;
            r02 = r04 ^ (((43 - r04) >> 31) & r04);
        }
        int r23 = r22 - ((r02 * 2) * r32);
        return new int[]{r23 - (((4190208 - r23) >> 31) & DilithiumEngine.DilithiumQ), r02};
    }

    public static int makeHint(int r12, int r22, DilithiumEngine dilithiumEngine) {
        int r02;
        int dilithiumGamma2 = dilithiumEngine.getDilithiumGamma2();
        if (r12 <= dilithiumGamma2 || r12 > (r02 = DilithiumEngine.DilithiumQ - dilithiumGamma2)) {
            return 0;
        }
        return (r12 == r02 && r22 == 0) ? 0 : 1;
    }

    public static int[] power2Round(int r42) {
        int r12 = ((r42 + 4096) - 1) >> 13;
        return new int[]{r12, r42 - (r12 << 13)};
    }

    public static int useHint(int r32, int r42, int r52) {
        int[] r33 = decompose(r32, r52);
        int r12 = r33[0];
        int r34 = r33[1];
        if (r42 == 0) {
            return r34;
        }
        if (r52 == 261888) {
            return (r12 > 0 ? r34 + 1 : r34 - 1) & 15;
        }
        if (r52 != 95232) {
            throw new RuntimeException("Wrong Gamma2!");
        }
        if (r12 > 0) {
            if (r34 == 43) {
                return 0;
            }
            return r34 + 1;
        }
        if (r34 == 0) {
            return 43;
        }
        return r34 - 1;
    }
}
