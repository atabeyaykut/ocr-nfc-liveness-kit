package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Direct {
    private static final boolean APPLY_MATCH_PARENT = false;
    private static final boolean DEBUG = false;
    private static final boolean EARLY_TERMINATION = true;
    private static BasicMeasure.Measure measure = new BasicMeasure.Measure();
    private static int hcount = 0;
    private static int vcount = 0;

    private static boolean canMeasure(int r72, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = constraintWidget.getVerticalDimensionBehaviour();
        ConstraintWidgetContainer constraintWidgetContainer = constraintWidget.getParent() != null ? (ConstraintWidgetContainer) constraintWidget.getParent() : null;
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.getVerticalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        boolean z10 = (horizontalDimensionBehaviour == dimensionBehaviour5 || constraintWidget.isResolvedHorizontally() || horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (horizontalDimensionBehaviour == (dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.mMatchConstraintDefaultWidth == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(0)) || (horizontalDimensionBehaviour == dimensionBehaviour2 && constraintWidget.mMatchConstraintDefaultWidth == 1 && constraintWidget.hasResolvedTargets(0, constraintWidget.getWidth()))) ? EARLY_TERMINATION : false;
        boolean z11 = (verticalDimensionBehaviour == dimensionBehaviour5 || constraintWidget.isResolvedVertically() || verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (verticalDimensionBehaviour == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.mMatchConstraintDefaultHeight == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(1)) || (verticalDimensionBehaviour == dimensionBehaviour && constraintWidget.mMatchConstraintDefaultHeight == 1 && constraintWidget.hasResolvedTargets(1, constraintWidget.getHeight()))) ? EARLY_TERMINATION : false;
        if (constraintWidget.mDimensionRatio > 0.0f && (z10 || z11)) {
            return EARLY_TERMINATION;
        }
        if (z10 && z11) {
            return EARLY_TERMINATION;
        }
        return false;
    }

    private static void horizontalSolvingPass(int r16, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, boolean z10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.isHorizontalSolvingPassDone()) {
            return;
        }
        hcount++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested()) {
            int r32 = r16 + 1;
            if (canMeasure(r32, constraintWidget)) {
                ConstraintWidgetContainer.measure(r32, constraintWidget, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        if (anchor.getDependents() != null && anchor.hasFinalValue()) {
            Iterator<ConstraintAnchor> it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int r13 = r16 + 1;
                boolean zCanMeasure = canMeasure(r13, constraintWidget2);
                if (constraintWidget2.isMeasureRequested() && zCanMeasure) {
                    ConstraintWidgetContainer.measure(r13, constraintWidget2, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z11 = ((next == constraintWidget2.mLeft && (constraintAnchor4 = constraintWidget2.mRight.mTarget) != null && constraintAnchor4.hasFinalValue()) || (next == constraintWidget2.mRight && (constraintAnchor3 = constraintWidget2.mLeft.mTarget) != null && constraintAnchor3.hasFinalValue())) ? EARLY_TERMINATION : false;
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget2.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (horizontalDimensionBehaviour != dimensionBehaviour || zCanMeasure) {
                    if (!constraintWidget2.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor5 = constraintWidget2.mLeft;
                        if (next == constraintAnchor5 && constraintWidget2.mRight.mTarget == null) {
                            int margin = constraintAnchor5.getMargin() + finalValue;
                            constraintWidget2.setFinalHorizontal(margin, constraintWidget2.getWidth() + margin);
                        } else {
                            ConstraintAnchor constraintAnchor6 = constraintWidget2.mRight;
                            if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                                int margin2 = finalValue - constraintAnchor6.getMargin();
                                constraintWidget2.setFinalHorizontal(margin2 - constraintWidget2.getWidth(), margin2);
                            } else if (z11 && !constraintWidget2.isInHorizontalChain()) {
                                solveHorizontalCenterConstraints(r13, measurer, constraintWidget2, z10);
                            }
                        }
                        horizontalSolvingPass(r13, constraintWidget2, measurer, z10);
                    }
                } else if (constraintWidget2.getHorizontalDimensionBehaviour() == dimensionBehaviour && constraintWidget2.mMatchConstraintMaxWidth >= 0 && constraintWidget2.mMatchConstraintMinWidth >= 0 && ((constraintWidget2.getVisibility() == 8 || (constraintWidget2.mMatchConstraintDefaultWidth == 0 && constraintWidget2.getDimensionRatio() == 0.0f)) && !constraintWidget2.isInHorizontalChain() && !constraintWidget2.isInVirtualLayout() && z11 && !constraintWidget2.isInHorizontalChain())) {
                    solveHorizontalMatchConstraint(r13, constraintWidget, measurer, constraintWidget2, z10);
                }
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<ConstraintAnchor> it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int r82 = r16 + 1;
                boolean zCanMeasure2 = canMeasure(r82, constraintWidget3);
                if (constraintWidget3.isMeasureRequested() && zCanMeasure2) {
                    ConstraintWidgetContainer.measure(r82, constraintWidget3, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z12 = ((next2 == constraintWidget3.mLeft && (constraintAnchor2 = constraintWidget3.mRight.mTarget) != null && constraintAnchor2.hasFinalValue()) || (next2 == constraintWidget3.mRight && (constraintAnchor = constraintWidget3.mLeft.mTarget) != null && constraintAnchor.hasFinalValue())) ? EARLY_TERMINATION : false;
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidget3.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (horizontalDimensionBehaviour2 != dimensionBehaviour2 || zCanMeasure2) {
                    if (!constraintWidget3.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor7 = constraintWidget3.mLeft;
                        if (next2 == constraintAnchor7 && constraintWidget3.mRight.mTarget == null) {
                            int margin3 = constraintAnchor7.getMargin() + finalValue2;
                            constraintWidget3.setFinalHorizontal(margin3, constraintWidget3.getWidth() + margin3);
                        } else {
                            ConstraintAnchor constraintAnchor8 = constraintWidget3.mRight;
                            if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                                int margin4 = finalValue2 - constraintAnchor8.getMargin();
                                constraintWidget3.setFinalHorizontal(margin4 - constraintWidget3.getWidth(), margin4);
                            } else if (z12 && !constraintWidget3.isInHorizontalChain()) {
                                solveHorizontalCenterConstraints(r82, measurer, constraintWidget3, z10);
                            }
                        }
                        horizontalSolvingPass(r82, constraintWidget3, measurer, z10);
                    }
                } else if (constraintWidget3.getHorizontalDimensionBehaviour() == dimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxWidth >= 0 && constraintWidget3.mMatchConstraintMinWidth >= 0 && (constraintWidget3.getVisibility() == 8 || (constraintWidget3.mMatchConstraintDefaultWidth == 0 && constraintWidget3.getDimensionRatio() == 0.0f))) {
                    if (!constraintWidget3.isInHorizontalChain() && !constraintWidget3.isInVirtualLayout() && z12 && !constraintWidget3.isInHorizontalChain()) {
                        solveHorizontalMatchConstraint(r82, constraintWidget, measurer, constraintWidget3, z10);
                    }
                }
            }
        }
        constraintWidget.markHorizontalSolvingPassDone();
    }

    public static String ls(int r32) {
        StringBuilder sb2 = new StringBuilder();
        for (int r12 = 0; r12 < r32; r12++) {
            sb2.append("  ");
        }
        sb2.append("+-(" + r32 + ") ");
        return sb2.toString();
    }

    private static void solveBarrier(int r12, Barrier barrier, BasicMeasure.Measurer measurer, int r42, boolean z10) {
        if (barrier.allSolved()) {
            int r13 = r12 + 1;
            if (r42 == 0) {
                horizontalSolvingPass(r13, barrier, measurer, z10);
            } else {
                verticalSolvingPass(r13, barrier, measurer);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x014e  */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v7, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean solveChain(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r20, androidx.constraintlayout.core.LinearSystem r21, int r22, int r23, androidx.constraintlayout.core.widgets.ChainHead r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.Direct.solveChain(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, androidx.constraintlayout.core.LinearSystem, int, int, androidx.constraintlayout.core.widgets.ChainHead, boolean, boolean, boolean):boolean");
    }

    private static void solveHorizontalCenterConstraints(int r6, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget, boolean z10) {
        float horizontalBiasPercent = constraintWidget.getHorizontalBiasPercent();
        int finalValue = constraintWidget.mLeft.mTarget.getFinalValue();
        int finalValue2 = constraintWidget.mRight.mTarget.getFinalValue();
        int margin = constraintWidget.mLeft.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintWidget.mRight.getMargin();
        if (finalValue == finalValue2) {
            horizontalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int width = constraintWidget.getWidth();
        int r42 = (finalValue2 - finalValue) - width;
        if (finalValue > finalValue2) {
            r42 = (finalValue - finalValue2) - width;
        }
        int r02 = ((int) (r42 > 0 ? (horizontalBiasPercent * r42) + 0.5f : horizontalBiasPercent * r42)) + finalValue;
        int r43 = r02 + width;
        if (finalValue > finalValue2) {
            r43 = r02 - width;
        }
        constraintWidget.setFinalHorizontal(r02, r43);
        horizontalSolvingPass(r6 + 1, constraintWidget, measurer, z10);
    }

    private static void solveHorizontalMatchConstraint(int r72, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2, boolean z10) {
        float horizontalBiasPercent = constraintWidget2.getHorizontalBiasPercent();
        int margin = constraintWidget2.mLeft.getMargin() + constraintWidget2.mLeft.mTarget.getFinalValue();
        int finalValue = constraintWidget2.mRight.mTarget.getFinalValue() - constraintWidget2.mRight.getMargin();
        if (finalValue >= margin) {
            int width = constraintWidget2.getWidth();
            if (constraintWidget2.getVisibility() != 8) {
                int r42 = constraintWidget2.mMatchConstraintDefaultWidth;
                if (r42 == 2) {
                    if (!(constraintWidget instanceof ConstraintWidgetContainer)) {
                        constraintWidget = constraintWidget.getParent();
                    }
                    width = (int) (constraintWidget2.getHorizontalBiasPercent() * 0.5f * constraintWidget.getWidth());
                } else if (r42 == 0) {
                    width = finalValue - margin;
                }
                width = Math.max(constraintWidget2.mMatchConstraintMinWidth, width);
                int r82 = constraintWidget2.mMatchConstraintMaxWidth;
                if (r82 > 0) {
                    width = Math.min(r82, width);
                }
            }
            int r22 = margin + ((int) ((horizontalBiasPercent * ((finalValue - margin) - width)) + 0.5f));
            constraintWidget2.setFinalHorizontal(r22, width + r22);
            horizontalSolvingPass(r72 + 1, constraintWidget2, measurer, z10);
        }
    }

    private static void solveVerticalCenterConstraints(int r6, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget) {
        float verticalBiasPercent = constraintWidget.getVerticalBiasPercent();
        int finalValue = constraintWidget.mTop.mTarget.getFinalValue();
        int finalValue2 = constraintWidget.mBottom.mTarget.getFinalValue();
        int margin = constraintWidget.mTop.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintWidget.mBottom.getMargin();
        if (finalValue == finalValue2) {
            verticalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int height = constraintWidget.getHeight();
        int r42 = (finalValue2 - finalValue) - height;
        if (finalValue > finalValue2) {
            r42 = (finalValue - finalValue2) - height;
        }
        int r02 = (int) (r42 > 0 ? (verticalBiasPercent * r42) + 0.5f : verticalBiasPercent * r42);
        int r43 = finalValue + r02;
        int r52 = r43 + height;
        if (finalValue > finalValue2) {
            r43 = finalValue - r02;
            r52 = r43 - height;
        }
        constraintWidget.setFinalVertical(r43, r52);
        verticalSolvingPass(r6 + 1, constraintWidget, measurer);
    }

    private static void solveVerticalMatchConstraint(int r72, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2) {
        float verticalBiasPercent = constraintWidget2.getVerticalBiasPercent();
        int margin = constraintWidget2.mTop.getMargin() + constraintWidget2.mTop.mTarget.getFinalValue();
        int finalValue = constraintWidget2.mBottom.mTarget.getFinalValue() - constraintWidget2.mBottom.getMargin();
        if (finalValue >= margin) {
            int height = constraintWidget2.getHeight();
            if (constraintWidget2.getVisibility() != 8) {
                int r42 = constraintWidget2.mMatchConstraintDefaultHeight;
                if (r42 == 2) {
                    if (!(constraintWidget instanceof ConstraintWidgetContainer)) {
                        constraintWidget = constraintWidget.getParent();
                    }
                    height = (int) (verticalBiasPercent * 0.5f * constraintWidget.getHeight());
                } else if (r42 == 0) {
                    height = finalValue - margin;
                }
                height = Math.max(constraintWidget2.mMatchConstraintMinHeight, height);
                int r82 = constraintWidget2.mMatchConstraintMaxHeight;
                if (r82 > 0) {
                    height = Math.min(r82, height);
                }
            }
            int r22 = margin + ((int) ((verticalBiasPercent * ((finalValue - margin) - height)) + 0.5f));
            constraintWidget2.setFinalVertical(r22, height + r22);
            verticalSolvingPass(r72 + 1, constraintWidget2, measurer);
        }
    }

    public static void solvingPass(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure.Measurer measurer) {
        int relativePercent;
        int relativePercent2;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidgetContainer.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = constraintWidgetContainer.getVerticalDimensionBehaviour();
        hcount = 0;
        vcount = 0;
        constraintWidgetContainer.resetFinalResolution();
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int r52 = 0; r52 < size; r52++) {
            children.get(r52).resetFinalResolution();
        }
        boolean zIsRtl = constraintWidgetContainer.isRtl();
        if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.setFinalHorizontal(0, constraintWidgetContainer.getWidth());
        } else {
            constraintWidgetContainer.setFinalLeft(0);
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int r02 = 0; r02 < size; r02++) {
            ConstraintWidget constraintWidget = children.get(r02);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    if (guideline.getRelativeBegin() != -1) {
                        relativePercent2 = guideline.getRelativeBegin();
                    } else if (guideline.getRelativeEnd() == -1 || !constraintWidgetContainer.isResolvedHorizontally()) {
                        if (constraintWidgetContainer.isResolvedHorizontally()) {
                            relativePercent2 = (int) ((guideline.getRelativePercent() * constraintWidgetContainer.getWidth()) + 0.5f);
                        }
                        z10 = EARLY_TERMINATION;
                    } else {
                        relativePercent2 = constraintWidgetContainer.getWidth() - guideline.getRelativeEnd();
                    }
                    guideline.setFinalValue(relativePercent2);
                    z10 = EARLY_TERMINATION;
                }
            } else if ((constraintWidget instanceof Barrier) && ((Barrier) constraintWidget).getOrientation() == 0) {
                z11 = EARLY_TERMINATION;
            }
        }
        if (z10) {
            for (int r03 = 0; r03 < size; r03++) {
                ConstraintWidget constraintWidget2 = children.get(r03);
                if (constraintWidget2 instanceof Guideline) {
                    Guideline guideline2 = (Guideline) constraintWidget2;
                    if (guideline2.getOrientation() == 1) {
                        horizontalSolvingPass(0, guideline2, measurer, zIsRtl);
                    }
                }
            }
        }
        horizontalSolvingPass(0, constraintWidgetContainer, measurer, zIsRtl);
        if (z11) {
            for (int r04 = 0; r04 < size; r04++) {
                ConstraintWidget constraintWidget3 = children.get(r04);
                if (constraintWidget3 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget3;
                    if (barrier.getOrientation() == 0) {
                        solveBarrier(0, barrier, measurer, 0, zIsRtl);
                    }
                }
            }
        }
        if (verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.setFinalVertical(0, constraintWidgetContainer.getHeight());
        } else {
            constraintWidgetContainer.setFinalTop(0);
        }
        boolean z12 = false;
        boolean z13 = false;
        for (int r05 = 0; r05 < size; r05++) {
            ConstraintWidget constraintWidget4 = children.get(r05);
            if (constraintWidget4 instanceof Guideline) {
                Guideline guideline3 = (Guideline) constraintWidget4;
                if (guideline3.getOrientation() == 0) {
                    if (guideline3.getRelativeBegin() != -1) {
                        relativePercent = guideline3.getRelativeBegin();
                    } else if (guideline3.getRelativeEnd() == -1 || !constraintWidgetContainer.isResolvedVertically()) {
                        if (constraintWidgetContainer.isResolvedVertically()) {
                            relativePercent = (int) ((guideline3.getRelativePercent() * constraintWidgetContainer.getHeight()) + 0.5f);
                        }
                        z12 = EARLY_TERMINATION;
                    } else {
                        relativePercent = constraintWidgetContainer.getHeight() - guideline3.getRelativeEnd();
                    }
                    guideline3.setFinalValue(relativePercent);
                    z12 = EARLY_TERMINATION;
                }
            } else if ((constraintWidget4 instanceof Barrier) && ((Barrier) constraintWidget4).getOrientation() == 1) {
                z13 = EARLY_TERMINATION;
            }
        }
        if (z12) {
            for (int r06 = 0; r06 < size; r06++) {
                ConstraintWidget constraintWidget5 = children.get(r06);
                if (constraintWidget5 instanceof Guideline) {
                    Guideline guideline4 = (Guideline) constraintWidget5;
                    if (guideline4.getOrientation() == 0) {
                        verticalSolvingPass(1, guideline4, measurer);
                    }
                }
            }
        }
        verticalSolvingPass(0, constraintWidgetContainer, measurer);
        if (z13) {
            for (int r13 = 0; r13 < size; r13++) {
                ConstraintWidget constraintWidget6 = children.get(r13);
                if (constraintWidget6 instanceof Barrier) {
                    Barrier barrier2 = (Barrier) constraintWidget6;
                    if (barrier2.getOrientation() == 1) {
                        solveBarrier(0, barrier2, measurer, 1, zIsRtl);
                    }
                }
            }
        }
        for (int r132 = 0; r132 < size; r132++) {
            ConstraintWidget constraintWidget7 = children.get(r132);
            if (constraintWidget7.isMeasureRequested() && canMeasure(0, constraintWidget7)) {
                ConstraintWidgetContainer.measure(0, constraintWidget7, measurer, measure, BasicMeasure.Measure.SELF_DIMENSIONS);
                if (!(constraintWidget7 instanceof Guideline)) {
                    horizontalSolvingPass(0, constraintWidget7, measurer, zIsRtl);
                } else if (((Guideline) constraintWidget7).getOrientation() != 0) {
                    horizontalSolvingPass(0, constraintWidget7, measurer, zIsRtl);
                }
                verticalSolvingPass(0, constraintWidget7, measurer);
            }
        }
    }

    private static void verticalSolvingPass(int r16, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.isVerticalSolvingPassDone()) {
            return;
        }
        vcount++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested()) {
            int r22 = r16 + 1;
            if (canMeasure(r22, constraintWidget)) {
                ConstraintWidgetContainer.measure(r22, constraintWidget, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        if (anchor.getDependents() != null && anchor.hasFinalValue()) {
            Iterator<ConstraintAnchor> it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int r12 = r16 + 1;
                boolean zCanMeasure = canMeasure(r12, constraintWidget2);
                if (constraintWidget2.isMeasureRequested() && zCanMeasure) {
                    ConstraintWidgetContainer.measure(r12, constraintWidget2, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z10 = ((next == constraintWidget2.mTop && (constraintAnchor4 = constraintWidget2.mBottom.mTarget) != null && constraintAnchor4.hasFinalValue()) || (next == constraintWidget2.mBottom && (constraintAnchor3 = constraintWidget2.mTop.mTarget) != null && constraintAnchor3.hasFinalValue())) ? EARLY_TERMINATION : false;
                ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = constraintWidget2.getVerticalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (verticalDimensionBehaviour != dimensionBehaviour || zCanMeasure) {
                    if (!constraintWidget2.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor5 = constraintWidget2.mTop;
                        if (next == constraintAnchor5 && constraintWidget2.mBottom.mTarget == null) {
                            int margin = constraintAnchor5.getMargin() + finalValue;
                            constraintWidget2.setFinalVertical(margin, constraintWidget2.getHeight() + margin);
                        } else {
                            ConstraintAnchor constraintAnchor6 = constraintWidget2.mBottom;
                            if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                                int margin2 = finalValue - constraintAnchor6.getMargin();
                                constraintWidget2.setFinalVertical(margin2 - constraintWidget2.getHeight(), margin2);
                            } else if (z10 && !constraintWidget2.isInVerticalChain()) {
                                solveVerticalCenterConstraints(r12, measurer, constraintWidget2);
                            }
                        }
                        verticalSolvingPass(r12, constraintWidget2, measurer);
                    }
                } else if (constraintWidget2.getVerticalDimensionBehaviour() == dimensionBehaviour && constraintWidget2.mMatchConstraintMaxHeight >= 0 && constraintWidget2.mMatchConstraintMinHeight >= 0 && (constraintWidget2.getVisibility() == 8 || (constraintWidget2.mMatchConstraintDefaultHeight == 0 && constraintWidget2.getDimensionRatio() == 0.0f))) {
                    if (!constraintWidget2.isInVerticalChain() && !constraintWidget2.isInVirtualLayout() && z10 && !constraintWidget2.isInVerticalChain()) {
                        solveVerticalMatchConstraint(r12, constraintWidget, measurer, constraintWidget2);
                    }
                }
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<ConstraintAnchor> it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int r72 = r16 + 1;
                boolean zCanMeasure2 = canMeasure(r72, constraintWidget3);
                if (constraintWidget3.isMeasureRequested() && zCanMeasure2) {
                    ConstraintWidgetContainer.measure(r72, constraintWidget3, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z11 = ((next2 == constraintWidget3.mTop && (constraintAnchor2 = constraintWidget3.mBottom.mTarget) != null && constraintAnchor2.hasFinalValue()) || (next2 == constraintWidget3.mBottom && (constraintAnchor = constraintWidget3.mTop.mTarget) != null && constraintAnchor.hasFinalValue())) ? EARLY_TERMINATION : false;
                ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour2 = constraintWidget3.getVerticalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (verticalDimensionBehaviour2 != dimensionBehaviour2 || zCanMeasure2) {
                    if (!constraintWidget3.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor7 = constraintWidget3.mTop;
                        if (next2 == constraintAnchor7 && constraintWidget3.mBottom.mTarget == null) {
                            int margin3 = constraintAnchor7.getMargin() + finalValue2;
                            constraintWidget3.setFinalVertical(margin3, constraintWidget3.getHeight() + margin3);
                        } else {
                            ConstraintAnchor constraintAnchor8 = constraintWidget3.mBottom;
                            if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                                int margin4 = finalValue2 - constraintAnchor8.getMargin();
                                constraintWidget3.setFinalVertical(margin4 - constraintWidget3.getHeight(), margin4);
                            } else if (z11 && !constraintWidget3.isInVerticalChain()) {
                                solveVerticalCenterConstraints(r72, measurer, constraintWidget3);
                            }
                        }
                        verticalSolvingPass(r72, constraintWidget3, measurer);
                    }
                } else if (constraintWidget3.getVerticalDimensionBehaviour() == dimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxHeight >= 0 && constraintWidget3.mMatchConstraintMinHeight >= 0 && (constraintWidget3.getVisibility() == 8 || (constraintWidget3.mMatchConstraintDefaultHeight == 0 && constraintWidget3.getDimensionRatio() == 0.0f))) {
                    if (!constraintWidget3.isInVerticalChain() && !constraintWidget3.isInVirtualLayout() && z11 && !constraintWidget3.isInVerticalChain()) {
                        solveVerticalMatchConstraint(r72, constraintWidget, measurer, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor anchor3 = constraintWidget.getAnchor(ConstraintAnchor.Type.BASELINE);
        if (anchor3.getDependents() != null && anchor3.hasFinalValue()) {
            int finalValue3 = anchor3.getFinalValue();
            Iterator<ConstraintAnchor> it3 = anchor3.getDependents().iterator();
            while (it3.hasNext()) {
                ConstraintAnchor next3 = it3.next();
                ConstraintWidget constraintWidget4 = next3.mOwner;
                int r73 = r16 + 1;
                boolean zCanMeasure3 = canMeasure(r73, constraintWidget4);
                if (constraintWidget4.isMeasureRequested() && zCanMeasure3) {
                    ConstraintWidgetContainer.measure(r73, constraintWidget4, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                if (constraintWidget4.getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || zCanMeasure3) {
                    if (!constraintWidget4.isMeasureRequested() && next3 == constraintWidget4.mBaseline) {
                        constraintWidget4.setFinalBaseline(next3.getMargin() + finalValue3);
                        verticalSolvingPass(r73, constraintWidget4, measurer);
                    }
                }
            }
        }
        constraintWidget.markVerticalSolvingPassDone();
    }
}
