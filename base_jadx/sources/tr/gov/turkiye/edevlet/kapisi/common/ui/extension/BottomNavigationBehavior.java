package tr.gov.turkiye.edevlet.kapisi.common.ui.extension;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.material.snackbar.Snackbar;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/ui/extension/BottomNavigationBehavior;", "Landroid/view/View;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "common-ui_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BottomNavigationBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomNavigationBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
        h.f(context, "context");
        h.f(attrs, "attrs");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean layoutDependsOn(CoordinatorLayout parent, V child, View dependency) {
        h.f(parent, "parent");
        h.f(child, "child");
        h.f(dependency, "dependency");
        if (dependency instanceof Snackbar.SnackbarLayout) {
            Snackbar.SnackbarLayout snackbarLayout = (Snackbar.SnackbarLayout) dependency;
            if (snackbarLayout.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) {
                ViewGroup.LayoutParams layoutParams = snackbarLayout.getLayoutParams();
                h.d(layoutParams, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
                CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                layoutParams2.setAnchorId(child.getId());
                layoutParams2.anchorGravity = 48;
                layoutParams2.gravity = 48;
                snackbarLayout.setLayoutParams(layoutParams2);
            }
        }
        return super.layoutDependsOn(parent, child, dependency);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V child, View target, int r52, int r6, int[] consumed, int r82) {
        h.f(coordinatorLayout, "coordinatorLayout");
        h.f(child, "child");
        h.f(target, "target");
        h.f(consumed, "consumed");
        super.onNestedPreScroll(coordinatorLayout, child, target, r52, r6, consumed, r82);
        child.setTranslationY(Math.max(0.0f, Math.min(child.getHeight(), child.getTranslationY() + r6)));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V child, View directTargetChild, View target, int r52, int r6) {
        h.f(coordinatorLayout, "coordinatorLayout");
        h.f(child, "child");
        h.f(directTargetChild, "directTargetChild");
        h.f(target, "target");
        return r52 == 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V child, View target, int r42) {
        h.f(coordinatorLayout, "coordinatorLayout");
        h.f(child, "child");
        h.f(target, "target");
    }
}
