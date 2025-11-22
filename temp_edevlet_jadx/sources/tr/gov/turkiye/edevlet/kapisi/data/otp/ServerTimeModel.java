package tr.gov.turkiye.edevlet.kapisi.data.otp;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;", "", "resultCode", "", "time", "(Ljava/lang/String;Ljava/lang/String;)V", "getResultCode", "()Ljava/lang/String;", "getTime", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ServerTimeModel {

    @k(name = "resultCode")
    private final String resultCode;

    @k(name = "time")
    private final String time;

    public ServerTimeModel(String resultCode, String str) {
        h.f(resultCode, "resultCode");
        this.resultCode = resultCode;
        this.time = str;
    }

    public static /* synthetic */ ServerTimeModel copy$default(ServerTimeModel serverTimeModel, String str, String str2, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = serverTimeModel.resultCode;
        }
        if ((r32 & 2) != 0) {
            str2 = serverTimeModel.time;
        }
        return serverTimeModel.copy(str, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component2, reason: from getter */
    public final String getTime() {
        return this.time;
    }

    public final ServerTimeModel copy(String resultCode, String time) {
        h.f(resultCode, "resultCode");
        return new ServerTimeModel(resultCode, time);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServerTimeModel)) {
            return false;
        }
        ServerTimeModel serverTimeModel = (ServerTimeModel) other;
        return h.a(this.resultCode, serverTimeModel.resultCode) && h.a(this.time, serverTimeModel.time);
    }

    public final String getResultCode() {
        return this.resultCode;
    }

    public final String getTime() {
        return this.time;
    }

    public int hashCode() {
        int r02 = this.resultCode.hashCode() * 31;
        String str = this.time;
        return r02 + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ServerTimeModel(resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", time=");
        return a.h(sb2, this.time, ')');
    }
}
