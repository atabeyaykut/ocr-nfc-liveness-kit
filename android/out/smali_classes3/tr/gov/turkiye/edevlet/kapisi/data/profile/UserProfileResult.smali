.class public final Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J=\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0016\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0016\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000eR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;",
        "",
        "userProfileInfo",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;",
        "isTwoFactorLogin",
        "",
        "hasTwoFactorUsageRight",
        "",
        "canShowBanner",
        "isOTPActive",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIII)V",
        "getCanShowBanner",
        "()I",
        "getHasTwoFactorUsageRight",
        "()Z",
        "getUserProfileInfo",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final canShowBanner:I
    .annotation runtime Ll8/k;
        name = "canShowBanner"
    .end annotation
.end field

.field private final hasTwoFactorUsageRight:I
    .annotation runtime Ll8/k;
        name = "twoFactorUser"
    .end annotation
.end field

.field private final isOTPActive:I
    .annotation runtime Ll8/k;
        name = "ikiAsamaOtpAcikMi"
    .end annotation
.end field

.field private final isTwoFactorLogin:Z
    .annotation runtime Ll8/k;
        name = "twoFactorLogin"
    .end annotation
.end field

.field private final userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;
    .annotation runtime Ll8/k;
        name = "kullaniciBilgisi"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    iput-boolean p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    iput p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    iput p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    iput p5, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    return-void
.end method

.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIIIILkotlin/jvm/internal/d;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIII)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIIIILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->copy(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIII)Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    return v0
.end method

.method public final copy(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIII)Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;
    .locals 7

    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;ZIII)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    iget p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCanShowBanner()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    return v0
.end method

.method public final getHasTwoFactorUsageRight()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    return v0
.end method

.method public final getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isOTPActive()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    return v0
.end method

.method public final isTwoFactorLogin()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UserProfileResult(userProfileInfo="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isTwoFactorLogin="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isTwoFactorLogin:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", hasTwoFactorUsageRight="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->hasTwoFactorUsageRight:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", canShowBanner="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->canShowBanner:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isOTPActive="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;->isOTPActive:I

    .line 49
    .line 50
    const/16 v2, 0x29

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/a;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
