.class public abstract Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;",
        "reportItem",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;",
        "getReportItem",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;",
        "setReportItem",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;)V",
        "Lkotlin/Function1;",
        "selectReport",
        "Lx9/l;",
        "getSelectReport",
        "()Lx9/l;",
        "setSelectReport",
        "(Lx9/l;)V",
        "<init>",
        "()V",
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
.field public reportItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

.field public selectReport:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getSelectReport()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getAccidentDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lge/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getVehiclePlateCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;->c:Landroid/widget/TextView;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getVehiclePlateCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/o;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v1

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getVehiclePlateCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v1

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getVehiclePlateCityCode()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v1

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getVehiclePlateNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v1

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getAccidentCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v1

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getAccidentDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getReportNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;->getHasPdf()Z

    move-result v0

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lnf/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d008d

    return v0
.end method

.method public final getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->reportItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "reportItem"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSelectReport()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->selectReport:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "selectReport"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setReportItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->reportItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;

    return-void
.end method

.method public final setSelectReport(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;->selectReport:Lx9/l;

    return-void
.end method
