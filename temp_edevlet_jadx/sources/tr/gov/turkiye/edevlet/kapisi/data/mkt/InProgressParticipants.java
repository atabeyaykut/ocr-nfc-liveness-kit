package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import android.support.v4.media.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressParticipants;", "", "participantList", "", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressParticipantArray;", "(Ljava/util/List;)V", "getParticipantList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InProgressParticipants {

    @k(name = "myArrayList")
    private final List<InProgressParticipantArray> participantList;

    public InProgressParticipants(List<InProgressParticipantArray> participantList) {
        h.f(participantList, "participantList");
        this.participantList = participantList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InProgressParticipants copy$default(InProgressParticipants inProgressParticipants, List list, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            list = inProgressParticipants.participantList;
        }
        return inProgressParticipants.copy(list);
    }

    public final List<InProgressParticipantArray> component1() {
        return this.participantList;
    }

    public final InProgressParticipants copy(List<InProgressParticipantArray> participantList) {
        h.f(participantList, "participantList");
        return new InProgressParticipants(participantList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof InProgressParticipants) && h.a(this.participantList, ((InProgressParticipants) other).participantList);
    }

    public final List<InProgressParticipantArray> getParticipantList() {
        return this.participantList;
    }

    public int hashCode() {
        return this.participantList.hashCode();
    }

    public String toString() {
        return a.j(new StringBuilder("InProgressParticipants(participantList="), this.participantList, ')');
    }
}
