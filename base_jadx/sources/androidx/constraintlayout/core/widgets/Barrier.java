package androidx.constraintlayout.core.widgets;

import android.support.v4.media.a;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private static final boolean USE_RELAX_GONE = false;
    private static final boolean USE_RESOLUTION = true;
    private int mBarrierType = 0;
    private boolean mAllowsGoneWidget = USE_RESOLUTION;
    private int mMargin = 0;
    boolean resolved = false;

    public Barrier() {
    }

    public Barrier(String str) {
        setDebugName(str);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z10) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z11;
        SolverVariable solverVariable;
        ConstraintAnchor constraintAnchor;
        int r82;
        int r72;
        int r73;
        SolverVariable solverVariable2;
        int r02;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int r14 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (r14 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor2 = constraintAnchorArr[r14];
            constraintAnchor2.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor2);
            r14++;
        }
        int r142 = this.mBarrierType;
        if (r142 < 0 || r142 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[r142];
        if (!this.resolved) {
            allSolved();
        }
        if (this.resolved) {
            this.resolved = false;
            int r143 = this.mBarrierType;
            if (r143 == 0 || r143 == 1) {
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mX);
                solverVariable2 = this.mRight.mSolverVariable;
                r02 = this.mX;
            } else {
                if (r143 != 2 && r143 != 3) {
                    return;
                }
                linearSystem.addEquality(this.mTop.mSolverVariable, this.mY);
                solverVariable2 = this.mBottom.mSolverVariable;
                r02 = this.mY;
            }
            linearSystem.addEquality(solverVariable2, r02);
            return;
        }
        for (int r03 = 0; r03 < this.mWidgetsCount; r03++) {
            ConstraintWidget constraintWidget = this.mWidgets[r03];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((r72 = this.mBarrierType) == 0 || r72 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((r73 = this.mBarrierType) == 2 || r73 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z11 = USE_RESOLUTION;
                break;
            }
        }
        z11 = false;
        boolean z12 = (this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents()) ? USE_RESOLUTION : false;
        boolean z13 = (this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents()) ? USE_RESOLUTION : false;
        int r6 = !((z11 || (((r82 = this.mBarrierType) != 0 || !z12) && ((r82 != 2 || !z13) && ((r82 != 1 || !z12) && (r82 != 3 || !z13))))) ? false : USE_RESOLUTION) ? 4 : 5;
        for (int r74 = 0; r74 < this.mWidgetsCount; r74++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[r74];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                int r10 = this.mBarrierType;
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr3[r10];
                constraintAnchor4.mSolverVariable = solverVariableCreateObjectVariable;
                ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
                int r83 = (constraintAnchor5 == null || constraintAnchor5.mOwner != this) ? 0 : constraintAnchor4.mMargin + 0;
                if (r10 == 0 || r10 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor3.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin - r83, z11);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor3.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin + r83, z11);
                }
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin + r83, r6);
            }
        }
        int r144 = this.mBarrierType;
        if (r144 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
            solverVariable = this.mLeft.mSolverVariable;
            constraintAnchor = this.mParent.mLeft;
        } else if (r144 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
            solverVariable = this.mLeft.mSolverVariable;
            constraintAnchor = this.mParent.mRight;
        } else if (r144 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
            solverVariable = this.mTop.mSolverVariable;
            constraintAnchor = this.mParent.mTop;
        } else {
            if (r144 != 3) {
                return;
            }
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
            solverVariable = this.mTop.mSolverVariable;
            constraintAnchor = this.mParent.mBottom;
        }
        linearSystem.addEquality(solverVariable, constraintAnchor.mSolverVariable, 0, 0);
    }

    public boolean allSolved() {
        int r42;
        ConstraintAnchor.Type type;
        ConstraintAnchor.Type type2;
        ConstraintAnchor.Type type3;
        int r72;
        int r73;
        int r22 = 0;
        boolean z10 = USE_RESOLUTION;
        while (true) {
            r42 = this.mWidgetsCount;
            if (r22 >= r42) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[r22];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((r72 = this.mBarrierType) == 0 || r72 == 1) && !constraintWidget.isResolvedHorizontally()) || (((r73 = this.mBarrierType) == 2 || r73 == 3) && !constraintWidget.isResolvedVertically()))) {
                z10 = false;
            }
            r22++;
        }
        if (!z10 || r42 <= 0) {
            return false;
        }
        int finalValue = 0;
        boolean z11 = false;
        for (int r12 = 0; r12 < this.mWidgetsCount; r12++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[r12];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                if (!z11) {
                    int r32 = this.mBarrierType;
                    if (r32 == 0) {
                        type3 = ConstraintAnchor.Type.LEFT;
                    } else if (r32 == 1) {
                        type3 = ConstraintAnchor.Type.RIGHT;
                    } else if (r32 == 2) {
                        type3 = ConstraintAnchor.Type.TOP;
                    } else {
                        if (r32 == 3) {
                            type3 = ConstraintAnchor.Type.BOTTOM;
                        }
                        z11 = USE_RESOLUTION;
                    }
                    finalValue = constraintWidget2.getAnchor(type3).getFinalValue();
                    z11 = USE_RESOLUTION;
                }
                int r74 = this.mBarrierType;
                if (r74 == 0) {
                    type2 = ConstraintAnchor.Type.LEFT;
                } else {
                    if (r74 == 1) {
                        type = ConstraintAnchor.Type.RIGHT;
                    } else if (r74 == 2) {
                        type2 = ConstraintAnchor.Type.TOP;
                    } else if (r74 == 3) {
                        type = ConstraintAnchor.Type.BOTTOM;
                    }
                    finalValue = Math.max(finalValue, constraintWidget2.getAnchor(type).getFinalValue());
                }
                finalValue = Math.min(finalValue, constraintWidget2.getAnchor(type2).getFinalValue());
            }
        }
        int r23 = finalValue + this.mMargin;
        int r13 = this.mBarrierType;
        if (r13 == 0 || r13 == 1) {
            setFinalHorizontal(r23, r23);
        } else {
            setFinalVertical(r23, r23);
        }
        this.resolved = USE_RESOLUTION;
        return USE_RESOLUTION;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return USE_RESOLUTION;
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }

    public boolean getAllowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    public int getBarrierType() {
        return this.mBarrierType;
    }

    public int getMargin() {
        return this.mMargin;
    }

    public int getOrientation() {
        int r02 = this.mBarrierType;
        if (r02 == 0 || r02 == 1) {
            return 0;
        }
        return (r02 == 2 || r02 == 3) ? 1 : -1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.resolved;
    }

    public void markWidgets() {
        for (int r12 = 0; r12 < this.mWidgetsCount; r12++) {
            ConstraintWidget constraintWidget = this.mWidgets[r12];
            if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                int r32 = this.mBarrierType;
                if (r32 == 0 || r32 == 1) {
                    constraintWidget.setInBarrier(0, USE_RESOLUTION);
                } else if (r32 == 2 || r32 == 3) {
                    constraintWidget.setInBarrier(1, USE_RESOLUTION);
                }
            }
        }
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.mAllowsGoneWidget = z10;
    }

    public void setBarrierType(int r12) {
        this.mBarrierType = r12;
    }

    public void setMargin(int r12) {
        this.mMargin = r12;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String string = "[Barrier] " + getDebugName() + " {";
        for (int r12 = 0; r12 < this.mWidgetsCount; r12++) {
            ConstraintWidget constraintWidget = this.mWidgets[r12];
            if (r12 > 0) {
                string = a.f(string, ", ");
            }
            StringBuilder sbE = androidx.constraintlayout.core.a.e(string);
            sbE.append(constraintWidget.getDebugName());
            string = sbE.toString();
        }
        return a.f(string, "}");
    }
}
