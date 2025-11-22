package androidx.view;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import c5.w;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import p9.d;
import pc.r;
import r9.e;
import r9.i;
import x9.a;
import x9.p;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lpc/r;", "Landroid/graphics/Rect;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@e(c = "androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1", f = "PipHintTracker.kt", l = {87}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class PipHintTrackerKt$trackPipAnimationHintView$flow$1 extends i implements p<r<? super Rect>, d<? super m>, Object> {
    final /* synthetic */ View $view;
    private /* synthetic */ Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ll9/m;", "invoke", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    /* renamed from: androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends j implements a<m> {
        final /* synthetic */ PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1 $attachStateChangeListener;
        final /* synthetic */ View.OnLayoutChangeListener $layoutChangeListener;
        final /* synthetic */ ViewTreeObserver.OnScrollChangedListener $scrollChangeListener;
        final /* synthetic */ View $view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener, View.OnLayoutChangeListener onLayoutChangeListener, PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1 pipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1) {
            super(0);
            this.$view = view;
            this.$scrollChangeListener = onScrollChangedListener;
            this.$layoutChangeListener = onLayoutChangeListener;
            this.$attachStateChangeListener = pipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1;
        }

        @Override // x9.a
        public /* bridge */ /* synthetic */ m invoke() {
            invoke2();
            return m.f9594a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$view.getViewTreeObserver().removeOnScrollChangedListener(this.$scrollChangeListener);
            this.$view.removeOnLayoutChangeListener(this.$layoutChangeListener);
            this.$view.removeOnAttachStateChangeListener(this.$attachStateChangeListener);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PipHintTrackerKt$trackPipAnimationHintView$flow$1(View view, d<? super PipHintTrackerKt$trackPipAnimationHintView$flow$1> dVar) {
        super(2, dVar);
        this.$view = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m1invokeSuspend$lambda0(r rVar, View v10, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92) {
        if (r22 == r6 && r42 == r82 && r32 == r72 && r52 == r92) {
            return;
        }
        h.e(v10, "v");
        rVar.A(Activity.trackPipAnimationHintView$positionInWindow(v10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeSuspend$lambda-1, reason: not valid java name */
    public static final void m2invokeSuspend$lambda1(r rVar, View view) {
        rVar.A(Activity.trackPipAnimationHintView$positionInWindow(view));
    }

    @Override // r9.a
    public final d<m> create(Object obj, d<?> dVar) {
        PipHintTrackerKt$trackPipAnimationHintView$flow$1 pipHintTrackerKt$trackPipAnimationHintView$flow$1 = new PipHintTrackerKt$trackPipAnimationHintView$flow$1(this.$view, dVar);
        pipHintTrackerKt$trackPipAnimationHintView$flow$1.L$0 = obj;
        return pipHintTrackerKt$trackPipAnimationHintView$flow$1;
    }

    @Override // x9.p
    /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final Object mo7invoke(r<? super Rect> rVar, d<? super m> dVar) {
        return ((PipHintTrackerKt$trackPipAnimationHintView$flow$1) create(rVar, dVar)).invokeSuspend(m.f9594a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View$OnAttachStateChangeListener, androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1] */
    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.label;
        if (r12 == 0) {
            w.F(obj);
            final r rVar = (r) this.L$0;
            final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: androidx.activity.e
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20) {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.m1invokeSuspend$lambda0(rVar, view, r13, r14, r15, r16, r17, r18, r19, r20);
                }
            };
            final View view = this.$view;
            final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: androidx.activity.f
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.m2invokeSuspend$lambda1(rVar, view);
                }
            };
            ?? r52 = new View.OnAttachStateChangeListener() { // from class: androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View v10) {
                    h.f(v10, "v");
                    rVar.A(Activity.trackPipAnimationHintView$positionInWindow(view));
                    view.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                    view.addOnLayoutChangeListener(onLayoutChangeListener);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View v10) {
                    h.f(v10, "v");
                    v10.getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
                    v10.removeOnLayoutChangeListener(onLayoutChangeListener);
                }
            };
            if (Api19Impl.INSTANCE.isAttachedToWindow(this.$view)) {
                rVar.A(Activity.trackPipAnimationHintView$positionInWindow(this.$view));
                this.$view.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                this.$view.addOnLayoutChangeListener(onLayoutChangeListener);
            }
            this.$view.addOnAttachStateChangeListener(r52);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$view, onScrollChangedListener, onLayoutChangeListener, r52);
            this.label = 1;
            if (pc.p.a(rVar, anonymousClass1, this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return m.f9594a;
    }
}
