.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;
.super Lcom/airbnb/epoxy/Typed2EpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/Typed2EpoxyController<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
        ">;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\rB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\"\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;",
        "Lcom/airbnb/epoxy/Typed2EpoxyController;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
        "carList",
        "selectedCar",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;",
        "adapterCallbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;)V",
        "a",
        "ui-mobile-accident_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;)V
    .locals 1

    const-string v0, "adapterCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/Typed2EpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;

    return-void
.end method

.method public static final synthetic access$getAdapterCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;->buildModels(Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            ">;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel_;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel_;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;->getPlateNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;->getEngineNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Leh/c;->id(Ljava/lang/CharSequence;)Leh/c;

    invoke-interface {v1, v0}, Leh/c;->carItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;)Leh/c;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;->getPlateNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "00"

    :goto_1
    invoke-interface {v1, v0}, Leh/c;->selectedCarPlateNumber(Ljava/lang/String;)Leh/c;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$b;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;)V

    invoke-interface {v1, v0}, Leh/c;->selectCar(Lx9/l;)Leh/c;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$c;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;)V

    invoke-interface {v1, v0}, Leh/c;->unselectCar(Lx9/l;)Leh/c;

    invoke-interface {p0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    goto :goto_0

    :cond_1
    return-void
.end method
