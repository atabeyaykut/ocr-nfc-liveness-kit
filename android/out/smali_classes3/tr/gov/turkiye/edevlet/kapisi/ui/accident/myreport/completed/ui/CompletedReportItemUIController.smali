.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;
.super Lcom/airbnb/epoxy/TypedEpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/TypedEpoxyController<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;",
        "Lcom/airbnb/epoxy/TypedEpoxyController;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;",
        "carList",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;",
        "adapterCallbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;)V",
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
.field private final adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;)V
    .locals 1

    const-string v0, "adapterCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;

    return-void
.end method

.method public static final synthetic access$getAdapterCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;->buildModels(Ljava/util/List;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;",
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

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;

    sget-object v1, Lyd/a;->a:Lyd/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v3

    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getReportNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel_;

    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel_;-><init>()V

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v2

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getReportNumber()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lsh/a;->id(J)Lsh/a;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v0

    invoke-interface {v1, v0}, Lsh/a;->reportItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;)Lsh/a;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$b;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;)V

    invoke-interface {v1, v0}, Lsh/a;->selectReport(Lx9/l;)Lsh/a;

    invoke-interface {p0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    goto :goto_0

    :cond_0
    return-void
.end method
