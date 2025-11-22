package kg;

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
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes3.dex */
public final class b extends u<a> implements y<a> {

    /* renamed from: a, reason: collision with root package name */
    public final BitSet f8930a = new BitSet(7);

    /* renamed from: b, reason: collision with root package name */
    @Dimension(unit = 0)
    public int f8931b = -1;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public List<? extends u<?>> f8932c;

    @Override // com.airbnb.epoxy.u
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void bind(a aVar) {
        super.bind(aVar);
        BitSet bitSet = this.f8930a;
        if (bitSet.get(3)) {
            aVar.setPaddingRes(0);
        } else if (!bitSet.get(4) && bitSet.get(5)) {
            aVar.setPadding(null);
        } else {
            aVar.setPaddingDp(this.f8931b);
        }
        aVar.setHasFixedSize(false);
        if (!bitSet.get(1) && bitSet.get(2)) {
            aVar.setInitialPrefetchItemCount(0);
        } else {
            aVar.setNumViewsToShowOnScreen(0.0f);
        }
        aVar.setModels(this.f8932c);
    }

    @Override // com.airbnb.epoxy.u
    public final void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
        if (!this.f8930a.get(6)) {
            throw new IllegalStateException("A value is required for setModels");
        }
    }

    public final b b() {
        super.m310id("profileOperationGrid");
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        if (r1.get(5) == false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0083  */
    @Override // com.airbnb.epoxy.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void bind(kg.a r6, com.airbnb.epoxy.u r7) {
        /*
            r5 = this;
            kg.a r6 = (kg.a) r6
            boolean r0 = r7 instanceof kg.b
            if (r0 != 0) goto Lb
            r5.bind(r6)
            goto L9a
        Lb:
            kg.b r7 = (kg.b) r7
            super.bind(r6)
            java.util.BitSet r0 = r5.f8930a
            r1 = 3
            boolean r2 = r0.get(r1)
            if (r2 == 0) goto L1d
            r7.getClass()
            goto L5b
        L1d:
            r2 = 4
            boolean r3 = r0.get(r2)
            if (r3 == 0) goto L2b
            int r1 = r5.f8931b
            int r2 = r7.f8931b
            if (r1 == r2) goto L5b
            goto L58
        L2b:
            r3 = 5
            boolean r4 = r0.get(r3)
            if (r4 == 0) goto L40
            java.util.BitSet r1 = r7.f8930a
            boolean r1 = r1.get(r3)
            if (r1 == 0) goto L3b
            goto L5b
        L3b:
            r1 = 0
            r6.setPadding(r1)
            goto L5b
        L40:
            java.util.BitSet r4 = r7.f8930a
            boolean r1 = r4.get(r1)
            if (r1 != 0) goto L56
            java.util.BitSet r1 = r7.f8930a
            boolean r2 = r1.get(r2)
            if (r2 != 0) goto L56
            boolean r1 = r1.get(r3)
            if (r1 == 0) goto L5b
        L56:
            int r1 = r5.f8931b
        L58:
            r6.setPaddingDp(r1)
        L5b:
            r7.getClass()
            r1 = 1
            boolean r2 = r0.get(r1)
            r3 = 0
            if (r2 == 0) goto L6d
            int r0 = java.lang.Float.compare(r3, r3)
            if (r0 == 0) goto L86
            goto L83
        L6d:
            r2 = 2
            boolean r0 = r0.get(r2)
            if (r0 == 0) goto L75
            goto L86
        L75:
            java.util.BitSet r0 = r7.f8930a
            boolean r1 = r0.get(r1)
            if (r1 != 0) goto L83
            boolean r0 = r0.get(r2)
            if (r0 == 0) goto L86
        L83:
            r6.setNumViewsToShowOnScreen(r3)
        L86:
            java.util.List<? extends com.airbnb.epoxy.u<?>> r0 = r5.f8932c
            java.util.List<? extends com.airbnb.epoxy.u<?>> r7 = r7.f8932c
            if (r0 == 0) goto L93
            boolean r7 = r0.equals(r7)
            if (r7 != 0) goto L9a
            goto L95
        L93:
            if (r7 == 0) goto L9a
        L95:
            java.util.List<? extends com.airbnb.epoxy.u<?>> r7 = r5.f8932c
            r6.setModels(r7)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kg.b.bind(java.lang.Object, com.airbnb.epoxy.u):void");
    }

    @Override // com.airbnb.epoxy.u
    public final View buildView(ViewGroup viewGroup) {
        a aVar = new a(viewGroup.getContext());
        aVar.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        return aVar;
    }

    public final b c(@NonNull ArrayList arrayList) {
        this.f8930a.set(6);
        onMutation();
        this.f8932c = arrayList;
        return this;
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
        if (Float.compare(0.0f, 0.0f) != 0 || this.f8931b != bVar.f8931b) {
            return false;
        }
        List<? extends u<?>> list = this.f8932c;
        List<? extends u<?>> list2 = bVar.f8932c;
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
        int r02 = ((((((((((((((((((((super.hashCode() * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + this.f8931b) * 31) + 0) * 31;
        List<? extends u<?>> list = this.f8932c;
        return r02 + (list != null ? list.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final u<a> m308id(long j10) {
        super.m308id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout */
    public final u<a> m314layout(@LayoutRes int r22) {
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
        this.f8930a.clear();
        this.f8931b = -1;
        this.f8932c = null;
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
    /* renamed from: spanSizeOverride */
    public final u<a> m319spanSizeOverride(@Nullable u.c cVar) {
        super.m319spanSizeOverride(null);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final String toString() {
        return "GridManagerModel_{hasFixedSize_Boolean=false, numViewsToShowOnScreen_Float=0.0, initialPrefetchItemCount_Int=0, paddingRes_Int=0, paddingDp_Int=" + this.f8931b + ", padding_Padding=null, models_List=" + this.f8932c + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.u
    public final void unbind(a aVar) {
        a aVar2 = aVar;
        super.unbind(aVar2);
        aVar2.a();
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final u<a> m309id(long j10, long j11) {
        super.m309id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final u<a> show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final u<a> m310id(@Nullable CharSequence charSequence) {
        super.m310id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final u<a> m311id(@Nullable CharSequence charSequence, long j10) {
        super.m311id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final u<a> m312id(@Nullable CharSequence charSequence, @Nullable CharSequence[] charSequenceArr) {
        super.m312id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final u<a> mo313id(@Nullable Number[] numberArr) {
        super.mo313id(numberArr);
        return this;
    }
}
