.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;
.super Lcom/airbnb/epoxy/TypedEpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/TypedEpoxyController<",
        "Ljava/util/List<",
        "+",
        "Lzg/a;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;",
        "Lcom/airbnb/epoxy/TypedEpoxyController;",
        "",
        "Lzg/a;",
        "carList",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;",
        "adapterCallbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;)V",
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
.field private final adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;)V
    .locals 1

    const-string v0, "adapterCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;

    return-void
.end method

.method public static final synthetic access$getAdapterCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;->buildModels(Ljava/util/List;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzg/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "carList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v2, Lzg/a;

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel_;

    invoke-direct {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel_;-><init>()V

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Number;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-interface {v4, v6}, Lah/a;->id([Ljava/lang/Number;)Lah/a;

    invoke-interface {v4, v2}, Lah/a;->photoItem(Lzg/a;)Lah/a;

    invoke-interface {v4, v5}, Lah/a;->isDefaultVisible(Z)Lah/a;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$b;

    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;)V

    invoke-interface {v4, v1}, Lah/a;->addPhoto(Lx9/l;)Lah/a;

    invoke-interface {p0, v4}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lb8/f;->k0()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method
