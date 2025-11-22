package b0;

import android.view.View;
import android.view.ViewTreeObserver;
import x9.l;

/* loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public Integer f1006a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1007b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f1008c;

    /* JADX WARN: Multi-variable type inference failed */
    public b(Object obj, l lVar) {
        this.f1007b = obj;
        this.f1008c = lVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        Integer num = this.f1006a;
        View view = this.f1007b;
        if (num != null) {
            int measuredWidth = view.getMeasuredWidth();
            if (num != null && num.intValue() == measuredWidth) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                return;
            }
        }
        if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            return;
        }
        Integer num2 = this.f1006a;
        int measuredWidth2 = view.getMeasuredWidth();
        if (num2 != null && num2.intValue() == measuredWidth2) {
            return;
        }
        this.f1006a = Integer.valueOf(view.getMeasuredWidth());
        this.f1008c.invoke(view);
    }
}
