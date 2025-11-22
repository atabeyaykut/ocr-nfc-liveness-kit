package org.bouncycastle.pqc.legacy.crypto.gmss;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GMSSParameters {
    private int[] K;
    private int[] heightOfTrees;
    private int numOfLayers;
    private int[] winternitzParameter;

    public GMSSParameters(int r6) throws IllegalArgumentException {
        if (r6 <= 10) {
            init(1, new int[]{10}, new int[]{3}, new int[]{2});
        } else if (r6 <= 20) {
            init(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2});
        } else {
            init(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2});
        }
    }

    public GMSSParameters(int r12, int[] r22, int[] r32, int[] r42) throws IllegalArgumentException {
        init(r12, r22, r32, r42);
    }

    private void init(int r72, int[] r82, int[] r92, int[] r10) throws IllegalArgumentException {
        String str;
        boolean z10;
        this.numOfLayers = r72;
        if (r72 == r92.length && r72 == r82.length && r72 == r10.length) {
            z10 = true;
            str = "";
        } else {
            str = "Unexpected parameterset format";
            z10 = false;
        }
        for (int r22 = 0; r22 < this.numOfLayers; r22++) {
            int r32 = r10[r22];
            if (r32 < 2 || (r82[r22] - r32) % 2 != 0) {
                str = "Wrong parameter K (K >= 2 and H-K even required)!";
                z10 = false;
            }
            if (r82[r22] < 4 || r92[r22] < 2) {
                str = "Wrong parameter H or w (H > 3 and w > 1 required)!";
                z10 = false;
            }
        }
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
        this.heightOfTrees = Arrays.clone(r82);
        this.winternitzParameter = Arrays.clone(r92);
        this.K = Arrays.clone(r10);
    }

    public int[] getHeightOfTrees() {
        return Arrays.clone(this.heightOfTrees);
    }

    public int[] getK() {
        return Arrays.clone(this.K);
    }

    public int getNumOfLayers() {
        return this.numOfLayers;
    }

    public int[] getWinternitzParameter() {
        return Arrays.clone(this.winternitzParameter);
    }
}
