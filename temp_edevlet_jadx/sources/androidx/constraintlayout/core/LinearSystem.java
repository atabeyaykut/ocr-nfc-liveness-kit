package androidx.constraintlayout.core;

import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    private static final boolean DEBUG_CONSTRAINTS = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = false;
    private static int POOL_SIZE = 1000;
    public static boolean SIMPLIFY_SYNONYMS = true;
    public static boolean SKIP_COLUMNS = true;
    public static boolean USE_BASIC_SYNONYMS = true;
    public static boolean USE_DEPENDENCY_ORDERING = false;
    public static boolean USE_SYNONYMS = true;
    public static Metrics sMetrics;
    final Cache mCache;
    private Row mGoal;
    ArrayRow[] mRows;
    private Row mTempGoal;
    public boolean hasSimpleDefinition = false;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private int TABLE_SIZE = 32;
    private int mMaxColumns = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;
    private boolean[] mAlreadyTestedCandidates = new boolean[32];
    int mNumColumns = 1;
    int mNumRows = 0;
    private int mMaxRows = 32;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;

    public interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(Row row);

        boolean isEmpty();

        void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z10);

        void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z10);

        void updateFromSystem(LinearSystem linearSystem);
    }

    public class ValuesRow extends ArrayRow {
        public ValuesRow(Cache cache) {
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[32];
        releaseRows();
        Cache cache = new Cache();
        this.mCache = cache;
        this.mGoal = new PriorityGoalRow(cache);
        this.mTempGoal = OPTIMIZED_ENGINE ? new ValuesRow(cache) : new ArrayRow(cache);
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type, String str) {
        SolverVariable solverVariableAcquire = this.mCache.solverVariablePool.acquire();
        if (solverVariableAcquire == null) {
            solverVariableAcquire = new SolverVariable(type, str);
        } else {
            solverVariableAcquire.reset();
        }
        solverVariableAcquire.setType(type, str);
        int r32 = this.mPoolVariablesCount;
        int r42 = POOL_SIZE;
        if (r32 >= r42) {
            int r43 = r42 * 2;
            POOL_SIZE = r43;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, r43);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int r44 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = r44 + 1;
        solverVariableArr[r44] = solverVariableAcquire;
        return solverVariableAcquire;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    private final void addRow(ArrayRow arrayRow) {
        int r42;
        if (SIMPLIFY_SYNONYMS && arrayRow.isSimpleDefinition) {
            arrayRow.variable.setFinalValue(this, arrayRow.constantValue);
        } else {
            ArrayRow[] arrayRowArr = this.mRows;
            int r12 = this.mNumRows;
            arrayRowArr[r12] = arrayRow;
            SolverVariable solverVariable = arrayRow.variable;
            solverVariable.definitionId = r12;
            this.mNumRows = r12 + 1;
            solverVariable.updateReferencesWithNewDefinition(this, arrayRow);
        }
        if (SIMPLIFY_SYNONYMS && this.hasSimpleDefinition) {
            int r02 = 0;
            while (r02 < this.mNumRows) {
                if (this.mRows[r02] == null) {
                    System.out.println("WTF");
                }
                ArrayRow arrayRow2 = this.mRows[r02];
                if (arrayRow2 != null && arrayRow2.isSimpleDefinition) {
                    arrayRow2.variable.setFinalValue(this, arrayRow2.constantValue);
                    (OPTIMIZED_ENGINE ? this.mCache.optimizedArrayRowPool : this.mCache.arrayRowPool).release(arrayRow2);
                    this.mRows[r02] = null;
                    int r13 = r02 + 1;
                    int r32 = r13;
                    while (true) {
                        r42 = this.mNumRows;
                        if (r13 >= r42) {
                            break;
                        }
                        ArrayRow[] arrayRowArr2 = this.mRows;
                        int r43 = r13 - 1;
                        ArrayRow arrayRow3 = arrayRowArr2[r13];
                        arrayRowArr2[r43] = arrayRow3;
                        SolverVariable solverVariable2 = arrayRow3.variable;
                        if (solverVariable2.definitionId == r13) {
                            solverVariable2.definitionId = r43;
                        }
                        r32 = r13;
                        r13++;
                    }
                    if (r32 < r42) {
                        this.mRows[r32] = null;
                    }
                    this.mNumRows = r42 - 1;
                    r02--;
                }
                r02++;
            }
            this.hasSimpleDefinition = false;
        }
    }

    private void addSingleError(ArrayRow arrayRow, int r32) {
        addSingleError(arrayRow, r32, 0);
    }

    private void computeValues() {
        for (int r02 = 0; r02 < this.mNumRows; r02++) {
            ArrayRow arrayRow = this.mRows[r02];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        return linearSystem.createRow().createRowDimensionPercent(solverVariable, solverVariable2, f);
    }

    private SolverVariable createVariable(String str, SolverVariable.Type type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(type, null);
        solverVariableAcquireSolverVariable.setName(str);
        int r02 = this.mVariablesID + 1;
        this.mVariablesID = r02;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f868id = r02;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, solverVariableAcquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    private void displayRows() {
        displaySolverVariables();
        String strF = "";
        for (int r12 = 0; r12 < this.mNumRows; r12++) {
            StringBuilder sbE = a.e(strF);
            sbE.append(this.mRows[r12]);
            strF = android.support.v4.media.a.f(sbE.toString(), "\n");
        }
        StringBuilder sbE2 = a.e(strF);
        sbE2.append(this.mGoal);
        sbE2.append("\n");
        System.out.println(sbE2.toString());
    }

    private void displaySolverVariables() {
        StringBuilder sb2 = new StringBuilder("Display Rows (");
        sb2.append(this.mNumRows);
        sb2.append("x");
        System.out.println(androidx.browser.browseractions.a.b(sb2, this.mNumColumns, ")\n"));
    }

    private int enforceBFS(Row row) throws Exception {
        boolean z10;
        int r22 = 0;
        while (true) {
            if (r22 >= this.mNumRows) {
                z10 = false;
                break;
            }
            ArrayRow arrayRow = this.mRows[r22];
            if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && arrayRow.constantValue < 0.0f) {
                z10 = true;
                break;
            }
            r22++;
        }
        if (!z10) {
            return 0;
        }
        boolean z11 = false;
        int r32 = 0;
        while (!z11) {
            Metrics metrics = sMetrics;
            if (metrics != null) {
                metrics.bfs++;
            }
            r32++;
            float f = Float.MAX_VALUE;
            int r11 = -1;
            int r12 = -1;
            int r13 = 0;
            for (int r10 = 0; r10 < this.mNumRows; r10++) {
                ArrayRow arrayRow2 = this.mRows[r10];
                if (arrayRow2.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow2.isSimpleDefinition && arrayRow2.constantValue < 0.0f) {
                    int r15 = 9;
                    if (SKIP_COLUMNS) {
                        int currentSize = arrayRow2.variables.getCurrentSize();
                        int r52 = 0;
                        while (r52 < currentSize) {
                            SolverVariable variable = arrayRow2.variables.getVariable(r52);
                            float f10 = arrayRow2.variables.get(variable);
                            if (f10 > 0.0f) {
                                int r6 = 0;
                                while (r6 < r15) {
                                    float f11 = variable.strengthVector[r6] / f10;
                                    if ((f11 < f && r6 == r13) || r6 > r13) {
                                        r12 = variable.f868id;
                                        r13 = r6;
                                        r11 = r10;
                                        f = f11;
                                    }
                                    r6++;
                                    r15 = 9;
                                }
                            }
                            r52++;
                            r15 = 9;
                        }
                    } else {
                        for (int r14 = 1; r14 < this.mNumColumns; r14++) {
                            SolverVariable solverVariable = this.mCache.mIndexedVariables[r14];
                            float f12 = arrayRow2.variables.get(solverVariable);
                            if (f12 > 0.0f) {
                                for (int r72 = 0; r72 < 9; r72++) {
                                    float f13 = solverVariable.strengthVector[r72] / f12;
                                    if ((f13 < f && r72 == r13) || r72 > r13) {
                                        r12 = r14;
                                        r13 = r72;
                                        r11 = r10;
                                        f = f13;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (r11 != -1) {
                ArrayRow arrayRow3 = this.mRows[r11];
                arrayRow3.variable.definitionId = -1;
                Metrics metrics2 = sMetrics;
                if (metrics2 != null) {
                    metrics2.pivots++;
                }
                arrayRow3.pivot(this.mCache.mIndexedVariables[r12]);
                SolverVariable solverVariable2 = arrayRow3.variable;
                solverVariable2.definitionId = r11;
                solverVariable2.updateReferencesWithNewDefinition(this, arrayRow3);
            } else {
                z11 = true;
            }
            if (r32 > this.mNumColumns / 2) {
                z11 = true;
            }
        }
        return r32;
    }

    private String getDisplaySize(int r42) {
        int r43 = r42 * 4;
        int r02 = r43 / 1024;
        int r12 = r02 / 1024;
        return r12 > 0 ? androidx.appcompat.graphics.drawable.a.f("", r12, " Mb") : r02 > 0 ? androidx.appcompat.graphics.drawable.a.f("", r02, " Kb") : androidx.appcompat.graphics.drawable.a.f("", r43, " bytes");
    }

    private String getDisplayStrength(int r22) {
        return r22 == 1 ? "LOW" : r22 == 2 ? "MEDIUM" : r22 == 3 ? "HIGH" : r22 == 4 ? "HIGHEST" : r22 == 5 ? "EQUALITY" : r22 == 8 ? "FIXED" : r22 == 6 ? "BARRIER" : "NONE";
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    private void increaseTableSize() {
        int r02 = this.TABLE_SIZE * 2;
        this.TABLE_SIZE = r02;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, r02);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
        int r03 = this.TABLE_SIZE;
        this.mAlreadyTestedCandidates = new boolean[r03];
        this.mMaxColumns = r03;
        this.mMaxRows = r03;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, r03);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    private final int optimize(Row row, boolean z10) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int r22 = 0; r22 < this.mNumColumns; r22++) {
            this.mAlreadyTestedCandidates[r22] = false;
        }
        boolean z11 = false;
        int r32 = 0;
        while (!z11) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            r32++;
            if (r32 >= this.mNumColumns * 2) {
                return r32;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().f868id] = true;
            }
            SolverVariable pivotCandidate = row.getPivotCandidate(this, this.mAlreadyTestedCandidates);
            if (pivotCandidate != null) {
                boolean[] zArr = this.mAlreadyTestedCandidates;
                int r72 = pivotCandidate.f868id;
                if (zArr[r72]) {
                    return r32;
                }
                zArr[r72] = true;
            }
            if (pivotCandidate != null) {
                float f = Float.MAX_VALUE;
                int r82 = -1;
                for (int r73 = 0; r73 < this.mNumRows; r73++) {
                    ArrayRow arrayRow = this.mRows[r73];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.hasVariable(pivotCandidate)) {
                        float f10 = arrayRow.variables.get(pivotCandidate);
                        if (f10 < 0.0f) {
                            float f11 = (-arrayRow.constantValue) / f10;
                            if (f11 < f) {
                                r82 = r73;
                                f = f11;
                            }
                        }
                    }
                }
                if (r82 > -1) {
                    ArrayRow arrayRow2 = this.mRows[r82];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.pivot(pivotCandidate);
                    SolverVariable solverVariable = arrayRow2.variable;
                    solverVariable.definitionId = r82;
                    solverVariable.updateReferencesWithNewDefinition(this, arrayRow2);
                }
            } else {
                z11 = true;
            }
        }
        return r32;
    }

    private void releaseRows() {
        int r22 = 0;
        if (OPTIMIZED_ENGINE) {
            while (r22 < this.mNumRows) {
                ArrayRow arrayRow = this.mRows[r22];
                if (arrayRow != null) {
                    this.mCache.optimizedArrayRowPool.release(arrayRow);
                }
                this.mRows[r22] = null;
                r22++;
            }
            return;
        }
        while (r22 < this.mNumRows) {
            ArrayRow arrayRow2 = this.mRows[r22];
            if (arrayRow2 != null) {
                this.mCache.arrayRowPool.release(arrayRow2);
            }
            this.mRows[r22] = null;
            r22++;
        }
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int r20) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable solverVariableCreateObjectVariable = createObjectVariable(constraintWidget.getAnchor(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable solverVariableCreateObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable solverVariableCreateObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable solverVariableCreateObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(type4));
        SolverVariable solverVariableCreateObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(type));
        SolverVariable solverVariableCreateObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(type2));
        SolverVariable solverVariableCreateObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(type3));
        SolverVariable solverVariableCreateObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(type4));
        ArrayRow arrayRowCreateRow = createRow();
        double d10 = f;
        double d11 = r20;
        arrayRowCreateRow.createRowWithAngle(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable8, (float) (Math.sin(d10) * d11));
        addConstraint(arrayRowCreateRow);
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowWithAngle(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, solverVariableCreateObjectVariable7, (float) (Math.cos(d10) * d11));
        addConstraint(arrayRowCreateRow2);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int r14, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int r18, int r19) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, r14, f, solverVariable3, solverVariable4, r18);
        if (r19 != 8) {
            arrayRowCreateRow.addError(this, r19);
        }
        addConstraint(arrayRowCreateRow);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addConstraint(androidx.constraintlayout.core.ArrayRow r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L3
            return
        L3:
            androidx.constraintlayout.core.Metrics r0 = androidx.constraintlayout.core.LinearSystem.sMetrics
            r1 = 1
            if (r0 == 0) goto L17
            long r3 = r0.constraints
            long r3 = r3 + r1
            r0.constraints = r3
            boolean r3 = r8.isSimpleDefinition
            if (r3 == 0) goto L17
            long r3 = r0.simpleconstraints
            long r3 = r3 + r1
            r0.simpleconstraints = r3
        L17:
            int r0 = r7.mNumRows
            r3 = 1
            int r0 = r0 + r3
            int r4 = r7.mMaxRows
            if (r0 >= r4) goto L26
            int r0 = r7.mNumColumns
            int r0 = r0 + r3
            int r4 = r7.mMaxColumns
            if (r0 < r4) goto L29
        L26:
            r7.increaseTableSize()
        L29:
            boolean r0 = r8.isSimpleDefinition
            r4 = 0
            if (r0 != 0) goto L9e
            r8.updateFromSystem(r7)
            boolean r0 = r8.isEmpty()
            if (r0 == 0) goto L38
            return
        L38:
            r8.ensurePositiveConstant()
            boolean r0 = r8.chooseSubject(r7)
            if (r0 == 0) goto L95
            androidx.constraintlayout.core.SolverVariable r0 = r7.createExtraVariable()
            r8.variable = r0
            int r5 = r7.mNumRows
            r7.addRow(r8)
            int r6 = r7.mNumRows
            int r5 = r5 + r3
            if (r6 != r5) goto L95
            androidx.constraintlayout.core.LinearSystem$Row r4 = r7.mTempGoal
            r4.initFromRow(r8)
            androidx.constraintlayout.core.LinearSystem$Row r4 = r7.mTempGoal
            r7.optimize(r4, r3)
            int r4 = r0.definitionId
            r5 = -1
            if (r4 != r5) goto L96
            androidx.constraintlayout.core.SolverVariable r4 = r8.variable
            if (r4 != r0) goto L76
            androidx.constraintlayout.core.SolverVariable r0 = r8.pickPivot(r0)
            if (r0 == 0) goto L76
            androidx.constraintlayout.core.Metrics r4 = androidx.constraintlayout.core.LinearSystem.sMetrics
            if (r4 == 0) goto L73
            long r5 = r4.pivots
            long r5 = r5 + r1
            r4.pivots = r5
        L73:
            r8.pivot(r0)
        L76:
            boolean r0 = r8.isSimpleDefinition
            if (r0 != 0) goto L7f
            androidx.constraintlayout.core.SolverVariable r0 = r8.variable
            r0.updateReferencesWithNewDefinition(r7, r8)
        L7f:
            boolean r0 = androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ENGINE
            if (r0 == 0) goto L88
            androidx.constraintlayout.core.Cache r0 = r7.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.optimizedArrayRowPool
            goto L8c
        L88:
            androidx.constraintlayout.core.Cache r0 = r7.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.arrayRowPool
        L8c:
            r0.release(r8)
            int r0 = r7.mNumRows
            int r0 = r0 - r3
            r7.mNumRows = r0
            goto L96
        L95:
            r3 = 0
        L96:
            boolean r0 = r8.hasKeyVariable()
            if (r0 != 0) goto L9d
            return
        L9d:
            r4 = r3
        L9e:
            if (r4 != 0) goto La3
            r7.addRow(r8)
        La3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.LinearSystem.addConstraint(androidx.constraintlayout.core.ArrayRow):void");
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int r6, int r72) {
        if (USE_BASIC_SYNONYMS && r72 == 8 && solverVariable2.isFinalValue && solverVariable.definitionId == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + r6);
            return null;
        }
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, r6);
        if (r72 != 8) {
            arrayRowCreateRow.addError(this, r72);
        }
        addConstraint(arrayRowCreateRow);
        return arrayRowCreateRow;
    }

    public void addEquality(SolverVariable solverVariable, int r72) {
        ArrayRow arrayRowCreateRow;
        if (USE_BASIC_SYNONYMS && solverVariable.definitionId == -1) {
            float f = r72;
            solverVariable.setFinalValue(this, f);
            for (int r02 = 0; r02 < this.mVariablesID + 1; r02++) {
                SolverVariable solverVariable2 = this.mCache.mIndexedVariables[r02];
                if (solverVariable2 != null && solverVariable2.isSynonym && solverVariable2.synonym == solverVariable.f868id) {
                    solverVariable2.setFinalValue(this, solverVariable2.synonymDelta + f);
                }
            }
            return;
        }
        int r03 = solverVariable.definitionId;
        if (r03 != -1) {
            ArrayRow arrayRow = this.mRows[r03];
            if (!arrayRow.isSimpleDefinition) {
                if (arrayRow.variables.getCurrentSize() == 0) {
                    arrayRow.isSimpleDefinition = true;
                } else {
                    arrayRowCreateRow = createRow();
                    arrayRowCreateRow.createRowEquals(solverVariable, r72);
                }
            }
            arrayRow.constantValue = r72;
            return;
        }
        arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowDefinition(solverVariable, r72);
        addConstraint(arrayRowCreateRow);
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int r52, boolean z10) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r52);
        addConstraint(arrayRowCreateRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int r6, int r72) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r6);
        if (r72 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), r72);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int r52, boolean z10) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r52);
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int r6, int r72) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r6);
        if (r72 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), r72);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int r13) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (r13 != 8) {
            arrayRowCreateRow.addError(this, r13);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addSingleError(ArrayRow arrayRow, int r32, int r42) {
        arrayRow.addSingleError(createErrorVariable(r42, null), r32);
    }

    public void addSynonym(SolverVariable solverVariable, SolverVariable solverVariable2, int r52) {
        if (solverVariable.definitionId != -1 || r52 != 0) {
            addEquality(solverVariable, solverVariable2, r52, 8);
            return;
        }
        if (solverVariable2.isSynonym) {
            solverVariable2 = this.mCache.mIndexedVariables[solverVariable2.synonym];
        }
        if (solverVariable.isSynonym) {
            SolverVariable solverVariable3 = this.mCache.mIndexedVariables[solverVariable.synonym];
        } else {
            solverVariable.setSynonym(this, solverVariable2, 0.0f);
        }
    }

    public final void cleanupRows() {
        int r42;
        int r02 = 0;
        while (r02 < this.mNumRows) {
            ArrayRow arrayRow = this.mRows[r02];
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.isSimpleDefinition = true;
            }
            if (arrayRow.isSimpleDefinition) {
                SolverVariable solverVariable = arrayRow.variable;
                solverVariable.computedValue = arrayRow.constantValue;
                solverVariable.removeFromRow(arrayRow);
                int r22 = r02;
                while (true) {
                    r42 = this.mNumRows;
                    if (r22 >= r42 - 1) {
                        break;
                    }
                    ArrayRow[] arrayRowArr = this.mRows;
                    int r52 = r22 + 1;
                    arrayRowArr[r22] = arrayRowArr[r52];
                    r22 = r52;
                }
                this.mRows[r42 - 1] = null;
                this.mNumRows = r42 - 1;
                r02--;
                (OPTIMIZED_ENGINE ? this.mCache.optimizedArrayRowPool : this.mCache.arrayRowPool).release(arrayRow);
            }
            r02++;
        }
    }

    public SolverVariable createErrorVariable(int r6, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR, str);
        int r02 = this.mVariablesID + 1;
        this.mVariablesID = r02;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f868id = r02;
        solverVariableAcquireSolverVariable.strength = r6;
        this.mCache.mIndexedVariables[r02] = solverVariableAcquireSolverVariable;
        this.mGoal.addError(solverVariableAcquireSolverVariable);
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int r12 = this.mVariablesID + 1;
        this.mVariablesID = r12;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f868id = r12;
        this.mCache.mIndexedVariables[r12] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.mCache);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            int r42 = solverVariable.f868id;
            if (r42 == -1 || r42 > this.mVariablesID || this.mCache.mIndexedVariables[r42] == null) {
                if (r42 != -1) {
                    solverVariable.reset();
                }
                int r43 = this.mVariablesID + 1;
                this.mVariablesID = r43;
                this.mNumColumns++;
                solverVariable.f868id = r43;
                solverVariable.mType = SolverVariable.Type.UNRESTRICTED;
                this.mCache.mIndexedVariables[r43] = solverVariable;
            }
        }
        return solverVariable;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038 A[PHI: r0
      0x0038: PHI (r0v6 androidx.constraintlayout.core.ArrayRow) = (r0v4 androidx.constraintlayout.core.ArrayRow), (r0v11 androidx.constraintlayout.core.ArrayRow) binds: [B:8:0x0029, B:5:0x0010] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.core.ArrayRow createRow() {
        /*
            r5 = this;
            boolean r0 = androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ENGINE
            r1 = 1
            if (r0 == 0) goto L1f
            androidx.constraintlayout.core.Cache r0 = r5.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.optimizedArrayRowPool
            java.lang.Object r0 = r0.acquire()
            androidx.constraintlayout.core.ArrayRow r0 = (androidx.constraintlayout.core.ArrayRow) r0
            if (r0 != 0) goto L38
            androidx.constraintlayout.core.LinearSystem$ValuesRow r0 = new androidx.constraintlayout.core.LinearSystem$ValuesRow
            androidx.constraintlayout.core.Cache r3 = r5.mCache
            r0.<init>(r3)
            long r3 = androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ARRAY_ROW_CREATION
            long r3 = r3 + r1
            androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ARRAY_ROW_CREATION = r3
            goto L3b
        L1f:
            androidx.constraintlayout.core.Cache r0 = r5.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r0 = r0.arrayRowPool
            java.lang.Object r0 = r0.acquire()
            androidx.constraintlayout.core.ArrayRow r0 = (androidx.constraintlayout.core.ArrayRow) r0
            if (r0 != 0) goto L38
            androidx.constraintlayout.core.ArrayRow r0 = new androidx.constraintlayout.core.ArrayRow
            androidx.constraintlayout.core.Cache r3 = r5.mCache
            r0.<init>(r3)
            long r3 = androidx.constraintlayout.core.LinearSystem.ARRAY_ROW_CREATION
            long r3 = r3 + r1
            androidx.constraintlayout.core.LinearSystem.ARRAY_ROW_CREATION = r3
            goto L3b
        L38:
            r0.reset()
        L3b:
            androidx.constraintlayout.core.SolverVariable.increaseErrorId()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.LinearSystem.createRow():androidx.constraintlayout.core.ArrayRow");
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int r12 = this.mVariablesID + 1;
        this.mVariablesID = r12;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f868id = r12;
        this.mCache.mIndexedVariables[r12] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public void displayReadableRows() {
        displaySolverVariables();
        String strB = androidx.browser.browseractions.a.b(new StringBuilder(" num vars "), this.mVariablesID, "\n");
        for (int r32 = 0; r32 < this.mVariablesID + 1; r32++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[r32];
            if (solverVariable != null && solverVariable.isFinalValue) {
                strB = strB + " $[" + r32 + "] => " + solverVariable + " = " + solverVariable.computedValue + "\n";
            }
        }
        String strF = android.support.v4.media.a.f(strB, "\n");
        for (int r33 = 0; r33 < this.mVariablesID + 1; r33++) {
            SolverVariable[] solverVariableArr = this.mCache.mIndexedVariables;
            SolverVariable solverVariable2 = solverVariableArr[r33];
            if (solverVariable2 != null && solverVariable2.isSynonym) {
                strF = strF + " ~[" + r33 + "] => " + solverVariable2 + " = " + solverVariableArr[solverVariable2.synonym] + " + " + solverVariable2.synonymDelta + "\n";
            }
        }
        String strF2 = android.support.v4.media.a.f(strF, "\n\n #  ");
        for (int r12 = 0; r12 < this.mNumRows; r12++) {
            StringBuilder sbE = a.e(strF2);
            sbE.append(this.mRows[r12].toReadableString());
            strF2 = android.support.v4.media.a.f(sbE.toString(), "\n #  ");
        }
        if (this.mGoal != null) {
            StringBuilder sbI = b.i(strF2, "Goal: ");
            sbI.append(this.mGoal);
            sbI.append("\n");
            strF2 = sbI.toString();
        }
        System.out.println(strF2);
    }

    public void displaySystemInformation() {
        int r22 = 0;
        for (int r12 = 0; r12 < this.TABLE_SIZE; r12++) {
            ArrayRow arrayRow = this.mRows[r12];
            if (arrayRow != null) {
                r22 += arrayRow.sizeInBytes();
            }
        }
        int r32 = 0;
        for (int r13 = 0; r13 < this.mNumRows; r13++) {
            ArrayRow arrayRow2 = this.mRows[r13];
            if (arrayRow2 != null) {
                r32 += arrayRow2.sizeInBytes();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb2 = new StringBuilder("Linear System -> Table size: ");
        sb2.append(this.TABLE_SIZE);
        sb2.append(" (");
        int r52 = this.TABLE_SIZE;
        sb2.append(getDisplaySize(r52 * r52));
        sb2.append(") -- row sizes: ");
        sb2.append(getDisplaySize(r22));
        sb2.append(", actual size: ");
        sb2.append(getDisplaySize(r32));
        sb2.append(" rows: ");
        sb2.append(this.mNumRows);
        sb2.append("/");
        sb2.append(this.mMaxRows);
        sb2.append(" cols: ");
        sb2.append(this.mNumColumns);
        sb2.append("/");
        sb2.append(this.mMaxColumns);
        sb2.append(" 0 occupied cells, ");
        sb2.append(getDisplaySize(0));
        printStream.println(sb2.toString());
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String strF = "";
        for (int r12 = 0; r12 < this.mNumRows; r12++) {
            if (this.mRows[r12].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                StringBuilder sbE = a.e(strF);
                sbE.append(this.mRows[r12].toReadableString());
                strF = android.support.v4.media.a.f(sbE.toString(), "\n");
            }
        }
        StringBuilder sbE2 = a.e(strF);
        sbE2.append(this.mGoal);
        sbE2.append("\n");
        System.out.println(sbE2.toString());
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public Cache getCache() {
        return this.mCache;
    }

    public Row getGoal() {
        return this.mGoal;
    }

    public int getMemoryUsed() {
        int r12 = 0;
        for (int r02 = 0; r02 < this.mNumRows; r02++) {
            ArrayRow arrayRow = this.mRows[r02];
            if (arrayRow != null) {
                r12 = arrayRow.sizeInBytes() + r12;
            }
        }
        return r12;
    }

    public int getNumEquations() {
        return this.mNumRows;
    }

    public int getNumVariables() {
        return this.mVariablesID;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    public ArrayRow getRow(int r22) {
        return this.mRows[r22];
    }

    public float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    public SolverVariable getVariable(String str, SolverVariable.Type type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        return solverVariable == null ? createVariable(str, type) : solverVariable;
    }

    public void minimize() throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.mGoal.isEmpty()) {
            computeValues();
            return;
        }
        if (this.graphOptimizer || this.newgraphOptimizer) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.graphOptimizer++;
            }
            boolean z10 = false;
            int r32 = 0;
            while (true) {
                if (r32 >= this.mNumRows) {
                    z10 = true;
                    break;
                } else if (!this.mRows[r32].isSimpleDefinition) {
                    break;
                } else {
                    r32++;
                }
            }
            if (z10) {
                Metrics metrics3 = sMetrics;
                if (metrics3 != null) {
                    metrics3.fullySolved++;
                }
                computeValues();
                return;
            }
        }
        minimizeGoal(this.mGoal);
    }

    public void minimizeGoal(Row row) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.mNumColumns);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.mNumRows);
        }
        enforceBFS(row);
        optimize(row, false);
        computeValues();
    }

    public void removeRow(ArrayRow arrayRow) {
        SolverVariable solverVariable;
        int r12;
        if (!arrayRow.isSimpleDefinition || (solverVariable = arrayRow.variable) == null) {
            return;
        }
        int r02 = solverVariable.definitionId;
        if (r02 != -1) {
            while (true) {
                r12 = this.mNumRows;
                if (r02 >= r12 - 1) {
                    break;
                }
                ArrayRow[] arrayRowArr = this.mRows;
                int r22 = r02 + 1;
                ArrayRow arrayRow2 = arrayRowArr[r22];
                SolverVariable solverVariable2 = arrayRow2.variable;
                if (solverVariable2.definitionId == r22) {
                    solverVariable2.definitionId = r02;
                }
                arrayRowArr[r02] = arrayRow2;
                r02 = r22;
            }
            this.mNumRows = r12 - 1;
        }
        SolverVariable solverVariable3 = arrayRow.variable;
        if (!solverVariable3.isFinalValue) {
            solverVariable3.setFinalValue(this, arrayRow.constantValue);
        }
        (OPTIMIZED_ENGINE ? this.mCache.optimizedArrayRowPool : this.mCache.arrayRowPool).release(arrayRow);
    }

    public void reset() {
        Cache cache;
        int r12 = 0;
        while (true) {
            cache = this.mCache;
            SolverVariable[] solverVariableArr = cache.mIndexedVariables;
            if (r12 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[r12];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            r12++;
        }
        cache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> map = this.mVariables;
        if (map != null) {
            map.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int r13 = 0; r13 < this.mNumRows; r13++) {
            ArrayRow arrayRow = this.mRows[r13];
            if (arrayRow != null) {
                arrayRow.used = false;
            }
        }
        releaseRows();
        this.mNumRows = 0;
        this.mTempGoal = OPTIMIZED_ENGINE ? new ValuesRow(this.mCache) : new ArrayRow(this.mCache);
    }
}
