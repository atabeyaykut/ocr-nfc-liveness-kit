package androidx.appcompat.widget;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.drawable.WrappedDrawable;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;

/* loaded from: classes.dex */
class AppCompatProgressBarHelper {
    private static final int[] TINT_ATTRS = {R.attr.indeterminateDrawable, R.attr.progressDrawable};
    private Bitmap mSampleTile;
    private final ProgressBar mView;

    @RequiresApi(23)
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static void transferLayerProperties(LayerDrawable layerDrawable, LayerDrawable layerDrawable2, int r32) {
            layerDrawable2.setLayerGravity(r32, layerDrawable.getLayerGravity(r32));
            layerDrawable2.setLayerWidth(r32, layerDrawable.getLayerWidth(r32));
            layerDrawable2.setLayerHeight(r32, layerDrawable.getLayerHeight(r32));
            layerDrawable2.setLayerInsetLeft(r32, layerDrawable.getLayerInsetLeft(r32));
            layerDrawable2.setLayerInsetRight(r32, layerDrawable.getLayerInsetRight(r32));
            layerDrawable2.setLayerInsetTop(r32, layerDrawable.getLayerInsetTop(r32));
            layerDrawable2.setLayerInsetBottom(r32, layerDrawable.getLayerInsetBottom(r32));
            layerDrawable2.setLayerInsetStart(r32, layerDrawable.getLayerInsetStart(r32));
            layerDrawable2.setLayerInsetEnd(r32, layerDrawable.getLayerInsetEnd(r32));
        }
    }

    public AppCompatProgressBarHelper(ProgressBar progressBar) {
        this.mView = progressBar;
    }

    private Shape getDrawableShape() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    private Drawable tileifyIndeterminate(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        AnimationDrawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int r22 = 0; r22 < numberOfFrames; r22++) {
            Drawable drawableTileify = tileify(animationDrawable.getFrame(r22), true);
            drawableTileify.setLevel(ModuleDescriptor.MODULE_VERSION);
            animationDrawable2.addFrame(drawableTileify, animationDrawable.getDuration(r22));
        }
        animationDrawable2.setLevel(ModuleDescriptor.MODULE_VERSION);
        return animationDrawable2;
    }

    public Bitmap getSampleTile() {
        return this.mSampleTile;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int r52) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attributeSet, TINT_ATTRS, r52, 0);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            this.mView.setIndeterminateDrawable(tileifyIndeterminate(drawableIfKnown));
        }
        Drawable drawableIfKnown2 = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(1);
        if (drawableIfKnown2 != null) {
            this.mView.setProgressDrawable(tileify(drawableIfKnown2, false));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    public Drawable tileify(Drawable drawable, boolean z10) {
        if (drawable instanceof WrappedDrawable) {
            WrappedDrawable wrappedDrawable = (WrappedDrawable) drawable;
            Drawable wrappedDrawable2 = wrappedDrawable.getWrappedDrawable();
            if (wrappedDrawable2 != null) {
                wrappedDrawable.setWrappedDrawable(tileify(wrappedDrawable2, z10));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int r32 = 0; r32 < numberOfLayers; r32++) {
                    int id2 = layerDrawable.getId(r32);
                    drawableArr[r32] = tileify(layerDrawable.getDrawable(r32), id2 == 16908301 || id2 == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int r22 = 0; r22 < numberOfLayers; r22++) {
                    layerDrawable2.setId(r22, layerDrawable.getId(r22));
                    if (Build.VERSION.SDK_INT >= 23) {
                        Api23Impl.transferLayerProperties(layerDrawable, layerDrawable2, r22);
                    }
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.mSampleTile == null) {
                    this.mSampleTile = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(getDrawableShape());
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z10 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
