package androidx.constraintlayout.core;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable variable = null;
    float constantValue = 0.0f;
    boolean used = false;
    ArrayList<SolverVariable> variablesToUpdate = new ArrayList<>();
    boolean isSimpleDefinition = false;

    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f, boolean z10);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int r12);

        float getVariableValue(int r12);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f);

        float remove(SolverVariable solverVariable, boolean z10);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z10);
    }

    public ArrayRow() {
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int r32 = 0; r32 < currentSize; r32++) {
            float variableValue = this.variables.getVariableValue(r32);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(r32);
                if ((zArr == null || !zArr[variable.f868id]) && variable != solverVariable && (((type = variable.mType) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f)) {
                    f = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    public ArrayRow addError(LinearSystem linearSystem, int r52) {
        this.variables.put(linearSystem.createErrorVariable(r52, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(r52, "em"), -1.0f);
        return this;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        int r02 = solverVariable.strength;
        float f = 1.0f;
        if (r02 != 1) {
            if (r02 == 2) {
                f = 1000.0f;
            } else if (r02 == 3) {
                f = 1000000.0f;
            } else if (r02 == 4) {
                f = 1.0E9f;
            } else if (r02 == 5) {
                f = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f);
    }

    public ArrayRow addSingleError(SolverVariable solverVariable, int r32) {
        this.variables.put(solverVariable, r32);
        return this;
    }

    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z10;
        SolverVariable solverVariableChooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (solverVariableChooseSubjectInVariables == null) {
            z10 = true;
        } else {
            pivot(solverVariableChooseSubjectInVariables);
            z10 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
        }
        return z10;
    }

    public SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        SolverVariable solverVariable2 = null;
        boolean zIsNew = false;
        boolean zIsNew2 = false;
        float f = 0.0f;
        float f10 = 0.0f;
        for (int r42 = 0; r42 < currentSize; r42++) {
            float variableValue = this.variables.getVariableValue(r42);
            SolverVariable variable = this.variables.getVariable(r42);
            if (variable.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null || f > variableValue) {
                    zIsNew = isNew(variable, linearSystem);
                    f = variableValue;
                    solverVariable = variable;
                } else if (!zIsNew && isNew(variable, linearSystem)) {
                    f = variableValue;
                    solverVariable = variable;
                    zIsNew = true;
                }
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null || f10 > variableValue) {
                    zIsNew2 = isNew(variable, linearSystem);
                    f10 = variableValue;
                    solverVariable2 = variable;
                } else if (!zIsNew2 && isNew(variable, linearSystem)) {
                    f10 = variableValue;
                    solverVariable2 = variable;
                    zIsNew2 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = 0.0f;
    }

    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int r82, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int r12) {
        int r6;
        float f10;
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (r82 > 0 || r12 > 0) {
                r6 = (-r82) + r12;
                f10 = r6;
            }
            return this;
        }
        if (f <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            f10 = r82;
        } else {
            if (f < 1.0f) {
                float f11 = 1.0f - f;
                this.variables.put(solverVariable, f11 * 1.0f);
                this.variables.put(solverVariable2, f11 * (-1.0f));
                this.variables.put(solverVariable3, (-1.0f) * f);
                this.variables.put(solverVariable4, 1.0f * f);
                if (r82 > 0 || r12 > 0) {
                    this.constantValue = (r12 * f) + ((-r82) * f11);
                }
                return this;
            }
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            r6 = -r12;
            f10 = r6;
        }
        this.constantValue = f10;
        return this;
    }

    public ArrayRow createRowDefinition(SolverVariable solverVariable, int r22) {
        this.variable = solverVariable;
        float f = r22;
        solverVariable.computedValue = f;
        this.constantValue = f;
        this.isSimpleDefinition = true;
        return this;
    }

    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f);
        this.variables.put(solverVariable4, -f);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f, float f10, float f11, SolverVariable solverVariable, int r82, SolverVariable solverVariable2, int r10, SolverVariable solverVariable3, int r12, SolverVariable solverVariable4, int r14) {
        if (f10 == 0.0f || f == f11) {
            this.constantValue = ((-r82) - r10) + r12 + r14;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            float f12 = (f / f10) / (f11 / f10);
            this.constantValue = (r14 * f12) + (r12 * f12) + ((-r82) - r10);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f12);
            this.variables.put(solverVariable3, -f12);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f, float f10, float f11, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.constantValue = 0.0f;
        if (f10 == 0.0f || f == f11) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f11 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f12 = (f / f10) / (f11 / f10);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f12);
            this.variables.put(solverVariable3, -f12);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int r32) {
        ArrayRowVariables arrayRowVariables;
        float f;
        if (r32 < 0) {
            this.constantValue = r32 * (-1);
            arrayRowVariables = this.variables;
            f = 1.0f;
        } else {
            this.constantValue = r32;
            arrayRowVariables = this.variables;
            f = -1.0f;
        }
        arrayRowVariables.put(solverVariable, f);
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int r52) {
        boolean z10 = false;
        if (r52 != 0) {
            if (r52 < 0) {
                r52 *= -1;
                z10 = true;
            }
            this.constantValue = r52;
        }
        if (z10) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int r22, SolverVariable solverVariable2) {
        this.constantValue = r22;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int r6) {
        boolean z10 = false;
        if (r6 != 0) {
            if (r6 < 0) {
                r6 *= -1;
                z10 = true;
            }
            this.constantValue = r6;
        }
        if (z10) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int r6) {
        boolean z10 = false;
        if (r6 != 0) {
            if (r6 < 0) {
                r6 *= -1;
                z10 = true;
            }
            this.constantValue = r6;
        }
        if (z10) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.constantValue = -f;
        return this;
    }

    public void ensurePositiveConstant() {
        float f = this.constantValue;
        if (f < 0.0f) {
            this.constantValue = f * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getKey() {
        return this.variable;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.variable;
        return solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0f);
    }

    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int r02 = 0; r02 < arrayRow.variables.getCurrentSize(); r02++) {
                this.variables.add(arrayRow.variables.getVariable(r02), arrayRow.variables.getVariableValue(r02), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.variable == null && this.constantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    public void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.variable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.variable.definitionId = -1;
            this.variable = null;
        }
        float fRemove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.variable = solverVariable;
        if (fRemove == 1.0f) {
            return;
        }
        this.constantValue /= fRemove;
        this.variables.divideByAmount(fRemove);
    }

    public void reset() {
        this.variable = null;
        this.variables.clear();
        this.constantValue = 0.0f;
        this.isSimpleDefinition = false;
    }

    public int sizeInBytes() {
        return this.variables.sizeInBytes() + (this.variable != null ? 4 : 0) + 4 + 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toReadableString() {
        /*
            r10 = this;
            androidx.constraintlayout.core.SolverVariable r0 = r10.variable
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            androidx.constraintlayout.core.SolverVariable r1 = r10.variable
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = android.support.v4.media.a.f(r0, r1)
            float r1 = r10.constantValue
            r2 = 0
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L34
            java.lang.StringBuilder r0 = androidx.constraintlayout.core.a.e(r0)
            float r1 = r10.constantValue
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = 1
            goto L35
        L34:
            r1 = 0
        L35:
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r4 = r10.variables
            int r4 = r4.getCurrentSize()
        L3b:
            if (r2 >= r4) goto La4
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r5 = r10.variables
            androidx.constraintlayout.core.SolverVariable r5 = r5.getVariable(r2)
            if (r5 != 0) goto L46
            goto La1
        L46:
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r6 = r10.variables
            float r6 = r6.getVariableValue(r2)
            int r7 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r7 != 0) goto L51
            goto La1
        L51:
            java.lang.String r5 = r5.toString()
            r8 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L64
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 >= 0) goto L83
            java.lang.StringBuilder r0 = androidx.constraintlayout.core.a.e(r0)
            java.lang.String r1 = "- "
            goto L7a
        L64:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            if (r7 <= 0) goto L72
            java.lang.String r7 = " + "
            java.lang.String r0 = androidx.camera.camera2.internal.c.h(r1, r0, r7)
            goto L83
        L72:
            r1.append(r0)
            java.lang.String r0 = " - "
            r9 = r1
            r1 = r0
            r0 = r9
        L7a:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            float r6 = r6 * r8
        L83:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r1 != 0) goto L8f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            goto L9c
        L8f:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = " "
        L9c:
            java.lang.String r0 = androidx.camera.camera2.internal.c.h(r1, r0, r5)
            r1 = 1
        La1:
            int r2 = r2 + 1
            goto L3b
        La4:
            if (r1 != 0) goto Lac
            java.lang.String r1 = "0.0"
            java.lang.String r0 = android.support.v4.media.a.f(r0, r1)
        Lac:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.toReadableString():java.lang.String");
    }

    public String toString() {
        return toReadableString();
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        float f = this.variables.get(solverVariable);
        this.constantValue = (solverVariable.computedValue * f) + this.constantValue;
        this.variables.remove(solverVariable, z10);
        if (z10) {
            solverVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z10) {
        float fUse = this.variables.use(arrayRow, z10);
        this.constantValue = (arrayRow.constantValue * fUse) + this.constantValue;
        if (z10) {
            arrayRow.variable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.isSynonym) {
            return;
        }
        float f = this.variables.get(solverVariable);
        this.constantValue = (solverVariable.synonymDelta * f) + this.constantValue;
        this.variables.remove(solverVariable, z10);
        if (z10) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.mCache.mIndexedVariables[solverVariable.synonym], f, z10);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int currentSize = this.variables.getCurrentSize();
            for (int r42 = 0; r42 < currentSize; r42++) {
                SolverVariable variable = this.variables.getVariable(r42);
                if (variable.definitionId != -1 || variable.isFinalValue || variable.isSynonym) {
                    this.variablesToUpdate.add(variable);
                }
            }
            int size = this.variablesToUpdate.size();
            if (size > 0) {
                for (int r43 = 0; r43 < size; r43++) {
                    SolverVariable solverVariable = this.variablesToUpdate.get(r43);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.isSynonym) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.mRows[solverVariable.definitionId], true);
                    }
                }
                this.variablesToUpdate.clear();
            } else {
                z10 = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }
}
