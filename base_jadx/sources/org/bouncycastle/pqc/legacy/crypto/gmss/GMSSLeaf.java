package org.bouncycastle.pqc.legacy.crypto.gmss;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class GMSSLeaf {
    private byte[] concHashs;
    private GMSSRandom gmssRandom;

    /* renamed from: i, reason: collision with root package name */
    private int f11981i;

    /* renamed from: j, reason: collision with root package name */
    private int f11982j;
    private int keysize;
    private byte[] leaf;
    private int mdsize;
    private Digest messDigestOTS;
    byte[] privateKeyOTS;
    private byte[] seed;
    private int steps;
    private int two_power_w;
    private int w;

    public GMSSLeaf(Digest digest, int r82, int r92) {
        this.w = r82;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        double d10 = r82;
        this.keysize = ((int) Math.ceil((r7 << 3) / d10)) + ((int) Math.ceil(getLog((r7 << r82) + 1) / d10));
        this.two_power_w = 1 << r82;
        this.steps = (int) Math.ceil(((((r8 - 1) * r7) + 1) + r7) / r92);
        int r72 = this.mdsize;
        this.seed = new byte[r72];
        this.leaf = new byte[r72];
        this.privateKeyOTS = new byte[r72];
        this.concHashs = new byte[r72 * this.keysize];
    }

    public GMSSLeaf(Digest digest, int r82, int r92, byte[] bArr) {
        this.w = r82;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        double d10 = r82;
        this.keysize = ((int) Math.ceil((r7 << 3) / d10)) + ((int) Math.ceil(getLog((r7 << r82) + 1) / d10));
        this.two_power_w = 1 << r82;
        this.steps = (int) Math.ceil(((((r8 - 1) * r7) + 1) + r7) / r92);
        int r72 = this.mdsize;
        this.seed = new byte[r72];
        this.leaf = new byte[r72];
        this.privateKeyOTS = new byte[r72];
        this.concHashs = new byte[r72 * this.keysize];
        initLeafCalc(bArr);
    }

    public GMSSLeaf(Digest digest, byte[][] bArr, int[] r11) {
        this.f11981i = r11[0];
        this.f11982j = r11[1];
        this.steps = r11[2];
        this.w = r11[3];
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        this.keysize = ((int) Math.ceil((r9 << 3) / this.w)) + ((int) Math.ceil(getLog((r9 << this.w) + 1) / this.w));
        this.two_power_w = 1 << this.w;
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.concHashs = bArr[2];
        this.leaf = bArr[3];
    }

    private GMSSLeaf(GMSSLeaf gMSSLeaf) {
        this.messDigestOTS = gMSSLeaf.messDigestOTS;
        this.mdsize = gMSSLeaf.mdsize;
        this.keysize = gMSSLeaf.keysize;
        this.gmssRandom = gMSSLeaf.gmssRandom;
        this.leaf = Arrays.clone(gMSSLeaf.leaf);
        this.concHashs = Arrays.clone(gMSSLeaf.concHashs);
        this.f11981i = gMSSLeaf.f11981i;
        this.f11982j = gMSSLeaf.f11982j;
        this.two_power_w = gMSSLeaf.two_power_w;
        this.w = gMSSLeaf.w;
        this.steps = gMSSLeaf.steps;
        this.seed = Arrays.clone(gMSSLeaf.seed);
        this.privateKeyOTS = Arrays.clone(gMSSLeaf.privateKeyOTS);
    }

    private int getLog(int r32) {
        int r02 = 1;
        int r12 = 2;
        while (r12 < r32) {
            r12 <<= 1;
            r02++;
        }
        return r02;
    }

    private void updateLeafCalc() {
        byte[] bArr = new byte[this.messDigestOTS.getDigestSize()];
        for (int r22 = 0; r22 < this.steps + ModuleDescriptor.MODULE_VERSION; r22++) {
            int r32 = this.f11981i;
            if (r32 == this.keysize && this.f11982j == this.two_power_w - 1) {
                Digest digest = this.messDigestOTS;
                byte[] bArr2 = this.concHashs;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.leaf = bArr3;
                this.messDigestOTS.doFinal(bArr3, 0);
                return;
            }
            if (r32 == 0 || this.f11982j == this.two_power_w - 1) {
                this.f11981i = r32 + 1;
                this.f11982j = 0;
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else {
                Digest digest2 = this.messDigestOTS;
                byte[] bArr4 = this.privateKeyOTS;
                digest2.update(bArr4, 0, bArr4.length);
                this.privateKeyOTS = bArr;
                this.messDigestOTS.doFinal(bArr, 0);
                int r33 = this.f11982j + 1;
                this.f11982j = r33;
                if (r33 == this.two_power_w - 1) {
                    byte[] bArr5 = this.privateKeyOTS;
                    byte[] bArr6 = this.concHashs;
                    int r52 = this.mdsize;
                    System.arraycopy(bArr5, 0, bArr6, (this.f11981i - 1) * r52, r52);
                }
            }
        }
        throw new IllegalStateException("unable to updateLeaf in steps: " + this.steps + " " + this.f11981i + " " + this.f11982j);
    }

    public byte[] getLeaf() {
        return Arrays.clone(this.leaf);
    }

    public byte[][] getStatByte() {
        return new byte[][]{this.privateKeyOTS, this.seed, this.concHashs, this.leaf};
    }

    public int[] getStatInt() {
        return new int[]{this.f11981i, this.f11982j, this.steps, this.w};
    }

    public void initLeafCalc(byte[] bArr) {
        this.f11981i = 0;
        this.f11982j = 0;
        byte[] bArr2 = new byte[this.mdsize];
        System.arraycopy(bArr, 0, bArr2, 0, this.seed.length);
        this.seed = this.gmssRandom.nextSeed(bArr2);
    }

    public GMSSLeaf nextLeaf() {
        GMSSLeaf gMSSLeaf = new GMSSLeaf(this);
        gMSSLeaf.updateLeafCalc();
        return gMSSLeaf;
    }

    public String toString() {
        StringBuilder sbI;
        String strB = "";
        for (int r22 = 0; r22 < 4; r22++) {
            strB = a.b(androidx.constraintlayout.core.a.e(strB), getStatInt()[r22], " ");
        }
        StringBuilder sbI2 = b.i(strB, " ");
        sbI2.append(this.mdsize);
        sbI2.append(" ");
        sbI2.append(this.keysize);
        sbI2.append(" ");
        String strB2 = a.b(sbI2, this.two_power_w, " ");
        byte[][] statByte = getStatByte();
        for (int r12 = 0; r12 < 4; r12++) {
            if (statByte[r12] != null) {
                sbI = androidx.constraintlayout.core.a.e(strB2);
                sbI.append(new String(Hex.encode(statByte[r12])));
                sbI.append(" ");
            } else {
                sbI = b.i(strB2, "null ");
            }
            strB2 = sbI.toString();
        }
        return strB2;
    }
}
