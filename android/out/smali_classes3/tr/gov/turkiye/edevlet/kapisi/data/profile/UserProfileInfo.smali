.class public final Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;",
        "",
        "identityInformation",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;",
        "addressInformation",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;",
        "personalInformation",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)V",
        "getAddressInformation",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;",
        "getIdentityInformation",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;",
        "getPersonalInformation",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;
    .annotation runtime Ll8/k;
        name = "adresBilgisi"
    .end annotation
.end field

.field private final identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;
    .annotation runtime Ll8/k;
        name = "kimlikBilgisi"
    .end annotation
.end field

.field private final personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;
    .annotation runtime Ll8/k;
        name = "kisiselBilgiler"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)V
    .locals 1

    const-string v0, "identityInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressInformation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "personalInformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->copy(Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    return-object v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    return-object v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    return-object v0
.end method

.method public final copy(Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;
    .locals 1

    const-string v0, "identityInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressInformation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "personalInformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    invoke-direct {v0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAddressInformation()Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    return-object v0
.end method

.method public final getIdentityInformation()Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    return-object v0
.end method

.method public final getPersonalInformation()Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserProfileInfo(identityInformation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->identityInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/IdentityInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addressInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->addressInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileInfo;->personalInformation:Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
