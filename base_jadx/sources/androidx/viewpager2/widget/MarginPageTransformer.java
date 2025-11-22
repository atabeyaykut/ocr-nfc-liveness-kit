package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {
    private final int mMarginPx;

    public MarginPageTransformer(@Px int r22) {
        Preconditions.checkArgumentNonnegative(r22, "Margin must be non-negative");
        this.mMarginPx = r22;
    }

    private ViewPager2 requireViewPager(@NonNull View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f) {
        ViewPager2 viewPager2RequireViewPager = requireViewPager(view);
        float f10 = this.mMarginPx * f;
        if (viewPager2RequireViewPager.getOrientation() != 0) {
            view.setTranslationY(f10);
            return;
        }
        if (viewPager2RequireViewPager.isRtl()) {
            f10 = -f10;
        }
        view.setTranslationX(f10);
    }
}
