.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;
.super Lcom/airbnb/epoxy/Typed4EpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/Typed4EpoxyController<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        ">;",
        "Ljava/util/Map<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        ">;>;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u000022\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011JD\u0010\u000c\u001a\u00020\u000b2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0014R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;",
        "Lcom/airbnb/epoxy/Typed4EpoxyController;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;",
        "",
        "institutionList",
        "sectionedList",
        "pluralText",
        "singularText",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;",
        "callbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;)V",
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
.field private final callbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/Typed4EpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;->callbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;->callbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/Map;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;->buildModels(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;",
            "Ljava/util/Map<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "pluralText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singularText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0x20

    if-nez v2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCitySectionItemModel_;

    invoke-direct {v4}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCitySectionItemModel_;-><init>()V

    new-array v5, v1, [Ljava/lang/Number;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v4, v5}, Lxf/w;->id([Ljava/lang/Number;)Lxf/w;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lxf/w;->title(Ljava/lang/String;)Lxf/w;

    invoke-interface {p0, v4}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCityInstitutionItemModel_;

    invoke-direct {v4}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCityInstitutionItemModel_;-><init>()V

    new-array v5, v1, [Ljava/lang/Number;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getInstitutionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v4, v5}, Lxf/v;->id([Ljava/lang/Number;)Lxf/v;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v5

    if-le v5, v1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lxf/v;->serviceCount(Ljava/lang/String;)Lxf/v;

    invoke-interface {v4, v2}, Lxf/v;->institution(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)Lxf/v;

    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$b;

    invoke-direct {v5, p0, v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V

    invoke-interface {v4, v5}, Lxf/v;->listener(Lx9/a;)Lxf/v;

    invoke-interface {p0, v4}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCityInstitutionItemModel_;

    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCityInstitutionItemModel_;-><init>()V

    new-array v4, v1, [Ljava/lang/Number;

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getInstitutionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v4}, Lxf/v;->id([Ljava/lang/Number;)Lxf/v;

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v4

    if-le v4, v1, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lxf/v;->serviceCount(Ljava/lang/String;)Lxf/v;

    invoke-interface {v2, p2}, Lxf/v;->institution(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)Lxf/v;

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$c;

    invoke-direct {v4, p0, p2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V

    invoke-interface {v2, v4}, Lxf/v;->listener(Lx9/a;)Lxf/v;

    invoke-interface {p0, v2}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    goto :goto_4

    :cond_6
    return-void
.end method
