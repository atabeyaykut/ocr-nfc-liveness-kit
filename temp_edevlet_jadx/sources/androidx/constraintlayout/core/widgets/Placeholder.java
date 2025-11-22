package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;

/* loaded from: classes.dex */
public class Placeholder extends VirtualLayout {
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z10) {
        super.addToSolver(linearSystem, z10);
        if (this.mWidgetsCount > 0) {
            ConstraintWidget constraintWidget = this.mWidgets[0];
            constraintWidget.resetAllConstraints();
            ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
            constraintWidget.connect(type, this, type);
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
            constraintWidget.connect(type2, this, type2);
            ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
            constraintWidget.connect(type3, this, type3);
            ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
            constraintWidget.connect(type4, this, type4);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int r6, int r72, int r82, int r92) {
        int paddingLeft = getPaddingLeft() + getPaddingRight() + 0;
        int paddingTop = getPaddingTop() + getPaddingBottom() + 0;
        if (this.mWidgetsCount > 0) {
            paddingLeft += this.mWidgets[0].getWidth();
            paddingTop += this.mWidgets[0].getHeight();
        }
        int r02 = Math.max(getMinWidth(), paddingLeft);
        int r22 = Math.max(getMinHeight(), paddingTop);
        if (r6 != 1073741824) {
            r72 = r6 == Integer.MIN_VALUE ? Math.min(r02, r72) : r6 == 0 ? r02 : 0;
        }
        if (r82 != 1073741824) {
            r92 = r82 == Integer.MIN_VALUE ? Math.min(r22, r92) : r82 == 0 ? r22 : 0;
        }
        setMeasure(r72, r92);
        setWidth(r72);
        setHeight(r92);
        needsCallbackFromSolver(this.mWidgetsCount > 0);
    }
}
