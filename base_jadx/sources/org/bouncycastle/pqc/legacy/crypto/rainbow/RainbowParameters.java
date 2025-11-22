package org.bouncycastle.pqc.legacy.crypto.rainbow;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes2.dex */
public class RainbowParameters implements CipherParameters {
    private final int[] DEFAULT_VI;
    private int[] vi;

    public RainbowParameters() {
        int[] r02 = {6, 12, 17, 22, 33};
        this.DEFAULT_VI = r02;
        this.vi = r02;
    }

    public RainbowParameters(int[] r22) {
        this.DEFAULT_VI = new int[]{6, 12, 17, 22, 33};
        this.vi = r22;
        checkParams();
    }

    private void checkParams() {
        int[] r22;
        int r32;
        int[] r02 = this.vi;
        if (r02 == null) {
            throw new IllegalArgumentException("no layers defined.");
        }
        if (r02.length <= 1) {
            throw new IllegalArgumentException("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
        int r03 = 0;
        do {
            r22 = this.vi;
            if (r03 >= r22.length - 1) {
                return;
            }
            r32 = r22[r03];
            r03++;
        } while (r32 < r22[r03]);
        throw new IllegalArgumentException("v[i] has to be smaller than v[i+1]");
    }

    public int getDocLength() {
        int[] r02 = this.vi;
        return r02[r02.length - 1] - r02[0];
    }

    public int getNumOfLayers() {
        return this.vi.length - 1;
    }

    public int[] getVi() {
        return this.vi;
    }
}
