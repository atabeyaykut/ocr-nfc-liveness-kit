package androidx.constraintlayout.core;

import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean HASH = true;
    private static float epsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    private final int NONE = -1;
    private int SIZE = 16;
    private int HASH_SIZE = 16;
    int[] keys = new int[16];
    int[] nextKeys = new int[16];
    int[] variables = new int[16];
    float[] values = new float[16];
    int[] previous = new int[16];
    int[] next = new int[16];
    int mCount = 0;
    int head = -1;

    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
        clear();
    }

    private void addToHashMap(SolverVariable solverVariable, int r52) {
        int[] r42;
        int r43 = solverVariable.f868id % this.HASH_SIZE;
        int[] r02 = this.keys;
        int r12 = r02[r43];
        if (r12 == -1) {
            r02[r43] = r52;
        } else {
            while (true) {
                r42 = this.nextKeys;
                int r03 = r42[r12];
                if (r03 == -1) {
                    break;
                } else {
                    r12 = r03;
                }
            }
            r42[r12] = r52;
        }
        this.nextKeys[r52] = -1;
    }

    private void addVariable(int r32, SolverVariable solverVariable, float f) {
        this.variables[r32] = solverVariable.f868id;
        this.values[r32] = f;
        this.previous[r32] = -1;
        this.next[r32] = -1;
        solverVariable.addToRow(this.mRow);
        solverVariable.usageInRowCount++;
        this.mCount++;
    }

    private void displayHash() {
        for (int r02 = 0; r02 < this.HASH_SIZE; r02++) {
            if (this.keys[r02] != -1) {
                String string = hashCode() + " hash [" + r02 + "] => ";
                int r32 = this.keys[r02];
                boolean z10 = false;
                while (!z10) {
                    StringBuilder sbI = b.i(string, " ");
                    sbI.append(this.variables[r32]);
                    string = sbI.toString();
                    int r52 = this.nextKeys[r32];
                    if (r52 != -1) {
                        r32 = r52;
                    } else {
                        z10 = HASH;
                    }
                }
                System.out.println(string);
            }
        }
    }

    private int findEmptySlot() {
        for (int r02 = 0; r02 < this.SIZE; r02++) {
            if (this.variables[r02] == -1) {
                return r02;
            }
        }
        return -1;
    }

    private void increaseSize() {
        int r02 = this.SIZE * 2;
        this.variables = Arrays.copyOf(this.variables, r02);
        this.values = Arrays.copyOf(this.values, r02);
        this.previous = Arrays.copyOf(this.previous, r02);
        this.next = Arrays.copyOf(this.next, r02);
        this.nextKeys = Arrays.copyOf(this.nextKeys, r02);
        for (int r12 = this.SIZE; r12 < r02; r12++) {
            this.variables[r12] = -1;
            this.nextKeys[r12] = -1;
        }
        this.SIZE = r02;
    }

    private void insertVariable(int r42, SolverVariable solverVariable, float f) {
        int r02 = findEmptySlot();
        addVariable(r02, solverVariable, f);
        if (r42 != -1) {
            this.previous[r02] = r42;
            int[] r12 = this.next;
            r12[r02] = r12[r42];
            r12[r42] = r02;
        } else {
            this.previous[r02] = -1;
            if (this.mCount > 0) {
                this.next[r02] = this.head;
                this.head = r02;
            } else {
                this.next[r02] = -1;
            }
        }
        int r43 = this.next[r02];
        if (r43 != -1) {
            this.previous[r43] = r02;
        }
        addToHashMap(solverVariable, r02);
    }

    private void removeFromHashMap(SolverVariable solverVariable) {
        int[] r02;
        int r12;
        int r6 = solverVariable.f868id;
        int r03 = r6 % this.HASH_SIZE;
        int[] r13 = this.keys;
        int r22 = r13[r03];
        if (r22 == -1) {
            return;
        }
        if (this.variables[r22] == r6) {
            int[] r62 = this.nextKeys;
            r13[r03] = r62[r22];
            r62[r22] = -1;
            return;
        }
        while (true) {
            r02 = this.nextKeys;
            r12 = r02[r22];
            if (r12 == -1 || this.variables[r12] == r6) {
                break;
            } else {
                r22 = r12;
            }
        }
        if (r12 == -1 || this.variables[r12] != r6) {
            return;
        }
        r02[r22] = r02[r12];
        r02[r12] = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z10) {
        float f10 = epsilon;
        if (f <= (-f10) || f >= f10) {
            int r02 = indexOf(solverVariable);
            if (r02 == -1) {
                put(solverVariable, f);
                return;
            }
            float[] fArr = this.values;
            float f11 = fArr[r02] + f;
            fArr[r02] = f11;
            float f12 = epsilon;
            if (f11 <= (-f12) || f11 >= f12) {
                return;
            }
            fArr[r02] = 0.0f;
            remove(solverVariable, z10);
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void clear() {
        int r02 = this.mCount;
        for (int r22 = 0; r22 < r02; r22++) {
            SolverVariable variable = getVariable(r22);
            if (variable != null) {
                variable.removeFromRow(this.mRow);
            }
        }
        for (int r03 = 0; r03 < this.SIZE; r03++) {
            this.variables[r03] = -1;
            this.nextKeys[r03] = -1;
        }
        for (int r04 = 0; r04 < this.HASH_SIZE; r04++) {
            this.keys[r04] = -1;
        }
        this.mCount = 0;
        this.head = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        if (indexOf(solverVariable) != -1) {
            return HASH;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int r02 = this.mCount;
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
        int r02 = this.mCount;
        int r12 = this.head;
        for (int r22 = 0; r22 < r02; r22++) {
            float[] fArr = this.values;
            fArr[r12] = fArr[r12] / f;
            r12 = this.next[r12];
            if (r12 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int r22 = indexOf(solverVariable);
        if (r22 != -1) {
            return this.values[r22];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.mCount;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int r72) {
        int r02 = this.mCount;
        if (r02 == 0) {
            return null;
        }
        int r22 = this.head;
        for (int r32 = 0; r32 < r02; r32++) {
            if (r32 == r72 && r22 != -1) {
                return this.mCache.mIndexedVariables[this.variables[r22]];
            }
            r22 = this.next[r22];
            if (r22 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int r52) {
        int r02 = this.mCount;
        int r12 = this.head;
        for (int r22 = 0; r22 < r02; r22++) {
            if (r22 == r52) {
                return this.values[r12];
            }
            r12 = this.next[r12];
            if (r12 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        if (this.mCount != 0 && solverVariable != null) {
            int r42 = solverVariable.f868id;
            int r02 = this.keys[r42 % this.HASH_SIZE];
            if (r02 == -1) {
                return -1;
            }
            if (this.variables[r02] == r42) {
                return r02;
            }
            do {
                r02 = this.nextKeys[r02];
                if (r02 == -1) {
                    break;
                }
            } while (this.variables[r02] != r42);
            if (r02 != -1 && this.variables[r02] == r42) {
                return r02;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int r02 = this.mCount;
        int r12 = this.head;
        for (int r22 = 0; r22 < r02; r22++) {
            float[] fArr = this.values;
            fArr[r12] = fArr[r12] * (-1.0f);
            r12 = this.next[r12];
            if (r12 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f) {
        float f10 = epsilon;
        if (f > (-f10) && f < f10) {
            remove(solverVariable, HASH);
            return;
        }
        if (this.mCount == 0) {
            addVariable(0, solverVariable, f);
            addToHashMap(solverVariable, 0);
            this.head = 0;
            return;
        }
        int r02 = indexOf(solverVariable);
        if (r02 != -1) {
            this.values[r02] = f;
            return;
        }
        if (this.mCount + 1 >= this.SIZE) {
            increaseSize();
        }
        int r03 = this.mCount;
        int r22 = this.head;
        int r42 = -1;
        for (int r12 = 0; r12 < r03; r12++) {
            int r52 = this.variables[r22];
            int r6 = solverVariable.f868id;
            if (r52 == r6) {
                this.values[r22] = f;
                return;
            }
            if (r52 < r6) {
                r42 = r22;
            }
            r22 = this.next[r22];
            if (r22 == -1) {
                break;
            }
        }
        insertVariable(r42, solverVariable, f);
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z10) {
        int r02 = indexOf(solverVariable);
        if (r02 == -1) {
            return 0.0f;
        }
        removeFromHashMap(solverVariable);
        float f = this.values[r02];
        if (this.head == r02) {
            this.head = this.next[r02];
        }
        this.variables[r02] = -1;
        int[] r32 = this.previous;
        int r42 = r32[r02];
        if (r42 != -1) {
            int[] r52 = this.next;
            r52[r42] = r52[r02];
        }
        int r43 = this.next[r02];
        if (r43 != -1) {
            r32[r43] = r32[r02];
        }
        this.mCount--;
        solverVariable.usageInRowCount--;
        if (z10) {
            solverVariable.removeFromRow(this.mRow);
        }
        return f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    public String toString() {
        StringBuilder sbI;
        String strF;
        String strF2 = hashCode() + " { ";
        int r12 = this.mCount;
        for (int r22 = 0; r22 < r12; r22++) {
            SolverVariable variable = getVariable(r22);
            if (variable != null) {
                String str = strF2 + variable + " = " + getVariableValue(r22) + " ";
                int r32 = indexOf(variable);
                String strF3 = android.support.v4.media.a.f(str, "[p: ");
                if (this.previous[r32] != -1) {
                    sbI = a.e(strF3);
                    sbI.append(this.mCache.mIndexedVariables[this.variables[this.previous[r32]]]);
                } else {
                    sbI = b.i(strF3, "none");
                }
                String strF4 = android.support.v4.media.a.f(sbI.toString(), ", n: ");
                if (this.next[r32] != -1) {
                    StringBuilder sbE = a.e(strF4);
                    sbE.append(this.mCache.mIndexedVariables[this.variables[this.next[r32]]]);
                    strF = sbE.toString();
                } else {
                    strF = android.support.v4.media.a.f(strF4, "none");
                }
                strF2 = android.support.v4.media.a.f(strF, "]");
            }
        }
        return android.support.v4.media.a.f(strF2, " }");
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z10) {
        float f = get(arrayRow.variable);
        remove(arrayRow.variable, z10);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int r22 = 0;
        int r32 = 0;
        while (r22 < currentSize) {
            int r42 = solverVariableValues.variables[r32];
            if (r42 != -1) {
                add(this.mCache.mIndexedVariables[r42], solverVariableValues.values[r32] * f, z10);
                r22++;
            }
            r32++;
        }
        return f;
    }
}
