package androidx.constraintlayout.core.widgets.analyzer;

import androidx.appcompat.graphics.drawable.a;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int direction;
    WidgetRun firstRun;
    int groupIndex;
    WidgetRun lastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> runs = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int r32) {
        this.firstRun = null;
        this.lastRun = null;
        int r02 = index;
        this.groupIndex = r02;
        index = r02 + 1;
        this.firstRun = widgetRun;
        this.lastRun = widgetRun;
        this.direction = r32;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int r72) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (!widgetRun.widget.isTerminalWidget[r72]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.dependencies) {
            if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).run) != widgetRun && dependencyNode2 == widgetRun3.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it = ((ChainRun) widgetRun).widgets.iterator();
                    while (it.hasNext()) {
                        defineTerminalWidget(it.next(), r72);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.widget.isTerminalWidget[r72] = false;
                }
                defineTerminalWidget(dependencyNode2.run, r72);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).run) != widgetRun && dependencyNode == widgetRun2.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).widgets.iterator();
                    while (it2.hasNext()) {
                        defineTerminalWidget(it2.next(), r72);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.widget.isTerminalWidget[r72] = false;
                }
                defineTerminalWidget(dependencyNode.run, r72);
            }
        }
        return false;
    }

    private long traverseEnd(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j10;
        }
        int size = dependencyNode.dependencies.size();
        long jMin = j10;
        for (int r22 = 0; r22 < size; r22++) {
            Dependency dependency = dependencyNode.dependencies.get(r22);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMin = Math.min(jMin, traverseEnd(dependencyNode2, dependencyNode2.margin + j10));
                }
            }
        }
        if (dependencyNode != widgetRun.end) {
            return jMin;
        }
        long wrapDimension = j10 - widgetRun.getWrapDimension();
        return Math.min(Math.min(jMin, traverseEnd(widgetRun.start, wrapDimension)), wrapDimension - widgetRun.start.margin);
    }

    private long traverseStart(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j10;
        }
        int size = dependencyNode.dependencies.size();
        long jMax = j10;
        for (int r22 = 0; r22 < size; r22++) {
            Dependency dependency = dependencyNode.dependencies.get(r22);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMax = Math.max(jMax, traverseStart(dependencyNode2, dependencyNode2.margin + j10));
                }
            }
        }
        if (dependencyNode != widgetRun.start) {
            return jMax;
        }
        long wrapDimension = j10 + widgetRun.getWrapDimension();
        return Math.max(Math.max(jMax, traverseStart(widgetRun.end, wrapDimension)), wrapDimension - widgetRun.end.margin);
    }

    public void add(WidgetRun widgetRun) {
        this.runs.add(widgetRun);
        this.lastRun = widgetRun;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int r14) {
        long j10;
        long jTraverseStart;
        WidgetRun widgetRun = this.firstRun;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != r14) {
                return 0L;
            }
        } else if (r14 == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = (r14 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).start;
        DependencyNode dependencyNode2 = (r14 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).end;
        boolean zContains = widgetRun.start.targets.contains(dependencyNode);
        boolean zContains2 = this.firstRun.end.targets.contains(dependencyNode2);
        long wrapDimension = this.firstRun.getWrapDimension();
        if (!zContains || !zContains2) {
            if (zContains) {
                jTraverseStart = traverseStart(this.firstRun.start, r13.margin);
                j10 = this.firstRun.start.margin + wrapDimension;
            } else {
                if (!zContains2) {
                    return (this.firstRun.getWrapDimension() + r13.start.margin) - this.firstRun.end.margin;
                }
                j10 = (-this.firstRun.end.margin) + wrapDimension;
                jTraverseStart = -traverseEnd(this.firstRun.end, r13.margin);
            }
            return Math.max(jTraverseStart, j10);
        }
        long jTraverseStart2 = traverseStart(this.firstRun.start, 0L);
        long jTraverseEnd = traverseEnd(this.firstRun.end, 0L);
        long j11 = jTraverseStart2 - wrapDimension;
        WidgetRun widgetRun2 = this.firstRun;
        int r82 = widgetRun2.end.margin;
        if (j11 >= (-r82)) {
            j11 += r82;
        }
        int r83 = widgetRun2.start.margin;
        long j12 = ((-jTraverseEnd) - wrapDimension) - r83;
        if (j12 >= r83) {
            j12 -= r83;
        }
        float biasPercent = widgetRun2.widget.getBiasPercent(r14);
        float f = biasPercent > 0.0f ? (long) ((j11 / (1.0f - biasPercent)) + (j12 / biasPercent)) : 0L;
        long jD = ((long) ((f * biasPercent) + 0.5f)) + wrapDimension + ((long) a.d(1.0f, biasPercent, f, 0.5f));
        WidgetRun widgetRun3 = this.firstRun;
        return (widgetRun3.start.margin + jD) - widgetRun3.end.margin;
    }

    public void defineTerminalWidgets(boolean z10, boolean z11) {
        if (z10) {
            WidgetRun widgetRun = this.firstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z11) {
            WidgetRun widgetRun2 = this.firstRun;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                defineTerminalWidget(widgetRun2, 1);
            }
        }
    }
}
