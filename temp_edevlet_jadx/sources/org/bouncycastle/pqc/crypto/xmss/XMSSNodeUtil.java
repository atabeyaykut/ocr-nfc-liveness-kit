package org.bouncycastle.pqc.crypto.xmss;

import org.bouncycastle.pqc.crypto.xmss.HashTreeAddress;
import org.bouncycastle.pqc.crypto.xmss.LTreeAddress;

/* loaded from: classes2.dex */
class XMSSNodeUtil {
    public static XMSSNode lTree(WOTSPlus wOTSPlus, WOTSPlusPublicKeyParameters wOTSPlusPublicKeyParameters, LTreeAddress lTreeAddress) {
        double d10;
        if (wOTSPlusPublicKeyParameters == null) {
            throw new NullPointerException("publicKey == null");
        }
        if (lTreeAddress == null) {
            throw new NullPointerException("address == null");
        }
        int len = wOTSPlus.getParams().getLen();
        byte[][] byteArray = wOTSPlusPublicKeyParameters.toByteArray();
        XMSSNode[] xMSSNodeArr = new XMSSNode[byteArray.length];
        for (int r32 = 0; r32 < byteArray.length; r32++) {
            xMSSNodeArr[r32] = new XMSSNode(0, byteArray[r32]);
        }
        LTreeAddress.Builder builderWithKeyAndMask = new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(lTreeAddress.getLTreeAddress()).withTreeHeight(0).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(lTreeAddress.getKeyAndMask());
        while (true) {
            LTreeAddress lTreeAddress2 = (LTreeAddress) builderWithKeyAndMask.build();
            if (len <= 1) {
                return xMSSNodeArr[0];
            }
            int r33 = 0;
            while (true) {
                d10 = len / 2;
                if (r33 >= ((int) Math.floor(d10))) {
                    break;
                }
                lTreeAddress2 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight()).withTreeIndex(r33).withKeyAndMask(lTreeAddress2.getKeyAndMask()).build();
                int r42 = r33 * 2;
                xMSSNodeArr[r33] = randomizeHash(wOTSPlus, xMSSNodeArr[r42], xMSSNodeArr[r42 + 1], lTreeAddress2);
                r33++;
            }
            if (len % 2 == 1) {
                xMSSNodeArr[(int) Math.floor(d10)] = xMSSNodeArr[len - 1];
            }
            len = (int) Math.ceil(len / 2.0d);
            builderWithKeyAndMask = new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight() + 1).withTreeIndex(lTreeAddress2.getTreeIndex()).withKeyAndMask(lTreeAddress2.getKeyAndMask());
        }
    }

    public static XMSSNode randomizeHash(WOTSPlus wOTSPlus, XMSSNode xMSSNode, XMSSNode xMSSNode2, XMSSAddress xMSSAddress) {
        if (xMSSNode == null) {
            throw new NullPointerException("left == null");
        }
        if (xMSSNode2 == null) {
            throw new NullPointerException("right == null");
        }
        if (xMSSNode.getHeight() != xMSSNode2.getHeight()) {
            throw new IllegalStateException("height of both nodes must be equal");
        }
        if (xMSSAddress == null) {
            throw new NullPointerException("address == null");
        }
        byte[] publicSeed = wOTSPlus.getPublicSeed();
        if (xMSSAddress instanceof LTreeAddress) {
            LTreeAddress lTreeAddress = (LTreeAddress) xMSSAddress;
            xMSSAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(lTreeAddress.getLTreeAddress()).withTreeHeight(lTreeAddress.getTreeHeight()).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(0).build();
        } else if (xMSSAddress instanceof HashTreeAddress) {
            HashTreeAddress hashTreeAddress = (HashTreeAddress) xMSSAddress;
            xMSSAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeHeight(hashTreeAddress.getTreeHeight()).withTreeIndex(hashTreeAddress.getTreeIndex()).withKeyAndMask(0).build();
        }
        byte[] bArrPRF = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress.toByteArray());
        if (xMSSAddress instanceof LTreeAddress) {
            LTreeAddress lTreeAddress2 = (LTreeAddress) xMSSAddress;
            xMSSAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight()).withTreeIndex(lTreeAddress2.getTreeIndex()).withKeyAndMask(1).build();
        } else if (xMSSAddress instanceof HashTreeAddress) {
            HashTreeAddress hashTreeAddress2 = (HashTreeAddress) xMSSAddress;
            xMSSAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress2.getLayerAddress()).withTreeAddress(hashTreeAddress2.getTreeAddress()).withTreeHeight(hashTreeAddress2.getTreeHeight()).withTreeIndex(hashTreeAddress2.getTreeIndex()).withKeyAndMask(1).build();
        }
        byte[] bArrPRF2 = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress.toByteArray());
        if (xMSSAddress instanceof LTreeAddress) {
            LTreeAddress lTreeAddress3 = (LTreeAddress) xMSSAddress;
            xMSSAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress3.getLayerAddress()).withTreeAddress(lTreeAddress3.getTreeAddress()).withLTreeAddress(lTreeAddress3.getLTreeAddress()).withTreeHeight(lTreeAddress3.getTreeHeight()).withTreeIndex(lTreeAddress3.getTreeIndex()).withKeyAndMask(2).build();
        } else if (xMSSAddress instanceof HashTreeAddress) {
            HashTreeAddress hashTreeAddress3 = (HashTreeAddress) xMSSAddress;
            xMSSAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress3.getLayerAddress()).withTreeAddress(hashTreeAddress3.getTreeAddress()).withTreeHeight(hashTreeAddress3.getTreeHeight()).withTreeIndex(hashTreeAddress3.getTreeIndex()).withKeyAndMask(2).build();
        }
        byte[] bArrPRF3 = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress.toByteArray());
        int treeDigestSize = wOTSPlus.getParams().getTreeDigestSize();
        byte[] bArr = new byte[treeDigestSize * 2];
        for (int r52 = 0; r52 < treeDigestSize; r52++) {
            bArr[r52] = (byte) (xMSSNode.getValue()[r52] ^ bArrPRF2[r52]);
        }
        for (int r22 = 0; r22 < treeDigestSize; r22++) {
            bArr[r22 + treeDigestSize] = (byte) (xMSSNode2.getValue()[r22] ^ bArrPRF3[r22]);
        }
        return new XMSSNode(xMSSNode.getHeight(), wOTSPlus.getKhf().H(bArrPRF, bArr));
    }
}
