.class public Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/s0;
.implements Lio/realm/f1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\"\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u000b\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
        "Lio/realm/s0;",
        "",
        "id",
        "I",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "",
        "iconName",
        "Ljava/lang/String;",
        "getIconName",
        "()Ljava/lang/String;",
        "setIconName",
        "(Ljava/lang/String;)V",
        "name",
        "getName",
        "setName",
        "url",
        "getUrl",
        "setUrl",
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
.field private iconName:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


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

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmSet$iconName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmSet$name(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getIconName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmGet$iconName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$iconName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->id:I

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$iconName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->iconName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->id:I

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->url:Ljava/lang/String;

    return-void
.end method

.method public final setIconName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmSet$iconName(Ljava/lang/String;)V

    return-void
.end method

.method public final setId(I)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmSet$id(I)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method
