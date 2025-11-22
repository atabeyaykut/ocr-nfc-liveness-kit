package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

/* loaded from: classes2.dex */
public class ShapeAppearancePathProvider {
    private final ShapePath[] cornerPaths = new ShapePath[4];
    private final Matrix[] cornerTransforms = new Matrix[4];
    private final Matrix[] edgeTransforms = new Matrix[4];
    private final PointF pointF = new PointF();
    private final Path overlappedEdgePath = new Path();
    private final Path boundsPath = new Path();
    private final ShapePath shapePath = new ShapePath();
    private final float[] scratch = new float[2];
    private final float[] scratch2 = new float[2];
    private final Path edgePath = new Path();
    private final Path cornerPath = new Path();
    private boolean edgeIntersectionCheckEnabled = true;

    public static class Lazy {
        static final ShapeAppearancePathProvider INSTANCE = new ShapeAppearancePathProvider();

        private Lazy() {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface PathListener {
        void onCornerPathCreated(ShapePath shapePath, Matrix matrix, int r32);

        void onEdgePathCreated(ShapePath shapePath, Matrix matrix, int r32);
    }

    public static final class ShapeAppearancePathSpec {

        @NonNull
        public final RectF bounds;
        public final float interpolation;

        @NonNull
        public final Path path;

        @Nullable
        public final PathListener pathListener;

        @NonNull
        public final ShapeAppearanceModel shapeAppearanceModel;

        public ShapeAppearancePathSpec(@NonNull ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @Nullable PathListener pathListener, Path path) {
            this.pathListener = pathListener;
            this.shapeAppearanceModel = shapeAppearanceModel;
            this.interpolation = f;
            this.bounds = rectF;
            this.path = path;
        }
    }

    public ShapeAppearancePathProvider() {
        for (int r12 = 0; r12 < 4; r12++) {
            this.cornerPaths[r12] = new ShapePath();
            this.cornerTransforms[r12] = new Matrix();
            this.edgeTransforms[r12] = new Matrix();
        }
    }

    private float angleOfEdge(int r12) {
        return (r12 + 1) * 90;
    }

    private void appendCornerPath(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int r6) {
        this.scratch[0] = this.cornerPaths[r6].getStartX();
        this.scratch[1] = this.cornerPaths[r6].getStartY();
        this.cornerTransforms[r6].mapPoints(this.scratch);
        Path path = shapeAppearancePathSpec.path;
        float[] fArr = this.scratch;
        if (r6 == 0) {
            path.moveTo(fArr[0], fArr[1]);
        } else {
            path.lineTo(fArr[0], fArr[1]);
        }
        this.cornerPaths[r6].applyToPath(this.cornerTransforms[r6], shapeAppearancePathSpec.path);
        PathListener pathListener = shapeAppearancePathSpec.pathListener;
        if (pathListener != null) {
            pathListener.onCornerPathCreated(this.cornerPaths[r6], this.cornerTransforms[r6], r6);
        }
    }

    private void appendEdgePath(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int r10) {
        ShapePath shapePath;
        Matrix matrix;
        Path path;
        int r02 = (r10 + 1) % 4;
        this.scratch[0] = this.cornerPaths[r10].getEndX();
        this.scratch[1] = this.cornerPaths[r10].getEndY();
        this.cornerTransforms[r10].mapPoints(this.scratch);
        this.scratch2[0] = this.cornerPaths[r02].getStartX();
        this.scratch2[1] = this.cornerPaths[r02].getStartY();
        this.cornerTransforms[r02].mapPoints(this.scratch2);
        float f = this.scratch[0];
        float[] fArr = this.scratch2;
        float fMax = Math.max(((float) Math.hypot(f - fArr[0], r1[1] - fArr[1])) - 0.001f, 0.0f);
        float edgeCenterForIndex = getEdgeCenterForIndex(shapeAppearancePathSpec.bounds, r10);
        this.shapePath.reset(0.0f, 0.0f);
        EdgeTreatment edgeTreatmentForIndex = getEdgeTreatmentForIndex(r10, shapeAppearancePathSpec.shapeAppearanceModel);
        edgeTreatmentForIndex.getEdgePath(fMax, edgeCenterForIndex, shapeAppearancePathSpec.interpolation, this.shapePath);
        this.edgePath.reset();
        this.shapePath.applyToPath(this.edgeTransforms[r10], this.edgePath);
        if (this.edgeIntersectionCheckEnabled && (edgeTreatmentForIndex.forceIntersection() || pathOverlapsCorner(this.edgePath, r10) || pathOverlapsCorner(this.edgePath, r02))) {
            Path path2 = this.edgePath;
            path2.op(path2, this.boundsPath, Path.Op.DIFFERENCE);
            this.scratch[0] = this.shapePath.getStartX();
            this.scratch[1] = this.shapePath.getStartY();
            this.edgeTransforms[r10].mapPoints(this.scratch);
            Path path3 = this.overlappedEdgePath;
            float[] fArr2 = this.scratch;
            path3.moveTo(fArr2[0], fArr2[1]);
            shapePath = this.shapePath;
            matrix = this.edgeTransforms[r10];
            path = this.overlappedEdgePath;
        } else {
            shapePath = this.shapePath;
            matrix = this.edgeTransforms[r10];
            path = shapeAppearancePathSpec.path;
        }
        shapePath.applyToPath(matrix, path);
        PathListener pathListener = shapeAppearancePathSpec.pathListener;
        if (pathListener != null) {
            pathListener.onEdgePathCreated(this.shapePath, this.edgeTransforms[r10], r10);
        }
    }

    private void getCoordinatesOfCorner(int r22, @NonNull RectF rectF, @NonNull PointF pointF) {
        float f;
        float f10;
        if (r22 == 1) {
            f = rectF.right;
        } else {
            if (r22 != 2) {
                f = r22 != 3 ? rectF.right : rectF.left;
                f10 = rectF.top;
                pointF.set(f, f10);
            }
            f = rectF.left;
        }
        f10 = rectF.bottom;
        pointF.set(f, f10);
    }

    private CornerSize getCornerSizeForIndex(int r22, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return r22 != 1 ? r22 != 2 ? r22 != 3 ? shapeAppearanceModel.getTopRightCornerSize() : shapeAppearanceModel.getTopLeftCornerSize() : shapeAppearanceModel.getBottomLeftCornerSize() : shapeAppearanceModel.getBottomRightCornerSize();
    }

    private CornerTreatment getCornerTreatmentForIndex(int r22, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return r22 != 1 ? r22 != 2 ? r22 != 3 ? shapeAppearanceModel.getTopRightCorner() : shapeAppearanceModel.getTopLeftCorner() : shapeAppearanceModel.getBottomLeftCorner() : shapeAppearanceModel.getBottomRightCorner();
    }

    private float getEdgeCenterForIndex(@NonNull RectF rectF, int r6) {
        float fCenterX;
        float f;
        float[] fArr = this.scratch;
        ShapePath shapePath = this.cornerPaths[r6];
        fArr[0] = shapePath.endX;
        fArr[1] = shapePath.endY;
        this.cornerTransforms[r6].mapPoints(fArr);
        if (r6 == 1 || r6 == 3) {
            fCenterX = rectF.centerX();
            f = this.scratch[0];
        } else {
            fCenterX = rectF.centerY();
            f = this.scratch[1];
        }
        return Math.abs(fCenterX - f);
    }

    private EdgeTreatment getEdgeTreatmentForIndex(int r22, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return r22 != 1 ? r22 != 2 ? r22 != 3 ? shapeAppearanceModel.getRightEdge() : shapeAppearanceModel.getTopEdge() : shapeAppearanceModel.getLeftEdge() : shapeAppearanceModel.getBottomEdge();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static ShapeAppearancePathProvider getInstance() {
        return Lazy.INSTANCE;
    }

    @RequiresApi(19)
    private boolean pathOverlapsCorner(Path path, int r52) {
        this.cornerPath.reset();
        this.cornerPaths[r52].applyToPath(this.cornerTransforms[r52], this.cornerPath);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.cornerPath.computeBounds(rectF, true);
        path.op(this.cornerPath, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void setCornerPathAndTransform(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int r92) {
        getCornerTreatmentForIndex(r92, shapeAppearancePathSpec.shapeAppearanceModel).getCornerPath(this.cornerPaths[r92], 90.0f, shapeAppearancePathSpec.interpolation, shapeAppearancePathSpec.bounds, getCornerSizeForIndex(r92, shapeAppearancePathSpec.shapeAppearanceModel));
        float fAngleOfEdge = angleOfEdge(r92);
        this.cornerTransforms[r92].reset();
        getCoordinatesOfCorner(r92, shapeAppearancePathSpec.bounds, this.pointF);
        Matrix matrix = this.cornerTransforms[r92];
        PointF pointF = this.pointF;
        matrix.setTranslate(pointF.x, pointF.y);
        this.cornerTransforms[r92].preRotate(fAngleOfEdge);
    }

    private void setEdgePathAndTransform(int r6) {
        this.scratch[0] = this.cornerPaths[r6].getEndX();
        this.scratch[1] = this.cornerPaths[r6].getEndY();
        this.cornerTransforms[r6].mapPoints(this.scratch);
        float fAngleOfEdge = angleOfEdge(r6);
        this.edgeTransforms[r6].reset();
        Matrix matrix = this.edgeTransforms[r6];
        float[] fArr = this.scratch;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.edgeTransforms[r6].preRotate(fAngleOfEdge);
    }

    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @NonNull Path path) {
        calculatePath(shapeAppearanceModel, f, rectF, null, path);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, @NonNull Path path) {
        path.rewind();
        this.overlappedEdgePath.rewind();
        this.boundsPath.rewind();
        this.boundsPath.addRect(rectF, Path.Direction.CW);
        ShapeAppearancePathSpec shapeAppearancePathSpec = new ShapeAppearancePathSpec(shapeAppearanceModel, f, rectF, pathListener, path);
        for (int r10 = 0; r10 < 4; r10++) {
            setCornerPathAndTransform(shapeAppearancePathSpec, r10);
            setEdgePathAndTransform(r10);
        }
        for (int r92 = 0; r92 < 4; r92++) {
            appendCornerPath(shapeAppearancePathSpec, r92);
            appendEdgePath(shapeAppearancePathSpec, r92);
        }
        path.close();
        this.overlappedEdgePath.close();
        if (this.overlappedEdgePath.isEmpty()) {
            return;
        }
        path.op(this.overlappedEdgePath, Path.Op.UNION);
    }

    public void setEdgeIntersectionCheckEnable(boolean z10) {
        this.edgeIntersectionCheckEnabled = z10;
    }
}
