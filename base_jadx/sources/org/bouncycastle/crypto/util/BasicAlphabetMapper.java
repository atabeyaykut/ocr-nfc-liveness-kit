package org.bouncycastle.crypto.util;

import androidx.core.view.MotionEventCompat;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.AlphabetMapper;

/* loaded from: classes2.dex */
public class BasicAlphabetMapper implements AlphabetMapper {
    private Map<Integer, Character> charMap;
    private Map<Character, Integer> indexMap;

    public BasicAlphabetMapper(String str) {
        this(str.toCharArray());
    }

    public BasicAlphabetMapper(char[] cArr) {
        this.indexMap = new HashMap();
        this.charMap = new HashMap();
        for (int r02 = 0; r02 != cArr.length; r02++) {
            if (this.indexMap.containsKey(Character.valueOf(cArr[r02]))) {
                throw new IllegalArgumentException("duplicate key detected in alphabet: " + cArr[r02]);
            }
            this.indexMap.put(Character.valueOf(cArr[r02]), Integer.valueOf(r02));
            this.charMap.put(Integer.valueOf(r02), Character.valueOf(cArr[r02]));
        }
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public char[] convertToChars(byte[] bArr) {
        char[] cArr;
        int r22 = 0;
        if (this.charMap.size() <= 256) {
            cArr = new char[bArr.length];
            while (r22 != bArr.length) {
                cArr[r22] = this.charMap.get(Integer.valueOf(bArr[r22] & 255)).charValue();
                r22++;
            }
        } else {
            if ((bArr.length & 1) != 0) {
                throw new IllegalArgumentException("two byte radix and input string odd length");
            }
            cArr = new char[bArr.length / 2];
            while (r22 != bArr.length) {
                cArr[r22 / 2] = this.charMap.get(Integer.valueOf(((bArr[r22] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[r22 + 1] & 255))).charValue();
                r22 += 2;
            }
        }
        return cArr;
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public byte[] convertToIndexes(char[] cArr) {
        byte[] bArr;
        int r22 = 0;
        if (this.indexMap.size() <= 256) {
            bArr = new byte[cArr.length];
            while (r22 != cArr.length) {
                bArr[r22] = this.indexMap.get(Character.valueOf(cArr[r22])).byteValue();
                r22++;
            }
        } else {
            bArr = new byte[cArr.length * 2];
            while (r22 != cArr.length) {
                int r12 = this.indexMap.get(Character.valueOf(cArr[r22])).intValue();
                int r32 = r22 * 2;
                bArr[r32] = (byte) ((r12 >> 8) & 255);
                bArr[r32 + 1] = (byte) (r12 & 255);
                r22++;
            }
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public int getRadix() {
        return this.indexMap.size();
    }
}
