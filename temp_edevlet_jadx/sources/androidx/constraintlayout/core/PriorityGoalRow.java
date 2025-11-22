package androidx.constraintlayout.core;

import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {
    private static final boolean DEBUG = false;
    static final int NOT_FOUND = -1;
    private static final float epsilon = 1.0E-4f;
    private int TABLE_SIZE;
    GoalVariableAccessor accessor;
    private SolverVariable[] arrayGoals;
    Cache mCache;
    private int numGoals;
    private SolverVariable[] sortArray;

    public class GoalVariableAccessor {
        PriorityGoalRow row;
        SolverVariable variable;

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
            this.row = priorityGoalRow;
        }

        public void add(SolverVariable solverVariable) {
            for (int r02 = 0; r02 < 9; r02++) {
                float[] fArr = this.variable.goalStrengthVector;
                float f = fArr[r02] + solverVariable.goalStrengthVector[r02];
                fArr[r02] = f;
                if (Math.abs(f) < 1.0E-4f) {
                    this.variable.goalStrengthVector[r02] = 0.0f;
                }
            }
        }

        public boolean addToGoal(SolverVariable solverVariable, float f) {
            boolean z10 = true;
            if (!this.variable.inGoal) {
                for (int r52 = 0; r52 < 9; r52++) {
                    float f10 = solverVariable.goalStrengthVector[r52];
                    if (f10 != 0.0f) {
                        float f11 = f10 * f;
                        if (Math.abs(f11) < 1.0E-4f) {
                            f11 = 0.0f;
                        }
                        this.variable.goalStrengthVector[r52] = f11;
                    } else {
                        this.variable.goalStrengthVector[r52] = 0.0f;
                    }
                }
                return true;
            }
            for (int r02 = 0; r02 < 9; r02++) {
                float[] fArr = this.variable.goalStrengthVector;
                float f12 = (solverVariable.goalStrengthVector[r02] * f) + fArr[r02];
                fArr[r02] = f12;
                if (Math.abs(f12) < 1.0E-4f) {
                    this.variable.goalStrengthVector[r02] = 0.0f;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                PriorityGoalRow.this.removeGoal(this.variable);
            }
            return false;
        }

        public void init(SolverVariable solverVariable) {
            this.variable = solverVariable;
        }

        public final boolean isNegative() {
            for (int r02 = 8; r02 >= 0; r02--) {
                float f = this.variable.goalStrengthVector[r02];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isNull() {
            for (int r12 = 0; r12 < 9; r12++) {
                if (this.variable.goalStrengthVector[r12] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isSmallerThan(SolverVariable solverVariable) {
            int r02 = 8;
            while (true) {
                if (r02 < 0) {
                    break;
                }
                float f = solverVariable.goalStrengthVector[r02];
                float f10 = this.variable.goalStrengthVector[r02];
                if (f10 == f) {
                    r02--;
                } else if (f10 < f) {
                    return true;
                }
            }
            return false;
        }

        public void reset() {
            Arrays.fill(this.variable.goalStrengthVector, 0.0f);
        }

        public String toString() {
            String string = "[ ";
            if (this.variable != null) {
                for (int r02 = 0; r02 < 9; r02++) {
                    StringBuilder sbE = a.e(string);
                    sbE.append(this.variable.goalStrengthVector[r02]);
                    sbE.append(" ");
                    string = sbE.toString();
                }
            }
            StringBuilder sbI = b.i(string, "] ");
            sbI.append(this.variable);
            return sbI.toString();
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.TABLE_SIZE = 128;
        this.arrayGoals = new SolverVariable[128];
        this.sortArray = new SolverVariable[128];
        this.numGoals = 0;
        this.accessor = new GoalVariableAccessor(this);
        this.mCache = cache;
    }

    private final void addToGoal(SolverVariable solverVariable) {
        int r32;
        int r02 = this.numGoals + 1;
        SolverVariable[] solverVariableArr = this.arrayGoals;
        if (r02 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.arrayGoals = solverVariableArr2;
            this.sortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.arrayGoals;
        int r22 = this.numGoals;
        solverVariableArr3[r22] = solverVariable;
        int r23 = r22 + 1;
        this.numGoals = r23;
        if (r23 > 1 && solverVariableArr3[r23 - 1].f868id > solverVariable.f868id) {
            int r24 = 0;
            while (true) {
                r32 = this.numGoals;
                if (r24 >= r32) {
                    break;
                }
                this.sortArray[r24] = this.arrayGoals[r24];
                r24++;
            }
            Arrays.sort(this.sortArray, 0, r32, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.core.PriorityGoalRow.1
                @Override // java.util.Comparator
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.f868id - solverVariable3.f868id;
                }
            });
            for (int r03 = 0; r03 < this.numGoals; r03++) {
                this.arrayGoals[r03] = this.sortArray[r03];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeGoal(SolverVariable solverVariable) {
        int r12 = 0;
        while (r12 < this.numGoals) {
            if (this.arrayGoals[r12] == solverVariable) {
                while (true) {
                    int r22 = this.numGoals;
                    if (r12 >= r22 - 1) {
                        this.numGoals = r22 - 1;
                        solverVariable.inGoal = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.arrayGoals;
                        int r32 = r12 + 1;
                        solverVariableArr[r12] = solverVariableArr[r32];
                        r12 = r32;
                    }
                }
            } else {
                r12++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        this.accessor.init(solverVariable);
        this.accessor.reset();
        solverVariable.goalStrengthVector[solverVariable.strength] = 1.0f;
        addToGoal(solverVariable);
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.numGoals = 0;
        this.constantValue = 0.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.core.SolverVariable getPivotCandidate(androidx.constraintlayout.core.LinearSystem r5, boolean[] r6) {
        /*
            r4 = this;
            r5 = -1
            r0 = 0
            r1 = -1
        L3:
            int r2 = r4.numGoals
            if (r0 >= r2) goto L30
            androidx.constraintlayout.core.SolverVariable[] r2 = r4.arrayGoals
            r2 = r2[r0]
            int r3 = r2.f868id
            boolean r3 = r6[r3]
            if (r3 == 0) goto L12
            goto L2d
        L12:
            androidx.constraintlayout.core.PriorityGoalRow$GoalVariableAccessor r3 = r4.accessor
            r3.init(r2)
            androidx.constraintlayout.core.PriorityGoalRow$GoalVariableAccessor r2 = r4.accessor
            if (r1 != r5) goto L22
            boolean r2 = r2.isNegative()
            if (r2 == 0) goto L2d
            goto L2c
        L22:
            androidx.constraintlayout.core.SolverVariable[] r3 = r4.arrayGoals
            r3 = r3[r1]
            boolean r2 = r2.isSmallerThan(r3)
            if (r2 == 0) goto L2d
        L2c:
            r1 = r0
        L2d:
            int r0 = r0 + 1
            goto L3
        L30:
            if (r1 != r5) goto L34
            r5 = 0
            return r5
        L34:
            androidx.constraintlayout.core.SolverVariable[] r5 = r4.arrayGoals
            r5 = r5[r1]
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.PriorityGoalRow.getPivotCandidate(androidx.constraintlayout.core.LinearSystem, boolean[]):androidx.constraintlayout.core.SolverVariable");
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.numGoals == 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public String toString() {
        String string = " goal -> (" + this.constantValue + ") : ";
        for (int r12 = 0; r12 < this.numGoals; r12++) {
            this.accessor.init(this.arrayGoals[r12]);
            StringBuilder sbE = a.e(string);
            sbE.append(this.accessor);
            sbE.append(" ");
            string = sbE.toString();
        }
        return string;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z10) {
        SolverVariable solverVariable = arrayRow.variable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int r12 = 0; r12 < currentSize; r12++) {
            SolverVariable variable = arrayRowVariables.getVariable(r12);
            float variableValue = arrayRowVariables.getVariableValue(r12);
            this.accessor.init(variable);
            if (this.accessor.addToGoal(solverVariable, variableValue)) {
                addToGoal(variable);
            }
            this.constantValue = (arrayRow.constantValue * variableValue) + this.constantValue;
        }
        removeGoal(solverVariable);
    }
}
