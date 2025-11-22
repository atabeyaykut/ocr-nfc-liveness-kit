package xf;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.epoxy.g;
import com.airbnb.epoxy.u;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes3.dex */
public final class n extends com.airbnb.epoxy.u<m> implements com.airbnb.epoxy.y<m> {

    /* renamed from: a, reason: collision with root package name */
    public final BitSet f19230a = new BitSet(7);

    /* renamed from: b, reason: collision with root package name */
    public float f19231b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    @Dimension(unit = 0)
    public int f19232c = -1;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public g.b f19233d = null;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public List<? extends com.airbnb.epoxy.u<?>> f19234e;

    @Override // com.airbnb.epoxy.u
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void bind(m mVar) {
        super.bind(mVar);
        BitSet bitSet = this.f19230a;
        if (bitSet.get(3)) {
            mVar.setPaddingRes(0);
        } else if (!bitSet.get(4) && bitSet.get(5)) {
            mVar.setPadding(this.f19233d);
        } else {
            mVar.setPaddingDp(this.f19232c);
        }
        mVar.setHasFixedSize(false);
        if (!bitSet.get(1) && bitSet.get(2)) {
            mVar.setInitialPrefetchItemCount(0);
        } else {
            mVar.setNumViewsToShowOnScreen(this.f19231b);
        }
        mVar.setModels(this.f19234e);
    }

    @Override // com.airbnb.epoxy.u
    public final void addTo(com.airbnb.epoxy.p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
        if (!this.f19230a.get(6)) {
            throw new IllegalStateException("A value is required for setModels");
        }
    }

    public final n b(@Nullable String str) {
        super.m272id(str);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0065, code lost:
    
        if (r1.get(5) == false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0097  */
    @Override // com.airbnb.epoxy.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void bind(xf.m r6, com.airbnb.epoxy.u r7) {
        /*
            r5 = this;
            xf.m r6 = (xf.m) r6
            boolean r0 = r7 instanceof xf.n
            if (r0 != 0) goto Lb
            r5.bind(r6)
            goto Lb0
        Lb:
            xf.n r7 = (xf.n) r7
            super.bind(r6)
            java.util.BitSet r0 = r5.f19230a
            r1 = 3
            boolean r2 = r0.get(r1)
            if (r2 == 0) goto L1d
            r7.getClass()
            goto L6c
        L1d:
            r2 = 4
            boolean r3 = r0.get(r2)
            if (r3 == 0) goto L2b
            int r1 = r5.f19232c
            int r2 = r7.f19232c
            if (r1 == r2) goto L6c
            goto L69
        L2b:
            r3 = 5
            boolean r4 = r0.get(r3)
            if (r4 == 0) goto L51
            java.util.BitSet r1 = r7.f19230a
            boolean r1 = r1.get(r3)
            if (r1 == 0) goto L4b
            com.airbnb.epoxy.g$b r1 = r5.f19233d
            if (r1 == 0) goto L47
            com.airbnb.epoxy.g$b r2 = r7.f19233d
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L6c
            goto L4b
        L47:
            com.airbnb.epoxy.g$b r1 = r7.f19233d
            if (r1 == 0) goto L6c
        L4b:
            com.airbnb.epoxy.g$b r1 = r5.f19233d
            r6.setPadding(r1)
            goto L6c
        L51:
            java.util.BitSet r4 = r7.f19230a
            boolean r1 = r4.get(r1)
            if (r1 != 0) goto L67
            java.util.BitSet r1 = r7.f19230a
            boolean r2 = r1.get(r2)
            if (r2 != 0) goto L67
            boolean r1 = r1.get(r3)
            if (r1 == 0) goto L6c
        L67:
            int r1 = r5.f19232c
        L69:
            r6.setPaddingDp(r1)
        L6c:
            r7.getClass()
            r1 = 1
            boolean r2 = r0.get(r1)
            if (r2 == 0) goto L81
            float r0 = r7.f19231b
            float r1 = r5.f19231b
            int r0 = java.lang.Float.compare(r0, r1)
            if (r0 == 0) goto L9c
            goto L97
        L81:
            r2 = 2
            boolean r0 = r0.get(r2)
            if (r0 == 0) goto L89
            goto L9c
        L89:
            java.util.BitSet r0 = r7.f19230a
            boolean r1 = r0.get(r1)
            if (r1 != 0) goto L97
            boolean r0 = r0.get(r2)
            if (r0 == 0) goto L9c
        L97:
            float r0 = r5.f19231b
            r6.setNumViewsToShowOnScreen(r0)
        L9c:
            java.util.List<? extends com.airbnb.epoxy.u<?>> r0 = r5.f19234e
            java.util.List<? extends com.airbnb.epoxy.u<?>> r7 = r7.f19234e
            if (r0 == 0) goto La9
            boolean r7 = r0.equals(r7)
            if (r7 != 0) goto Lb0
            goto Lab
        La9:
            if (r7 == 0) goto Lb0
        Lab:
            java.util.List<? extends com.airbnb.epoxy.u<?>> r7 = r5.f19234e
            r6.setModels(r7)
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: xf.n.bind(java.lang.Object, com.airbnb.epoxy.u):void");
    }

    @Override // com.airbnb.epoxy.u
    public final View buildView(ViewGroup viewGroup) {
        m mVar = new m(viewGroup.getContext());
        mVar.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        return mVar;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n) || !super.equals(obj)) {
            return false;
        }
        n nVar = (n) obj;
        nVar.getClass();
        if (Float.compare(nVar.f19231b, this.f19231b) != 0 || this.f19232c != nVar.f19232c) {
            return false;
        }
        g.b bVar = this.f19233d;
        if (bVar == null ? nVar.f19233d != null : !bVar.equals(nVar.f19233d)) {
            return false;
        }
        List<? extends com.airbnb.epoxy.u<?>> list = this.f19234e;
        List<? extends com.airbnb.epoxy.u<?>> list2 = nVar.f19234e;
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
    public final void handlePostBind(m mVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePreBind(com.airbnb.epoxy.x xVar, m mVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public final int hashCode() {
        int r02 = ((((((((((super.hashCode() * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31;
        float f = this.f19231b;
        int r03 = (((((((r02 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31) + 0) * 31) + 0) * 31) + this.f19232c) * 31;
        g.b bVar = this.f19233d;
        int r04 = (r03 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        List<? extends com.airbnb.epoxy.u<?>> list = this.f19234e;
        return r04 + (list != null ? list.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<m> hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<m> m270id(long j10) {
        super.m270id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout */
    public final com.airbnb.epoxy.u<m> m276layout(@LayoutRes int r22) {
        throw new UnsupportedOperationException("Layout resources are unsupported with programmatic views.");
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityChanged(float f, float f10, int r92, int r10, m mVar) {
        super.onVisibilityChanged(f, f10, r92, r10, mVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityStateChanged(int r12, m mVar) {
        super.onVisibilityStateChanged(r12, mVar);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<m> reset() {
        this.f19230a.clear();
        this.f19231b = 0.0f;
        this.f19232c = -1;
        this.f19233d = null;
        this.f19234e = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean shouldSaveViewState() {
        return true;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<m> show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride */
    public final com.airbnb.epoxy.u<m> m283spanSizeOverride(@Nullable u.c cVar) {
        super.m283spanSizeOverride(null);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final String toString() {
        return "GridCarouselModel_{hasFixedSize_Boolean=false, numViewsToShowOnScreen_Float=" + this.f19231b + ", initialPrefetchItemCount_Int=0, paddingRes_Int=0, paddingDp_Int=" + this.f19232c + ", padding_Padding=" + this.f19233d + ", models_List=" + this.f19234e + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.u
    public final void unbind(m mVar) {
        m mVar2 = mVar;
        super.unbind(mVar2);
        mVar2.a();
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<m> m271id(long j10, long j11) {
        super.m271id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<m> show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<m> m272id(@Nullable CharSequence charSequence) {
        super.m272id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<m> m273id(@Nullable CharSequence charSequence, long j10) {
        super.m273id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<m> m274id(@Nullable CharSequence charSequence, @Nullable CharSequence[] charSequenceArr) {
        super.m274id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<m> m275id(@Nullable Number[] numberArr) {
        super.m275id(numberArr);
        return this;
    }
}
