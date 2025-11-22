package com.airbnb.epoxy;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.Px;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001:\u0004#()*J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\b\b\u0001\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u00020\u00042\b\b\u0001\u0010\u0011\u001a\u00020\u0006J\u0012\u0010\u0014\u001a\u00020\u00042\b\b\u0001\u0010\u0013\u001a\u00020\u0006H\u0016J\u001a\u0010\u0018\u001a\u00020\u00042\u0010\u0010\u0017\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00160\u0015H\u0016J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019J\u0016\u0010\u001f\u001a\u00020\u00042\f\u0010\u001e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001dH\u0016J\b\u0010!\u001a\u00020 H\u0002R\u001a\u0010'\u001a\u00020\"8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006+"}, d2 = {"Lcom/airbnb/epoxy/EpoxyRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "", "removeAdapterWhenDetachedFromWindow", "Ll9/m;", "setRemoveAdapterWhenDetachedFromWindow", "", "delayMsWhenRemovingAdapterOnDetach", "setDelayMsWhenRemovingAdapterOnDetach", "Landroid/view/ViewGroup$LayoutParams;", "params", "setLayoutParams", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layout", "setLayoutManager", "itemSpacingRes", "setItemSpacingRes", "dp", "setItemSpacingDp", "spacingPx", "setItemSpacingPx", "", "Lcom/airbnb/epoxy/u;", "models", "setModels", "Lcom/airbnb/epoxy/p;", "controller", "setController", "setControllerAndBuildModels", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "adapter", "setAdapter", "Landroid/content/Context;", "getContextForSharedViewPool", "Lcom/airbnb/epoxy/t;", "a", "Lcom/airbnb/epoxy/t;", "getSpacingDecorator", "()Lcom/airbnb/epoxy/t;", "spacingDecorator", "ModelBuilderCallbackController", "b", "WithModelsController", "epoxy-adapter_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public class EpoxyRecyclerView extends RecyclerView {

    /* renamed from: k, reason: collision with root package name */
    public static final com.airbnb.epoxy.a f2521k = new com.airbnb.epoxy.a(0);

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final t spacingDecorator;

    /* renamed from: b, reason: collision with root package name */
    public p f2523b;

    /* renamed from: c, reason: collision with root package name */
    public RecyclerView.Adapter<?> f2524c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2525d;

    /* renamed from: e, reason: collision with root package name */
    public int f2526e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final c f2527g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f2528h;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f2529j;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0014R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController;", "Lcom/airbnb/epoxy/p;", "Ll9/m;", "buildModels", "Lcom/airbnb/epoxy/EpoxyRecyclerView$a;", "callback", "Lcom/airbnb/epoxy/EpoxyRecyclerView$a;", "getCallback", "()Lcom/airbnb/epoxy/EpoxyRecyclerView$a;", "setCallback", "(Lcom/airbnb/epoxy/EpoxyRecyclerView$a;)V", "<init>", "()V", "epoxy-adapter_release"}, k = 1, mv = {1, 4, 2})
    public static final class ModelBuilderCallbackController extends p {
        private a callback = new a();

        public static final class a implements a {
            @Override // com.airbnb.epoxy.EpoxyRecyclerView.a
            public final void a(p controller) {
                kotlin.jvm.internal.h.f(controller, "controller");
            }
        }

        @Override // com.airbnb.epoxy.p
        public void buildModels() {
            this.callback.a(this);
        }

        public final a getCallback() {
            return this.callback;
        }

        public final void setCallback(a aVar) {
            kotlin.jvm.internal.h.f(aVar, "<set-?>");
            this.callback = aVar;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0014R.\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController;", "Lcom/airbnb/epoxy/p;", "Ll9/m;", "buildModels", "Lkotlin/Function1;", "callback", "Lx9/l;", "getCallback", "()Lx9/l;", "setCallback", "(Lx9/l;)V", "<init>", "()V", "epoxy-adapter_release"}, k = 1, mv = {1, 4, 2})
    public static final class WithModelsController extends p {
        private x9.l<? super p, l9.m> callback = a.f2530a;

        public static final class a extends kotlin.jvm.internal.j implements x9.l<p, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f2530a = new a();

            public a() {
                super(1);
            }

            @Override // x9.l
            public final l9.m invoke(p pVar) {
                p receiver = pVar;
                kotlin.jvm.internal.h.f(receiver, "$receiver");
                return l9.m.f9594a;
            }
        }

        @Override // com.airbnb.epoxy.p
        public void buildModels() {
            this.callback.invoke(this);
        }

        public final x9.l<p, l9.m> getCallback() {
            return this.callback;
        }

        public final void setCallback(x9.l<? super p, l9.m> lVar) {
            kotlin.jvm.internal.h.f(lVar, "<set-?>");
            this.callback = lVar;
        }
    }

    public interface a {
        void a(p pVar);
    }

    public static final class b<T extends u<?>, U, P> {
    }

    public static final class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            EpoxyRecyclerView epoxyRecyclerView = EpoxyRecyclerView.this;
            if (epoxyRecyclerView.f) {
                epoxyRecyclerView.f = false;
                RecyclerView.Adapter<?> adapter = epoxyRecyclerView.getAdapter();
                if (adapter != null) {
                    epoxyRecyclerView.swapAdapter(null, true);
                    epoxyRecyclerView.f2524c = adapter;
                }
                if (c5.w.z(epoxyRecyclerView.getContext())) {
                    epoxyRecyclerView.getRecycledViewPool().clear();
                }
            }
        }
    }

    public EpoxyRecyclerView(Context context) {
        this(context, null, 6, 0);
    }

    public EpoxyRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpoxyRecyclerView(Context context, AttributeSet attributeSet, int r52) {
        super(context, attributeSet, r52);
        kotlin.jvm.internal.h.f(context, "context");
        this.spacingDecorator = new t();
        this.f2525d = true;
        this.f2526e = 2000;
        this.f2527g = new c();
        this.f2528h = new ArrayList();
        this.f2529j = new ArrayList();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.b.f22x, r52, 0);
            kotlin.jvm.internal.h.e(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…tyleAttr, 0\n            )");
            setItemSpacingPx(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
        d();
    }

    public /* synthetic */ EpoxyRecyclerView(Context context, AttributeSet attributeSet, int r32, int r42) {
        this(context, (r32 & 2) != 0 ? null : attributeSet, 0);
    }

    private final Context getContextForSharedViewPool() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return context;
            }
        }
        Context context2 = getContext();
        kotlin.jvm.internal.h.e(context2, "this.context");
        return context2;
    }

    public void a() {
        p pVar = this.f2523b;
        if (pVar != null) {
            pVar.cancelPendingModelBuild();
        }
        this.f2523b = null;
        swapAdapter(null, true);
    }

    public RecyclerView.LayoutManager b() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int r12 = layoutParams.height;
        if (r12 != -1 && r12 != 0) {
            return new LinearLayoutManager(getContext(), 0, false);
        }
        int r02 = layoutParams.width;
        if (r02 == -1 || r02 == 0) {
            setHasFixedSize(true);
        }
        return new LinearLayoutManager(getContext());
    }

    @Px
    public final int c(@Dimension(unit = 0) int r32) {
        Resources resources = getResources();
        kotlin.jvm.internal.h.e(resources, "resources");
        return (int) TypedValue.applyDimension(1, r32, resources.getDisplayMetrics());
    }

    @CallSuper
    public void d() {
        setClipToPadding(false);
        Context context = getContextForSharedViewPool();
        w wVar = new w(this);
        com.airbnb.epoxy.a aVar = f2521k;
        aVar.getClass();
        kotlin.jvm.internal.h.f(context, "context");
        Iterator it = ((ArrayList) aVar.f2536b).iterator();
        kotlin.jvm.internal.h.e(it, "pools.iterator()");
        PoolReference poolReference = null;
        while (it.hasNext()) {
            Object next = it.next();
            kotlin.jvm.internal.h.e(next, "iterator.next()");
            PoolReference poolReference2 = (PoolReference) next;
            if (poolReference2.f2532a.get() == context) {
                if (poolReference != null) {
                    throw new IllegalStateException("A pool was already found");
                }
                poolReference = poolReference2;
            } else if (c5.w.z(poolReference2.f2532a.get())) {
                poolReference2.f2533b.clear();
                it.remove();
            }
        }
        if (poolReference == null) {
            poolReference = new PoolReference(context, (RecyclerView.RecycledViewPool) wVar.invoke(), aVar);
            Lifecycle lifecycleC = com.airbnb.epoxy.a.c(context);
            if (lifecycleC != null) {
                lifecycleC.addObserver(poolReference);
            }
            ((ArrayList) aVar.f2536b).add(poolReference);
        }
        setRecycledViewPool(poolReference.f2533b);
    }

    @Px
    public final int e(@DimenRes int r22) {
        return getResources().getDimensionPixelOffset(r22);
    }

    public final void f() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        p pVar = this.f2523b;
        if (!(layoutManager instanceof GridLayoutManager) || pVar == null) {
            return;
        }
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        if (pVar.getSpanCount() == gridLayoutManager.getSpanCount() && gridLayoutManager.getSpanSizeLookup() == pVar.getSpanSizeLookup()) {
            return;
        }
        pVar.setSpanCount(gridLayoutManager.getSpanCount());
        gridLayoutManager.setSpanSizeLookup(pVar.getSpanSizeLookup());
    }

    public final void g() {
        ArrayList arrayList = this.f2528h;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeOnScrollListener((c0.b) it.next());
        }
        arrayList.clear();
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter != null) {
            Iterator it2 = this.f2529j.iterator();
            while (it2.hasNext()) {
                b bVar = (b) it2.next();
                if (adapter instanceof n) {
                    bVar.getClass();
                    b8.f.S(null);
                    kotlin.jvm.internal.h.f(null, "requestHolderFactory");
                    throw null;
                }
                if (this.f2523b != null) {
                    bVar.getClass();
                    b8.f.S(null);
                    kotlin.jvm.internal.h.f(null, "requestHolderFactory");
                    throw null;
                }
            }
        }
    }

    public final t getSpacingDecorator() {
        return this.spacingDecorator;
    }

    public final void h(x9.l<? super p, l9.m> lVar) {
        p pVar = this.f2523b;
        if (!(pVar instanceof WithModelsController)) {
            pVar = null;
        }
        WithModelsController withModelsController = (WithModelsController) pVar;
        if (withModelsController == null) {
            withModelsController = new WithModelsController();
            setController(withModelsController);
        }
        withModelsController.setCallback(lVar);
        withModelsController.requestModelBuild();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        RecyclerView.Adapter<?> adapter = this.f2524c;
        if (adapter != null) {
            swapAdapter(adapter, false);
        }
        this.f2524c = null;
        if (this.f) {
            removeCallbacks(this.f2527g);
            this.f = false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Iterator it = this.f2528h.iterator();
        if (it.hasNext()) {
            ((c0.b) it.next()).getClass();
            throw null;
        }
        if (this.f2525d) {
            int r02 = this.f2526e;
            if (r02 > 0) {
                this.f = true;
                postDelayed(this.f2527g, r02);
            } else {
                RecyclerView.Adapter<?> adapter = getAdapter();
                if (adapter != null) {
                    swapAdapter(null, true);
                    this.f2524c = adapter;
                }
                if (c5.w.z(getContext())) {
                    getRecycledViewPool().clear();
                }
            }
        }
        if (c5.w.z(getContext())) {
            getRecycledViewPool().clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        f();
        super.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter<?> adapter) {
        super.setAdapter(adapter);
        this.f2524c = null;
        if (this.f) {
            removeCallbacks(this.f2527g);
            this.f = false;
        }
        g();
    }

    public final void setController(p controller) {
        kotlin.jvm.internal.h.f(controller, "controller");
        this.f2523b = controller;
        setAdapter(controller.getAdapter());
        f();
    }

    public final void setControllerAndBuildModels(p controller) {
        kotlin.jvm.internal.h.f(controller, "controller");
        controller.requestModelBuild();
        setController(controller);
    }

    public final void setDelayMsWhenRemovingAdapterOnDetach(int r12) {
        this.f2526e = r12;
    }

    public final void setItemSpacingDp(@Dimension(unit = 0) int r12) {
        setItemSpacingPx(c(r12));
    }

    public void setItemSpacingPx(@Px int r22) {
        t tVar = this.spacingDecorator;
        removeItemDecoration(tVar);
        tVar.f2652a = r22;
        if (r22 > 0) {
            addItemDecoration(tVar);
        }
    }

    public final void setItemSpacingRes(@DimenRes int r12) {
        setItemSpacingPx(e(r12));
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        super.setLayoutManager(layoutManager);
        f();
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        kotlin.jvm.internal.h.f(params, "params");
        boolean z10 = getLayoutParams() == null;
        super.setLayoutParams(params);
        if (z10 && getLayoutManager() == null) {
            setLayoutManager(b());
        }
    }

    public void setModels(List<? extends u<?>> models) {
        kotlin.jvm.internal.h.f(models, "models");
        p pVar = this.f2523b;
        if (!(pVar instanceof SimpleEpoxyController)) {
            pVar = null;
        }
        SimpleEpoxyController simpleEpoxyController = (SimpleEpoxyController) pVar;
        if (simpleEpoxyController == null) {
            simpleEpoxyController = new SimpleEpoxyController();
            setController(simpleEpoxyController);
        }
        simpleEpoxyController.setModels(models);
    }

    public final void setRemoveAdapterWhenDetachedFromWindow(boolean z10) {
        this.f2525d = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void swapAdapter(RecyclerView.Adapter<?> adapter, boolean z10) {
        super.swapAdapter(adapter, z10);
        this.f2524c = null;
        if (this.f) {
            removeCallbacks(this.f2527g);
            this.f = false;
        }
        g();
    }
}
