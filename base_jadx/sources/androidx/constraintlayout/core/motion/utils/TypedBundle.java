package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
public class TypedBundle {
    private static final int INITIAL_BOOLEAN = 4;
    private static final int INITIAL_FLOAT = 10;
    private static final int INITIAL_INT = 10;
    private static final int INITIAL_STRING = 5;
    int[] mTypeInt = new int[10];
    int[] mValueInt = new int[10];
    int mCountInt = 0;
    int[] mTypeFloat = new int[10];
    float[] mValueFloat = new float[10];
    int mCountFloat = 0;
    int[] mTypeString = new int[5];
    String[] mValueString = new String[5];
    int mCountString = 0;
    int[] mTypeBoolean = new int[4];
    boolean[] mValueBoolean = new boolean[4];
    int mCountBoolean = 0;

    public void add(int r42, float f) {
        int r02 = this.mCountFloat;
        int[] r12 = this.mTypeFloat;
        if (r02 >= r12.length) {
            this.mTypeFloat = Arrays.copyOf(r12, r12.length * 2);
            float[] fArr = this.mValueFloat;
            this.mValueFloat = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] r03 = this.mTypeFloat;
        int r13 = this.mCountFloat;
        r03[r13] = r42;
        float[] fArr2 = this.mValueFloat;
        this.mCountFloat = r13 + 1;
        fArr2[r13] = f;
    }

    public void add(int r42, int r52) {
        int r02 = this.mCountInt;
        int[] r12 = this.mTypeInt;
        if (r02 >= r12.length) {
            this.mTypeInt = Arrays.copyOf(r12, r12.length * 2);
            int[] r03 = this.mValueInt;
            this.mValueInt = Arrays.copyOf(r03, r03.length * 2);
        }
        int[] r04 = this.mTypeInt;
        int r13 = this.mCountInt;
        r04[r13] = r42;
        int[] r43 = this.mValueInt;
        this.mCountInt = r13 + 1;
        r43[r13] = r52;
    }

    public void add(int r42, String str) {
        int r02 = this.mCountString;
        int[] r12 = this.mTypeString;
        if (r02 >= r12.length) {
            this.mTypeString = Arrays.copyOf(r12, r12.length * 2);
            String[] strArr = this.mValueString;
            this.mValueString = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] r03 = this.mTypeString;
        int r13 = this.mCountString;
        r03[r13] = r42;
        String[] strArr2 = this.mValueString;
        this.mCountString = r13 + 1;
        strArr2[r13] = str;
    }

    public void add(int r42, boolean z10) {
        int r02 = this.mCountBoolean;
        int[] r12 = this.mTypeBoolean;
        if (r02 >= r12.length) {
            this.mTypeBoolean = Arrays.copyOf(r12, r12.length * 2);
            boolean[] zArr = this.mValueBoolean;
            this.mValueBoolean = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] r03 = this.mTypeBoolean;
        int r13 = this.mCountBoolean;
        r03[r13] = r42;
        boolean[] zArr2 = this.mValueBoolean;
        this.mCountBoolean = r13 + 1;
        zArr2[r13] = z10;
    }

    public void addIfNotNull(int r12, String str) {
        if (str != null) {
            add(r12, str);
        }
    }

    public void applyDelta(TypedBundle typedBundle) {
        for (int r12 = 0; r12 < this.mCountInt; r12++) {
            typedBundle.add(this.mTypeInt[r12], this.mValueInt[r12]);
        }
        for (int r13 = 0; r13 < this.mCountFloat; r13++) {
            typedBundle.add(this.mTypeFloat[r13], this.mValueFloat[r13]);
        }
        for (int r14 = 0; r14 < this.mCountString; r14++) {
            typedBundle.add(this.mTypeString[r14], this.mValueString[r14]);
        }
        for (int r02 = 0; r02 < this.mCountBoolean; r02++) {
            typedBundle.add(this.mTypeBoolean[r02], this.mValueBoolean[r02]);
        }
    }

    public void applyDelta(TypedValues typedValues) {
        for (int r12 = 0; r12 < this.mCountInt; r12++) {
            typedValues.setValue(this.mTypeInt[r12], this.mValueInt[r12]);
        }
        for (int r13 = 0; r13 < this.mCountFloat; r13++) {
            typedValues.setValue(this.mTypeFloat[r13], this.mValueFloat[r13]);
        }
        for (int r14 = 0; r14 < this.mCountString; r14++) {
            typedValues.setValue(this.mTypeString[r14], this.mValueString[r14]);
        }
        for (int r02 = 0; r02 < this.mCountBoolean; r02++) {
            typedValues.setValue(this.mTypeBoolean[r02], this.mValueBoolean[r02]);
        }
    }

    public void clear() {
        this.mCountBoolean = 0;
        this.mCountString = 0;
        this.mCountFloat = 0;
        this.mCountInt = 0;
    }

    public int getInteger(int r32) {
        for (int r02 = 0; r02 < this.mCountInt; r02++) {
            if (this.mTypeInt[r02] == r32) {
                return this.mValueInt[r02];
            }
        }
        return -1;
    }
}
