.class public Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/s0;
.implements Lio/realm/h1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0004\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;",
        "Lio/realm/s0;",
        "",
        "cityId",
        "I",
        "getCityId",
        "()I",
        "setCityId",
        "(I)V",
        "cityCode",
        "getCityCode",
        "setCityCode",
        "",
        "cityName",
        "Ljava/lang/String;",
        "getCityName",
        "()Ljava/lang/String;",
        "setCityName",
        "(Ljava/lang/String;)V",
        "categoryCode",
        "getCategoryCode",
        "setCategoryCode",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private categoryCode:I

.field private cityCode:I

.field private cityId:I

.field private cityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->a()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmSet$cityName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCategoryCode()I
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmGet$categoryCode()I

    move-result v0

    return v0
.end method

.method public final getCityCode()I
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmGet$cityCode()I

    move-result v0

    return v0
.end method

.method public final getCityId()I
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmGet$cityId()I

    move-result v0

    return v0
.end method

.method public final getCityName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmGet$cityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$categoryCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->categoryCode:I

    return v0
.end method

.method public realmGet$cityCode()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->cityCode:I

    return v0
.end method

.method public realmGet$cityId()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->cityId:I

    return v0
.end method

.method public realmGet$cityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$categoryCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->categoryCode:I

    return-void
.end method

.method public realmSet$cityCode(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->cityCode:I

    return-void
.end method

.method public realmSet$cityId(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->cityId:I

    return-void
.end method

.method public realmSet$cityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->cityName:Ljava/lang/String;

    return-void
.end method

.method public final setCategoryCode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmSet$categoryCode(I)V

    return-void
.end method

.method public final setCityCode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmSet$cityCode(I)V

    return-void
.end method

.method public final setCityId(I)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmSet$cityId(I)V

    return-void
.end method

.method public final setCityName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;->realmSet$cityName(Ljava/lang/String;)V

    return-void
.end method
