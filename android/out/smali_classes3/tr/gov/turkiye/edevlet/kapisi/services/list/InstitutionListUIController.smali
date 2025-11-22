.class public final Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;
.super Lcom/airbnb/epoxy/Typed3EpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/Typed3EpoxyController<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ(\u0010\t\u001a\u00020\u00082\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0014R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;",
        "Lcom/airbnb/epoxy/Typed3EpoxyController;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        "",
        "institutionList",
        "pluralText",
        "singularText",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;",
        "callbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;)V",
        "a",
        "ui-services_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final callbacks:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/Typed3EpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;->callbacks:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;)Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;->callbacks:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;->buildModels(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "pluralText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singularText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

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

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionListItemModel_;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionListItemModel_;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Number;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getInstitutionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1, v3}, Lsg/f;->id([Ljava/lang/Number;)Lsg/f;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;->getServiceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lsg/f;->serviceCount(Ljava/lang/String;)Lsg/f;

    invoke-interface {v1, v0}, Lsg/f;->institution(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)Lsg/f;

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$b;

    invoke-direct {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V

    invoke-interface {v1, v2}, Lsg/f;->listener(Lx9/a;)Lsg/f;

    invoke-interface {p0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    goto :goto_0

    :cond_1
    return-void
.end method
