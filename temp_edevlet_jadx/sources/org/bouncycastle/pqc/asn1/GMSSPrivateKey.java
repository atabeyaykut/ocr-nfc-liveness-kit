package org.bouncycastle.pqc.asn1;

import androidx.browser.browseractions.a;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSLeaf;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSParameters;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSRootCalc;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSRootSig;
import org.bouncycastle.pqc.legacy.crypto.gmss.Treehash;

/* loaded from: classes2.dex */
public class GMSSPrivateKey extends ASN1Object {
    private ASN1Primitive primitive;

    private GMSSPrivateKey(ASN1Sequence aSN1Sequence) {
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(0);
        int[] r22 = new int[aSN1Sequence2.size()];
        for (int r32 = 0; r32 < aSN1Sequence2.size(); r32++) {
            r22[r32] = checkBigIntegerInIntRange(aSN1Sequence2.getObjectAt(r32));
        }
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        int size = aSN1Sequence3.size();
        byte[][] bArr = new byte[size][];
        for (int r42 = 0; r42 < size; r42++) {
            bArr[r42] = ((DEROctetString) aSN1Sequence3.getObjectAt(r42)).getOctets();
        }
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(2);
        int size2 = aSN1Sequence4.size();
        byte[][] bArr2 = new byte[size2][];
        for (int r43 = 0; r43 < size2; r43++) {
            bArr2[r43] = ((DEROctetString) aSN1Sequence4.getObjectAt(r43)).getOctets();
        }
        ASN1Sequence aSN1Sequence5 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        int size3 = aSN1Sequence5.size();
        byte[][][] bArr3 = new byte[size3][][];
        for (int r44 = 0; r44 < size3; r44++) {
            ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(r44);
            bArr3[r44] = new byte[aSN1Sequence6.size()][];
            int r6 = 0;
            while (true) {
                byte[][] bArr4 = bArr3[r44];
                if (r6 < bArr4.length) {
                    bArr4[r6] = ((DEROctetString) aSN1Sequence6.getObjectAt(r6)).getOctets();
                    r6++;
                }
            }
        }
        ASN1Sequence aSN1Sequence7 = (ASN1Sequence) aSN1Sequence.getObjectAt(4);
        int size4 = aSN1Sequence7.size();
        byte[][][] bArr5 = new byte[size4][][];
        for (int r45 = 0; r45 < size4; r45++) {
            ASN1Sequence aSN1Sequence8 = (ASN1Sequence) aSN1Sequence7.getObjectAt(r45);
            bArr5[r45] = new byte[aSN1Sequence8.size()][];
            int r62 = 0;
            while (true) {
                byte[][] bArr6 = bArr5[r45];
                if (r62 < bArr6.length) {
                    bArr6[r62] = ((DEROctetString) aSN1Sequence8.getObjectAt(r62)).getOctets();
                    r62++;
                }
            }
        }
        Treehash[][] treehashArr = new Treehash[((ASN1Sequence) aSN1Sequence.getObjectAt(5)).size()][];
    }

    public GMSSPrivateKey(int[] r26, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][][] bArr5, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] r41, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, AlgorithmIdentifier algorithmIdentifier) {
        this.primitive = encode(r26, bArr, bArr2, bArr3, bArr4, bArr5, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, gMSSLeafArr, gMSSLeafArr2, gMSSLeafArr3, r41, bArr6, gMSSRootCalcArr, bArr7, gMSSRootSigArr, gMSSParameters, new AlgorithmIdentifier[]{algorithmIdentifier});
    }

    private static int checkBigIntegerInIntRange(ASN1Encodable aSN1Encodable) {
        return ((ASN1Integer) aSN1Encodable).intValueExact();
    }

    private ASN1Primitive encode(int[] r20, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] r35, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, AlgorithmIdentifier[] algorithmIdentifierArr) {
        Treehash[][] treehashArr3 = treehashArr;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (int r02 : r20) {
            aSN1EncodableVector2.add(new ASN1Integer(r02));
        }
        ASN1EncodableVector aSN1EncodableVectorD = a.d(aSN1EncodableVector2, aSN1EncodableVector);
        for (byte[] bArr8 : bArr) {
            aSN1EncodableVectorD.add(new DEROctetString(bArr8));
        }
        ASN1EncodableVector aSN1EncodableVectorD2 = a.d(aSN1EncodableVectorD, aSN1EncodableVector);
        for (byte[] bArr9 : bArr2) {
            aSN1EncodableVectorD2.add(new DEROctetString(bArr9));
        }
        ASN1EncodableVector aSN1EncodableVectorD3 = a.d(aSN1EncodableVectorD2, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        for (int r22 = 0; r22 < bArr3.length; r22++) {
            for (int r92 = 0; r92 < bArr3[r22].length; r92++) {
                aSN1EncodableVectorD3.add(new DEROctetString(bArr3[r22][r92]));
            }
            aSN1EncodableVectorD3 = a.d(aSN1EncodableVectorD3, aSN1EncodableVector3);
        }
        ASN1EncodableVector aSN1EncodableVectorD4 = a.d(aSN1EncodableVector3, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        for (int r23 = 0; r23 < bArr4.length; r23++) {
            for (int r32 = 0; r32 < bArr4[r23].length; r32++) {
                aSN1EncodableVectorD4.add(new DEROctetString(bArr4[r23][r32]));
            }
            aSN1EncodableVectorD4 = a.d(aSN1EncodableVectorD4, aSN1EncodableVector4);
        }
        ASN1EncodableVector aSN1EncodableVectorD5 = a.d(aSN1EncodableVector4, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
        int r93 = 0;
        while (true) {
            char c10 = 1;
            if (r93 >= treehashArr3.length) {
                break;
            }
            int r10 = 0;
            while (r10 < treehashArr3[r93].length) {
                aSN1EncodableVector6.add(new DERSequence(algorithmIdentifierArr[0]));
                int r11 = treehashArr3[r93][r10].getStatInt()[c10];
                aSN1EncodableVector7.add(new DEROctetString(treehashArr3[r93][r10].getStatByte()[0]));
                aSN1EncodableVector7.add(new DEROctetString(treehashArr3[r93][r10].getStatByte()[1]));
                aSN1EncodableVector7.add(new DEROctetString(treehashArr3[r93][r10].getStatByte()[2]));
                for (int r12 = 0; r12 < r11; r12++) {
                    aSN1EncodableVector7.add(new DEROctetString(treehashArr3[r93][r10].getStatByte()[r12 + 3]));
                }
                aSN1EncodableVector7 = a.d(aSN1EncodableVector7, aSN1EncodableVector6);
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr3[r93][r10].getStatInt()[0]));
                aSN1EncodableVector8.add(new ASN1Integer(r11));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr3[r93][r10].getStatInt()[2]));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr3[r93][r10].getStatInt()[3]));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr3[r93][r10].getStatInt()[4]));
                aSN1EncodableVector8.add(new ASN1Integer(treehashArr3[r93][r10].getStatInt()[5]));
                int r82 = 0;
                while (r82 < r11) {
                    aSN1EncodableVector8.add(new ASN1Integer(treehashArr3[r93][r10].getStatInt()[r82 + 6]));
                    r82++;
                    treehashArr3 = treehashArr;
                }
                aSN1EncodableVector8 = a.d(aSN1EncodableVector8, aSN1EncodableVector6);
                aSN1EncodableVector6 = a.d(aSN1EncodableVector6, aSN1EncodableVector5);
                r10++;
                treehashArr3 = treehashArr;
                c10 = 1;
            }
            aSN1EncodableVector5 = a.d(aSN1EncodableVector5, aSN1EncodableVectorD5);
            r93++;
            treehashArr3 = treehashArr;
        }
        ASN1EncodableVector aSN1EncodableVectorD6 = a.d(aSN1EncodableVectorD5, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
        for (int r52 = 0; r52 < treehashArr2.length; r52++) {
            for (int r6 = 0; r6 < treehashArr2[r52].length; r6++) {
                aSN1EncodableVector10.add(new DERSequence(algorithmIdentifierArr[0]));
                int r83 = treehashArr2[r52][r6].getStatInt()[1];
                aSN1EncodableVector11.add(new DEROctetString(treehashArr2[r52][r6].getStatByte()[0]));
                aSN1EncodableVector11.add(new DEROctetString(treehashArr2[r52][r6].getStatByte()[1]));
                aSN1EncodableVector11.add(new DEROctetString(treehashArr2[r52][r6].getStatByte()[2]));
                for (int r94 = 0; r94 < r83; r94++) {
                    aSN1EncodableVector11.add(new DEROctetString(treehashArr2[r52][r6].getStatByte()[r94 + 3]));
                }
                aSN1EncodableVector11 = a.d(aSN1EncodableVector11, aSN1EncodableVector10);
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[r52][r6].getStatInt()[0]));
                aSN1EncodableVector12.add(new ASN1Integer(r83));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[r52][r6].getStatInt()[2]));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[r52][r6].getStatInt()[3]));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[r52][r6].getStatInt()[4]));
                aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[r52][r6].getStatInt()[5]));
                for (int r95 = 0; r95 < r83; r95++) {
                    aSN1EncodableVector12.add(new ASN1Integer(treehashArr2[r52][r6].getStatInt()[r95 + 6]));
                }
                aSN1EncodableVector12 = a.d(aSN1EncodableVector12, aSN1EncodableVector10);
                aSN1EncodableVector10 = a.d(aSN1EncodableVector10, aSN1EncodableVector9);
            }
            aSN1EncodableVectorD6.add(new DERSequence(new DERSequence(aSN1EncodableVector9)));
            aSN1EncodableVector9 = new ASN1EncodableVector();
        }
        ASN1EncodableVector aSN1EncodableVectorD7 = a.d(aSN1EncodableVectorD6, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
        for (int r24 = 0; r24 < bArr5.length; r24++) {
            for (int r42 = 0; r42 < bArr5[r24].length; r42++) {
                aSN1EncodableVectorD7.add(new DEROctetString(bArr5[r24][r42]));
            }
            aSN1EncodableVectorD7 = a.d(aSN1EncodableVectorD7, aSN1EncodableVector13);
        }
        ASN1EncodableVector aSN1EncodableVectorD8 = a.d(aSN1EncodableVector13, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector14 = new ASN1EncodableVector();
        for (int r25 = 0; r25 < vectorArr.length; r25++) {
            for (int r43 = 0; r43 < vectorArr[r25].size(); r43++) {
                aSN1EncodableVectorD8.add(new DEROctetString((byte[]) vectorArr[r25].elementAt(r43)));
            }
            aSN1EncodableVectorD8 = a.d(aSN1EncodableVectorD8, aSN1EncodableVector14);
        }
        ASN1EncodableVector aSN1EncodableVectorD9 = a.d(aSN1EncodableVector14, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector15 = new ASN1EncodableVector();
        for (int r26 = 0; r26 < vectorArr2.length; r26++) {
            for (int r44 = 0; r44 < vectorArr2[r26].size(); r44++) {
                aSN1EncodableVectorD9.add(new DEROctetString((byte[]) vectorArr2[r26].elementAt(r44)));
            }
            aSN1EncodableVectorD9 = a.d(aSN1EncodableVectorD9, aSN1EncodableVector15);
        }
        ASN1EncodableVector aSN1EncodableVectorD10 = a.d(aSN1EncodableVector15, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector16 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector17 = new ASN1EncodableVector();
        for (int r33 = 0; r33 < vectorArr3.length; r33++) {
            for (int r53 = 0; r53 < vectorArr3[r33].length; r53++) {
                for (int r62 = 0; r62 < vectorArr3[r33][r53].size(); r62++) {
                    aSN1EncodableVectorD10.add(new DEROctetString((byte[]) vectorArr3[r33][r53].elementAt(r62)));
                }
                aSN1EncodableVectorD10 = a.d(aSN1EncodableVectorD10, aSN1EncodableVector16);
            }
            aSN1EncodableVector16 = a.d(aSN1EncodableVector16, aSN1EncodableVector17);
        }
        ASN1EncodableVector aSN1EncodableVectorD11 = a.d(aSN1EncodableVector17, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector18 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector19 = new ASN1EncodableVector();
        for (int r34 = 0; r34 < vectorArr4.length; r34++) {
            for (int r54 = 0; r54 < vectorArr4[r34].length; r54++) {
                for (int r63 = 0; r63 < vectorArr4[r34][r54].size(); r63++) {
                    aSN1EncodableVectorD11.add(new DEROctetString((byte[]) vectorArr4[r34][r54].elementAt(r63)));
                }
                aSN1EncodableVectorD11 = a.d(aSN1EncodableVectorD11, aSN1EncodableVector18);
            }
            aSN1EncodableVector18 = a.d(aSN1EncodableVector18, aSN1EncodableVector19);
        }
        ASN1EncodableVector aSN1EncodableVectorD12 = a.d(aSN1EncodableVector19, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector20 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector21 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector22 = new ASN1EncodableVector();
        for (int r45 = 0; r45 < gMSSLeafArr.length; r45++) {
            aSN1EncodableVector20.add(new DERSequence(algorithmIdentifierArr[0]));
            byte[][] statByte = gMSSLeafArr[r45].getStatByte();
            aSN1EncodableVector21.add(new DEROctetString(statByte[0]));
            aSN1EncodableVector21.add(new DEROctetString(statByte[1]));
            aSN1EncodableVector21.add(new DEROctetString(statByte[2]));
            aSN1EncodableVector21.add(new DEROctetString(statByte[3]));
            aSN1EncodableVector20.add(new DERSequence(aSN1EncodableVector21));
            aSN1EncodableVector21 = new ASN1EncodableVector();
            int[] statInt = gMSSLeafArr[r45].getStatInt();
            aSN1EncodableVector22.add(new ASN1Integer(statInt[0]));
            aSN1EncodableVector22.add(new ASN1Integer(statInt[1]));
            aSN1EncodableVector22.add(new ASN1Integer(statInt[2]));
            aSN1EncodableVector22.add(new ASN1Integer(statInt[3]));
            aSN1EncodableVector20.add(new DERSequence(aSN1EncodableVector22));
            aSN1EncodableVector22 = new ASN1EncodableVector();
            aSN1EncodableVector20 = a.d(aSN1EncodableVector20, aSN1EncodableVectorD12);
        }
        ASN1EncodableVector aSN1EncodableVectorD13 = a.d(aSN1EncodableVectorD12, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector23 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector24 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector25 = new ASN1EncodableVector();
        for (int r46 = 0; r46 < gMSSLeafArr2.length; r46++) {
            aSN1EncodableVector23.add(new DERSequence(algorithmIdentifierArr[0]));
            byte[][] statByte2 = gMSSLeafArr2[r46].getStatByte();
            aSN1EncodableVector24.add(new DEROctetString(statByte2[0]));
            aSN1EncodableVector24.add(new DEROctetString(statByte2[1]));
            aSN1EncodableVector24.add(new DEROctetString(statByte2[2]));
            aSN1EncodableVector24.add(new DEROctetString(statByte2[3]));
            aSN1EncodableVector23.add(new DERSequence(aSN1EncodableVector24));
            aSN1EncodableVector24 = new ASN1EncodableVector();
            int[] statInt2 = gMSSLeafArr2[r46].getStatInt();
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[0]));
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[1]));
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[2]));
            aSN1EncodableVector25.add(new ASN1Integer(statInt2[3]));
            aSN1EncodableVector23.add(new DERSequence(aSN1EncodableVector25));
            aSN1EncodableVector25 = new ASN1EncodableVector();
            aSN1EncodableVector23 = a.d(aSN1EncodableVector23, aSN1EncodableVectorD13);
        }
        ASN1EncodableVector aSN1EncodableVectorD14 = a.d(aSN1EncodableVectorD13, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector26 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector27 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector28 = new ASN1EncodableVector();
        for (int r47 = 0; r47 < gMSSLeafArr3.length; r47++) {
            aSN1EncodableVector26.add(new DERSequence(algorithmIdentifierArr[0]));
            byte[][] statByte3 = gMSSLeafArr3[r47].getStatByte();
            aSN1EncodableVector27.add(new DEROctetString(statByte3[0]));
            aSN1EncodableVector27.add(new DEROctetString(statByte3[1]));
            aSN1EncodableVector27.add(new DEROctetString(statByte3[2]));
            aSN1EncodableVector27.add(new DEROctetString(statByte3[3]));
            aSN1EncodableVector26.add(new DERSequence(aSN1EncodableVector27));
            aSN1EncodableVector27 = new ASN1EncodableVector();
            int[] statInt3 = gMSSLeafArr3[r47].getStatInt();
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[0]));
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[1]));
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[2]));
            aSN1EncodableVector28.add(new ASN1Integer(statInt3[3]));
            aSN1EncodableVector26.add(new DERSequence(aSN1EncodableVector28));
            aSN1EncodableVector28 = new ASN1EncodableVector();
            aSN1EncodableVector26 = a.d(aSN1EncodableVector26, aSN1EncodableVectorD14);
        }
        ASN1EncodableVector aSN1EncodableVectorD15 = a.d(aSN1EncodableVectorD14, aSN1EncodableVector);
        AlgorithmIdentifier[] algorithmIdentifierArr2 = algorithmIdentifierArr;
        for (int r03 : r35) {
            aSN1EncodableVectorD15.add(new ASN1Integer(r03));
        }
        ASN1EncodableVector aSN1EncodableVectorD16 = a.d(aSN1EncodableVectorD15, aSN1EncodableVector);
        for (byte[] bArr10 : bArr6) {
            aSN1EncodableVectorD16.add(new DEROctetString(bArr10));
        }
        ASN1EncodableVector aSN1EncodableVectorD17 = a.d(aSN1EncodableVectorD16, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector29 = new ASN1EncodableVector();
        new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector30 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector31 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector32 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector33 = new ASN1EncodableVector();
        int r84 = 0;
        while (r84 < gMSSRootCalcArr.length) {
            aSN1EncodableVector29.add(new DERSequence(algorithmIdentifierArr2[0]));
            new ASN1EncodableVector();
            int r102 = gMSSRootCalcArr[r84].getStatInt()[0];
            int r112 = gMSSRootCalcArr[r84].getStatInt()[7];
            aSN1EncodableVector30.add(new DEROctetString(gMSSRootCalcArr[r84].getStatByte()[0]));
            int r13 = 0;
            while (r13 < r102) {
                r13++;
                aSN1EncodableVector30.add(new DEROctetString(gMSSRootCalcArr[r84].getStatByte()[r13]));
            }
            for (int r132 = 0; r132 < r112; r132++) {
                aSN1EncodableVector30.add(new DEROctetString(gMSSRootCalcArr[r84].getStatByte()[r102 + 1 + r132]));
            }
            ASN1EncodableVector aSN1EncodableVectorD18 = a.d(aSN1EncodableVector30, aSN1EncodableVector29);
            aSN1EncodableVector31.add(new ASN1Integer(r102));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[1]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[2]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[3]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[4]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[5]));
            aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[6]));
            aSN1EncodableVector31.add(new ASN1Integer(r112));
            for (int r122 = 0; r122 < r102; r122++) {
                aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[r122 + 8]));
            }
            for (int r123 = 0; r123 < r112; r123++) {
                aSN1EncodableVector31.add(new ASN1Integer(gMSSRootCalcArr[r84].getStatInt()[r102 + 8 + r123]));
            }
            ASN1EncodableVector aSN1EncodableVectorD19 = a.d(aSN1EncodableVector31, aSN1EncodableVector29);
            ASN1EncodableVector aSN1EncodableVector34 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector35 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector36 = new ASN1EncodableVector();
            if (gMSSRootCalcArr[r84].getTreehash() != null) {
                int r133 = 0;
                while (r133 < gMSSRootCalcArr[r84].getTreehash().length) {
                    aSN1EncodableVector34.add(new DERSequence(algorithmIdentifierArr2[0]));
                    int r14 = gMSSRootCalcArr[r84].getTreehash()[r133].getStatInt()[1];
                    ASN1EncodableVector aSN1EncodableVector37 = aSN1EncodableVectorD18;
                    aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[r84].getTreehash()[r133].getStatByte()[0]));
                    aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[r84].getTreehash()[r133].getStatByte()[1]));
                    aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[r84].getTreehash()[r133].getStatByte()[2]));
                    int r27 = 0;
                    while (r27 < r14) {
                        aSN1EncodableVector35.add(new DEROctetString(gMSSRootCalcArr[r84].getTreehash()[r133].getStatByte()[r27 + 3]));
                        r27++;
                        aSN1EncodableVectorD19 = aSN1EncodableVectorD19;
                    }
                    ASN1EncodableVector aSN1EncodableVector38 = aSN1EncodableVectorD19;
                    aSN1EncodableVector35 = a.d(aSN1EncodableVector35, aSN1EncodableVector34);
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[r84].getTreehash()[r133].getStatInt()[0]));
                    aSN1EncodableVector36.add(new ASN1Integer(r14));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[r84].getTreehash()[r133].getStatInt()[2]));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[r84].getTreehash()[r133].getStatInt()[3]));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[r84].getTreehash()[r133].getStatInt()[4]));
                    aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[r84].getTreehash()[r133].getStatInt()[5]));
                    int r28 = 0;
                    while (r28 < r14) {
                        aSN1EncodableVector36.add(new ASN1Integer(gMSSRootCalcArr[r84].getTreehash()[r133].getStatInt()[r28 + 6]));
                        r28++;
                        r14 = r14;
                    }
                    aSN1EncodableVector36 = a.d(aSN1EncodableVector36, aSN1EncodableVector34);
                    aSN1EncodableVector34 = a.d(aSN1EncodableVector34, aSN1EncodableVector32);
                    r133++;
                    aSN1EncodableVectorD18 = aSN1EncodableVector37;
                    aSN1EncodableVectorD19 = aSN1EncodableVector38;
                    algorithmIdentifierArr2 = algorithmIdentifierArr;
                }
            }
            ASN1EncodableVector aSN1EncodableVector39 = aSN1EncodableVectorD18;
            ASN1EncodableVector aSN1EncodableVector40 = aSN1EncodableVectorD19;
            aSN1EncodableVector32 = a.d(aSN1EncodableVector32, aSN1EncodableVector29);
            ASN1EncodableVector aSN1EncodableVector41 = new ASN1EncodableVector();
            if (gMSSRootCalcArr[r84].getRetain() != null) {
                for (int r36 = 0; r36 < gMSSRootCalcArr[r84].getRetain().length; r36++) {
                    for (int r48 = 0; r48 < gMSSRootCalcArr[r84].getRetain()[r36].size(); r48++) {
                        aSN1EncodableVector41.add(new DEROctetString((byte[]) gMSSRootCalcArr[r84].getRetain()[r36].elementAt(r48)));
                    }
                    aSN1EncodableVector41 = a.d(aSN1EncodableVector41, aSN1EncodableVector33);
                }
            }
            aSN1EncodableVector33 = a.d(aSN1EncodableVector33, aSN1EncodableVector29);
            aSN1EncodableVector29 = a.d(aSN1EncodableVector29, aSN1EncodableVectorD17);
            r84++;
            aSN1EncodableVector30 = aSN1EncodableVector39;
            aSN1EncodableVector31 = aSN1EncodableVector40;
            algorithmIdentifierArr2 = algorithmIdentifierArr;
        }
        ASN1EncodableVector aSN1EncodableVectorD20 = a.d(aSN1EncodableVectorD17, aSN1EncodableVector);
        for (byte[] bArr11 : bArr7) {
            aSN1EncodableVectorD20.add(new DEROctetString(bArr11));
        }
        ASN1EncodableVector aSN1EncodableVectorD21 = a.d(aSN1EncodableVectorD20, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector42 = new ASN1EncodableVector();
        new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector43 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector44 = new ASN1EncodableVector();
        for (int r49 = 0; r49 < gMSSRootSigArr.length; r49++) {
            aSN1EncodableVector42.add(new DERSequence(algorithmIdentifierArr[0]));
            new ASN1EncodableVector();
            aSN1EncodableVector43.add(new DEROctetString(gMSSRootSigArr[r49].getStatByte()[0]));
            aSN1EncodableVector43.add(new DEROctetString(gMSSRootSigArr[r49].getStatByte()[1]));
            aSN1EncodableVector43.add(new DEROctetString(gMSSRootSigArr[r49].getStatByte()[2]));
            aSN1EncodableVector43.add(new DEROctetString(gMSSRootSigArr[r49].getStatByte()[3]));
            aSN1EncodableVector43.add(new DEROctetString(gMSSRootSigArr[r49].getStatByte()[4]));
            aSN1EncodableVector42.add(new DERSequence(aSN1EncodableVector43));
            aSN1EncodableVector43 = new ASN1EncodableVector();
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[0]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[1]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[2]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[3]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[4]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[5]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[6]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[7]));
            aSN1EncodableVector44.add(new ASN1Integer(gMSSRootSigArr[r49].getStatInt()[8]));
            aSN1EncodableVector42.add(new DERSequence(aSN1EncodableVector44));
            aSN1EncodableVector44 = new ASN1EncodableVector();
            aSN1EncodableVector42 = a.d(aSN1EncodableVector42, aSN1EncodableVectorD21);
        }
        ASN1EncodableVector aSN1EncodableVectorD22 = a.d(aSN1EncodableVectorD21, aSN1EncodableVector);
        ASN1EncodableVector aSN1EncodableVector45 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector46 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector47 = new ASN1EncodableVector();
        for (int r410 = 0; r410 < gMSSParameters.getHeightOfTrees().length; r410++) {
            aSN1EncodableVector45.add(new ASN1Integer(gMSSParameters.getHeightOfTrees()[r410]));
            aSN1EncodableVector46.add(new ASN1Integer(gMSSParameters.getWinternitzParameter()[r410]));
            aSN1EncodableVector47.add(new ASN1Integer(gMSSParameters.getK()[r410]));
        }
        aSN1EncodableVectorD22.add(new ASN1Integer(gMSSParameters.getNumOfLayers()));
        aSN1EncodableVectorD22.add(new DERSequence(aSN1EncodableVector45));
        aSN1EncodableVectorD22.add(new DERSequence(aSN1EncodableVector46));
        aSN1EncodableVectorD22.add(new DERSequence(aSN1EncodableVector47));
        ASN1EncodableVector aSN1EncodableVectorD23 = a.d(aSN1EncodableVectorD22, aSN1EncodableVector);
        for (AlgorithmIdentifier algorithmIdentifier : algorithmIdentifierArr) {
            aSN1EncodableVectorD23.add(algorithmIdentifier);
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVectorD23));
        return new DERSequence(aSN1EncodableVector);
    }

    public static GMSSPrivateKey getInstance(Object obj) {
        if (obj instanceof GMSSPrivateKey) {
            return (GMSSPrivateKey) obj;
        }
        if (obj != null) {
            return new GMSSPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.primitive;
    }
}
