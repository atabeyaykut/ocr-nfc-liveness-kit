package wf;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.epoxy.p;
import com.airbnb.epoxy.u;
import com.airbnb.epoxy.x;
import com.airbnb.epoxy.y;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes3.dex */
public final class b extends u<a> implements y<a> {

    /* renamed from: a, reason: collision with root package name */
    public final BitSet f18892a = new BitSet(7);

    /* renamed from: b, reason: collision with root package name */
    public float f18893b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    @Dimension(unit = 0)
    public int f18894c = -1;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public List<? extends u<?>> f18895d;

    @Override // com.airbnb.epoxy.u
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void bind(a aVar) {
        super.bind(aVar);
        BitSet bitSet = this.f18892a;
        if (bitSet.get(3)) {
            aVar.setPaddingRes(0);
        } else if (!bitSet.get(4) && bitSet.get(5)) {
            aVar.setPadding(null);
        } else {
            aVar.setPaddingDp(this.f18894c);
        }
        aVar.setHasFixedSize(false);
        if (!bitSet.get(1) && bitSet.get(2)) {
            aVar.setInitialPrefetchItemCount(0);
        } else {
            aVar.setNumViewsToShowOnScreen(this.f18893b);
        }
        aVar.setModels(this.f18895d);
    }

    @Override // com.airbnb.epoxy.u
    public final void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
        if (!this.f18892a.get(6)) {
            throw new IllegalStateException("A value is required for setModels");
        }
    }

    public final void b(@Nullable String str) {
        super.id(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        if (r1.get(5) == false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0086  */
    @Override // com.airbnb.epoxy.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void bind(wf.a r6, com.airbnb.epoxy.u r7) {
        /*
            r5 = this;
            wf.a r6 = (wf.a) r6
            boolean r0 = r7 instanceof wf.b
            if (r0 != 0) goto Lb
            r5.bind(r6)
            goto L9f
        Lb:
            wf.b r7 = (wf.b) r7
            super.bind(r6)
            java.util.BitSet r0 = r5.f18892a
            r1 = 3
            boolean r2 = r0.get(r1)
            if (r2 == 0) goto L1d
            r7.getClass()
            goto L5b
        L1d:
            r2 = 4
            boolean r3 = r0.get(r2)
            if (r3 == 0) goto L2b
            int r1 = r5.f18894c
            int r2 = r7.f18894c
            if (r1 == r2) goto L5b
            goto L58
        L2b:
            r3 = 5
            boolean r4 = r0.get(r3)
            if (r4 == 0) goto L40
            java.util.BitSet r1 = r7.f18892a
            boolean r1 = r1.get(r3)
            if (r1 == 0) goto L3b
            goto L5b
        L3b:
            r1 = 0
            r6.setPadding(r1)
            goto L5b
        L40:
            java.util.BitSet r4 = r7.f18892a
            boolean r1 = r4.get(r1)
            if (r1 != 0) goto L56
            java.util.BitSet r1 = r7.f18892a
            boolean r2 = r1.get(r2)
            if (r2 != 0) goto L56
            boolean r1 = r1.get(r3)
            if (r1 == 0) goto L5b
        L56:
            int r1 = r5.f18894c
        L58:
            r6.setPaddingDp(r1)
        L5b:
            r7.getClass()
            r1 = 1
            boolean r2 = r0.get(r1)
            if (r2 == 0) goto L70
            float r0 = r7.f18893b
            float r1 = r5.f18893b
            int r0 = java.lang.Float.compare(r0, r1)
            if (r0 == 0) goto L8b
            goto L86
        L70:
            r2 = 2
            boolean r0 = r0.get(r2)
            if (r0 == 0) goto L78
            goto L8b
        L78:
            java.util.BitSet r0 = r7.f18892a
            boolean r1 = r0.get(r1)
            if (r1 != 0) goto L86
            boolean r0 = r0.get(r2)
            if (r0 == 0) goto L8b
        L86:
            float r0 = r5.f18893b
            r6.setNumViewsToShowOnScreen(r0)
        L8b:
            java.util.List<? extends com.airbnb.epoxy.u<?>> r0 = r5.f18895d
            java.util.List<? extends com.airbnb.epoxy.u<?>> r7 = r7.f18895d
            if (r0 == 0) goto L98
            boolean r7 = r0.equals(r7)
            if (r7 != 0) goto L9f
            goto L9a
        L98:
            if (r7 == 0) goto L9f
        L9a:
            java.util.List<? extends com.airbnb.epoxy.u<?>> r7 = r5.f18895d
            r6.setModels(r7)
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: wf.b.bind(java.lang.Object, com.airbnb.epoxy.u):void");
    }

    @Override // com.airbnb.epoxy.u
    public final View buildView(ViewGroup viewGroup) {
        a aVar = new a(viewGroup.getContext());
        aVar.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        return aVar;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b) || !super.equals(obj)) {
            return false;
        }
        b bVar = (b) obj;
        bVar.getClass();
        if (Float.compare(bVar.f18893b, this.f18893b) != 0 || this.f18894c != bVar.f18894c) {
            return false;
        }
        List<? extends u<?>> list = this.f18895d;
        List<? extends u<?>> list2 = bVar.f18895d;
        return list == null ? list2 == null : list.equals(list2);
    }

    @Override // com.airbnb.epoxy.u
    @LayoutRes
    public final int getDefaultLayout() {
        throw new UnsupportedOperationException("Layout resources are unsupported for views created programmatically.");
    }

    @Override // com.airbnb.epoxy.u
    public final int getSpanSize(int r12, int r22, int r32) {
        return r12;
    }

    @Override // com.airbnb.epoxy.u
    public final int getViewType() {
        return 0;
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePostBind(a aVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePreBind(x xVar, a aVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public final int hashCode() {
        int r02 = ((((((((((super.hashCode() * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31;
        float f = this.f18893b;
        int r03 = (((((((((r02 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31) + 0) * 31) + 0) * 31) + this.f18894c) * 31) + 0) * 31;
        List<? extends u<?>> list = this.f18895d;
        return r03 + (list != null ? list.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> id(long j10) {
        super.id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> layout(@LayoutRes int r22) {
        throw new UnsupportedOperationException("Layout resources are unsupported with programmatic views.");
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityChanged(float f, float f10, int r92, int r10, a aVar) {
        super.onVisibilityChanged(f, f10, r92, r10, aVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityStateChanged(int r12, a aVar) {
        super.onVisibilityStateChanged(r12, aVar);
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> reset() {
        this.f18892a.clear();
        this.f18893b = 0.0f;
        this.f18894c = -1;
        this.f18895d = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean shouldSaveViewState() {
        return true;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> spanSizeOverride(@Nullable u.c cVar) {
        super.spanSizeOverride(null);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final String toString() {
        return "CarouselNoSnapModel_{hasFixedSize_Boolean=false, numViewsToShowOnScreen_Float=" + this.f18893b + ", initialPrefetchItemCount_Int=0, paddingRes_Int=0, paddingDp_Int=" + this.f18894c + ", padding_Padding=null, models_List=" + this.f18895d + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.u
    public final void unbind(a aVar) {
        a aVar2 = aVar;
        super.unbind(aVar2);
        aVar2.a();
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> id(long j10, long j11) {
        super.id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> id(@Nullable CharSequence charSequence) {
        super.id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> id(@Nullable CharSequence charSequence, long j10) {
        super.id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> id(@Nullable CharSequence charSequence, @Nullable CharSequence[] charSequenceArr) {
        super.id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> id(@Nullable Number[] numberArr) {
        super.id(numberArr);
        return this;
    }
}
