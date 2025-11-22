.class public final Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003JG\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u00072\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0016\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;",
        "",
        "nameSurname",
        "",
        "userProfileInfo",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;",
        "isTwoFactorLogin",
        "",
        "hasTwoFactorUsageRight",
        "",
        "canShowBanner",
        "isOTPActive",
        "(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIII)V",
        "getCanShowBanner",
        "()I",
        "getHasTwoFactorUsageRight",
        "()Z",
        "getNameSurname",
        "()Ljava/lang/String;",
        "getUserProfileInfo",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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

.field private final nameSurname:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "adSoyad"
    .end annotation
.end field

.field private final userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;
    .annotation runtime Ll8/k;
        name = "kullaniciBilgisi"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIII)V
    .locals 1

    const-string v0, "nameSurname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    iput-boolean p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    iput p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    iput p5, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    iput p6, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIIIILkotlin/jvm/internal/d;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;-><init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIII)V

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIIIILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->copy(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIII)Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIII)Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;
    .locals 8

    const-string v0, "nameSurname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;-><init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;ZIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    iget-boolean v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    iget v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    iget p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCanShowBanner()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    return v0
.end method

.method public final getHasTwoFactorUsageRight()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    return v0
.end method

.method public final getNameSurname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isOTPActive()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    return v0
.end method

.method public final isTwoFactorLogin()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ProfileContactData(nameSurname="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->nameSurname:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", userProfileInfo="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->userProfileInfo:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isTwoFactorLogin="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", hasTwoFactorUsageRight="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->hasTwoFactorUsageRight:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", canShowBanner="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->canShowBanner:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isOTPActive="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isOTPActive:I

    .line 59
    .line 60
    const/16 v2, 0x29

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/a;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
