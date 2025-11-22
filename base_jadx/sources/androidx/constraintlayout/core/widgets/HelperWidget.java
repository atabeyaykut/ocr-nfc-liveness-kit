package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class HelperWidget extends ConstraintWidget implements Helper {
    public ConstraintWidget[] mWidgets = new ConstraintWidget[4];
    public int mWidgetsCount = 0;

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void add(ConstraintWidget constraintWidget) {
        if (constraintWidget == this || constraintWidget == null) {
            return;
        }
        int r02 = this.mWidgetsCount + 1;
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        if (r02 > constraintWidgetArr.length) {
            this.mWidgets = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.mWidgets;
        int r12 = this.mWidgetsCount;
        constraintWidgetArr2[r12] = constraintWidget;
        this.mWidgetsCount = r12 + 1;
    }

    public void addDependents(ArrayList<WidgetGroup> arrayList, int r52, WidgetGroup widgetGroup) {
        for (int r12 = 0; r12 < this.mWidgetsCount; r12++) {
            widgetGroup.add(this.mWidgets[r12]);
        }
        for (int r02 = 0; r02 < this.mWidgetsCount; r02++) {
            Grouping.findDependents(this.mWidgets[r02], r52, arrayList, widgetGroup);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        HelperWidget helperWidget = (HelperWidget) constraintWidget;
        this.mWidgetsCount = 0;
        int r12 = helperWidget.mWidgetsCount;
        for (int r02 = 0; r02 < r12; r02++) {
            add(map.get(helperWidget.mWidgets[r02]));
        }
    }

    public int findGroupInDependents(int r52) {
        int r12;
        int r32;
        for (int r02 = 0; r02 < this.mWidgetsCount; r02++) {
            ConstraintWidget constraintWidget = this.mWidgets[r02];
            if (r52 == 0 && (r32 = constraintWidget.horizontalGroup) != -1) {
                return r32;
            }
            if (r52 == 1 && (r12 = constraintWidget.verticalGroup) != -1) {
                return r12;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void removeAllIds() {
        this.mWidgetsCount = 0;
        Arrays.fill(this.mWidgets, (Object) null);
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void updateConstraints(ConstraintWidgetContainer constraintWidgetContainer) {
    }
}
