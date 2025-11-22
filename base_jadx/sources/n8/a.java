package n8;

import android.view.View;
import android.view.ViewGroup;
import com.yalantis.ucrop.UCropActivity;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UCropActivity f10599a;

    public a(UCropActivity uCropActivity) {
        this.f10599a = uCropActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        UCropActivity uCropActivity = this.f10599a;
        GestureCropImageView gestureCropImageView = uCropActivity.f4456n;
        AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) ((ViewGroup) view).getChildAt(0);
        if (view.isSelected()) {
            if (aspectRatioTextView.f4497d != 0.0f) {
                float f = aspectRatioTextView.f;
                float f10 = aspectRatioTextView.f4499g;
                aspectRatioTextView.f = f10;
                aspectRatioTextView.f4499g = f;
                aspectRatioTextView.f4497d = f10 / f;
            }
            aspectRatioTextView.b();
        }
        gestureCropImageView.setTargetAspectRatio(aspectRatioTextView.f4497d);
        uCropActivity.f4456n.setImageToWrapCropBounds(true);
        if (view.isSelected()) {
            return;
        }
        Iterator it = uCropActivity.f4463x.iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = (ViewGroup) it.next();
            viewGroup.setSelected(viewGroup == view);
        }
    }
}
