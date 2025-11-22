package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import l8.k;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressSortInfo;", "", "empty", "", "sorted", "unsorted", "(ZZZ)V", "getEmpty", "()Z", "getSorted", "getUnsorted", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InProgressSortInfo {

    @k(name = "empty")
    private final boolean empty;

    @k(name = "sorted")
    private final boolean sorted;

    @k(name = "unsorted")
    private final boolean unsorted;

    public InProgressSortInfo(boolean z10, boolean z11, boolean z12) {
        this.empty = z10;
        this.sorted = z11;
        this.unsorted = z12;
    }

    public static /* synthetic */ InProgressSortInfo copy$default(InProgressSortInfo inProgressSortInfo, boolean z10, boolean z11, boolean z12, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            z10 = inProgressSortInfo.empty;
        }
        if ((r42 & 2) != 0) {
            z11 = inProgressSortInfo.sorted;
        }
        if ((r42 & 4) != 0) {
            z12 = inProgressSortInfo.unsorted;
        }
        return inProgressSortInfo.copy(z10, z11, z12);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getEmpty() {
        return this.empty;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getSorted() {
        return this.sorted;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getUnsorted() {
        return this.unsorted;
    }

    public final InProgressSortInfo copy(boolean empty, boolean sorted, boolean unsorted) {
        return new InProgressSortInfo(empty, sorted, unsorted);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InProgressSortInfo)) {
            return false;
        }
        InProgressSortInfo inProgressSortInfo = (InProgressSortInfo) other;
        return this.empty == inProgressSortInfo.empty && this.sorted == inProgressSortInfo.sorted && this.unsorted == inProgressSortInfo.unsorted;
    }

    public final boolean getEmpty() {
        return this.empty;
    }

    public final boolean getSorted() {
        return this.sorted;
    }

    public final boolean getUnsorted() {
        return this.unsorted;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z10 = this.empty;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int r03 = r02 * 31;
        ?? r22 = this.sorted;
        int r23 = r22;
        if (r22 != 0) {
            r23 = 1;
        }
        int r04 = (r03 + r23) * 31;
        boolean z11 = this.unsorted;
        return r04 + (z11 ? 1 : z11 ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InProgressSortInfo(empty=");
        sb2.append(this.empty);
        sb2.append(", sorted=");
        sb2.append(this.sorted);
        sb2.append(", unsorted=");
        return b.f(sb2, this.unsorted, ')');
    }
}
