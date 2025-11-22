package tr.gov.turkiye.edevlet.kapisi.common.ui.view;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.snackbar.ContentViewCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u00012\u00020\u0002R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/google/android/material/snackbar/ContentViewCallback;", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "getTvMsg", "()Landroid/widget/TextView;", "setTvMsg", "(Landroid/widget/TextView;)V", "tvMsg", "b", "getTvAction", "setTvAction", "tvAction", "Landroid/widget/ImageView;", "c", "Landroid/widget/ImageView;", "getImLeft", "()Landroid/widget/ImageView;", "setImLeft", "(Landroid/widget/ImageView;)V", "imLeft", "d", "Landroidx/constraintlayout/widget/ConstraintLayout;", "getLayRoot", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "setLayRoot", "(Landroidx/constraintlayout/widget/ConstraintLayout;)V", "layRoot", "common-ui_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CustomSnackbarView extends ConstraintLayout implements ContentViewCallback {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public TextView tvMsg;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public TextView tvAction;

    /* renamed from: c, reason: collision with root package name and from kotlin metadata */
    public ImageView imLeft;

    /* renamed from: d, reason: collision with root package name and from kotlin metadata */
    public ConstraintLayout layRoot;

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public CustomSnackbarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        h.f(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomSnackbarView(Context context, AttributeSet attributeSet, int r42) {
        super(context, attributeSet, r42);
        h.f(context, "context");
        View.inflate(context, R.layout.custom_snackbar_content, this);
        setClipToPadding(false);
        View viewFindViewById = findViewById(R.id.tv_message);
        h.e(viewFindViewById, "findViewById(R.id.tv_message)");
        this.tvMsg = (TextView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.tv_action);
        h.e(viewFindViewById2, "findViewById(R.id.tv_action)");
        this.tvAction = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.im_action_left);
        h.e(viewFindViewById3, "findViewById(R.id.im_action_left)");
        this.imLeft = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.snack_constraint);
        h.e(viewFindViewById4, "findViewById(R.id.snack_constraint)");
        this.layRoot = (ConstraintLayout) viewFindViewById4;
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public final void animateContentIn(int r52, int r6) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.imLeft, (Property<ImageView, Float>) View.SCALE_X, 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.imLeft, (Property<ImageView, Float>) View.SCALE_Y, 0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new OvershootInterpolator());
        animatorSet.setDuration(500L);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.start();
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public final void animateContentOut(int r12, int r22) {
    }

    public final ImageView getImLeft() {
        return this.imLeft;
    }

    public final ConstraintLayout getLayRoot() {
        return this.layRoot;
    }

    public final TextView getTvAction() {
        return this.tvAction;
    }

    public final TextView getTvMsg() {
        return this.tvMsg;
    }

    public final void setImLeft(ImageView imageView) {
        h.f(imageView, "<set-?>");
        this.imLeft = imageView;
    }

    public final void setLayRoot(ConstraintLayout constraintLayout) {
        h.f(constraintLayout, "<set-?>");
        this.layRoot = constraintLayout;
    }

    public final void setTvAction(TextView textView) {
        h.f(textView, "<set-?>");
        this.tvAction = textView;
    }

    public final void setTvMsg(TextView textView) {
        h.f(textView, "<set-?>");
        this.tvMsg = textView;
    }
}
