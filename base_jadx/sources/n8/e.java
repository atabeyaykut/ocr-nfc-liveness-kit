package n8;

import android.graphics.RectF;
import com.yalantis.ucrop.UCropActivity;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;

/* loaded from: classes2.dex */
public final class e implements HorizontalProgressWheelView.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UCropActivity f10603a;

    public e(UCropActivity uCropActivity) {
        this.f10603a = uCropActivity;
    }

    @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
    public final void a() {
        this.f10603a.f4456n.setImageToWrapCropBounds(true);
    }

    @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
    public final void b(float f) {
        UCropActivity uCropActivity = this.f10603a;
        if (f > 0.0f) {
            GestureCropImageView gestureCropImageView = uCropActivity.f4456n;
            float maxScale = (((uCropActivity.f4456n.getMaxScale() - uCropActivity.f4456n.getMinScale()) / 15000.0f) * f) + gestureCropImageView.getCurrentScale();
            RectF rectF = gestureCropImageView.f15277r;
            gestureCropImageView.j(maxScale, rectF.centerX(), rectF.centerY());
            return;
        }
        GestureCropImageView gestureCropImageView2 = uCropActivity.f4456n;
        float maxScale2 = (((uCropActivity.f4456n.getMaxScale() - uCropActivity.f4456n.getMinScale()) / 15000.0f) * f) + gestureCropImageView2.getCurrentScale();
        RectF rectF2 = gestureCropImageView2.f15277r;
        float fCenterX = rectF2.centerX();
        float fCenterY = rectF2.centerY();
        if (maxScale2 >= gestureCropImageView2.getMinScale()) {
            gestureCropImageView2.e(maxScale2 / gestureCropImageView2.getCurrentScale(), fCenterX, fCenterY);
        }
    }

    @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
    public final void c() {
        this.f10603a.f4456n.h();
    }
}
