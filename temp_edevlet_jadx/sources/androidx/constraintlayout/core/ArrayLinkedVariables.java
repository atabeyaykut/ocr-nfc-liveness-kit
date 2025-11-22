package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    static final int NONE = -1;
    private static float epsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    int currentSize = 0;
    private int ROW_SIZE = 8;
    private SolverVariable candidate = null;
    private int[] mArrayIndices = new int[8];
    private int[] mArrayNextIndices = new int[8];
    private float[] mArrayValues = new float[8];
    private int mHead = -1;
    private int mLast = -1;
    private boolean mDidFillOnce = false;

    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z10) {
        float f10 = epsilon;
        if (f <= (-f10) || f >= f10) {
            int r02 = this.mHead;
            if (r02 == -1) {
                this.mHead = 0;
                this.mArrayValues[0] = f;
                this.mArrayIndices[0] = solverVariable.f868id;
                this.mArrayNextIndices[0] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(this.mRow);
                this.currentSize++;
                if (this.mDidFillOnce) {
                    return;
                }
                int r92 = this.mLast + 1;
                this.mLast = r92;
                int[] r10 = this.mArrayIndices;
                if (r92 >= r10.length) {
                    this.mDidFillOnce = true;
                    this.mLast = r10.length - 1;
                    return;
                }
                return;
            }
            int r52 = -1;
            for (int r42 = 0; r02 != -1 && r42 < this.currentSize; r42++) {
                int r6 = this.mArrayIndices[r02];
                int r72 = solverVariable.f868id;
                if (r6 == r72) {
                    float[] fArr = this.mArrayValues;
                    float f11 = fArr[r02] + f;
                    float f12 = epsilon;
                    if (f11 > (-f12) && f11 < f12) {
                        f11 = 0.0f;
                    }
                    fArr[r02] = f11;
                    if (f11 == 0.0f) {
                        if (r02 == this.mHead) {
                            this.mHead = this.mArrayNextIndices[r02];
                        } else {
                            int[] r102 = this.mArrayNextIndices;
                            r102[r52] = r102[r02];
                        }
                        if (z10) {
                            solverVariable.removeFromRow(this.mRow);
                        }
                        if (this.mDidFillOnce) {
                            this.mLast = r02;
                        }
                        solverVariable.usageInRowCount--;
                        this.currentSize--;
                        return;
                    }
                    return;
                }
                if (r6 < r72) {
                    r52 = r02;
                }
                r02 = this.mArrayNextIndices[r02];
            }
            int length = this.mLast;
            int r03 = length + 1;
            if (this.mDidFillOnce) {
                int[] r04 = this.mArrayIndices;
                if (r04[length] != -1) {
                    length = r04.length;
                }
            } else {
                length = r03;
            }
            int[] r05 = this.mArrayIndices;
            if (length >= r05.length && this.currentSize < r05.length) {
                int r06 = 0;
                while (true) {
                    int[] r43 = this.mArrayIndices;
                    if (r06 >= r43.length) {
                        break;
                    }
                    if (r43[r06] == -1) {
                        length = r06;
                        break;
                    }
                    r06++;
                }
            }
            int[] r07 = this.mArrayIndices;
            if (length >= r07.length) {
                length = r07.length;
                int r08 = this.ROW_SIZE * 2;
                this.ROW_SIZE = r08;
                this.mDidFillOnce = false;
                this.mLast = length - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, r08);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
            }
            this.mArrayIndices[length] = solverVariable.f868id;
            this.mArrayValues[length] = f;
            int[] r103 = this.mArrayNextIndices;
            if (r52 != -1) {
                r103[length] = r103[r52];
                r103[r52] = length;
            } else {
                r103[length] = this.mHead;
                this.mHead = length;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            int r93 = this.mLast;
            int[] r104 = this.mArrayIndices;
            if (r93 >= r104.length) {
                this.mDidFillOnce = true;
                this.mLast = r104.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int r02 = this.mHead;
        for (int r22 = 0; r02 != -1 && r22 < this.currentSize; r22++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[r02]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            r02 = this.mArrayNextIndices[r02];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        int r02 = this.mHead;
        if (r02 == -1) {
            return false;
        }
        for (int r32 = 0; r02 != -1 && r32 < this.currentSize; r32++) {
            if (this.mArrayIndices[r02] == solverVariable.f868id) {
                return true;
            }
            r02 = this.mArrayNextIndices[r02];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int r02 = this.currentSize;
        System.out.print("{ ");
        for (int r12 = 0; r12 < r02; r12++) {
            SolverVariable variable = getVariable(r12);
            if (variable != null) {
                System.out.print(variable + " = " + getVariableValue(r12) + " ");
            }
        }
        System.out.println(" }");
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f) {
        int r02 = this.mHead;
        for (int r12 = 0; r02 != -1 && r12 < this.currentSize; r12++) {
            float[] fArr = this.mArrayValues;
            fArr[r02] = fArr[r02] / f;
            r02 = this.mArrayNextIndices[r02];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float get(SolverVariable solverVariable) {
        int r02 = this.mHead;
        for (int r12 = 0; r02 != -1 && r12 < this.currentSize; r12++) {
            if (this.mArrayIndices[r02] == solverVariable.f868id) {
                return this.mArrayValues[r02];
            }
            r02 = this.mArrayNextIndices[r02];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.currentSize;
    }

    public int getHead() {
        return this.mHead;
    }

    public final int getId(int r22) {
        return this.mArrayIndices[r22];
    }

    public final int getNextIndice(int r22) {
        return this.mArrayNextIndices[r22];
    }

    public SolverVariable getPivotCandidate() {
        SolverVariable solverVariable = this.candidate;
        if (solverVariable != null) {
            return solverVariable;
        }
        int r02 = this.mHead;
        SolverVariable solverVariable2 = null;
        for (int r12 = 0; r02 != -1 && r12 < this.currentSize; r12++) {
            if (this.mArrayValues[r02] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[r02]];
                if (solverVariable2 == null || solverVariable2.strength < solverVariable3.strength) {
                    solverVariable2 = solverVariable3;
                }
            }
            r02 = this.mArrayNextIndices[r02];
        }
        return solverVariable2;
    }

    public final float getValue(int r22) {
        return this.mArrayValues[r22];
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int r42) {
        int r02 = this.mHead;
        for (int r12 = 0; r02 != -1 && r12 < this.currentSize; r12++) {
            if (r12 == r42) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[r02]];
            }
            r02 = this.mArrayNextIndices[r02];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int r42) {
        int r02 = this.mHead;
        for (int r12 = 0; r02 != -1 && r12 < this.currentSize; r12++) {
            if (r12 == r42) {
                return this.mArrayValues[r02];
            }
            r02 = this.mArrayNextIndices[r02];
        }
        return 0.0f;
    }

    public boolean hasAtLeastOnePositiveVariable() {
        int r02 = this.mHead;
        for (int r22 = 0; r02 != -1 && r22 < this.currentSize; r22++) {
            if (this.mArrayValues[r02] > 0.0f) {
                return true;
            }
            r02 = this.mArrayNextIndices[r02];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int r02 = this.mHead;
        if (r02 == -1) {
            return -1;
        }
        for (int r22 = 0; r02 != -1 && r22 < this.currentSize; r22++) {
            if (this.mArrayIndices[r02] == solverVariable.f868id) {
                return r02;
            }
            r02 = this.mArrayNextIndices[r02];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int r02 = this.mHead;
        for (int r12 = 0; r02 != -1 && r12 < this.currentSize; r12++) {
            float[] fArr = this.mArrayValues;
            fArr[r02] = fArr[r02] * (-1.0f);
            r02 = this.mArrayNextIndices[r02];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        int r02 = this.mHead;
        if (r02 == -1) {
            this.mHead = 0;
            this.mArrayValues[0] = f;
            this.mArrayIndices[0] = solverVariable.f868id;
            this.mArrayNextIndices[0] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            int r92 = this.mLast + 1;
            this.mLast = r92;
            int[] r10 = this.mArrayIndices;
            if (r92 >= r10.length) {
                this.mDidFillOnce = true;
                this.mLast = r10.length - 1;
                return;
            }
            return;
        }
        int r52 = -1;
        for (int r42 = 0; r02 != -1 && r42 < this.currentSize; r42++) {
            int r6 = this.mArrayIndices[r02];
            int r72 = solverVariable.f868id;
            if (r6 == r72) {
                this.mArrayValues[r02] = f;
                return;
            }
            if (r6 < r72) {
                r52 = r02;
            }
            r02 = this.mArrayNextIndices[r02];
        }
        int length = this.mLast;
        int r43 = length + 1;
        if (this.mDidFillOnce) {
            int[] r44 = this.mArrayIndices;
            if (r44[length] != -1) {
                length = r44.length;
            }
        } else {
            length = r43;
        }
        int[] r45 = this.mArrayIndices;
        if (length >= r45.length && this.currentSize < r45.length) {
            int r46 = 0;
            while (true) {
                int[] r62 = this.mArrayIndices;
                if (r46 >= r62.length) {
                    break;
                }
                if (r62[r46] == -1) {
                    length = r46;
                    break;
                }
                r46++;
            }
        }
        int[] r47 = this.mArrayIndices;
        if (length >= r47.length) {
            length = r47.length;
            int r48 = this.ROW_SIZE * 2;
            this.ROW_SIZE = r48;
            this.mDidFillOnce = false;
            this.mLast = length - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, r48);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[length] = solverVariable.f868id;
        this.mArrayValues[length] = f;
        int[] r102 = this.mArrayNextIndices;
        if (r52 != -1) {
            r102[length] = r102[r52];
            r102[r52] = length;
        } else {
            r102[length] = this.mHead;
            this.mHead = length;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        int r93 = this.currentSize + 1;
        this.currentSize = r93;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        int[] r103 = this.mArrayIndices;
        if (r93 >= r103.length) {
            this.mDidFillOnce = true;
        }
        if (this.mLast >= r103.length) {
            this.mDidFillOnce = true;
            this.mLast = r103.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float remove(SolverVariable solverVariable, boolean z10) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        int r02 = this.mHead;
        if (r02 == -1) {
            return 0.0f;
        }
        int r32 = 0;
        int r42 = -1;
        while (r02 != -1 && r32 < this.currentSize) {
            if (this.mArrayIndices[r02] == solverVariable.f868id) {
                if (r02 == this.mHead) {
                    this.mHead = this.mArrayNextIndices[r02];
                } else {
                    int[] r12 = this.mArrayNextIndices;
                    r12[r42] = r12[r02];
                }
                if (z10) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[r02] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = r02;
                }
                return this.mArrayValues[r02];
            }
            r32++;
            r42 = r02;
            r02 = this.mArrayNextIndices[r02];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return (this.mArrayIndices.length * 4 * 3) + 0 + 36;
    }

    public String toString() {
        int r02 = this.mHead;
        String string = "";
        for (int r22 = 0; r02 != -1 && r22 < this.currentSize; r22++) {
            StringBuilder sbE = a.e(android.support.v4.media.a.f(string, " -> "));
            sbE.append(this.mArrayValues[r02]);
            sbE.append(" : ");
            StringBuilder sbE2 = a.e(sbE.toString());
            sbE2.append(this.mCache.mIndexedVariables[this.mArrayIndices[r02]]);
            string = sbE2.toString();
            r02 = this.mArrayNextIndices[r02];
        }
        return string;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z10) {
        float f = get(arrayRow.variable);
        remove(arrayRow.variable, z10);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int r22 = 0; r22 < currentSize; r22++) {
            SolverVariable variable = arrayRowVariables.getVariable(r22);
            add(variable, arrayRowVariables.get(variable) * f, z10);
        }
        return f;
    }
}
