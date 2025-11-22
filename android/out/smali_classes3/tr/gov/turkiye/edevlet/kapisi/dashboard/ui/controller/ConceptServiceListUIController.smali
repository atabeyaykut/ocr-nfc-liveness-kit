.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;
.super Lcom/airbnb/epoxy/TypedEpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/TypedEpoxyController<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;",
        "Lcom/airbnb/epoxy/TypedEpoxyController;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
        "data",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;",
        "callbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;)V",
        "a",
        "ui-dashboard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final callbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;->callbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;->callbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;->buildModels(Ljava/util/List;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceDetailListModel_;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceDetailListModel_;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Number;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lxf/b;->id([Ljava/lang/Number;)Lxf/b;

    invoke-interface {v1, v0}, Lxf/b;->service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)Lxf/b;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$b;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ConceptServiceListUIController;)V

    invoke-interface {v1, v0}, Lxf/b;->listener(Lx9/l;)Lxf/b;

    invoke-interface {p0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    goto :goto_0

    :cond_0
    return-void
.end method
