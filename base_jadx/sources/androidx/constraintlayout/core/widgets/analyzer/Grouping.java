package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Grouping {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_GROUPING = false;

    public static WidgetGroup findDependents(ConstraintWidget constraintWidget, int r72, ArrayList<WidgetGroup> arrayList, WidgetGroup widgetGroup) {
        ConstraintAnchor constraintAnchor;
        int r02;
        int r03 = r72 == 0 ? constraintWidget.horizontalGroup : constraintWidget.verticalGroup;
        if (r03 != -1 && (widgetGroup == null || r03 != widgetGroup.f882id)) {
            int r32 = 0;
            while (true) {
                if (r32 >= arrayList.size()) {
                    break;
                }
                WidgetGroup widgetGroup2 = arrayList.get(r32);
                if (widgetGroup2.getId() == r03) {
                    if (widgetGroup != null) {
                        widgetGroup.moveTo(r72, widgetGroup2);
                        arrayList.remove(widgetGroup);
                    }
                    widgetGroup = widgetGroup2;
                } else {
                    r32++;
                }
            }
        } else if (r03 != -1) {
            return widgetGroup;
        }
        if (widgetGroup == null) {
            if ((constraintWidget instanceof HelperWidget) && (r02 = ((HelperWidget) constraintWidget).findGroupInDependents(r72)) != -1) {
                int r22 = 0;
                while (true) {
                    if (r22 >= arrayList.size()) {
                        break;
                    }
                    WidgetGroup widgetGroup3 = arrayList.get(r22);
                    if (widgetGroup3.getId() == r02) {
                        widgetGroup = widgetGroup3;
                        break;
                    }
                    r22++;
                }
            }
            if (widgetGroup == null) {
                widgetGroup = new WidgetGroup(r72);
            }
            arrayList.add(widgetGroup);
        }
        if (widgetGroup.add(constraintWidget)) {
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                guideline.getAnchor().findDependents(guideline.getOrientation() == 0 ? 1 : 0, arrayList, widgetGroup);
            }
            int id2 = widgetGroup.getId();
            if (r72 == 0) {
                constraintWidget.horizontalGroup = id2;
                constraintWidget.mLeft.findDependents(r72, arrayList, widgetGroup);
                constraintAnchor = constraintWidget.mRight;
            } else {
                constraintWidget.verticalGroup = id2;
                constraintWidget.mTop.findDependents(r72, arrayList, widgetGroup);
                constraintWidget.mBaseline.findDependents(r72, arrayList, widgetGroup);
                constraintAnchor = constraintWidget.mBottom;
            }
            constraintAnchor.findDependents(r72, arrayList, widgetGroup);
            constraintWidget.mCenter.findDependents(r72, arrayList, widgetGroup);
        }
        return widgetGroup;
    }

    private static WidgetGroup findGroup(ArrayList<WidgetGroup> arrayList, int r52) {
        int size = arrayList.size();
        for (int r12 = 0; r12 < size; r12++) {
            WidgetGroup widgetGroup = arrayList.get(r12);
            if (r52 == widgetGroup.f882id) {
                return widgetGroup;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x0353  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean simpleSolvingPass(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r16, androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer r17) {
        /*
            Method dump skipped, instructions count: 932
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.Grouping.simpleSolvingPass(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer):boolean");
    }

    public static boolean validInGroup(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.FIXED;
        return (dimensionBehaviour3 == dimensionBehaviour7 || dimensionBehaviour3 == (dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != dimensionBehaviour6)) || (dimensionBehaviour4 == dimensionBehaviour7 || dimensionBehaviour4 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != dimensionBehaviour5));
    }
}
