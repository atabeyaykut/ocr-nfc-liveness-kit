package com.airbnb.epoxy;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.epoxy.d;
import com.airbnb.epoxy.f;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class p implements f0 {
    private static final int DELAY_TO_CHECK_ADAPTER_COUNT_MS = 3000;
    private static final n0 NO_OP_TIMER = new c5.u();
    public static Handler defaultDiffingHandler;
    public static Handler defaultModelBuildingHandler;
    private static boolean filterDuplicatesDefault;
    private static boolean globalDebugLoggingEnabled;
    private static d globalExceptionHandler;
    private final q adapter;
    private final Runnable buildModelsRunnable;
    private r debugObserver;
    private volatile boolean filterDuplicates;
    private volatile boolean hasBuiltModelsEver;
    private final h helper;
    private final List<e> interceptors;
    private final Handler modelBuildHandler;
    private List<f> modelInterceptorCallbacks;
    private j modelsBeingBuilt;
    private int recyclerViewAttachCount;
    private volatile int requestedModelBuildType;
    private u<?> stagedModel;
    private volatile Thread threadBuildingModels;
    private n0 timer;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int r82;
            List<? extends u<?>> listEmptyList;
            e0 e0Var;
            com.airbnb.epoxy.c cVar;
            m mVar;
            p.this.threadBuildingModels = Thread.currentThread();
            p.this.cancelPendingModelBuild();
            p.this.helper.resetAutoModels();
            p.this.modelsBeingBuilt = new j(p.this.getExpectedModelCount());
            p.this.timer.b("Models built");
            try {
                p.this.buildModels();
                p.this.addCurrentlyStagedModelIfExists();
                p.this.timer.stop();
                p.this.runInterceptors();
                p pVar = p.this;
                pVar.filterDuplicatesIfNeeded(pVar.modelsBeingBuilt);
                j jVar = p.this.modelsBeingBuilt;
                jVar.f2576b = j.f2592c;
                if (!jVar.f2575a) {
                    throw new IllegalStateException("Notifications already resumed");
                }
                jVar.f2575a = false;
                p.this.timer.b("Models diffed");
                q qVar = p.this.adapter;
                j jVar2 = p.this.modelsBeingBuilt;
                List<? extends u<?>> list = qVar.f2609g.f;
                if (!list.isEmpty() && list.get(0).isDebugValidationEnabled()) {
                    for (int r32 = 0; r32 < list.size(); r32++) {
                        list.get(r32).validateStateHasNotChangedSinceAdded("The model was changed between being bound and when models were rebuilt", r32);
                    }
                }
                com.airbnb.epoxy.d dVar = qVar.f2609g;
                synchronized (dVar) {
                    r82 = dVar.f2549d.c();
                    listEmptyList = dVar.f2550e;
                }
                if (jVar2 == listEmptyList) {
                    if (listEmptyList == null) {
                        listEmptyList = Collections.emptyList();
                    }
                    mVar = new m(listEmptyList, listEmptyList, null);
                } else {
                    if (jVar2 == null || jVar2.isEmpty()) {
                        m mVar2 = (listEmptyList == null || listEmptyList.isEmpty()) ? null : new m(listEmptyList, Collections.EMPTY_LIST, null);
                        e0Var = e0.f2563c;
                        cVar = new com.airbnb.epoxy.c(r82, dVar, mVar2, null);
                        e0Var.execute(cVar);
                        p.this.timer.stop();
                        p.this.modelsBeingBuilt = null;
                        p.this.hasBuiltModelsEver = true;
                        p.this.threadBuildingModels = null;
                    }
                    if (listEmptyList != null && !listEmptyList.isEmpty()) {
                        dVar.f2546a.execute(new com.airbnb.epoxy.b(dVar, new d.a(listEmptyList, jVar2, dVar.f2548c), r82, jVar2, listEmptyList));
                        p.this.timer.stop();
                        p.this.modelsBeingBuilt = null;
                        p.this.hasBuiltModelsEver = true;
                        p.this.threadBuildingModels = null;
                    }
                    mVar = new m(Collections.EMPTY_LIST, jVar2, null);
                }
                e0Var = e0.f2563c;
                cVar = new com.airbnb.epoxy.c(r82, dVar, mVar, jVar2);
                e0Var.execute(cVar);
                p.this.timer.stop();
                p.this.modelsBeingBuilt = null;
                p.this.hasBuiltModelsEver = true;
                p.this.threadBuildingModels = null;
            } catch (Throwable th2) {
                p.this.timer.stop();
                p.this.modelsBeingBuilt = null;
                p.this.hasBuiltModelsEver = true;
                p.this.threadBuildingModels = null;
                p.this.stagedModel = null;
                throw th2;
            }
        }
    }

    public class b implements d {
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            p pVar = p.this;
            if (pVar.recyclerViewAttachCount > 1) {
                pVar.onExceptionSwallowed(new IllegalStateException("This EpoxyController had its adapter added to more than one ReyclerView. Epoxy does not support attaching an adapter to multiple RecyclerViews because saved state will not work properly. If you did not intend to attach your adapter to multiple RecyclerViews you may be leaking a reference to a previous RecyclerView. Make sure to remove the adapter from any previous RecyclerViews (eg if the adapter is reused in a Fragment across multiple onCreateView/onDestroyView cycles). See https://github.com/airbnb/epoxy/wiki/Avoiding-Memory-Leaks for more information."));
            }
        }
    }

    public interface d {
    }

    public interface e {
        void a();
    }

    public interface f {
        void a();

        void b();
    }

    static {
        Handler handler = e0.f2562b.f2669a;
        defaultModelBuildingHandler = handler;
        defaultDiffingHandler = handler;
        filterDuplicatesDefault = false;
        globalDebugLoggingEnabled = false;
        globalExceptionHandler = new b();
    }

    public p() {
        this(defaultModelBuildingHandler, defaultDiffingHandler);
    }

    public p(Handler handler, Handler handler2) {
        h hVar;
        this.recyclerViewAttachCount = 0;
        this.interceptors = new CopyOnWriteArrayList();
        this.filterDuplicates = filterDuplicatesDefault;
        this.threadBuildingModels = null;
        this.timer = NO_OP_TIMER;
        LinkedHashMap linkedHashMap = i.f2590a;
        Constructor<?> constructorA = i.a(getClass());
        if (constructorA == null) {
            hVar = i.f2591b;
        } else {
            try {
                hVar = (h) constructorA.newInstance(this);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Unable to invoke " + constructorA, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Unable to invoke " + constructorA, e11);
            } catch (InvocationTargetException e12) {
                Throwable cause = e12.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException("Unable to get Epoxy helper class.", cause);
                }
                throw ((Error) cause);
            }
        }
        this.helper = hVar;
        this.requestedModelBuildType = 0;
        this.buildModelsRunnable = new a();
        this.adapter = new q(this, handler2);
        this.modelBuildHandler = handler;
        setDebugLoggingEnabled(globalDebugLoggingEnabled);
    }

    private void assertIsBuildingModels() {
        if (!isBuildingModels()) {
            throw new c0("Can only call this when inside the `buildModels` method");
        }
    }

    private void assertNotBuildingModels() {
        if (isBuildingModels()) {
            throw new c0("Cannot call this from inside `buildModels`");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterDuplicatesIfNeeded(List<u<?>> list) {
        if (this.filterDuplicates) {
            this.timer.b("Duplicates filtered");
            HashSet hashSet = new HashSet(list.size());
            ListIterator<u<?>> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                u<?> next = listIterator.next();
                if (!hashSet.add(Long.valueOf(next.id()))) {
                    int r32 = listIterator.previousIndex();
                    listIterator.remove();
                    int r42 = findPositionOfDuplicate(list, next);
                    u<?> uVar = list.get(r42);
                    if (r32 <= r42) {
                        r42++;
                    }
                    onExceptionSwallowed(new c0("Two models have the same ID. ID's must be unique!\nOriginal has position " + r42 + ":\n" + uVar + "\nDuplicate has position " + r32 + ":\n" + next));
                }
            }
            this.timer.stop();
        }
    }

    private int findPositionOfDuplicate(List<u<?>> list, u<?> uVar) {
        int size = list.size();
        for (int r12 = 0; r12 < size; r12++) {
            if (list.get(r12).id() == uVar.id()) {
                return r12;
            }
        }
        throw new IllegalArgumentException("No duplicates in list");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getExpectedModelCount() {
        int r02 = this.adapter.f2611i;
        if (r02 != 0) {
            return r02;
        }
        return 25;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runInterceptors() {
        if (!this.interceptors.isEmpty()) {
            List<f> list = this.modelInterceptorCallbacks;
            if (list != null) {
                Iterator<f> it = list.iterator();
                while (it.hasNext()) {
                    it.next().b();
                }
            }
            this.timer.b("Interceptors executed");
            Iterator<e> it2 = this.interceptors.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
            this.timer.stop();
            List<f> list2 = this.modelInterceptorCallbacks;
            if (list2 != null) {
                Iterator<f> it3 = list2.iterator();
                while (it3.hasNext()) {
                    it3.next().a();
                }
            }
        }
        this.modelInterceptorCallbacks = null;
    }

    public static void setGlobalDebugLoggingEnabled(boolean z10) {
        globalDebugLoggingEnabled = z10;
    }

    public static void setGlobalDuplicateFilteringDefault(boolean z10) {
        filterDuplicatesDefault = z10;
    }

    public static void setGlobalExceptionHandler(@NonNull d dVar) {
        globalExceptionHandler = dVar;
    }

    @Override // com.airbnb.epoxy.f0
    public void add(@NonNull u<?> uVar) {
        uVar.addTo(this);
    }

    public void add(@NonNull List<? extends u<?>> list) {
        j jVar = this.modelsBeingBuilt;
        jVar.ensureCapacity(list.size() + jVar.size());
        Iterator<? extends u<?>> it = list.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public void add(@NonNull u<?>... uVarArr) {
        j jVar = this.modelsBeingBuilt;
        jVar.ensureCapacity(jVar.size() + uVarArr.length);
        for (u<?> uVar : uVarArr) {
            add(uVar);
        }
    }

    public void addAfterInterceptorCallback(f fVar) {
        assertIsBuildingModels();
        if (this.modelInterceptorCallbacks == null) {
            this.modelInterceptorCallbacks = new ArrayList();
        }
        this.modelInterceptorCallbacks.add(fVar);
    }

    public void addCurrentlyStagedModelIfExists() {
        u<?> uVar = this.stagedModel;
        if (uVar != null) {
            uVar.addTo(this);
        }
        this.stagedModel = null;
    }

    public void addInterceptor(@NonNull e eVar) {
        this.interceptors.add(eVar);
    }

    public void addInternal(u<?> uVar) {
        assertIsBuildingModels();
        if (uVar.hasDefaultId()) {
            throw new c0("You must set an id on a model before adding it. Use the @AutoModel annotation if you want an id to be automatically generated for you.");
        }
        if (!uVar.isShown()) {
            throw new c0("You cannot hide a model in an EpoxyController. Use `addIf` to conditionally add a model instead.");
        }
        clearModelFromStaging(uVar);
        uVar.controllerToStageTo = null;
        this.modelsBeingBuilt.add(uVar);
    }

    public void addModelBuildListener(j0 j0Var) {
        this.adapter.f2612j.add(j0Var);
    }

    public abstract void buildModels();

    public synchronized void cancelPendingModelBuild() {
        if (this.requestedModelBuildType != 0) {
            this.requestedModelBuildType = 0;
            this.modelBuildHandler.removeCallbacks(this.buildModelsRunnable);
        }
    }

    public void clearModelFromStaging(u<?> uVar) {
        if (this.stagedModel != uVar) {
            addCurrentlyStagedModelIfExists();
        }
        this.stagedModel = null;
    }

    @NonNull
    public q getAdapter() {
        return this.adapter;
    }

    public int getFirstIndexOfModelInBuildingList(u<?> uVar) {
        assertIsBuildingModels();
        int size = this.modelsBeingBuilt.size();
        for (int r12 = 0; r12 < size; r12++) {
            if (this.modelsBeingBuilt.get(r12) == uVar) {
                return r12;
            }
        }
        return -1;
    }

    public int getModelCountBuiltSoFar() {
        assertIsBuildingModels();
        return this.modelsBeingBuilt.size();
    }

    public int getSpanCount() {
        return this.adapter.f2556a;
    }

    @NonNull
    public GridLayoutManager.SpanSizeLookup getSpanSizeLookup() {
        return this.adapter.f2560e;
    }

    public boolean hasPendingModelBuild() {
        return (this.requestedModelBuildType == 0 && this.threadBuildingModels == null && !this.adapter.f2609g.f2549d.b()) ? false : true;
    }

    public boolean isBuildingModels() {
        return this.threadBuildingModels == Thread.currentThread();
    }

    public boolean isDebugLoggingEnabled() {
        return this.timer != NO_OP_TIMER;
    }

    public boolean isDuplicateFilteringEnabled() {
        return this.filterDuplicates;
    }

    public boolean isModelAddedMultipleTimes(u<?> uVar) {
        assertIsBuildingModels();
        int size = this.modelsBeingBuilt.size();
        int r32 = 0;
        for (int r22 = 0; r22 < size; r22++) {
            if (this.modelsBeingBuilt.get(r22) == uVar) {
                r32++;
            }
        }
        return r32 > 1;
    }

    public boolean isMultiSpan() {
        return this.adapter.f2556a > 1;
    }

    public boolean isStickyHeader(int r12) {
        return false;
    }

    public void moveModel(int r52, int r6) {
        boolean zA;
        assertNotBuildingModels();
        q qVar = this.adapter;
        qVar.getClass();
        ArrayList arrayList = new ArrayList(qVar.f2609g.f);
        arrayList.add(r6, (u) arrayList.remove(r52));
        qVar.f.f2589a = true;
        qVar.notifyItemMoved(r52, r6);
        qVar.f.f2589a = false;
        com.airbnb.epoxy.d dVar = qVar.f2609g;
        synchronized (dVar) {
            zA = dVar.a();
            dVar.b(dVar.f2549d.c(), arrayList);
        }
        if (zA) {
            qVar.f2610h.requestModelBuild();
        }
        requestDelayedModelBuild(500);
    }

    public void notifyModelChanged(int r52) {
        boolean zA;
        assertNotBuildingModels();
        q qVar = this.adapter;
        qVar.getClass();
        ArrayList arrayList = new ArrayList(qVar.f2609g.f);
        qVar.f.f2589a = true;
        qVar.notifyItemChanged(r52);
        qVar.f.f2589a = false;
        com.airbnb.epoxy.d dVar = qVar.f2609g;
        synchronized (dVar) {
            zA = dVar.a();
            dVar.b(dVar.f2549d.c(), arrayList);
        }
        if (zA) {
            qVar.f2610h.requestModelBuild();
        }
    }

    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
    }

    public void onAttachedToRecyclerViewInternal(RecyclerView recyclerView) {
        int r02 = this.recyclerViewAttachCount + 1;
        this.recyclerViewAttachCount = r02;
        if (r02 > 1) {
            e0.f2562b.f2669a.postDelayed(new c(), 3000L);
        }
        onAttachedToRecyclerView(recyclerView);
    }

    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
    }

    public void onDetachedFromRecyclerViewInternal(RecyclerView recyclerView) {
        this.recyclerViewAttachCount--;
        onDetachedFromRecyclerView(recyclerView);
    }

    public void onExceptionSwallowed(@NonNull RuntimeException runtimeException) {
        globalExceptionHandler.getClass();
    }

    public void onModelBound(@NonNull x xVar, @NonNull u<?> uVar, int r32, @Nullable u<?> uVar2) {
    }

    public void onModelUnbound(@NonNull x xVar, @NonNull u<?> uVar) {
    }

    public void onRestoreInstanceState(@Nullable Bundle bundle) {
        q qVar = this.adapter;
        if (qVar.f2558c.f2564a.size() > 0) {
            throw new IllegalStateException("State cannot be restored once views have been bound. It should be done before adding the adapter to the recycler view.");
        }
        if (bundle != null) {
            p0 p0Var = (p0) bundle.getParcelable("saved_state_view_holders");
            qVar.f2559d = p0Var;
            if (p0Var == null) {
                throw new IllegalStateException("Tried to restore instance state, but onSaveInstanceState was never called.");
            }
        }
    }

    public void onSaveInstanceState(@NonNull Bundle bundle) {
        q qVar = this.adapter;
        Iterator<x> it = qVar.f2558c.iterator();
        while (true) {
            f.a aVar = (f.a) it;
            if (!aVar.hasNext()) {
                break;
            }
            qVar.f2559d.b((x) aVar.next());
        }
        if (qVar.f2559d.size() > 0 && !qVar.hasStableIds()) {
            throw new IllegalStateException("Must have stable ids when saving view holder state");
        }
        bundle.putParcelable("saved_state_view_holders", qVar.f2559d);
    }

    public void onViewAttachedToWindow(@NonNull x xVar, @NonNull u<?> uVar) {
    }

    public void onViewDetachedFromWindow(@NonNull x xVar, @NonNull u<?> uVar) {
    }

    public void removeInterceptor(@NonNull e eVar) {
        this.interceptors.remove(eVar);
    }

    public void removeModelBuildListener(j0 j0Var) {
        this.adapter.f2612j.remove(j0Var);
    }

    public synchronized void requestDelayedModelBuild(int r52) {
        if (isBuildingModels()) {
            throw new c0("Cannot call `requestDelayedModelBuild` from inside `buildModels`");
        }
        if (this.requestedModelBuildType == 2) {
            cancelPendingModelBuild();
        } else if (this.requestedModelBuildType == 1) {
            return;
        }
        this.requestedModelBuildType = r52 != 0 ? 2 : 1;
        this.modelBuildHandler.postDelayed(this.buildModelsRunnable, r52);
    }

    public void requestModelBuild() {
        if (isBuildingModels()) {
            throw new c0("Cannot call `requestModelBuild` from inside `buildModels`");
        }
        if (this.hasBuiltModelsEver) {
            requestDelayedModelBuild(0);
        } else {
            this.buildModelsRunnable.run();
        }
    }

    public void setDebugLoggingEnabled(boolean z10) {
        assertNotBuildingModels();
        if (z10) {
            this.timer = new k(getClass().getSimpleName());
            if (this.debugObserver == null) {
                this.debugObserver = new r(getClass().getSimpleName());
            }
            this.adapter.registerAdapterDataObserver(this.debugObserver);
            return;
        }
        this.timer = NO_OP_TIMER;
        r rVar = this.debugObserver;
        if (rVar != null) {
            this.adapter.unregisterAdapterDataObserver(rVar);
        }
    }

    public void setFilterDuplicates(boolean z10) {
        this.filterDuplicates = z10;
    }

    public void setSpanCount(int r22) {
        this.adapter.f2556a = r22;
    }

    public void setStagedModel(u<?> uVar) {
        if (uVar != this.stagedModel) {
            addCurrentlyStagedModelIfExists();
        }
        this.stagedModel = uVar;
    }

    public void setupStickyHeaderView(View view) {
    }

    public void teardownStickyHeaderView(View view) {
    }
}
