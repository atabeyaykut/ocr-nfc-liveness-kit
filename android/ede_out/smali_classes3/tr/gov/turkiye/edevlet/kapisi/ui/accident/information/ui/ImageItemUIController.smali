.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;
.super Lcom/airbnb/epoxy/Typed2EpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/Typed2EpoxyController<",
        "Ljava/util/List<",
        "+",
        "Lhh/i;",
        ">;",
        "Lhh/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\rB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\"\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;",
        "Lcom/airbnb/epoxy/Typed2EpoxyController;",
        "",
        "Lhh/i;",
        "carList",
        "selectedCar",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;",
        "adapterCallbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;)V",
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
.field private final adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;)V
    .locals 1

    const-string v0, "adapterCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/Typed2EpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;

    return-void
.end method

.method public static final synthetic access$getAdapterCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lhh/i;

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;->buildModels(Ljava/util/List;Lhh/i;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;Lhh/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhh/i;",
            ">;",
            "Lhh/i;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_0

    check-cast v1, Lhh/i;

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel_;

    invoke-direct {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel_;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Number;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p2

    invoke-interface {v3, v5}, Lih/a;->id([Ljava/lang/Number;)Lih/a;

    invoke-interface {v3, v1}, Lih/a;->photoItem(Lhh/i;)Lih/a;

    invoke-interface {v3, v4}, Lih/a;->isDefaultVisible(Z)Lih/a;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$b;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;)V

    invoke-interface {v3, v0}, Lih/a;->deletePhoto(Lx9/l;)Lih/a;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$c;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;)V

    invoke-interface {v3, v0}, Lih/a;->addPhoto(Lx9/a;)Lih/a;

    invoke-interface {p0, v3}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lb8/f;->k0()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method
