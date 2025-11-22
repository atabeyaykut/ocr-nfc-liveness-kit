package org.bouncycastle.pqc.crypto.xmss;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class XMSSReducedSignature implements XMSSStoreableObjectInterface {
    private final List<XMSSNode> authPath;
    private final XMSSParameters params;
    private final WOTSPlusSignature wotsPlusSignature;

    public static class Builder {
        private final XMSSParameters params;
        private WOTSPlusSignature wotsPlusSignature = null;
        private List<XMSSNode> authPath = null;
        private byte[] reducedSignature = null;

        public Builder(XMSSParameters xMSSParameters) {
            this.params = xMSSParameters;
        }

        public XMSSReducedSignature build() {
            return new XMSSReducedSignature(this);
        }

        public Builder withAuthPath(List<XMSSNode> list) {
            this.authPath = list;
            return this;
        }

        public Builder withReducedSignature(byte[] bArr) {
            this.reducedSignature = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withWOTSPlusSignature(WOTSPlusSignature wOTSPlusSignature) {
            this.wotsPlusSignature = wOTSPlusSignature;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.util.List<org.bouncycastle.pqc.crypto.xmss.XMSSNode>] */
    public XMSSReducedSignature(Builder builder) {
        ?? arrayList;
        XMSSParameters xMSSParameters = builder.params;
        this.params = xMSSParameters;
        if (xMSSParameters == null) {
            throw new NullPointerException("params == null");
        }
        int treeDigestSize = xMSSParameters.getTreeDigestSize();
        int len = xMSSParameters.getWOTSPlus().getParams().getLen();
        int height = xMSSParameters.getHeight();
        byte[] bArr = builder.reducedSignature;
        if (bArr == null) {
            WOTSPlusSignature wOTSPlusSignature = builder.wotsPlusSignature;
            this.wotsPlusSignature = wOTSPlusSignature == null ? new WOTSPlusSignature(xMSSParameters.getWOTSPlus().getParams(), (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, len, treeDigestSize)) : wOTSPlusSignature;
            arrayList = builder.authPath;
            if (arrayList == 0) {
                arrayList = new ArrayList();
            } else if (arrayList.size() != height) {
                throw new IllegalArgumentException("size of authPath needs to be equal to height of tree");
            }
        } else {
            if (bArr.length != (height * treeDigestSize) + (len * treeDigestSize)) {
                throw new IllegalArgumentException("signature has wrong size");
            }
            byte[][] bArr2 = new byte[len][];
            int r6 = 0;
            for (int r02 = 0; r02 < len; r02++) {
                bArr2[r02] = XMSSUtil.extractBytesAtOffset(bArr, r6, treeDigestSize);
                r6 += treeDigestSize;
            }
            this.wotsPlusSignature = new WOTSPlusSignature(this.params.getWOTSPlus().getParams(), bArr2);
            arrayList = new ArrayList();
            for (int r52 = 0; r52 < height; r52++) {
                arrayList.add(new XMSSNode(r52, XMSSUtil.extractBytesAtOffset(bArr, r6, treeDigestSize)));
                r6 += treeDigestSize;
            }
        }
        this.authPath = arrayList;
    }

    public List<XMSSNode> getAuthPath() {
        return this.authPath;
    }

    public XMSSParameters getParams() {
        return this.params;
    }

    public WOTSPlusSignature getWOTSPlusSignature() {
        return this.wotsPlusSignature;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int treeDigestSize = this.params.getTreeDigestSize();
        byte[] bArr = new byte[(this.params.getHeight() * treeDigestSize) + (this.params.getWOTSPlus().getParams().getLen() * treeDigestSize)];
        int r52 = 0;
        for (byte[] bArr2 : this.wotsPlusSignature.toByteArray()) {
            XMSSUtil.copyBytesAtOffset(bArr, bArr2, r52);
            r52 += treeDigestSize;
        }
        for (int r32 = 0; r32 < this.authPath.size(); r32++) {
            XMSSUtil.copyBytesAtOffset(bArr, this.authPath.get(r32).getValue(), r52);
            r52 += treeDigestSize;
        }
        return bArr;
    }
}
