package androidx.constraintlayout.core.widgets.analyzer;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class WidgetGroup {
    private static final boolean DEBUG = false;
    static int count;

    /* renamed from: id, reason: collision with root package name */
    int f882id;
    int orientation;
    ArrayList<ConstraintWidget> widgets = new ArrayList<>();
    boolean authoritative = false;
    ArrayList<MeasureResult> results = null;
    private int moveTo = -1;

    public class MeasureResult {
        int baseline;
        int bottom;
        int left;
        int orientation;
        int right;
        int top;
        WeakReference<ConstraintWidget> widgetRef;

        public MeasureResult(ConstraintWidget constraintWidget, LinearSystem linearSystem, int r42) {
            this.widgetRef = new WeakReference<>(constraintWidget);
            this.left = linearSystem.getObjectVariableValue(constraintWidget.mLeft);
            this.top = linearSystem.getObjectVariableValue(constraintWidget.mTop);
            this.right = linearSystem.getObjectVariableValue(constraintWidget.mRight);
            this.bottom = linearSystem.getObjectVariableValue(constraintWidget.mBottom);
            this.baseline = linearSystem.getObjectVariableValue(constraintWidget.mBaseline);
            this.orientation = r42;
        }

        public void apply() {
            ConstraintWidget constraintWidget = this.widgetRef.get();
            if (constraintWidget != null) {
                constraintWidget.setFinalFrame(this.left, this.top, this.right, this.bottom, this.baseline, this.orientation);
            }
        }
    }

    public WidgetGroup(int r32) {
        int r02 = count;
        count = r02 + 1;
        this.f882id = r02;
        this.orientation = r32;
    }

    private boolean contains(ConstraintWidget constraintWidget) {
        return this.widgets.contains(constraintWidget);
    }

    private String getOrientationString() {
        int r02 = this.orientation;
        return r02 == 0 ? "Horizontal" : r02 == 1 ? "Vertical" : r02 == 2 ? "Both" : "Unknown";
    }

    private int measureWrap(int r32, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(r32);
        if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            return r32 == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight();
        }
        return -1;
    }

    private int solverMeasure(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int r72) {
        int objectVariableValue;
        ConstraintAnchor constraintAnchor;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).getParent();
        linearSystem.reset();
        constraintWidgetContainer.addToSolver(linearSystem, false);
        for (int r22 = 0; r22 < arrayList.size(); r22++) {
            arrayList.get(r22).addToSolver(linearSystem, false);
        }
        if (r72 == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (r72 == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.minimize();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.results = new ArrayList<>();
        for (int r02 = 0; r02 < arrayList.size(); r02++) {
            this.results.add(new MeasureResult(arrayList.get(r02), linearSystem, r72));
        }
        if (r72 == 0) {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mLeft);
            constraintAnchor = constraintWidgetContainer.mRight;
        } else {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mTop);
            constraintAnchor = constraintWidgetContainer.mBottom;
        }
        int objectVariableValue2 = linearSystem.getObjectVariableValue(constraintAnchor);
        linearSystem.reset();
        return objectVariableValue2 - objectVariableValue;
    }

    public boolean add(ConstraintWidget constraintWidget) {
        if (this.widgets.contains(constraintWidget)) {
            return false;
        }
        this.widgets.add(constraintWidget);
        return true;
    }

    public void apply() {
        if (this.results != null && this.authoritative) {
            for (int r02 = 0; r02 < this.results.size(); r02++) {
                this.results.get(r02).apply();
            }
        }
    }

    public void cleanup(ArrayList<WidgetGroup> arrayList) {
        int size = this.widgets.size();
        if (this.moveTo != -1 && size > 0) {
            for (int r12 = 0; r12 < arrayList.size(); r12++) {
                WidgetGroup widgetGroup = arrayList.get(r12);
                if (this.moveTo == widgetGroup.f882id) {
                    moveTo(this.orientation, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public void clear() {
        this.widgets.clear();
    }

    public int getId() {
        return this.f882id;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public boolean intersectWith(WidgetGroup widgetGroup) {
        for (int r12 = 0; r12 < this.widgets.size(); r12++) {
            if (widgetGroup.contains(this.widgets.get(r12))) {
                return true;
            }
        }
        return false;
    }

    public boolean isAuthoritative() {
        return this.authoritative;
    }

    public int measureWrap(LinearSystem linearSystem, int r32) {
        if (this.widgets.size() == 0) {
            return 0;
        }
        return solverMeasure(linearSystem, this.widgets, r32);
    }

    public void moveTo(int r42, WidgetGroup widgetGroup) {
        Iterator<ConstraintWidget> it = this.widgets.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            widgetGroup.add(next);
            int id2 = widgetGroup.getId();
            if (r42 == 0) {
                next.horizontalGroup = id2;
            } else {
                next.verticalGroup = id2;
            }
        }
        this.moveTo = widgetGroup.f882id;
    }

    public void setAuthoritative(boolean z10) {
        this.authoritative = z10;
    }

    public void setOrientation(int r12) {
        this.orientation = r12;
    }

    public int size() {
        return this.widgets.size();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getOrientationString());
        sb2.append(" [");
        String strB = a.b(sb2, this.f882id, "] <");
        Iterator<ConstraintWidget> it = this.widgets.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            StringBuilder sbI = b.i(strB, " ");
            sbI.append(next.getDebugName());
            strB = sbI.toString();
        }
        return android.support.v4.media.a.f(strB, " >");
    }
}
