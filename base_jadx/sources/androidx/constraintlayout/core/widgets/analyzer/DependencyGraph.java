package androidx.constraintlayout.core.widgets.analyzer;

import android.support.v4.media.a;
import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class DependencyGraph {
    private static final boolean USE_GROUPS = true;
    private ConstraintWidgetContainer container;
    private ConstraintWidgetContainer mContainer;
    private boolean mNeedBuildGraph = USE_GROUPS;
    private boolean mNeedRedoMeasures = USE_GROUPS;
    private ArrayList<WidgetRun> mRuns = new ArrayList<>();
    private ArrayList<RunGroup> runGroups = new ArrayList<>();
    private BasicMeasure.Measurer mMeasurer = null;
    private BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
    ArrayList<RunGroup> mGroups = new ArrayList<>();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        this.container = constraintWidgetContainer;
        this.mContainer = constraintWidgetContainer;
    }

    private void applyGroup(DependencyNode dependencyNode, int r10, int r11, DependencyNode dependencyNode2, ArrayList<RunGroup> arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun.runGroup == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.container;
            if (widgetRun == constraintWidgetContainer.horizontalRun || widgetRun == constraintWidgetContainer.verticalRun) {
                return;
            }
            if (runGroup == null) {
                runGroup = new RunGroup(widgetRun, r11);
                arrayList.add(runGroup);
            }
            widgetRun.runGroup = runGroup;
            runGroup.add(widgetRun);
            for (Dependency dependency : widgetRun.start.dependencies) {
                if (dependency instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency, r10, 0, dependencyNode2, arrayList, runGroup);
                }
            }
            for (Dependency dependency2 : widgetRun.end.dependencies) {
                if (dependency2 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency2, r10, 1, dependencyNode2, arrayList, runGroup);
                }
            }
            if (r10 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                    if (dependency3 instanceof DependencyNode) {
                        applyGroup((DependencyNode) dependency3, r10, 2, dependencyNode2, arrayList, runGroup);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.start.targets) {
                if (dependencyNode3 == dependencyNode2) {
                    runGroup.dual = USE_GROUPS;
                }
                applyGroup(dependencyNode3, r10, 0, dependencyNode2, arrayList, runGroup);
            }
            for (DependencyNode dependencyNode4 : widgetRun.end.targets) {
                if (dependencyNode4 == dependencyNode2) {
                    runGroup.dual = USE_GROUPS;
                }
                applyGroup(dependencyNode4, r10, 1, dependencyNode2, arrayList, runGroup);
            }
            if (r10 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator<DependencyNode> it = ((VerticalWidgetRun) widgetRun).baseline.targets.iterator();
                while (it.hasNext()) {
                    applyGroup(it.next(), r10, 2, dependencyNode2, arrayList, runGroup);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x01c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0008 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean basicMeasureWidgets(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r17) {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.basicMeasureWidgets(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer):boolean");
    }

    private int computeWrap(ConstraintWidgetContainer constraintWidgetContainer, int r82) {
        int size = this.mGroups.size();
        long jMax = 0;
        for (int r32 = 0; r32 < size; r32++) {
            jMax = Math.max(jMax, this.mGroups.get(r32).computeWrapSize(constraintWidgetContainer, r82));
        }
        return (int) jMax;
    }

    private void displayGraph() {
        Iterator<WidgetRun> it = this.mRuns.iterator();
        String strGenerateDisplayGraph = "digraph {\n";
        while (it.hasNext()) {
            strGenerateDisplayGraph = generateDisplayGraph(it.next(), strGenerateDisplayGraph);
        }
        String strF = a.f(strGenerateDisplayGraph, "\n}\n");
        System.out.println("content:<<\n" + strF + "\n>>");
    }

    private void findGroup(WidgetRun widgetRun, int r12, ArrayList<RunGroup> arrayList) {
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, r12, 0, widgetRun.end, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency).start, r12, 0, widgetRun.end, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, r12, 1, widgetRun.start, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency2).end, r12, 1, widgetRun.start, arrayList, null);
            }
        }
        if (r12 == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, r12, 2, null, arrayList, null);
                }
            }
        }
    }

    private String generateChainDisplayGraph(ChainRun chainRun, String str) {
        int r02 = chainRun.orientation;
        StringBuilder sb2 = new StringBuilder("subgraph cluster_");
        sb2.append(chainRun.widget.getDebugName());
        sb2.append(r02 == 0 ? "_h" : "_v");
        sb2.append(" {\n");
        Iterator<WidgetRun> it = chainRun.widgets.iterator();
        String strGenerateDisplayGraph = "";
        while (it.hasNext()) {
            WidgetRun next = it.next();
            sb2.append(next.widget.getDebugName());
            sb2.append(r02 == 0 ? "_HORIZONTAL" : "_VERTICAL");
            sb2.append(";\n");
            strGenerateDisplayGraph = generateDisplayGraph(next, strGenerateDisplayGraph);
        }
        sb2.append("}\n");
        return str + strGenerateDisplayGraph + ((Object) sb2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e4, code lost:
    
        if (r1.targets.isEmpty() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e6, code lost:
    
        r2.append("\n");
        r2.append(r0.name());
        r2.append(" -> ");
        r0 = r1.name();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0153, code lost:
    
        if (r1.targets.isEmpty() == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String generateDisplayGraph(androidx.constraintlayout.core.widgets.analyzer.WidgetRun r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.generateDisplayGraph(androidx.constraintlayout.core.widgets.analyzer.WidgetRun, java.lang.String):java.lang.String");
    }

    private String generateDisplayNode(DependencyNode dependencyNode, boolean z10, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        for (DependencyNode dependencyNode2 : dependencyNode.targets) {
            StringBuilder sbI = b.i("\n" + dependencyNode.name(), " -> ");
            sbI.append(dependencyNode2.name());
            String string = sbI.toString();
            if (dependencyNode.margin > 0 || z10 || (dependencyNode.run instanceof HelperReferences)) {
                String strF = a.f(string, "[");
                if (dependencyNode.margin > 0) {
                    strF = androidx.browser.browseractions.a.b(b.i(strF, "label=\""), dependencyNode.margin, "\"");
                    if (z10) {
                        strF = a.f(strF, ",");
                    }
                }
                if (z10) {
                    strF = a.f(strF, " style=dashed ");
                }
                if (dependencyNode.run instanceof HelperReferences) {
                    strF = a.f(strF, " style=bold,color=gray ");
                }
                string = a.f(strF, "]");
            }
            sb2.append(string + "\n");
        }
        return sb2.toString();
    }

    private boolean isCenteredConnection(DependencyNode dependencyNode, DependencyNode dependencyNode2) {
        Iterator<DependencyNode> it = dependencyNode.targets.iterator();
        int r22 = 0;
        while (it.hasNext()) {
            if (it.next() != dependencyNode2) {
                r22++;
            }
        }
        Iterator<DependencyNode> it2 = dependencyNode2.targets.iterator();
        int r02 = 0;
        while (it2.hasNext()) {
            if (it2.next() != dependencyNode) {
                r02++;
            }
        }
        if (r22 <= 0 || r02 <= 0) {
            return false;
        }
        return USE_GROUPS;
    }

    private void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int r42, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int r6) {
        BasicMeasure.Measure measure = this.mMeasure;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = r42;
        measure.verticalDimension = r6;
        this.mMeasurer.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String nodeDefinition(androidx.constraintlayout.core.widgets.analyzer.WidgetRun r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun
            androidx.constraintlayout.core.widgets.ConstraintWidget r1 = r10.widget
            java.lang.String r1 = r1.getDebugName()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r1)
            androidx.constraintlayout.core.widgets.ConstraintWidget r3 = r10.widget
            if (r0 != 0) goto L16
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r3 = r3.getHorizontalDimensionBehaviour()
            goto L1a
        L16:
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r3 = r3.getVerticalDimensionBehaviour()
        L1a:
            androidx.constraintlayout.core.widgets.analyzer.RunGroup r4 = r10.runGroup
            if (r0 != 0) goto L21
            java.lang.String r5 = "_HORIZONTAL"
            goto L23
        L21:
            java.lang.String r5 = "_VERTICAL"
        L23:
            r2.append(r5)
            java.lang.String r5 = " [shape=none, label=<<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">  <TR>"
            r2.append(r5)
            java.lang.String r5 = "    <TD "
            java.lang.String r6 = " BGCOLOR=\"green\""
            r2.append(r5)
            androidx.constraintlayout.core.widgets.analyzer.DependencyNode r7 = r10.start
            boolean r7 = r7.resolved
            if (r0 != 0) goto L40
            if (r7 == 0) goto L3d
            r2.append(r6)
        L3d:
            java.lang.String r7 = " PORT=\"LEFT\" BORDER=\"1\">L</TD>"
            goto L47
        L40:
            if (r7 == 0) goto L45
            r2.append(r6)
        L45:
            java.lang.String r7 = " PORT=\"TOP\" BORDER=\"1\">T</TD>"
        L47:
            r2.append(r7)
            java.lang.String r7 = "    <TD BORDER=\"1\" "
            r2.append(r7)
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r7 = r10.dimension
            boolean r7 = r7.resolved
            if (r7 == 0) goto L5e
            androidx.constraintlayout.core.widgets.ConstraintWidget r8 = r10.widget
            boolean r8 = r8.measured
            if (r8 != 0) goto L5e
            java.lang.String r7 = " BGCOLOR=\"green\" "
            goto L62
        L5e:
            if (r7 == 0) goto L66
            java.lang.String r7 = " BGCOLOR=\"lightgray\" "
        L62:
            r2.append(r7)
            goto L6f
        L66:
            androidx.constraintlayout.core.widgets.ConstraintWidget r7 = r10.widget
            boolean r7 = r7.measured
            if (r7 == 0) goto L6f
            java.lang.String r7 = " BGCOLOR=\"yellow\" "
            goto L62
        L6f:
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r7 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r3 != r7) goto L78
            java.lang.String r3 = "style=\"dashed\""
            r2.append(r3)
        L78:
            java.lang.String r3 = ">"
            r2.append(r3)
            r2.append(r1)
            if (r4 == 0) goto L9d
            java.lang.String r1 = " ["
            r2.append(r1)
            int r1 = r4.groupIndex
            int r1 = r1 + 1
            r2.append(r1)
            java.lang.String r1 = "/"
            r2.append(r1)
            int r1 = androidx.constraintlayout.core.widgets.analyzer.RunGroup.index
            r2.append(r1)
            java.lang.String r1 = "]"
            r2.append(r1)
        L9d:
            java.lang.String r1 = " </TD>"
            r2.append(r1)
            r2.append(r5)
            if (r0 != 0) goto Lb6
            androidx.constraintlayout.core.widgets.analyzer.DependencyNode r10 = r10.end
            boolean r10 = r10.resolved
            if (r10 == 0) goto Lb0
            r2.append(r6)
        Lb0:
            java.lang.String r10 = " PORT=\"RIGHT\" BORDER=\"1\">R</TD>"
        Lb2:
            r2.append(r10)
            goto Ld3
        Lb6:
            r0 = r10
            androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun r0 = (androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun) r0
            androidx.constraintlayout.core.widgets.analyzer.DependencyNode r0 = r0.baseline
            boolean r0 = r0.resolved
            if (r0 == 0) goto Lc2
            r2.append(r6)
        Lc2:
            java.lang.String r0 = " PORT=\"BASELINE\" BORDER=\"1\">b</TD>    <TD "
            r2.append(r0)
            androidx.constraintlayout.core.widgets.analyzer.DependencyNode r10 = r10.end
            boolean r10 = r10.resolved
            if (r10 == 0) goto Ld0
            r2.append(r6)
        Ld0:
            java.lang.String r10 = " PORT=\"BOTTOM\" BORDER=\"1\">B</TD>"
            goto Lb2
        Ld3:
            java.lang.String r10 = "  </TR></TABLE>>];\n"
            r2.append(r10)
            java.lang.String r10 = r2.toString()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.nodeDefinition(androidx.constraintlayout.core.widgets.analyzer.WidgetRun):java.lang.String");
    }

    public void buildGraph() {
        buildGraph(this.mRuns);
        this.mGroups.clear();
        RunGroup.index = 0;
        findGroup(this.container.horizontalRun, 0, this.mGroups);
        findGroup(this.container.verticalRun, 1, this.mGroups);
        this.mNeedBuildGraph = false;
    }

    public void buildGraph(ArrayList<WidgetRun> arrayList) {
        WidgetRun guidelineReference;
        arrayList.clear();
        this.mContainer.horizontalRun.clear();
        this.mContainer.verticalRun.clear();
        arrayList.add(this.mContainer.horizontalRun);
        arrayList.add(this.mContainer.verticalRun);
        Iterator<ConstraintWidget> it = this.mContainer.mChildren.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            if (next instanceof Guideline) {
                guidelineReference = new GuidelineReference(next);
            } else {
                if (next.isInHorizontalChain()) {
                    if (next.horizontalChainRun == null) {
                        next.horizontalChainRun = new ChainRun(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.horizontalChainRun);
                } else {
                    arrayList.add(next.horizontalRun);
                }
                if (next.isInVerticalChain()) {
                    if (next.verticalChainRun == null) {
                        next.verticalChainRun = new ChainRun(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.verticalChainRun);
                } else {
                    arrayList.add(next.verticalRun);
                }
                if (next instanceof HelperWidget) {
                    guidelineReference = new HelperReferences(next);
                }
            }
            arrayList.add(guidelineReference);
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<WidgetRun> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().clear();
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.widget != this.mContainer) {
                next2.apply();
            }
        }
    }

    public void defineTerminalWidgets(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2) {
        if (this.mNeedBuildGraph) {
            buildGraph();
            Iterator<ConstraintWidget> it = this.container.mChildren.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                boolean[] zArr = next.isTerminalWidget;
                zArr[0] = USE_GROUPS;
                zArr[1] = USE_GROUPS;
                if (next instanceof Barrier) {
                    z10 = USE_GROUPS;
                }
            }
            if (z10) {
                return;
            }
            Iterator<RunGroup> it2 = this.mGroups.iterator();
            while (it2.hasNext()) {
                RunGroup next2 = it2.next();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                next2.defineTerminalWidgets(dimensionBehaviour == dimensionBehaviour3 ? USE_GROUPS : false, dimensionBehaviour2 == dimensionBehaviour3 ? USE_GROUPS : false);
            }
        }
    }

    public boolean directMeasure(boolean z10) {
        boolean z11;
        boolean z12 = USE_GROUPS;
        boolean z13 = z10 & USE_GROUPS;
        if (this.mNeedBuildGraph || this.mNeedRedoMeasures) {
            Iterator<ConstraintWidget> it = this.container.mChildren.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.ensureWidgetRuns();
                next.measured = false;
                next.horizontalRun.reset();
                next.verticalRun.reset();
            }
            this.container.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.container;
            constraintWidgetContainer.measured = false;
            constraintWidgetContainer.horizontalRun.reset();
            this.container.verticalRun.reset();
            this.mNeedRedoMeasures = false;
        }
        if (basicMeasureWidgets(this.mContainer)) {
            return false;
        }
        this.container.setX(0);
        this.container.setY(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.container.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.container.getDimensionBehaviour(1);
        if (this.mNeedBuildGraph) {
            buildGraph();
        }
        int x10 = this.container.getX();
        int y10 = this.container.getY();
        this.container.horizontalRun.start.resolve(x10);
        this.container.verticalRun.start.resolve(y10);
        measureWidgets();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == dimensionBehaviour3 || dimensionBehaviour2 == dimensionBehaviour3) {
            if (z13) {
                Iterator<WidgetRun> it2 = this.mRuns.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (!it2.next().supportsWrapComputation()) {
                        z13 = false;
                        break;
                    }
                }
            }
            if (z13 && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
                constraintWidgetContainer2.setWidth(computeWrap(constraintWidgetContainer2, 0));
                ConstraintWidgetContainer constraintWidgetContainer3 = this.container;
                constraintWidgetContainer3.horizontalRun.dimension.resolve(constraintWidgetContainer3.getWidth());
            }
            if (z13 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer4 = this.container;
                constraintWidgetContainer4.setHeight(computeWrap(constraintWidgetContainer4, 1));
                ConstraintWidgetContainer constraintWidgetContainer5 = this.container;
                constraintWidgetContainer5.verticalRun.dimension.resolve(constraintWidgetContainer5.getHeight());
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer6 = this.container;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer6.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour4 == dimensionBehaviour5 || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int width = constraintWidgetContainer6.getWidth() + x10;
            this.container.horizontalRun.end.resolve(width);
            this.container.horizontalRun.dimension.resolve(width - x10);
            measureWidgets();
            ConstraintWidgetContainer constraintWidgetContainer7 = this.container;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = constraintWidgetContainer7.mListDimensionBehaviors[1];
            if (dimensionBehaviour6 == dimensionBehaviour5 || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer7.getHeight() + y10;
                this.container.verticalRun.end.resolve(height);
                this.container.verticalRun.dimension.resolve(height - y10);
            }
            measureWidgets();
            z11 = USE_GROUPS;
        } else {
            z11 = false;
        }
        Iterator<WidgetRun> it3 = this.mRuns.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.widget != this.container || next2.resolved) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it4 = this.mRuns.iterator();
        while (it4.hasNext()) {
            WidgetRun next3 = it4.next();
            if (z11 || next3.widget != this.container) {
                if (!next3.start.resolved || ((!next3.end.resolved && !(next3 instanceof GuidelineReference)) || (!next3.dimension.resolved && !(next3 instanceof ChainRun) && !(next3 instanceof GuidelineReference)))) {
                    z12 = false;
                    break;
                }
            }
        }
        this.container.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.container.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z12;
    }

    public boolean directMeasureSetup(boolean z10) {
        if (this.mNeedBuildGraph) {
            Iterator<ConstraintWidget> it = this.container.mChildren.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.ensureWidgetRuns();
                next.measured = false;
                HorizontalWidgetRun horizontalWidgetRun = next.horizontalRun;
                horizontalWidgetRun.dimension.resolved = false;
                horizontalWidgetRun.resolved = false;
                horizontalWidgetRun.reset();
                VerticalWidgetRun verticalWidgetRun = next.verticalRun;
                verticalWidgetRun.dimension.resolved = false;
                verticalWidgetRun.resolved = false;
                verticalWidgetRun.reset();
            }
            this.container.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.container;
            constraintWidgetContainer.measured = false;
            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer.horizontalRun;
            horizontalWidgetRun2.dimension.resolved = false;
            horizontalWidgetRun2.resolved = false;
            horizontalWidgetRun2.reset();
            VerticalWidgetRun verticalWidgetRun2 = this.container.verticalRun;
            verticalWidgetRun2.dimension.resolved = false;
            verticalWidgetRun2.resolved = false;
            verticalWidgetRun2.reset();
            buildGraph();
        }
        if (basicMeasureWidgets(this.mContainer)) {
            return false;
        }
        this.container.setX(0);
        this.container.setY(0);
        this.container.horizontalRun.start.resolve(0);
        this.container.verticalRun.start.resolve(0);
        return USE_GROUPS;
    }

    public boolean directMeasureWithOrientation(boolean z10, int r11) {
        boolean z11;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        DimensionDependency dimensionDependency;
        int height;
        boolean z12 = USE_GROUPS;
        boolean z13 = z10 & USE_GROUPS;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.container.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = this.container.getDimensionBehaviour(1);
        int x10 = this.container.getX();
        int y10 = this.container.getY();
        if (z13 && (dimensionBehaviour2 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour3 == dimensionBehaviour)) {
            Iterator<WidgetRun> it = this.mRuns.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WidgetRun next = it.next();
                if (next.orientation == r11 && !next.supportsWrapComputation()) {
                    z13 = false;
                    break;
                }
            }
            if (r11 == 0) {
                if (z13 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.container.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    ConstraintWidgetContainer constraintWidgetContainer = this.container;
                    constraintWidgetContainer.setWidth(computeWrap(constraintWidgetContainer, 0));
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
                    dimensionDependency = constraintWidgetContainer2.horizontalRun.dimension;
                    height = constraintWidgetContainer2.getWidth();
                    dimensionDependency.resolve(height);
                }
            } else if (z13 && dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer3 = this.container;
                constraintWidgetContainer3.setHeight(computeWrap(constraintWidgetContainer3, 1));
                ConstraintWidgetContainer constraintWidgetContainer4 = this.container;
                dimensionDependency = constraintWidgetContainer4.verticalRun.dimension;
                height = constraintWidgetContainer4.getHeight();
                dimensionDependency.resolve(height);
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer5 = this.container;
        if (r11 == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer5.mListDimensionBehaviors[0];
            if (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int width = constraintWidgetContainer5.getWidth() + x10;
                this.container.horizontalRun.end.resolve(width);
                this.container.horizontalRun.dimension.resolve(width - x10);
                z11 = USE_GROUPS;
            }
            z11 = false;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidgetContainer5.mListDimensionBehaviors[1];
            if (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height2 = constraintWidgetContainer5.getHeight() + y10;
                this.container.verticalRun.end.resolve(height2);
                this.container.verticalRun.dimension.resolve(height2 - y10);
                z11 = USE_GROUPS;
            }
            z11 = false;
        }
        measureWidgets();
        Iterator<WidgetRun> it2 = this.mRuns.iterator();
        while (it2.hasNext()) {
            WidgetRun next2 = it2.next();
            if (next2.orientation == r11 && (next2.widget != this.container || next2.resolved)) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it3 = this.mRuns.iterator();
        while (it3.hasNext()) {
            WidgetRun next3 = it3.next();
            if (next3.orientation == r11 && (z11 || next3.widget != this.container)) {
                if (!next3.start.resolved || !next3.end.resolved || (!(next3 instanceof ChainRun) && !next3.dimension.resolved)) {
                    z12 = false;
                    break;
                }
            }
        }
        this.container.setHorizontalDimensionBehaviour(dimensionBehaviour2);
        this.container.setVerticalDimensionBehaviour(dimensionBehaviour3);
        return z12;
    }

    public void invalidateGraph() {
        this.mNeedBuildGraph = USE_GROUPS;
    }

    public void invalidateMeasures() {
        this.mNeedRedoMeasures = USE_GROUPS;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0008 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void measureWidgets() {
        /*
            r12 = this;
            androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r0 = r12.container
            java.util.ArrayList<androidx.constraintlayout.core.widgets.ConstraintWidget> r0 = r0.mChildren
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lc1
            java.lang.Object r1 = r0.next()
            androidx.constraintlayout.core.widgets.ConstraintWidget r1 = (androidx.constraintlayout.core.widgets.ConstraintWidget) r1
            boolean r2 = r1.measured
            if (r2 == 0) goto L19
            goto L8
        L19:
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour[] r2 = r1.mListDimensionBehaviors
            r3 = 0
            r8 = r2[r3]
            r9 = 1
            r10 = r2[r9]
            int r2 = r1.mMatchConstraintDefaultWidth
            int r4 = r1.mMatchConstraintDefaultHeight
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r6 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r8 == r6) goto L32
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r8 != r5) goto L30
            if (r2 != r9) goto L30
            goto L32
        L30:
            r2 = 0
            goto L33
        L32:
            r2 = 1
        L33:
            if (r10 == r6) goto L3b
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r10 != r5) goto L3c
            if (r4 != r9) goto L3c
        L3b:
            r3 = 1
        L3c:
            androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun r4 = r1.horizontalRun
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r4 = r4.dimension
            boolean r5 = r4.resolved
            androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun r7 = r1.verticalRun
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r7 = r7.dimension
            boolean r11 = r7.resolved
            if (r5 == 0) goto L5b
            if (r11 == 0) goto L5b
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r6 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.FIXED
            int r5 = r4.value
            int r7 = r7.value
            r2 = r12
            r3 = r1
            r4 = r6
            r2.measure(r3, r4, r5, r6, r7)
        L58:
            r1.measured = r9
            goto Lae
        L5b:
            if (r5 == 0) goto L87
            if (r3 == 0) goto L87
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.FIXED
            int r8 = r4.value
            int r7 = r7.value
            r2 = r12
            r3 = r1
            r4 = r5
            r5 = r8
            r2.measure(r3, r4, r5, r6, r7)
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r2 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r10 != r2) goto L7b
            androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun r2 = r1.verticalRun
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r2 = r2.dimension
            int r3 = r1.getHeight()
        L78:
            r2.wrapValue = r3
            goto Lae
        L7b:
            androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun r2 = r1.verticalRun
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r2 = r2.dimension
            int r3 = r1.getHeight()
        L83:
            r2.resolve(r3)
            goto L58
        L87:
            if (r11 == 0) goto Lae
            if (r2 == 0) goto Lae
            int r5 = r4.value
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r10 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.FIXED
            int r7 = r7.value
            r2 = r12
            r3 = r1
            r4 = r6
            r6 = r10
            r2.measure(r3, r4, r5, r6, r7)
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r2 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r8 != r2) goto La5
            androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun r2 = r1.horizontalRun
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r2 = r2.dimension
            int r3 = r1.getWidth()
            goto L78
        La5:
            androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun r2 = r1.horizontalRun
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r2 = r2.dimension
            int r3 = r1.getWidth()
            goto L83
        Lae:
            boolean r2 = r1.measured
            if (r2 == 0) goto L8
            androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun r2 = r1.verticalRun
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r2 = r2.baselineDimension
            if (r2 == 0) goto L8
            int r1 = r1.getBaselineDistance()
            r2.resolve(r1)
            goto L8
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.measureWidgets():void");
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.mMeasurer = measurer;
    }
}
