package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.view.View;
import java.util.HashSet;

/* loaded from: classes.dex */
abstract class KeyPositionBase extends Key {
    protected static final float SELECTION_SLOPE = 20.0f;
    int mCurveFit = Key.UNSET;

    public abstract void calcPosition(int r12, int r22, float f, float f10, float f11, float f12);

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    public abstract float getPositionX();

    public abstract float getPositionY();

    public abstract boolean intersects(int r12, int r22, RectF rectF, RectF rectF2, float f, float f10);

    public abstract void positionAttributes(View view, RectF rectF, RectF rectF2, float f, float f10, String[] strArr, float[] fArr);
}
