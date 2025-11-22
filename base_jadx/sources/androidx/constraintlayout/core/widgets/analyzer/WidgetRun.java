package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;
    RunGroup runGroup;
    ConstraintWidget widget;
    DimensionDependency dimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean resolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;

        static {
            int[] r02 = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = r02;
            try {
                r02[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.widget = constraintWidget;
    }

    private void resolveDimension(int r82, int r92) {
        DimensionDependency dimensionDependency;
        int limitedDimension;
        int r02 = this.matchConstraintsType;
        if (r02 == 0) {
            dimensionDependency = this.dimension;
            limitedDimension = getLimitedDimension(r92, r82);
        } else if (r02 == 1) {
            int limitedDimension2 = getLimitedDimension(this.dimension.wrapValue, r82);
            dimensionDependency = this.dimension;
            limitedDimension = Math.min(limitedDimension2, r92);
        } else {
            if (r02 != 2) {
                if (r02 != 3) {
                    return;
                }
                ConstraintWidget constraintWidget = this.widget;
                WidgetRun widgetRun = constraintWidget.horizontalRun;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.dimensionBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.matchConstraintsType == 3) {
                    VerticalWidgetRun verticalWidgetRun = constraintWidget.verticalRun;
                    if (verticalWidgetRun.dimensionBehavior == dimensionBehaviour2 && verticalWidgetRun.matchConstraintsType == 3) {
                        return;
                    }
                }
                if (r82 == 0) {
                    widgetRun = constraintWidget.verticalRun;
                }
                if (widgetRun.dimension.resolved) {
                    float dimensionRatio = constraintWidget.getDimensionRatio();
                    this.dimension.resolve(r82 == 1 ? (int) ((widgetRun.dimension.value / dimensionRatio) + 0.5f) : (int) ((dimensionRatio * widgetRun.dimension.value) + 0.5f));
                    return;
                }
                return;
            }
            ConstraintWidget parent = this.widget.getParent();
            if (parent == null) {
                return;
            }
            if (!(r82 == 0 ? parent.horizontalRun : parent.verticalRun).dimension.resolved) {
                return;
            }
            ConstraintWidget constraintWidget2 = this.widget;
            r92 = (int) ((r9.value * (r82 == 0 ? constraintWidget2.mMatchConstraintPercentWidth : constraintWidget2.mMatchConstraintPercentHeight)) + 0.5f);
            dimensionDependency = this.dimension;
            limitedDimension = getLimitedDimension(r92, r82);
        }
        dimensionDependency.resolve(limitedDimension);
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int r42) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.margin = r42;
        dependencyNode2.dependencies.add(dependencyNode);
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int r52, DimensionDependency dimensionDependency) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.targets.add(this.dimension);
        dependencyNode.marginFactor = r52;
        dependencyNode.marginDependency = dimensionDependency;
        dependencyNode2.dependencies.add(dependencyNode);
        dimensionDependency.dependencies.add(dependencyNode);
    }

    public abstract void apply();

    public abstract void applyToWidget();

    public abstract void clear();

    public final int getLimitedDimension(int r22, int r32) {
        int r33;
        if (r32 == 0) {
            ConstraintWidget constraintWidget = this.widget;
            int r02 = constraintWidget.mMatchConstraintMaxWidth;
            r33 = Math.max(constraintWidget.mMatchConstraintMinWidth, r22);
            if (r02 > 0) {
                r33 = Math.min(r02, r22);
            }
            if (r33 == r22) {
                return r22;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.widget;
            int r03 = constraintWidget2.mMatchConstraintMaxHeight;
            r33 = Math.max(constraintWidget2.mMatchConstraintMinHeight, r22);
            if (r03 > 0) {
                r33 = Math.min(r03, r22);
            }
            if (r33 == r22) {
                return r22;
            }
        }
        return r33;
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        WidgetRun widgetRun;
        WidgetRun widgetRun2;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int r42 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (r42 != 1) {
            if (r42 == 2) {
                widgetRun2 = constraintWidget.horizontalRun;
            } else if (r42 == 3) {
                widgetRun = constraintWidget.verticalRun;
            } else {
                if (r42 == 4) {
                    return constraintWidget.verticalRun.baseline;
                }
                if (r42 != 5) {
                    return null;
                }
                widgetRun2 = constraintWidget.verticalRun;
            }
            return widgetRun2.end;
        }
        widgetRun = constraintWidget.horizontalRun;
        return widgetRun.start;
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int r42) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = r42 == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        int r32 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (r32 != 1) {
            if (r32 != 2) {
                if (r32 != 3) {
                    if (r32 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }

    public long getWrapDimension() {
        if (this.dimension.resolved) {
            return r0.value;
        }
        return 0L;
    }

    public boolean isCenterConnection() {
        int size = this.start.targets.size();
        int r32 = 0;
        for (int r22 = 0; r22 < size; r22++) {
            if (this.start.targets.get(r22).run != this) {
                r32++;
            }
        }
        int size2 = this.end.targets.size();
        for (int r23 = 0; r23 < size2; r23++) {
            if (this.end.targets.get(r23).run != this) {
                r32++;
            }
        }
        return r32 >= 2;
    }

    public boolean isDimensionResolved() {
        return this.dimension.resolved;
    }

    public boolean isResolved() {
        return this.resolved;
    }

    public abstract void reset();

    public abstract boolean supportsWrapComputation();

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    public void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int r82) {
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = constraintAnchor.getMargin() + target.value;
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int r72 = margin2 - margin;
            if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                resolveDimension(r82, r72);
            }
            DimensionDependency dimensionDependency = this.dimension;
            if (dimensionDependency.resolved) {
                if (dimensionDependency.value == r72) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                ConstraintWidget constraintWidget = this.widget;
                float horizontalBiasPercent = r82 == 0 ? constraintWidget.getHorizontalBiasPercent() : constraintWidget.getVerticalBiasPercent();
                if (target == target2) {
                    margin = target.value;
                    margin2 = target2.value;
                    horizontalBiasPercent = 0.5f;
                }
                this.start.resolve((int) ((((margin2 - margin) - this.dimension.value) * horizontalBiasPercent) + margin + 0.5f));
                this.end.resolve(this.start.value + this.dimension.value);
            }
        }
    }

    public void updateRunEnd(Dependency dependency) {
    }

    public void updateRunStart(Dependency dependency) {
    }

    public long wrapSize(int r52) {
        int r53;
        DimensionDependency dimensionDependency = this.dimension;
        if (!dimensionDependency.resolved) {
            return 0L;
        }
        long j10 = dimensionDependency.value;
        if (isCenterConnection()) {
            r53 = this.start.margin - this.end.margin;
        } else {
            if (r52 != 0) {
                return j10 - this.end.margin;
            }
            r53 = this.start.margin;
        }
        return j10 + r53;
    }
}
