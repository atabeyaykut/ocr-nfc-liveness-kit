package e2;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class a extends RecyclerView.ItemDecoration {

    /* renamed from: a, reason: collision with root package name */
    public final int f5101a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5102b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5103c = false;

    public a(int r12, int r22) {
        this.f5101a = r12;
        this.f5102b = r22;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        h.f(outRect, "outRect");
        h.f(view, "view");
        h.f(parent, "parent");
        h.f(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        int r52 = this.f5101a;
        int r6 = childAdapterPosition % r52;
        boolean z10 = this.f5103c;
        int r12 = this.f5102b;
        if (z10) {
            outRect.left = r12 - ((r6 * r12) / r52);
            outRect.right = ((r6 + 1) * r12) / r52;
            if (childAdapterPosition < r52) {
                outRect.top = r12;
            }
            outRect.bottom = r12;
            return;
        }
        outRect.left = (r6 * r12) / r52;
        outRect.right = r12 - (((r6 + 1) * r12) / r52);
        if (childAdapterPosition >= r52) {
            outRect.top = r12;
        }
    }
}
