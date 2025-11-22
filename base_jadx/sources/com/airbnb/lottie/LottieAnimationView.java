package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import d0.f;
import d0.h;
import d0.i;
import d0.j;
import d0.k;
import d0.l;
import d0.o;
import d0.p;
import d0.q;
import d0.t;
import d0.u;
import d0.v;
import d0.w;
import d0.x;
import i0.e;
import java.io.ByteArrayInputStream;
import java.io.InterruptedIOException;
import java.lang.ref.WeakReference;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import p0.g;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {
    public static final a w = new a();

    /* renamed from: a, reason: collision with root package name */
    public final b f2670a;

    /* renamed from: b, reason: collision with root package name */
    public final c f2671b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public o<Throwable> f2672c;

    /* renamed from: d, reason: collision with root package name */
    @DrawableRes
    public int f2673d;

    /* renamed from: e, reason: collision with root package name */
    public final l f2674e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public String f2675g;

    /* renamed from: h, reason: collision with root package name */
    @RawRes
    public int f2676h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f2677j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2678k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f2679l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f2680m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f2681n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f2682p;

    /* renamed from: q, reason: collision with root package name */
    public v f2683q;

    /* renamed from: r, reason: collision with root package name */
    public final HashSet f2684r;

    /* renamed from: s, reason: collision with root package name */
    public int f2685s;

    /* renamed from: t, reason: collision with root package name */
    @Nullable
    public t<f> f2686t;

    /* renamed from: v, reason: collision with root package name */
    @Nullable
    public f f2687v;

    public class a implements o<Throwable> {
        @Override // d0.o
        public final void onResult(Throwable th2) {
            Throwable th3 = th2;
            g.a aVar = g.f12213a;
            if (!((th3 instanceof SocketException) || (th3 instanceof ClosedChannelException) || (th3 instanceof InterruptedIOException) || (th3 instanceof ProtocolException) || (th3 instanceof SSLException) || (th3 instanceof UnknownHostException) || (th3 instanceof UnknownServiceException))) {
                throw new IllegalStateException("Unable to parse composition", th3);
            }
            p0.c.c("Unable to load composition.", th3);
        }
    }

    public class b implements o<f> {
        public b() {
        }

        @Override // d0.o
        public final void onResult(f fVar) {
            LottieAnimationView.this.setComposition(fVar);
        }
    }

    public class c implements o<Throwable> {
        public c() {
        }

        @Override // d0.o
        public final void onResult(Throwable th2) {
            Throwable th3 = th2;
            LottieAnimationView lottieAnimationView = LottieAnimationView.this;
            int r12 = lottieAnimationView.f2673d;
            if (r12 != 0) {
                lottieAnimationView.setImageResource(r12);
            }
            o oVar = lottieAnimationView.f2672c;
            if (oVar == null) {
                oVar = LottieAnimationView.w;
            }
            oVar.onResult(th3);
        }
    }

    public static class d extends View.BaseSavedState {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public String f2690a;

        /* renamed from: b, reason: collision with root package name */
        public int f2691b;

        /* renamed from: c, reason: collision with root package name */
        public float f2692c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f2693d;

        /* renamed from: e, reason: collision with root package name */
        public String f2694e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f2695g;

        public class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int r12) {
                return new d[r12];
            }
        }

        public d(Parcel parcel) {
            super(parcel);
            this.f2690a = parcel.readString();
            this.f2692c = parcel.readFloat();
            this.f2693d = parcel.readInt() == 1;
            this.f2694e = parcel.readString();
            this.f = parcel.readInt();
            this.f2695g = parcel.readInt();
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r22) {
            super.writeToParcel(parcel, r22);
            parcel.writeString(this.f2690a);
            parcel.writeFloat(this.f2692c);
            parcel.writeInt(this.f2693d ? 1 : 0);
            parcel.writeString(this.f2694e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.f2695g);
        }
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        String string;
        super(context, attributeSet);
        this.f2670a = new b();
        this.f2671b = new c();
        this.f2673d = 0;
        l lVar = new l();
        this.f2674e = lVar;
        this.f2677j = false;
        this.f2678k = false;
        this.f2679l = false;
        this.f2680m = false;
        this.f2681n = false;
        this.f2682p = true;
        this.f2683q = v.AUTOMATIC;
        this.f2684r = new HashSet();
        this.f2685s = 0;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, b8.f.f1180c, R.attr.lottieAnimationViewStyle, 0);
        this.f2682p = typedArrayObtainStyledAttributes.getBoolean(1, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(10);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(5);
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(16);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(10, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(5);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(16)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(4, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(0, false)) {
            this.f2679l = true;
            this.f2681n = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(8, false)) {
            lVar.f4553c.setRepeatCount(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(13)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(13, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(12)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(12, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(15, 1.0f));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(7));
        setProgress(typedArrayObtainStyledAttributes.getFloat(9, 0.0f));
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        if (lVar.f4561m != z10) {
            lVar.f4561m = z10;
            if (lVar.f4552b != null) {
                lVar.c();
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            lVar.a(new e("**"), q.E, new q0.c(new w(AppCompatResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes.getResourceId(2, -1)).getDefaultColor())));
        }
        if (typedArrayObtainStyledAttributes.hasValue(14)) {
            lVar.f4554d = typedArrayObtainStyledAttributes.getFloat(14, 1.0f);
        }
        if (typedArrayObtainStyledAttributes.hasValue(11)) {
            int r22 = typedArrayObtainStyledAttributes.getInt(11, 0);
            setRenderMode(v.values()[r22 >= v.values().length ? 0 : r22]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(6, false));
        typedArrayObtainStyledAttributes.recycle();
        Context context2 = getContext();
        g.a aVar = g.f12213a;
        lVar.f4555e = Boolean.valueOf(Settings.Global.getFloat(context2.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f).booleanValue();
        b();
        this.f = true;
    }

    private void setCompositionTask(t<f> tVar) {
        this.f2687v = null;
        this.f2674e.d();
        a();
        b bVar = this.f2670a;
        synchronized (tVar) {
            if (tVar.f4632d != null && tVar.f4632d.f4625a != null) {
                bVar.onResult(tVar.f4632d.f4625a);
            }
            tVar.f4629a.add(bVar);
        }
        tVar.b(this.f2671b);
        this.f2686t = tVar;
    }

    public final void a() {
        t<f> tVar = this.f2686t;
        if (tVar != null) {
            b bVar = this.f2670a;
            synchronized (tVar) {
                tVar.f4629a.remove(bVar);
            }
            this.f2686t.c(this.f2671b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            r6 = this;
            d0.v r0 = r6.f2683q
            int r0 = r0.ordinal()
            r1 = 2
            r2 = 1
            if (r0 == 0) goto Le
            if (r0 == r2) goto L34
        Lc:
            r1 = 1
            goto L34
        Le:
            d0.f r0 = r6.f2687v
            r3 = 0
            if (r0 == 0) goto L1e
            boolean r4 = r0.f4532n
            if (r4 == 0) goto L1e
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 28
            if (r4 >= r5) goto L1e
            goto L32
        L1e:
            if (r0 == 0) goto L26
            int r0 = r0.f4533o
            r4 = 4
            if (r0 <= r4) goto L26
            goto L32
        L26:
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 24
            if (r0 == r4) goto L32
            r4 = 25
            if (r0 != r4) goto L31
            goto L32
        L31:
            r3 = 1
        L32:
            if (r3 == 0) goto Lc
        L34:
            int r0 = r6.getLayerType()
            if (r1 == r0) goto L3e
            r0 = 0
            r6.setLayerType(r1, r0)
        L3e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieAnimationView.b():void");
    }

    @Override // android.view.View
    public final void buildDrawingCache(boolean z10) {
        this.f2685s++;
        super.buildDrawingCache(z10);
        if (this.f2685s == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z10) == null) {
            setRenderMode(v.HARDWARE);
        }
        this.f2685s--;
        d0.c.a();
    }

    @MainThread
    public final void c() {
        if (!isShown()) {
            this.f2677j = true;
        } else {
            this.f2674e.f();
            b();
        }
    }

    @Nullable
    public f getComposition() {
        return this.f2687v;
    }

    public long getDuration() {
        f fVar = this.f2687v;
        if (fVar != null) {
            return (long) fVar.b();
        }
        return 0L;
    }

    public int getFrame() {
        return (int) this.f2674e.f4553c.f;
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f2674e.f4559k;
    }

    public float getMaxFrame() {
        return this.f2674e.f4553c.d();
    }

    public float getMinFrame() {
        return this.f2674e.f4553c.e();
    }

    @Nullable
    public u getPerformanceTracker() {
        f fVar = this.f2674e.f4552b;
        if (fVar != null) {
            return fVar.f4520a;
        }
        return null;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        p0.d dVar = this.f2674e.f4553c;
        f fVar = dVar.f12209k;
        if (fVar == null) {
            return 0.0f;
        }
        float f = dVar.f;
        float f10 = fVar.f4529k;
        return (f - f10) / (fVar.f4530l - f10);
    }

    public int getRepeatCount() {
        return this.f2674e.f4553c.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.f2674e.f4553c.getRepeatMode();
    }

    public float getScale() {
        return this.f2674e.f4554d;
    }

    public float getSpeed() {
        return this.f2674e.f4553c.f12203c;
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        l lVar = this.f2674e;
        if (drawable2 == lVar) {
            super.invalidateDrawable(lVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && (this.f2681n || this.f2679l)) {
            c();
            this.f2681n = false;
            this.f2679l = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        l lVar = this.f2674e;
        p0.d dVar = lVar.f4553c;
        if (dVar == null ? false : dVar.f12210l) {
            this.f2679l = false;
            this.f2678k = false;
            this.f2677j = false;
            lVar.f4557h.clear();
            lVar.f4553c.cancel();
            b();
            this.f2679l = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        String str = dVar.f2690a;
        this.f2675g = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.f2675g);
        }
        int r02 = dVar.f2691b;
        this.f2676h = r02;
        if (r02 != 0) {
            setAnimation(r02);
        }
        setProgress(dVar.f2692c);
        if (dVar.f2693d) {
            c();
        }
        this.f2674e.f4559k = dVar.f2694e;
        setRepeatMode(dVar.f);
        setRepeatCount(dVar.f2695g);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        float f;
        d dVar = new d(super.onSaveInstanceState());
        dVar.f2690a = this.f2675g;
        dVar.f2691b = this.f2676h;
        l lVar = this.f2674e;
        p0.d dVar2 = lVar.f4553c;
        f fVar = dVar2.f12209k;
        if (fVar == null) {
            f = 0.0f;
        } else {
            float f10 = dVar2.f;
            float f11 = fVar.f4529k;
            f = (f10 - f11) / (fVar.f4530l - f11);
        }
        dVar.f2692c = f;
        boolean z10 = false;
        if ((dVar2 == null ? false : dVar2.f12210l) || (!ViewCompat.isAttachedToWindow(this) && this.f2679l)) {
            z10 = true;
        }
        dVar.f2693d = z10;
        dVar.f2694e = lVar.f4559k;
        p0.d dVar3 = lVar.f4553c;
        dVar.f = dVar3.getRepeatMode();
        dVar.f2695g = dVar3.getRepeatCount();
        return dVar;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@NonNull View view, int r42) {
        if (this.f) {
            boolean zIsShown = isShown();
            l lVar = this.f2674e;
            if (zIsShown) {
                if (this.f2678k) {
                    if (isShown()) {
                        lVar.g();
                        b();
                    } else {
                        this.f2677j = false;
                        this.f2678k = true;
                    }
                } else if (this.f2677j) {
                    c();
                }
                this.f2678k = false;
                this.f2677j = false;
                return;
            }
            p0.d dVar = lVar.f4553c;
            if (dVar == null ? false : dVar.f12210l) {
                this.f2681n = false;
                this.f2679l = false;
                this.f2678k = false;
                this.f2677j = false;
                lVar.f4557h.clear();
                lVar.f4553c.g(true);
                b();
                this.f2678k = true;
            }
        }
    }

    public void setAnimation(@RawRes int r52) {
        t<f> tVarA;
        t<f> tVar;
        this.f2676h = r52;
        this.f2675g = null;
        if (isInEditMode()) {
            tVar = new t<>(new d0.d(this, r52), true);
        } else {
            if (this.f2682p) {
                Context context = getContext();
                String strH = d0.g.h(r52, context);
                tVarA = d0.g.a(strH, new j(new WeakReference(context), context.getApplicationContext(), r52, strH));
            } else {
                Context context2 = getContext();
                HashMap map = d0.g.f4534a;
                tVarA = d0.g.a(null, new j(new WeakReference(context2), context2.getApplicationContext(), r52, null));
            }
            tVar = tVarA;
        }
        setCompositionTask(tVar);
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setCompositionTask(d0.g.a(null, new k(new ByteArrayInputStream(str.getBytes()))));
    }

    public void setAnimationFromUrl(String str) {
        t<f> tVarA;
        if (this.f2682p) {
            Context context = getContext();
            HashMap map = d0.g.f4534a;
            String strE = androidx.browser.browseractions.b.e("url_", str);
            tVarA = d0.g.a(strE, new h(context, str, strE));
        } else {
            tVarA = d0.g.a(null, new h(getContext(), str, null));
        }
        setCompositionTask(tVarA);
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f2674e.f4566s = z10;
    }

    public void setCacheComposition(boolean z10) {
        this.f2682p = z10;
    }

    public void setComposition(@NonNull f fVar) {
        float fMax;
        float fMin;
        l lVar = this.f2674e;
        lVar.setCallback(this);
        this.f2687v = fVar;
        boolean z10 = true;
        this.f2680m = true;
        if (lVar.f4552b == fVar) {
            z10 = false;
        } else {
            lVar.f4568v = false;
            lVar.d();
            lVar.f4552b = fVar;
            lVar.c();
            p0.d dVar = lVar.f4553c;
            boolean z11 = dVar.f12209k == null;
            dVar.f12209k = fVar;
            if (z11) {
                fMax = (int) Math.max(dVar.f12207h, fVar.f4529k);
                fMin = Math.min(dVar.f12208j, fVar.f4530l);
            } else {
                fMax = (int) fVar.f4529k;
                fMin = fVar.f4530l;
            }
            dVar.i(fMax, (int) fMin);
            float f = dVar.f;
            dVar.f = 0.0f;
            dVar.h((int) f);
            dVar.c();
            lVar.p(dVar.getAnimatedFraction());
            lVar.f4554d = lVar.f4554d;
            ArrayList<l.n> arrayList = lVar.f4557h;
            Iterator it = new ArrayList(arrayList).iterator();
            while (it.hasNext()) {
                l.n nVar = (l.n) it.next();
                if (nVar != null) {
                    nVar.run();
                }
                it.remove();
            }
            arrayList.clear();
            fVar.f4520a.f4634a = lVar.f4564q;
            Drawable.Callback callback = lVar.getCallback();
            if (callback instanceof ImageView) {
                ImageView imageView = (ImageView) callback;
                imageView.setImageDrawable(null);
                imageView.setImageDrawable(lVar);
            }
        }
        this.f2680m = false;
        b();
        if (getDrawable() != lVar || z10) {
            if (!z10) {
                p0.d dVar2 = lVar.f4553c;
                boolean z12 = dVar2 != null ? dVar2.f12210l : false;
                setImageDrawable(null);
                setImageDrawable(lVar);
                if (z12) {
                    lVar.g();
                }
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it2 = this.f2684r.iterator();
            while (it2.hasNext()) {
                ((p) it2.next()).a();
            }
        }
    }

    public void setFailureListener(@Nullable o<Throwable> oVar) {
        this.f2672c = oVar;
    }

    public void setFallbackResource(@DrawableRes int r12) {
        this.f2673d = r12;
    }

    public void setFontAssetDelegate(d0.a aVar) {
        h0.a aVar2 = this.f2674e.f4560l;
    }

    public void setFrame(int r22) {
        this.f2674e.h(r22);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f2674e.f = z10;
    }

    public void setImageAssetDelegate(d0.b bVar) {
        h0.b bVar2 = this.f2674e.f4558j;
    }

    public void setImageAssetsFolder(String str) {
        this.f2674e.f4559k = str;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        a();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        a();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int r12) {
        a();
        super.setImageResource(r12);
    }

    public void setMaxFrame(int r22) {
        this.f2674e.i(r22);
    }

    public void setMaxFrame(String str) {
        this.f2674e.j(str);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f2674e.k(f);
    }

    public void setMinAndMaxFrame(String str) {
        this.f2674e.l(str);
    }

    public void setMinFrame(int r22) {
        this.f2674e.m(r22);
    }

    public void setMinFrame(String str) {
        this.f2674e.n(str);
    }

    public void setMinProgress(float f) {
        this.f2674e.o(f);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        l lVar = this.f2674e;
        if (lVar.f4565r == z10) {
            return;
        }
        lVar.f4565r = z10;
        l0.c cVar = lVar.f4562n;
        if (cVar != null) {
            cVar.o(z10);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        l lVar = this.f2674e;
        lVar.f4564q = z10;
        f fVar = lVar.f4552b;
        if (fVar != null) {
            fVar.f4520a.f4634a = z10;
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f2674e.p(f);
    }

    public void setRenderMode(v vVar) {
        this.f2683q = vVar;
        b();
    }

    public void setRepeatCount(int r22) {
        this.f2674e.f4553c.setRepeatCount(r22);
    }

    public void setRepeatMode(int r22) {
        this.f2674e.f4553c.setRepeatMode(r22);
    }

    public void setSafeMode(boolean z10) {
        this.f2674e.f4556g = z10;
    }

    public void setScale(float f) {
        l lVar = this.f2674e;
        lVar.f4554d = f;
        if (getDrawable() == lVar) {
            p0.d dVar = lVar.f4553c;
            boolean z10 = dVar == null ? false : dVar.f12210l;
            setImageDrawable(null);
            setImageDrawable(lVar);
            if (z10) {
                lVar.g();
            }
        }
    }

    public void setSpeed(float f) {
        this.f2674e.f4553c.f12203c = f;
    }

    public void setTextDelegate(x xVar) {
        this.f2674e.getClass();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void unscheduleDrawable(android.graphics.drawable.Drawable r6) {
        /*
            r5 = this;
            boolean r0 = r5.f2680m
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L2a
            d0.l r3 = r5.f2674e
            if (r6 != r3) goto L2a
            p0.d r4 = r3.f4553c
            if (r4 != 0) goto L10
            r4 = 0
            goto L12
        L10:
            boolean r4 = r4.f12210l
        L12:
            if (r4 == 0) goto L2a
            r5.f2681n = r2
            r5.f2679l = r2
            r5.f2678k = r2
            r5.f2677j = r2
            java.util.ArrayList<d0.l$n> r0 = r3.f4557h
            r0.clear()
            p0.d r0 = r3.f4553c
            r0.g(r1)
            r5.b()
            goto L46
        L2a:
            if (r0 != 0) goto L46
            boolean r0 = r6 instanceof d0.l
            if (r0 == 0) goto L46
            r0 = r6
            d0.l r0 = (d0.l) r0
            p0.d r3 = r0.f4553c
            if (r3 != 0) goto L38
            goto L3a
        L38:
            boolean r2 = r3.f12210l
        L3a:
            if (r2 == 0) goto L46
            java.util.ArrayList<d0.l$n> r2 = r0.f4557h
            r2.clear()
            p0.d r0 = r0.f4553c
            r0.g(r1)
        L46:
            super.unscheduleDrawable(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieAnimationView.unscheduleDrawable(android.graphics.drawable.Drawable):void");
    }

    public void setAnimation(String str) {
        t<f> tVarA;
        t<f> tVar;
        this.f2675g = str;
        this.f2676h = 0;
        if (isInEditMode()) {
            tVar = new t<>(new d0.e(this, str), true);
        } else {
            if (this.f2682p) {
                Context context = getContext();
                HashMap map = d0.g.f4534a;
                String strE = androidx.browser.browseractions.b.e("asset_", str);
                tVarA = d0.g.a(strE, new i(context.getApplicationContext(), str, strE));
            } else {
                Context context2 = getContext();
                HashMap map2 = d0.g.f4534a;
                tVarA = d0.g.a(null, new i(context2.getApplicationContext(), str, null));
            }
            tVar = tVarA;
        }
        setCompositionTask(tVar);
    }
}
