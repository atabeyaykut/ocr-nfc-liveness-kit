package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* loaded from: classes.dex */
class RectEvaluator implements TypeEvaluator<Rect> {
    private Rect mRect;

    public RectEvaluator() {
    }

    public RectEvaluator(Rect rect) {
        this.mRect = rect;
    }

    @Override // android.animation.TypeEvaluator
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        int r02 = rect.left + ((int) ((rect2.left - r0) * f));
        int r12 = rect.top + ((int) ((rect2.top - r1) * f));
        int r22 = rect.right + ((int) ((rect2.right - r2) * f));
        int r6 = rect.bottom + ((int) ((rect2.bottom - r6) * f));
        Rect rect3 = this.mRect;
        if (rect3 == null) {
            return new Rect(r02, r12, r22, r6);
        }
        rect3.set(r02, r12, r22, r6);
        return this.mRect;
    }
}
