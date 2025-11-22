package org.bouncycastle.pqc.legacy.math.linearalgebra;

import android.support.v4.media.a;
import androidx.browser.browseractions.b;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class Permutation {
    private int[] perm;

    public Permutation(int r22) {
        if (r22 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.perm = new int[r22];
        for (int r23 = r22 - 1; r23 >= 0; r23--) {
            this.perm[r23] = r23;
        }
    }

    public Permutation(int r72, SecureRandom secureRandom) {
        if (r72 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.perm = new int[r72];
        int[] r02 = new int[r72];
        for (int r22 = 0; r22 < r72; r22++) {
            r02[r22] = r22;
        }
        int r23 = r72;
        for (int r12 = 0; r12 < r72; r12++) {
            int r32 = RandUtils.nextInt(secureRandom, r23);
            r23--;
            this.perm[r12] = r02[r32];
            r02[r32] = r02[r23];
        }
    }

    public Permutation(byte[] bArr) {
        if (bArr.length <= 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        int r32 = LittleEndianConversions.OS2IP(bArr, 0);
        int r42 = IntegerFunctions.ceilLog256(r32 - 1);
        if (bArr.length != (r32 * r42) + 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        this.perm = new int[r32];
        for (int r02 = 0; r02 < r32; r02++) {
            this.perm[r02] = LittleEndianConversions.OS2IP(bArr, (r02 * r42) + 4, r42);
        }
        if (!isPermutation(this.perm)) {
            throw new IllegalArgumentException("invalid encoding");
        }
    }

    public Permutation(int[] r22) {
        if (!isPermutation(r22)) {
            throw new IllegalArgumentException("array is not a permutation vector");
        }
        this.perm = IntUtils.clone(r22);
    }

    private boolean isPermutation(int[] r82) {
        int length = r82.length;
        boolean[] zArr = new boolean[length];
        for (int r52 : r82) {
            if (r52 < 0 || r52 >= length || zArr[r52]) {
                return false;
            }
            zArr[r52] = true;
        }
        return true;
    }

    public Permutation computeInverse() {
        Permutation permutation = new Permutation(this.perm.length);
        for (int length = this.perm.length - 1; length >= 0; length--) {
            permutation.perm[this.perm[length]] = length;
        }
        return permutation;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Permutation) {
            return IntUtils.equals(this.perm, ((Permutation) obj).perm);
        }
        return false;
    }

    public byte[] getEncoded() {
        int length = this.perm.length;
        int r12 = IntegerFunctions.ceilLog256(length - 1);
        byte[] bArr = new byte[(length * r12) + 4];
        LittleEndianConversions.I2OSP(length, bArr, 0);
        for (int r32 = 0; r32 < length; r32++) {
            LittleEndianConversions.I2OSP(this.perm[r32], bArr, (r32 * r12) + 4, r12);
        }
        return bArr;
    }

    public int[] getVector() {
        return IntUtils.clone(this.perm);
    }

    public int hashCode() {
        return Arrays.hashCode(this.perm);
    }

    public Permutation rightMultiply(Permutation permutation) {
        int length = permutation.perm.length;
        int[] r12 = this.perm;
        if (length != r12.length) {
            throw new IllegalArgumentException("length mismatch");
        }
        Permutation permutation2 = new Permutation(r12.length);
        for (int length2 = this.perm.length - 1; length2 >= 0; length2--) {
            permutation2.perm[length2] = this.perm[permutation.perm[length2]];
        }
        return permutation2;
    }

    public String toString() {
        String string = "[" + this.perm[0];
        for (int r12 = 1; r12 < this.perm.length; r12++) {
            StringBuilder sbI = b.i(string, ", ");
            sbI.append(this.perm[r12]);
            string = sbI.toString();
        }
        return a.f(string, "]");
    }
}
