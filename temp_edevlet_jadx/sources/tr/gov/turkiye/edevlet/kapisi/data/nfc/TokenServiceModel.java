package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;", "", "isSuccess", "", "login", "", "tokenResult", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;", "(ZILtr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;)V", "()Z", "setSuccess", "(Z)V", "getLogin", "()I", "setLogin", "(I)V", "getTokenResult", "()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;", "setTokenResult", "(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class TokenServiceModel {

    @k(name = "return")
    private boolean isSuccess;

    @k(name = "login")
    private int login;

    @k(name = "data")
    private TokenServiceResult tokenResult;

    public TokenServiceModel(boolean z10, int r22, TokenServiceResult tokenServiceResult) {
        this.isSuccess = z10;
        this.login = r22;
        this.tokenResult = tokenServiceResult;
    }

    public /* synthetic */ TokenServiceModel(boolean z10, int r32, TokenServiceResult tokenServiceResult, int r52, d dVar) {
        this((r52 & 1) != 0 ? false : z10, (r52 & 2) != 0 ? 0 : r32, tokenServiceResult);
    }

    public static /* synthetic */ TokenServiceModel copy$default(TokenServiceModel tokenServiceModel, boolean z10, int r22, TokenServiceResult tokenServiceResult, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            z10 = tokenServiceModel.isSuccess;
        }
        if ((r42 & 2) != 0) {
            r22 = tokenServiceModel.login;
        }
        if ((r42 & 4) != 0) {
            tokenServiceResult = tokenServiceModel.tokenResult;
        }
        return tokenServiceModel.copy(z10, r22, tokenServiceResult);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component3, reason: from getter */
    public final TokenServiceResult getTokenResult() {
        return this.tokenResult;
    }

    public final TokenServiceModel copy(boolean isSuccess, int login, TokenServiceResult tokenResult) {
        return new TokenServiceModel(isSuccess, login, tokenResult);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TokenServiceModel)) {
            return false;
        }
        TokenServiceModel tokenServiceModel = (TokenServiceModel) other;
        return this.isSuccess == tokenServiceModel.isSuccess && this.login == tokenServiceModel.login && h.a(this.tokenResult, tokenServiceModel.tokenResult);
    }

    public final int getLogin() {
        return this.login;
    }

    public final TokenServiceResult getTokenResult() {
        return this.tokenResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z10 = this.isSuccess;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int r03 = ((r02 * 31) + this.login) * 31;
        TokenServiceResult tokenServiceResult = this.tokenResult;
        return r03 + (tokenServiceResult == null ? 0 : tokenServiceResult.hashCode());
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public final void setLogin(int r12) {
        this.login = r12;
    }

    public final void setSuccess(boolean z10) {
        this.isSuccess = z10;
    }

    public final void setTokenResult(TokenServiceResult tokenServiceResult) {
        this.tokenResult = tokenServiceResult;
    }

    public String toString() {
        return "TokenServiceModel(isSuccess=" + this.isSuccess + ", login=" + this.login + ", tokenResult=" + this.tokenResult + ')';
    }
}
