package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.a;
import androidx.browser.browseractions.b;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class PathInterpolatorCompat implements Interpolator {
    public static final double EPSILON = 1.0E-5d;
    public static final int MAX_NUM_POINTS = 3000;
    private static final float PRECISION = 0.002f;
    private float[] mX;
    private float[] mY;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PATH_INTERPOLATOR);
        parseInterpolatorFromTypeArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
    }

    private void initCubic(float f, float f10, float f11, float f12) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f10, f11, f12, 1.0f, 1.0f);
        initPath(path);
    }

    private void initPath(Path path) {
        int r12 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int r22 = Math.min(MAX_NUM_POINTS, ((int) (length / 0.002f)) + 1);
        if (r22 <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.mX = new float[r22];
        this.mY = new float[r22];
        float[] fArr = new float[2];
        for (int r52 = 0; r52 < r22; r52++) {
            pathMeasure.getPosTan((r52 * length) / (r22 - 1), fArr, null);
            this.mX[r52] = fArr[0];
            this.mY[r52] = fArr[1];
        }
        if (Math.abs(this.mX[0]) <= 1.0E-5d && Math.abs(this.mY[0]) <= 1.0E-5d) {
            int r42 = r22 - 1;
            if (Math.abs(this.mX[r42] - 1.0f) <= 1.0E-5d && Math.abs(this.mY[r42] - 1.0f) <= 1.0E-5d) {
                float f = 0.0f;
                int r32 = 0;
                while (r12 < r22) {
                    float[] fArr2 = this.mX;
                    int r53 = r32 + 1;
                    float f10 = fArr2[r32];
                    if (f10 < f) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f10);
                    }
                    fArr2[r12] = f10;
                    r12++;
                    f = f10;
                    r32 = r53;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder("The Path must start at (0,0) and end at (1,1) start: ");
        sb2.append(this.mX[0]);
        sb2.append(",");
        sb2.append(this.mY[0]);
        sb2.append(" end:");
        int r23 = r22 - 1;
        sb2.append(this.mX[r23]);
        sb2.append(",");
        sb2.append(this.mY[r23]);
        throw new IllegalArgumentException(sb2.toString());
    }

    private void initQuad(float f, float f10) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f10, 1.0f, 1.0f);
        initPath(path);
    }

    private void parseInterpolatorFromTypeArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 4);
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData(namedString);
            if (pathCreatePathFromPathData == null) {
                throw new InflateException(b.e("The path is null, which is created from ", namedString));
            }
            initPath(pathCreatePathFromPathData);
            return;
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean zHasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "controlX2");
        if (zHasAttribute != TypedArrayUtils.hasAttribute(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zHasAttribute) {
            initCubic(namedFloat, namedFloat2, TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        } else {
            initQuad(namedFloat, namedFloat2);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int r32 = 0;
        while (length - r32 > 1) {
            int r42 = (r32 + length) / 2;
            if (f < this.mX[r42]) {
                length = r42;
            } else {
                r32 = r42;
            }
        }
        float[] fArr = this.mX;
        float f10 = fArr[length];
        float f11 = fArr[r32];
        float f12 = f10 - f11;
        if (f12 == 0.0f) {
            return this.mY[r32];
        }
        float f13 = (f - f11) / f12;
        float[] fArr2 = this.mY;
        float f14 = fArr2[r32];
        return a.d(fArr2[length], f14, f13, f14);
    }
}
