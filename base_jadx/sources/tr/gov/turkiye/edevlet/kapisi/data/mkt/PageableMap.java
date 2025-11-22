package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0019\u001a\u00020\tHÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011¨\u0006!"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PageableMap;", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "pageNumber", "pageSize", "paged", "", "sort", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SortMap;", "unpaged", "(IIIZLtr/gov/turkiye/edevlet/kapisi/data/mkt/SortMap;Z)V", "getOffset", "()I", "getPageNumber", "getPageSize", "getPaged", "()Z", "getSort", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SortMap;", "getUnpaged", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class PageableMap {

    @k(name = TypedValues.CycleType.S_WAVE_OFFSET)
    private final int offset;

    @k(name = "pageNumber")
    private final int pageNumber;

    @k(name = "pageSize")
    private final int pageSize;

    @k(name = "paged")
    private final boolean paged;

    @k(name = "sort")
    private final SortMap sort;

    @k(name = "unpaged")
    private final boolean unpaged;

    public PageableMap(int r22, int r32, int r42, boolean z10, SortMap sort, boolean z11) {
        h.f(sort, "sort");
        this.offset = r22;
        this.pageNumber = r32;
        this.pageSize = r42;
        this.paged = z10;
        this.sort = sort;
        this.unpaged = z11;
    }

    public static /* synthetic */ PageableMap copy$default(PageableMap pageableMap, int r52, int r6, int r72, boolean z10, SortMap sortMap, boolean z11, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            r52 = pageableMap.offset;
        }
        if ((r11 & 2) != 0) {
            r6 = pageableMap.pageNumber;
        }
        int r12 = r6;
        if ((r11 & 4) != 0) {
            r72 = pageableMap.pageSize;
        }
        int r02 = r72;
        if ((r11 & 8) != 0) {
            z10 = pageableMap.paged;
        }
        boolean z12 = z10;
        if ((r11 & 16) != 0) {
            sortMap = pageableMap.sort;
        }
        SortMap sortMap2 = sortMap;
        if ((r11 & 32) != 0) {
            z11 = pageableMap.unpaged;
        }
        return pageableMap.copy(r52, r12, r02, z12, sortMap2, z11);
    }

    /* renamed from: component1, reason: from getter */
    public final int getOffset() {
        return this.offset;
    }

    /* renamed from: component2, reason: from getter */
    public final int getPageNumber() {
        return this.pageNumber;
    }

    /* renamed from: component3, reason: from getter */
    public final int getPageSize() {
        return this.pageSize;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getPaged() {
        return this.paged;
    }

    /* renamed from: component5, reason: from getter */
    public final SortMap getSort() {
        return this.sort;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getUnpaged() {
        return this.unpaged;
    }

    public final PageableMap copy(int offset, int pageNumber, int pageSize, boolean paged, SortMap sort, boolean unpaged) {
        h.f(sort, "sort");
        return new PageableMap(offset, pageNumber, pageSize, paged, sort, unpaged);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageableMap)) {
            return false;
        }
        PageableMap pageableMap = (PageableMap) other;
        return this.offset == pageableMap.offset && this.pageNumber == pageableMap.pageNumber && this.pageSize == pageableMap.pageSize && this.paged == pageableMap.paged && h.a(this.sort, pageableMap.sort) && this.unpaged == pageableMap.unpaged;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final int getPageNumber() {
        return this.pageNumber;
    }

    public final int getPageSize() {
        return this.pageSize;
    }

    public final boolean getPaged() {
        return this.paged;
    }

    public final SortMap getSort() {
        return this.sort;
    }

    public final boolean getUnpaged() {
        return this.unpaged;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = ((((this.offset * 31) + this.pageNumber) * 31) + this.pageSize) * 31;
        boolean z10 = this.paged;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r13 = (this.sort.hashCode() + ((r02 + r12) * 31)) * 31;
        boolean z11 = this.unpaged;
        return r13 + (z11 ? 1 : z11 ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("PageableMap(offset=");
        sb2.append(this.offset);
        sb2.append(", pageNumber=");
        sb2.append(this.pageNumber);
        sb2.append(", pageSize=");
        sb2.append(this.pageSize);
        sb2.append(", paged=");
        sb2.append(this.paged);
        sb2.append(", sort=");
        sb2.append(this.sort);
        sb2.append(", unpaged=");
        return b.f(sb2, this.unpaged, ')');
    }
}
