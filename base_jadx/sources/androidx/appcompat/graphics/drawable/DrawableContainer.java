package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class DrawableContainer extends Drawable implements Drawable.Callback {
    private static final boolean DEBUG = false;
    private static final boolean DEFAULT_DITHER = true;
    private static final String TAG = "DrawableContainer";
    private Runnable mAnimationRunnable;
    private BlockInvalidateCallback mBlockInvalidateCallback;
    private Drawable mCurrDrawable;
    private DrawableContainerState mDrawableContainerState;
    private long mEnterAnimationEnd;
    private long mExitAnimationEnd;
    private boolean mHasAlpha;
    private Rect mHotspotBounds;
    private Drawable mLastDrawable;
    private boolean mMutated;
    private int mAlpha = 255;
    private int mCurIndex = -1;

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static boolean canApplyTheme(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void getOutline(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources getResources(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    public static class BlockInvalidateCallback implements Drawable.Callback {
        private Drawable.Callback mCallback;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
            Drawable.Callback callback = this.mCallback;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j10);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            Drawable.Callback callback = this.mCallback;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }

        public Drawable.Callback unwrap() {
            Drawable.Callback callback = this.mCallback;
            this.mCallback = null;
            return callback;
        }

        public BlockInvalidateCallback wrap(Drawable.Callback callback) {
            this.mCallback = callback;
            return this;
        }
    }

    public static abstract class DrawableContainerState extends Drawable.ConstantState {
        boolean mAutoMirrored;
        boolean mCanConstantState;
        int mChangingConfigurations;
        boolean mCheckedConstantSize;
        boolean mCheckedConstantState;
        boolean mCheckedOpacity;
        boolean mCheckedPadding;
        boolean mCheckedStateful;
        int mChildrenChangingConfigurations;
        ColorFilter mColorFilter;
        int mConstantHeight;
        int mConstantMinimumHeight;
        int mConstantMinimumWidth;
        Rect mConstantPadding;
        boolean mConstantSize;
        int mConstantWidth;
        int mDensity;
        boolean mDither;
        SparseArray<Drawable.ConstantState> mDrawableFutures;
        Drawable[] mDrawables;
        int mEnterFadeDuration;
        int mExitFadeDuration;
        boolean mHasColorFilter;
        boolean mHasTintList;
        boolean mHasTintMode;
        int mLayoutDirection;
        boolean mMutated;
        int mNumChildren;
        int mOpacity;
        final DrawableContainer mOwner;
        Resources mSourceRes;
        boolean mStateful;
        ColorStateList mTintList;
        PorterDuff.Mode mTintMode;
        boolean mVariablePadding;

        public DrawableContainerState(DrawableContainerState drawableContainerState, DrawableContainer drawableContainer, Resources resources) {
            this.mVariablePadding = false;
            this.mConstantSize = false;
            this.mDither = DrawableContainer.DEFAULT_DITHER;
            this.mEnterFadeDuration = 0;
            this.mExitFadeDuration = 0;
            this.mOwner = drawableContainer;
            this.mSourceRes = resources != null ? resources : drawableContainerState != null ? drawableContainerState.mSourceRes : null;
            int r6 = DrawableContainer.resolveDensity(resources, drawableContainerState != null ? drawableContainerState.mDensity : 0);
            this.mDensity = r6;
            if (drawableContainerState == null) {
                this.mDrawables = new Drawable[10];
                this.mNumChildren = 0;
                return;
            }
            this.mChangingConfigurations = drawableContainerState.mChangingConfigurations;
            this.mChildrenChangingConfigurations = drawableContainerState.mChildrenChangingConfigurations;
            this.mCheckedConstantState = DrawableContainer.DEFAULT_DITHER;
            this.mCanConstantState = DrawableContainer.DEFAULT_DITHER;
            this.mVariablePadding = drawableContainerState.mVariablePadding;
            this.mConstantSize = drawableContainerState.mConstantSize;
            this.mDither = drawableContainerState.mDither;
            this.mMutated = drawableContainerState.mMutated;
            this.mLayoutDirection = drawableContainerState.mLayoutDirection;
            this.mEnterFadeDuration = drawableContainerState.mEnterFadeDuration;
            this.mExitFadeDuration = drawableContainerState.mExitFadeDuration;
            this.mAutoMirrored = drawableContainerState.mAutoMirrored;
            this.mColorFilter = drawableContainerState.mColorFilter;
            this.mHasColorFilter = drawableContainerState.mHasColorFilter;
            this.mTintList = drawableContainerState.mTintList;
            this.mTintMode = drawableContainerState.mTintMode;
            this.mHasTintList = drawableContainerState.mHasTintList;
            this.mHasTintMode = drawableContainerState.mHasTintMode;
            if (drawableContainerState.mDensity == r6) {
                if (drawableContainerState.mCheckedPadding) {
                    this.mConstantPadding = drawableContainerState.mConstantPadding != null ? new Rect(drawableContainerState.mConstantPadding) : null;
                    this.mCheckedPadding = DrawableContainer.DEFAULT_DITHER;
                }
                if (drawableContainerState.mCheckedConstantSize) {
                    this.mConstantWidth = drawableContainerState.mConstantWidth;
                    this.mConstantHeight = drawableContainerState.mConstantHeight;
                    this.mConstantMinimumWidth = drawableContainerState.mConstantMinimumWidth;
                    this.mConstantMinimumHeight = drawableContainerState.mConstantMinimumHeight;
                    this.mCheckedConstantSize = DrawableContainer.DEFAULT_DITHER;
                }
            }
            if (drawableContainerState.mCheckedOpacity) {
                this.mOpacity = drawableContainerState.mOpacity;
                this.mCheckedOpacity = DrawableContainer.DEFAULT_DITHER;
            }
            if (drawableContainerState.mCheckedStateful) {
                this.mStateful = drawableContainerState.mStateful;
                this.mCheckedStateful = DrawableContainer.DEFAULT_DITHER;
            }
            Drawable[] drawableArr = drawableContainerState.mDrawables;
            this.mDrawables = new Drawable[drawableArr.length];
            this.mNumChildren = drawableContainerState.mNumChildren;
            SparseArray<Drawable.ConstantState> sparseArray = drawableContainerState.mDrawableFutures;
            this.mDrawableFutures = sparseArray != null ? sparseArray.clone() : new SparseArray<>(this.mNumChildren);
            int r42 = this.mNumChildren;
            for (int r02 = 0; r02 < r42; r02++) {
                Drawable drawable = drawableArr[r02];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.mDrawableFutures.put(r02, constantState);
                    } else {
                        this.mDrawables[r02] = drawableArr[r02];
                    }
                }
            }
        }

        private void createAllFutures() {
            SparseArray<Drawable.ConstantState> sparseArray = this.mDrawableFutures;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int r12 = 0; r12 < size; r12++) {
                    this.mDrawables[this.mDrawableFutures.keyAt(r12)] = prepareDrawable(this.mDrawableFutures.valueAt(r12).newDrawable(this.mSourceRes));
                }
                this.mDrawableFutures = null;
            }
        }

        private Drawable prepareDrawable(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                DrawableCompat.setLayoutDirection(drawable, this.mLayoutDirection);
            }
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.mOwner);
            return drawableMutate;
        }

        public final int addChild(Drawable drawable) {
            int r02 = this.mNumChildren;
            if (r02 >= this.mDrawables.length) {
                growArray(r02, r02 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, DrawableContainer.DEFAULT_DITHER);
            drawable.setCallback(this.mOwner);
            this.mDrawables[r02] = drawable;
            this.mNumChildren++;
            this.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | this.mChildrenChangingConfigurations;
            invalidateCache();
            this.mConstantPadding = null;
            this.mCheckedPadding = false;
            this.mCheckedConstantSize = false;
            this.mCheckedConstantState = false;
            return r02;
        }

        @RequiresApi(21)
        public final void applyTheme(Resources.Theme theme) {
            if (theme != null) {
                createAllFutures();
                int r02 = this.mNumChildren;
                Drawable[] drawableArr = this.mDrawables;
                for (int r22 = 0; r22 < r02; r22++) {
                    Drawable drawable = drawableArr[r22];
                    if (drawable != null && DrawableCompat.canApplyTheme(drawable)) {
                        DrawableCompat.applyTheme(drawableArr[r22], theme);
                        this.mChildrenChangingConfigurations |= drawableArr[r22].getChangingConfigurations();
                    }
                }
                updateDensity(Api21Impl.getResources(theme));
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi(21)
        public boolean canApplyTheme() {
            int r02 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int r32 = 0; r32 < r02; r32++) {
                Drawable drawable = drawableArr[r32];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.mDrawableFutures.get(r32);
                    if (constantState != null && Api21Impl.canApplyTheme(constantState)) {
                        return DrawableContainer.DEFAULT_DITHER;
                    }
                } else if (DrawableCompat.canApplyTheme(drawable)) {
                    return DrawableContainer.DEFAULT_DITHER;
                }
            }
            return false;
        }

        public boolean canConstantState() {
            if (this.mCheckedConstantState) {
                return this.mCanConstantState;
            }
            createAllFutures();
            this.mCheckedConstantState = DrawableContainer.DEFAULT_DITHER;
            int r12 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int r42 = 0; r42 < r12; r42++) {
                if (drawableArr[r42].getConstantState() == null) {
                    this.mCanConstantState = false;
                    return false;
                }
            }
            this.mCanConstantState = DrawableContainer.DEFAULT_DITHER;
            return DrawableContainer.DEFAULT_DITHER;
        }

        public final void clearMutated() {
            this.mMutated = false;
        }

        public void computeConstantSize() {
            this.mCheckedConstantSize = DrawableContainer.DEFAULT_DITHER;
            createAllFutures();
            int r02 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            this.mConstantHeight = -1;
            this.mConstantWidth = -1;
            this.mConstantMinimumHeight = 0;
            this.mConstantMinimumWidth = 0;
            for (int r22 = 0; r22 < r02; r22++) {
                Drawable drawable = drawableArr[r22];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.mConstantWidth) {
                    this.mConstantWidth = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.mConstantHeight) {
                    this.mConstantHeight = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.mConstantMinimumWidth) {
                    this.mConstantMinimumWidth = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.mConstantMinimumHeight) {
                    this.mConstantMinimumHeight = minimumHeight;
                }
            }
        }

        public final int getCapacity() {
            return this.mDrawables.length;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations | this.mChildrenChangingConfigurations;
        }

        public final Drawable getChild(int r52) {
            int r02;
            Drawable drawable = this.mDrawables[r52];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.mDrawableFutures;
            if (sparseArray == null || (r02 = sparseArray.indexOfKey(r52)) < 0) {
                return null;
            }
            Drawable drawablePrepareDrawable = prepareDrawable(this.mDrawableFutures.valueAt(r02).newDrawable(this.mSourceRes));
            this.mDrawables[r52] = drawablePrepareDrawable;
            this.mDrawableFutures.removeAt(r02);
            if (this.mDrawableFutures.size() == 0) {
                this.mDrawableFutures = null;
            }
            return drawablePrepareDrawable;
        }

        public final int getChildCount() {
            return this.mNumChildren;
        }

        public final int getConstantHeight() {
            if (!this.mCheckedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantHeight;
        }

        public final int getConstantMinimumHeight() {
            if (!this.mCheckedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantMinimumHeight;
        }

        public final int getConstantMinimumWidth() {
            if (!this.mCheckedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantMinimumWidth;
        }

        public final Rect getConstantPadding() {
            Rect rect = null;
            if (this.mVariablePadding) {
                return null;
            }
            Rect rect2 = this.mConstantPadding;
            if (rect2 != null || this.mCheckedPadding) {
                return rect2;
            }
            createAllFutures();
            Rect rect3 = new Rect();
            int r22 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int r52 = 0; r52 < r22; r52++) {
                if (drawableArr[r52].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int r6 = rect3.left;
                    if (r6 > rect.left) {
                        rect.left = r6;
                    }
                    int r62 = rect3.top;
                    if (r62 > rect.top) {
                        rect.top = r62;
                    }
                    int r63 = rect3.right;
                    if (r63 > rect.right) {
                        rect.right = r63;
                    }
                    int r64 = rect3.bottom;
                    if (r64 > rect.bottom) {
                        rect.bottom = r64;
                    }
                }
            }
            this.mCheckedPadding = DrawableContainer.DEFAULT_DITHER;
            this.mConstantPadding = rect;
            return rect;
        }

        public final int getConstantWidth() {
            if (!this.mCheckedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantWidth;
        }

        public final int getEnterFadeDuration() {
            return this.mEnterFadeDuration;
        }

        public final int getExitFadeDuration() {
            return this.mExitFadeDuration;
        }

        public final int getOpacity() {
            if (this.mCheckedOpacity) {
                return this.mOpacity;
            }
            createAllFutures();
            int r02 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            int opacity = r02 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int r42 = 1; r42 < r02; r42++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[r42].getOpacity());
            }
            this.mOpacity = opacity;
            this.mCheckedOpacity = DrawableContainer.DEFAULT_DITHER;
            return opacity;
        }

        public void growArray(int r32, int r42) {
            Drawable[] drawableArr = new Drawable[r42];
            Drawable[] drawableArr2 = this.mDrawables;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, r32);
            }
            this.mDrawables = drawableArr;
        }

        public void invalidateCache() {
            this.mCheckedOpacity = false;
            this.mCheckedStateful = false;
        }

        public final boolean isConstantSize() {
            return this.mConstantSize;
        }

        public final boolean isStateful() {
            if (this.mCheckedStateful) {
                return this.mStateful;
            }
            createAllFutures();
            int r02 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            boolean z10 = false;
            int r32 = 0;
            while (true) {
                if (r32 >= r02) {
                    break;
                }
                if (drawableArr[r32].isStateful()) {
                    z10 = DrawableContainer.DEFAULT_DITHER;
                    break;
                }
                r32++;
            }
            this.mStateful = z10;
            this.mCheckedStateful = DrawableContainer.DEFAULT_DITHER;
            return z10;
        }

        public void mutate() {
            int r02 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int r22 = 0; r22 < r02; r22++) {
                Drawable drawable = drawableArr[r22];
                if (drawable != null) {
                    drawable.mutate();
                }
            }
            this.mMutated = DrawableContainer.DEFAULT_DITHER;
        }

        public final void setConstantSize(boolean z10) {
            this.mConstantSize = z10;
        }

        public final void setEnterFadeDuration(int r12) {
            this.mEnterFadeDuration = r12;
        }

        public final void setExitFadeDuration(int r12) {
            this.mExitFadeDuration = r12;
        }

        public final boolean setLayoutDirection(int r92, int r10) {
            int r02 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            boolean z10 = false;
            for (int r32 = 0; r32 < r02; r32++) {
                Drawable drawable = drawableArr[r32];
                if (drawable != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? DrawableCompat.setLayoutDirection(drawable, r92) : false;
                    if (r32 == r10) {
                        z10 = layoutDirection;
                    }
                }
            }
            this.mLayoutDirection = r92;
            return z10;
        }

        public final void setVariablePadding(boolean z10) {
            this.mVariablePadding = z10;
        }

        public final void updateDensity(Resources resources) {
            if (resources != null) {
                this.mSourceRes = resources;
                int r22 = DrawableContainer.resolveDensity(resources, this.mDensity);
                int r02 = this.mDensity;
                this.mDensity = r22;
                if (r02 != r22) {
                    this.mCheckedConstantSize = false;
                    this.mCheckedPadding = false;
                }
            }
        }
    }

    private void initializeDrawableForDisplay(Drawable drawable) {
        if (this.mBlockInvalidateCallback == null) {
            this.mBlockInvalidateCallback = new BlockInvalidateCallback();
        }
        drawable.setCallback(this.mBlockInvalidateCallback.wrap(drawable.getCallback()));
        try {
            if (this.mDrawableContainerState.mEnterFadeDuration <= 0 && this.mHasAlpha) {
                drawable.setAlpha(this.mAlpha);
            }
            DrawableContainerState drawableContainerState = this.mDrawableContainerState;
            if (drawableContainerState.mHasColorFilter) {
                drawable.setColorFilter(drawableContainerState.mColorFilter);
            } else {
                if (drawableContainerState.mHasTintList) {
                    DrawableCompat.setTintList(drawable, drawableContainerState.mTintList);
                }
                DrawableContainerState drawableContainerState2 = this.mDrawableContainerState;
                if (drawableContainerState2.mHasTintMode) {
                    DrawableCompat.setTintMode(drawable, drawableContainerState2.mTintMode);
                }
            }
            drawable.setVisible(isVisible(), DEFAULT_DITHER);
            drawable.setDither(this.mDrawableContainerState.mDither);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            }
            DrawableCompat.setAutoMirrored(drawable, this.mDrawableContainerState.mAutoMirrored);
            Rect rect = this.mHotspotBounds;
            if (rect != null) {
                DrawableCompat.setHotspotBounds(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.mBlockInvalidateCallback.unwrap());
        }
    }

    private boolean needsMirroring() {
        if (isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1) {
            return DEFAULT_DITHER;
        }
        return false;
    }

    public static int resolveDensity(@Nullable Resources resources, int r12) {
        if (resources != null) {
            r12 = resources.getDisplayMetrics().densityDpi;
        }
        if (r12 == 0) {
            return 160;
        }
        return r12;
    }

    public void animate(boolean z10) {
        boolean z11;
        boolean z12 = DEFAULT_DITHER;
        this.mHasAlpha = DEFAULT_DITHER;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            long j10 = this.mEnterAnimationEnd;
            if (j10 == 0) {
                z11 = false;
            } else if (j10 <= jUptimeMillis) {
                drawable.setAlpha(this.mAlpha);
                this.mEnterAnimationEnd = 0L;
                z11 = false;
            } else {
                drawable.setAlpha(((255 - (((int) ((j10 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mEnterFadeDuration)) * this.mAlpha) / 255);
                z11 = DEFAULT_DITHER;
            }
        } else {
            this.mEnterAnimationEnd = 0L;
            z11 = false;
        }
        Drawable drawable2 = this.mLastDrawable;
        if (drawable2 != null) {
            long j11 = this.mExitAnimationEnd;
            if (j11 == 0) {
                z12 = z11;
            } else if (j11 <= jUptimeMillis) {
                drawable2.setVisible(false, false);
                this.mLastDrawable = null;
                this.mExitAnimationEnd = 0L;
                z12 = z11;
            } else {
                drawable2.setAlpha(((((int) ((j11 - jUptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
            }
        } else {
            this.mExitAnimationEnd = 0L;
            z12 = z11;
        }
        if (z10 && z12) {
            scheduleSelf(this.mAnimationRunnable, jUptimeMillis + 16);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        this.mDrawableContainerState.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public boolean canApplyTheme() {
        return this.mDrawableContainerState.canApplyTheme();
    }

    public void clearMutated() {
        this.mDrawableContainerState.clearMutated();
        this.mMutated = false;
    }

    public DrawableContainerState cloneConstantState() {
        return this.mDrawableContainerState;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.mLastDrawable;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mDrawableContainerState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.mDrawableContainerState.canConstantState()) {
            return null;
        }
        this.mDrawableContainerState.mChangingConfigurations = getChangingConfigurations();
        return this.mDrawableContainerState;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.mCurrDrawable;
    }

    int getCurrentIndex() {
        return this.mCurIndex;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        Rect rect2 = this.mHotspotBounds;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantHeight();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantWidth();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantMinimumHeight();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.mDrawableContainerState.isConstantSize()) {
            return this.mDrawableContainerState.getConstantMinimumWidth();
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.mCurrDrawable;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.mDrawableContainerState.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            Api21Impl.getOutline(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean padding;
        Rect constantPadding = this.mDrawableContainerState.getConstantPadding();
        if (constantPadding != null) {
            rect.set(constantPadding);
            padding = (constantPadding.right | ((constantPadding.left | constantPadding.top) | constantPadding.bottom)) != 0 ? DEFAULT_DITHER : false;
        } else {
            Drawable drawable = this.mCurrDrawable;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (needsMirroring()) {
            int r12 = rect.left;
            rect.left = rect.right;
            rect.right = r12;
        }
        return padding;
    }

    public void invalidateDrawable(@NonNull Drawable drawable) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        if (drawableContainerState != null) {
            drawableContainerState.invalidateCache();
        }
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mDrawableContainerState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mDrawableContainerState.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z10;
        Drawable drawable = this.mLastDrawable;
        boolean z11 = DEFAULT_DITHER;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.mLastDrawable = null;
            z10 = DEFAULT_DITHER;
        } else {
            z10 = false;
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.mHasAlpha) {
                this.mCurrDrawable.setAlpha(this.mAlpha);
            }
        }
        if (this.mExitAnimationEnd != 0) {
            this.mExitAnimationEnd = 0L;
            z10 = DEFAULT_DITHER;
        }
        if (this.mEnterAnimationEnd != 0) {
            this.mEnterAnimationEnd = 0L;
        } else {
            z11 = z10;
        }
        if (z11) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            DrawableContainerState drawableContainerStateCloneConstantState = cloneConstantState();
            drawableContainerStateCloneConstantState.mutate();
            setConstantState(drawableContainerStateCloneConstantState);
            this.mMutated = DEFAULT_DITHER;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int r32) {
        return this.mDrawableContainerState.setLayoutDirection(r32, getCurrentIndex());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int r22) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            return drawable.setLevel(r22);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            return drawable2.setLevel(r22);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] r22) {
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            return drawable.setState(r22);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            return drawable2.setState(r22);
        }
        return false;
    }

    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean selectDrawable(int r10) {
        /*
            r9 = this;
            int r0 = r9.mCurIndex
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r0 = r9.mDrawableContainerState
            int r0 = r0.mExitFadeDuration
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.mLastDrawable
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.mCurrDrawable
            if (r0 == 0) goto L29
            r9.mLastDrawable = r0
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r0 = r9.mDrawableContainerState
            int r0 = r0.mExitFadeDuration
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.mExitAnimationEnd = r0
            goto L35
        L29:
            r9.mLastDrawable = r4
            r9.mExitAnimationEnd = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.mCurrDrawable
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r0 = r9.mDrawableContainerState
            int r1 = r0.mNumChildren
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.getChild(r10)
            r9.mCurrDrawable = r0
            r9.mCurIndex = r10
            if (r0 == 0) goto L5a
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState r10 = r9.mDrawableContainerState
            int r10 = r10.mEnterFadeDuration
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.mEnterAnimationEnd = r2
        L51:
            r9.initializeDrawableForDisplay(r0)
            goto L5a
        L55:
            r9.mCurrDrawable = r4
            r10 = -1
            r9.mCurIndex = r10
        L5a:
            long r0 = r9.mEnterAnimationEnd
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.mExitAnimationEnd
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L79
        L67:
            java.lang.Runnable r0 = r9.mAnimationRunnable
            if (r0 != 0) goto L73
            androidx.appcompat.graphics.drawable.DrawableContainer$1 r0 = new androidx.appcompat.graphics.drawable.DrawableContainer$1
            r0.<init>()
            r9.mAnimationRunnable = r0
            goto L76
        L73:
            r9.unscheduleSelf(r0)
        L76:
            r9.animate(r10)
        L79:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainer.selectDrawable(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int r72) {
        if (this.mHasAlpha && this.mAlpha == r72) {
            return;
        }
        this.mHasAlpha = DEFAULT_DITHER;
        this.mAlpha = r72;
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            if (this.mEnterAnimationEnd == 0) {
                drawable.setAlpha(r72);
            } else {
                animate(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        if (drawableContainerState.mAutoMirrored != z10) {
            drawableContainerState.mAutoMirrored = z10;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                DrawableCompat.setAutoMirrored(drawable, z10);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        drawableContainerState.mHasColorFilter = DEFAULT_DITHER;
        if (drawableContainerState.mColorFilter != colorFilter) {
            drawableContainerState.mColorFilter = colorFilter;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    public void setConstantState(DrawableContainerState drawableContainerState) {
        this.mDrawableContainerState = drawableContainerState;
        int r02 = this.mCurIndex;
        if (r02 >= 0) {
            Drawable child = drawableContainerState.getChild(r02);
            this.mCurrDrawable = child;
            if (child != null) {
                initializeDrawableForDisplay(child);
            }
        }
        this.mLastDrawable = null;
    }

    public void setCurrentIndex(int r12) {
        selectDrawable(r12);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        if (drawableContainerState.mDither != z10) {
            drawableContainerState.mDither = z10;
            Drawable drawable = this.mCurrDrawable;
            if (drawable != null) {
                drawable.setDither(z10);
            }
        }
    }

    public void setEnterFadeDuration(int r22) {
        this.mDrawableContainerState.mEnterFadeDuration = r22;
    }

    public void setExitFadeDuration(int r22) {
        this.mDrawableContainerState.mExitFadeDuration = r22;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f10) {
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f, f10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int r22, int r32, int r42, int r52) {
        Rect rect = this.mHotspotBounds;
        if (rect == null) {
            this.mHotspotBounds = new Rect(r22, r32, r42, r52);
        } else {
            rect.set(r22, r32, r42, r52);
        }
        Drawable drawable = this.mCurrDrawable;
        if (drawable != null) {
            DrawableCompat.setHotspotBounds(drawable, r22, r32, r42, r52);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int r12) {
        setTintList(ColorStateList.valueOf(r12));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        drawableContainerState.mHasTintList = DEFAULT_DITHER;
        if (drawableContainerState.mTintList != colorStateList) {
            drawableContainerState.mTintList = colorStateList;
            DrawableCompat.setTintList(this.mCurrDrawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        DrawableContainerState drawableContainerState = this.mDrawableContainerState;
        drawableContainerState.mHasTintMode = DEFAULT_DITHER;
        if (drawableContainerState.mTintMode != mode) {
            drawableContainerState.mTintMode = mode;
            DrawableCompat.setTintMode(this.mCurrDrawable, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        Drawable drawable = this.mLastDrawable;
        if (drawable != null) {
            drawable.setVisible(z10, z11);
        }
        Drawable drawable2 = this.mCurrDrawable;
        if (drawable2 != null) {
            drawable2.setVisible(z10, z11);
        }
        return visible;
    }

    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable != this.mCurrDrawable || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    public final void updateDensity(Resources resources) {
        this.mDrawableContainerState.updateDensity(resources);
    }
}
