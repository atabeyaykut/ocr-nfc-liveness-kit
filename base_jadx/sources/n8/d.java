package n8;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import com.yalantis.ucrop.UCropActivity;
import com.yalantis.ucrop.view.GestureCropImageView;
import s8.c;

/* loaded from: classes2.dex */
public final class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UCropActivity f10602a;

    public d(UCropActivity uCropActivity) {
        this.f10602a = uCropActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        UCropActivity uCropActivity = this.f10602a;
        GestureCropImageView gestureCropImageView = uCropActivity.f4456n;
        float f = 90;
        RectF rectF = gestureCropImageView.f15277r;
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        if (f != 0.0f) {
            Matrix matrix = gestureCropImageView.f15303d;
            matrix.postRotate(f, fCenterX, fCenterY);
            gestureCropImageView.setImageMatrix(matrix);
            c.a aVar = gestureCropImageView.f15305g;
            if (aVar != null) {
                ((UCropActivity.a) aVar).a(gestureCropImageView.a(matrix));
            }
        }
        uCropActivity.f4456n.setImageToWrapCropBounds(true);
    }
}
