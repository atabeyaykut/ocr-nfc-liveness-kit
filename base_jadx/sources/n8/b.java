package n8;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.yalantis.ucrop.UCropActivity;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import s8.c;

/* loaded from: classes2.dex */
public final class b implements HorizontalProgressWheelView.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UCropActivity f10600a;

    public b(UCropActivity uCropActivity) {
        this.f10600a = uCropActivity;
    }

    @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
    public final void a() {
        this.f10600a.f4456n.setImageToWrapCropBounds(true);
    }

    @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
    public final void b(float f) {
        GestureCropImageView gestureCropImageView = this.f10600a.f4456n;
        float f10 = f / 42.0f;
        RectF rectF = gestureCropImageView.f15277r;
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        if (f10 != 0.0f) {
            Matrix matrix = gestureCropImageView.f15303d;
            matrix.postRotate(f10, fCenterX, fCenterY);
            gestureCropImageView.setImageMatrix(matrix);
            c.a aVar = gestureCropImageView.f15305g;
            if (aVar != null) {
                ((UCropActivity.a) aVar).a(gestureCropImageView.a(matrix));
            }
        }
    }

    @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
    public final void c() {
        this.f10600a.f4456n.h();
    }
}
