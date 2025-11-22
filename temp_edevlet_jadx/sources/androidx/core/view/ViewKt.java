package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import lc.q;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a&\u0010\u0004\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a&\u0010\u0005\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a&\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a&\u0010\b\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a&\u0010\t\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a5\u0010\u000f\u001a\u00020\u0002*\u00020\u00002\b\b\u0003\u0010\u000b\u001a\u00020\n2\b\b\u0003\u0010\f\u001a\u00020\n2\b\b\u0003\u0010\r\u001a\u00020\n2\b\b\u0003\u0010\u000e\u001a\u00020\nH\u0087\b\u001a5\u0010\u0012\u001a\u00020\u0002*\u00020\u00002\b\b\u0003\u0010\u0010\u001a\u00020\n2\b\b\u0003\u0010\f\u001a\u00020\n2\b\b\u0003\u0010\u0011\u001a\u00020\n2\b\b\u0003\u0010\u000e\u001a\u00020\nH\u0086\b\u001a\u0017\u0010\u0014\u001a\u00020\u0002*\u00020\u00002\b\b\u0001\u0010\u0013\u001a\u00020\nH\u0086\b\u001a(\u0010\u0019\u001a\u00020\u0018*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00152\u000e\b\u0004\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086\bø\u0001\u0000\u001a\"\u0010\u001a\u001a\u00020\u0018*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0007\u001a\u0014\u0010\u001e\u001a\u00020\u001d*\u00020\u00002\b\b\u0002\u0010\u001c\u001a\u00020\u001b\u001a$\u0010!\u001a\u00020\u0002*\u00020\u00002\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a7\u0010!\u001a\u00020\u0002\"\n\b\u0000\u0010\"\u0018\u0001*\u00020\u001f*\u00020\u00002\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b#\u0010$\"*\u0010'\u001a\u00020%*\u00020\u00002\u0006\u0010&\u001a\u00020%8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*\"*\u0010+\u001a\u00020%*\u00020\u00002\u0006\u0010&\u001a\u00020%8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010(\"\u0004\b,\u0010*\"*\u0010-\u001a\u00020%*\u00020\u00002\u0006\u0010&\u001a\u00020%8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*\"\u0016\u00101\u001a\u00020\n*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b/\u00100\"\u0016\u00103\u001a\u00020\n*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b2\u00100\"\u0016\u00105\u001a\u00020\n*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b4\u00100\"\u0016\u00107\u001a\u00020\n*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b6\u00100\"\u0016\u00109\u001a\u00020\n*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b8\u00100\"\u0016\u0010;\u001a\u00020\n*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b:\u00100\"\u001b\u0010@\u001a\b\u0012\u0004\u0012\u00020=0<*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b>\u0010?\"\u001b\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00000<*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bA\u0010?\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006C"}, d2 = {"Landroid/view/View;", "Lkotlin/Function1;", "Ll9/m;", "action", "doOnNextLayout", "doOnLayout", "Landroidx/core/view/OneShotPreDrawListener;", "doOnPreDraw", "doOnAttach", "doOnDetach", "", "start", "top", "end", "bottom", "updatePaddingRelative", "left", "right", "updatePadding", "size", "setPadding", "", "delayInMillis", "Lkotlin/Function0;", "Ljava/lang/Runnable;", "postDelayed", "postOnAnimationDelayed", "Landroid/graphics/Bitmap$Config;", "config", "Landroid/graphics/Bitmap;", "drawToBitmap", "Landroid/view/ViewGroup$LayoutParams;", "block", "updateLayoutParams", ExifInterface.GPS_DIRECTION_TRUE, "updateLayoutParamsTyped", "(Landroid/view/View;Lx9/l;)V", "", "value", "isVisible", "(Landroid/view/View;)Z", "setVisible", "(Landroid/view/View;Z)V", "isInvisible", "setInvisible", "isGone", "setGone", "getMarginLeft", "(Landroid/view/View;)I", "marginLeft", "getMarginTop", "marginTop", "getMarginRight", "marginRight", "getMarginBottom", "marginBottom", "getMarginStart", "marginStart", "getMarginEnd", "marginEnd", "Llc/h;", "Landroid/view/ViewParent;", "getAncestors", "(Landroid/view/View;)Llc/h;", "ancestors", "getAllViews", "allViews", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class ViewKt {
    public static final void doOnAttach(final View view, final x9.l<? super View, l9.m> action) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        if (ViewCompat.isAttachedToWindow(view)) {
            action.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt.doOnAttach.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    kotlin.jvm.internal.h.f(view2, "view");
                    view.removeOnAttachStateChangeListener(this);
                    action.invoke(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    kotlin.jvm.internal.h.f(view2, "view");
                }
            });
        }
    }

    public static final void doOnDetach(final View view, final x9.l<? super View, l9.m> action) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        if (ViewCompat.isAttachedToWindow(view)) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt.doOnDetach.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    kotlin.jvm.internal.h.f(view2, "view");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    kotlin.jvm.internal.h.f(view2, "view");
                    view.removeOnAttachStateChangeListener(this);
                    action.invoke(view2);
                }
            });
        } else {
            action.invoke(view);
        }
    }

    public static final void doOnLayout(View view, final x9.l<? super View, l9.m> action) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnLayout$$inlined$doOnNextLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92) {
                    kotlin.jvm.internal.h.f(view2, "view");
                    view2.removeOnLayoutChangeListener(this);
                    action.invoke(view2);
                }
            });
        } else {
            action.invoke(view);
        }
    }

    public static final void doOnNextLayout(View view, final x9.l<? super View, l9.m> action) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt.doOnNextLayout.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92) {
                kotlin.jvm.internal.h.f(view2, "view");
                view2.removeOnLayoutChangeListener(this);
                action.invoke(view2);
            }
        });
    }

    public static final OneShotPreDrawListener doOnPreDraw(final View view, final x9.l<? super View, l9.m> action) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        OneShotPreDrawListener oneShotPreDrawListenerAdd = OneShotPreDrawListener.add(view, new Runnable() { // from class: androidx.core.view.ViewKt.doOnPreDraw.1
            @Override // java.lang.Runnable
            public final void run() {
                action.invoke(view);
            }
        });
        kotlin.jvm.internal.h.e(oneShotPreDrawListenerAdd, "View.doOnPreDraw(\n    cr…dd(this) { action(this) }");
        return oneShotPreDrawListenerAdd;
    }

    public static final Bitmap drawToBitmap(View view, Bitmap.Config config) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(config, "config");
        if (!ViewCompat.isLaidOut(view)) {
            throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
        kotlin.jvm.internal.h.e(bitmapCreateBitmap, "createBitmap(width, height, config)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static /* synthetic */ Bitmap drawToBitmap$default(View view, Bitmap.Config config, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return drawToBitmap(view, config);
    }

    public static final lc.h<View> getAllViews(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        return new lc.k(new ViewKt$allViews$1(view, null));
    }

    public static final lc.h<ViewParent> getAncestors(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        return q.R0(ViewKt$ancestors$1.INSTANCE, view.getParent());
    }

    public static final int getMarginBottom(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.bottomMargin;
        }
        return 0;
    }

    public static final int getMarginEnd(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginLeft(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.leftMargin;
        }
        return 0;
    }

    public static final int getMarginRight(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.rightMargin;
        }
        return 0;
    }

    public static final int getMarginStart(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginTop(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.topMargin;
        }
        return 0;
    }

    public static final boolean isGone(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        return view.getVisibility() == 8;
    }

    public static final boolean isInvisible(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        return view.getVisibility() == 4;
    }

    public static final boolean isVisible(View view) {
        kotlin.jvm.internal.h.f(view, "<this>");
        return view.getVisibility() == 0;
    }

    public static final Runnable postDelayed(View view, long j10, final x9.a<l9.m> action) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        Runnable runnable = new Runnable() { // from class: androidx.core.view.ViewKt$postDelayed$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                action.invoke();
            }
        };
        view.postDelayed(runnable, j10);
        return runnable;
    }

    @RequiresApi(16)
    public static final Runnable postOnAnimationDelayed(View view, long j10, x9.a<l9.m> action) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        androidx.view.d dVar = new androidx.view.d(1, action);
        Api16Impl.postOnAnimationDelayed(view, dVar, j10);
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: postOnAnimationDelayed$lambda-1, reason: not valid java name */
    public static final void m14postOnAnimationDelayed$lambda1(x9.a action) {
        kotlin.jvm.internal.h.f(action, "$action");
        action.invoke();
    }

    public static final void setGone(View view, boolean z10) {
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setVisibility(z10 ? 8 : 0);
    }

    public static final void setInvisible(View view, boolean z10) {
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setVisibility(z10 ? 4 : 0);
    }

    public static final void setPadding(View view, @Px int r22) {
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setPadding(r22, r22, r22, r22);
    }

    public static final void setVisible(View view, boolean z10) {
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setVisibility(z10 ? 0 : 8);
    }

    public static final void updateLayoutParams(View view, x9.l<? super ViewGroup.LayoutParams, l9.m> block) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(block, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        block.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, x9.l<? super T, l9.m> block) {
        kotlin.jvm.internal.h.f(view, "<this>");
        kotlin.jvm.internal.h.f(block, "block");
        view.getLayoutParams();
        kotlin.jvm.internal.h.m();
        throw null;
    }

    public static final void updatePadding(View view, @Px int r22, @Px int r32, @Px int r42, @Px int r52) {
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setPadding(r22, r32, r42, r52);
    }

    public static /* synthetic */ void updatePadding$default(View view, int r12, int r22, int r32, int r42, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r12 = view.getPaddingLeft();
        }
        if ((r52 & 2) != 0) {
            r22 = view.getPaddingTop();
        }
        if ((r52 & 4) != 0) {
            r32 = view.getPaddingRight();
        }
        if ((r52 & 8) != 0) {
            r42 = view.getPaddingBottom();
        }
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setPadding(r12, r22, r32, r42);
    }

    @RequiresApi(17)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void updatePaddingRelative(View view, @Px int r22, @Px int r32, @Px int r42, @Px int r52) {
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setPaddingRelative(r22, r32, r42, r52);
    }

    public static /* synthetic */ void updatePaddingRelative$default(View view, int r12, int r22, int r32, int r42, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r12 = view.getPaddingStart();
        }
        if ((r52 & 2) != 0) {
            r22 = view.getPaddingTop();
        }
        if ((r52 & 4) != 0) {
            r32 = view.getPaddingEnd();
        }
        if ((r52 & 8) != 0) {
            r42 = view.getPaddingBottom();
        }
        kotlin.jvm.internal.h.f(view, "<this>");
        view.setPaddingRelative(r12, r22, r32, r42);
    }
}
