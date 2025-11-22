package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyCache {
    HashMap<Object, HashMap<String, float[]>> map = new HashMap<>();

    public float getFloatValue(Object obj, String str, int r52) {
        HashMap<String, float[]> map;
        float[] fArr;
        if (this.map.containsKey(obj) && (map = this.map.get(obj)) != null && map.containsKey(str) && (fArr = map.get(str)) != null && fArr.length > r52) {
            return fArr[r52];
        }
        return Float.NaN;
    }

    public void setFloatValue(Object obj, String str, int r52, float f) {
        HashMap<String, float[]> map;
        if (this.map.containsKey(obj)) {
            map = this.map.get(obj);
            if (map == null) {
                map = new HashMap<>();
            }
            if (map.containsKey(str)) {
                float[] fArrCopyOf = map.get(str);
                if (fArrCopyOf == null) {
                    fArrCopyOf = new float[0];
                }
                if (fArrCopyOf.length <= r52) {
                    fArrCopyOf = Arrays.copyOf(fArrCopyOf, r52 + 1);
                }
                fArrCopyOf[r52] = f;
                map.put(str, fArrCopyOf);
                return;
            }
            float[] fArr = new float[r52 + 1];
            fArr[r52] = f;
            map.put(str, fArr);
        } else {
            map = new HashMap<>();
            float[] fArr2 = new float[r52 + 1];
            fArr2[r52] = f;
            map.put(str, fArr2);
        }
        this.map.put(obj, map);
    }
}
